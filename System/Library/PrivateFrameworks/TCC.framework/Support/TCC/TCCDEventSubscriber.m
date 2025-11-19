@interface TCCDEventSubscriber
- (TCCDEventSubscriber)initWithToken:(unint64_t)a3 filter:(id)a4 fromPublisher:(id)a5;
- (id)description;
- (void)_addPendingEvent:(id)a3;
- (void)_checkEntitlement;
- (void)_publishPendingEvents;
- (void)_sendEvent:(id)a3;
- (void)publish:(id)a3;
@end

@implementation TCCDEventSubscriber

- (TCCDEventSubscriber)initWithToken:(unint64_t)a3 filter:(id)a4 fromPublisher:(id)a5
{
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = TCCDEventSubscriber;
  v11 = [(TCCDEventSubscriber *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_token = a3;
    objc_storeStrong(&v11->_filter, a4);
    objc_storeWeak(&v12->_publisher, v10);
    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_state = 0;
    v13 = +[NSMutableArray array];
    pendingEvents = v12->_pendingEvents;
    v12->_pendingEvents = v13;

    codeSigningIdentity = v12->_codeSigningIdentity;
    v12->_codeSigningIdentity = 0;
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = self->_state - 1;
  if (v4 > 2)
  {
    v5 = "Initial";
  }

  else
  {
    v5 = off_1000A6CC8[v4];
  }

  return [NSString stringWithFormat:@"<%@: token=%llu, state=%s, csid=%@>", v3, self->_token, v5, self->_codeSigningIdentity];
}

- (void)_checkEntitlement
{
  os_unfair_lock_lock(&self->_lock);
  self->_state = 1;
  WeakRetained = objc_loadWeakRetained(&self->_publisher);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005BB58;
  v4[3] = &unk_1000A6CA8;
  v4[4] = self;
  [WeakRetained checkEntitlementForSubscriber:self completionHandler:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addPendingEvent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_pendingEvents addObject:v4];
  if ([(NSMutableArray *)self->_pendingEvents count]>= 0x21)
  {
    [(NSMutableArray *)self->_pendingEvents removeObjectAtIndex:0];
    v5 = tcc_events_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10005C064(self, v5);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_publishPendingEvents
{
  os_unfair_lock_assert_owner(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_pendingEvents;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(TCCDEventSubscriber *)self publish:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_pendingEvents removeAllObjects];
}

- (void)_sendEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_publisher);
  [WeakRetained sendEvent:v4 toSubscriber:self];
}

- (void)publish:(id)a3
{
  v5 = a3;
  if ([(TCCDEventFilter *)self->_filter matches:v5])
  {
    state = self->_state;
    switch(state)
    {
      case 2:
        [(TCCDEventSubscriber *)self _sendEvent:v5];
        break;
      case 1:
        [(TCCDEventSubscriber *)self _addPendingEvent:v5];
        break;
      case 0:
        [(TCCDEventSubscriber *)self _addPendingEvent:v5];
        [(TCCDEventSubscriber *)self _checkEntitlement];
        break;
    }
  }

  _objc_release_x1();
}

@end