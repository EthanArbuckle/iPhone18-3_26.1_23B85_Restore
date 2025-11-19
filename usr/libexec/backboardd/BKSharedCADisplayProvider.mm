@interface BKSharedCADisplayProvider
+ (id)sharedInstance;
- (BKSharedCADisplayProvider)init;
- (void)_lock_addObserversToDisplay:(id)a3;
- (void)_lock_removeObserversFromDisplay:(id)a3;
- (void)_lock_updateObservingState;
- (void)_postImmutableDisplayToObservers:(id)a3 context:(void *)a4;
- (void)addMonitor:(id)a3;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeMonitor:(id)a3;
@end

@implementation BKSharedCADisplayProvider

- (void)_lock_removeObserversFromDisplay:(id)a3
{
  lock_observedDisplays = self->_lock_observedDisplays;
  v7 = a3;
  if (([(NSMutableSet *)lock_observedDisplays containsObject:?]& 1) == 0)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"BKCADisplayMonitor.m" lineNumber:182 description:@"attempting to remove ourselves as an observer for an untracked display. did we mix up mutable and immutable?"];
  }

  [(NSMutableSet *)self->_lock_observedDisplays removeObject:v7];
  [v7 removeObserver:self forKeyPath:@"availableModes" context:off_100125058];
  [v7 removeObserver:self forKeyPath:@"currentMode" context:off_100125060];
  [v7 removeObserver:self forKeyPath:@"logicalScale" context:off_100125068];
  [v7 removeObserver:self forKeyPath:@"pointScale" context:off_100125070];
  [v7 removeObserver:self forKeyPath:@"tag" context:off_100125078];
}

- (void)_lock_addObserversToDisplay:(id)a3
{
  lock_observedDisplays = self->_lock_observedDisplays;
  v7 = a3;
  if ([(NSMutableSet *)lock_observedDisplays containsObject:?])
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"BKCADisplayMonitor.m" lineNumber:172 description:@"attempting to add ourselves as an observer for an already tracked display. did we mix up mutable and immutable?"];
  }

  [(NSMutableSet *)self->_lock_observedDisplays addObject:v7];
  [v7 addObserver:self forKeyPath:@"availableModes" options:0 context:off_100125058];
  [v7 addObserver:self forKeyPath:@"currentMode" options:0 context:off_100125060];
  [v7 addObserver:self forKeyPath:@"logicalScale" options:0 context:off_100125068];
  [v7 addObserver:self forKeyPath:@"pointScale" options:0 context:off_100125070];
  [v7 addObserver:self forKeyPath:@"tag" options:0 context:off_100125078];
}

- (void)_lock_updateObservingState
{
  if ([(NSMutableSet *)self->_lock_monitors count])
  {
    if (!self->_isObserving)
    {
      v3 = [(BKSharedCADisplayProvider *)self displays];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v18;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v18 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [(BKSharedCADisplayProvider *)self _lock_addObserversToDisplay:*(*(&v17 + 1) + 8 * i)];
          }

          v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v5);
      }

      self->_isObserving = 1;
    }
  }

  else if (self->_isObserving)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_lock_observedDisplays;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(BKSharedCADisplayProvider *)self _lock_removeObserversFromDisplay:*(*(&v13 + 1) + 8 * j), v13];
        }

        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }

    self->_isObserving = 0;
  }
}

- (void)_postImmutableDisplayToObservers:(id)a3 context:(void *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableSet *)self->_lock_monitors copy];
  os_unfair_lock_unlock(&self->_lock);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089A68;
  block[3] = &unk_1000FCA90;
  v11 = v7;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_class();
  v14 = v11;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (off_100125058 == a6)
  {
    v17 = sub_10005263C();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v18 = [v16 uniqueId];
    *buf = 138543618;
    v35 = v16;
    v36 = 2114;
    v37 = v18;
    v19 = "available modes changed for display %{public}@ %{public}@";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);

    goto LABEL_20;
  }

  if (off_100125060 == a6)
  {
    v17 = sub_10005263C();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v18 = [v16 uniqueId];
    *buf = 138543618;
    v35 = v16;
    v36 = 2114;
    v37 = v18;
    v19 = "current modes changed for display %{public}@ %{public}@";
    goto LABEL_19;
  }

  if (off_100125068 == a6)
  {
    v17 = sub_10005263C();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v18 = [v16 uniqueId];
    *buf = 138543618;
    v35 = v16;
    v36 = 2114;
    v37 = v18;
    v19 = "logical scale changed for display %{public}@ %{public}@";
    goto LABEL_19;
  }

  if (off_100125050 != a6)
  {
    if (off_100125070 != a6)
    {
      if (off_100125078 != a6)
      {
        v32.receiver = self;
        v32.super_class = BKSharedCADisplayProvider;
        [(BKSharedCADisplayProvider *)&v32 observeValueForKeyPath:v10 ofObject:v14 change:v12 context:a6];
        goto LABEL_29;
      }

      v17 = sub_10005263C();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      [v16 bounds];
      v33[0] = v28;
      v33[1] = v29;
      v33[2] = v30;
      v33[3] = v31;
      v25 = [NSValue valueWithBytes:v33 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v26 = [v16 uniqueId];
      *buf = 138543874;
      v35 = v25;
      v36 = 2114;
      v37 = v16;
      v38 = 2114;
      v39 = v26;
      v27 = "tag changed to %{public}@ for display %{public}@ %{public}@";
      goto LABEL_34;
    }

    v17 = sub_10005263C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v16 pointScale]);
      v26 = [v16 uniqueId];
      *buf = 138543874;
      v35 = v25;
      v36 = 2114;
      v37 = v16;
      v38 = 2114;
      v39 = v26;
      v27 = "point scale changed to %{public}@ for display %{public}@ %{public}@";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v27, buf, 0x20u);
    }

LABEL_20:
  }

  v20 = objc_opt_class();
  v21 = v14;
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = [v23 immutableCopy];
  if (v24)
  {
    [(BKSharedCADisplayProvider *)self _postImmutableDisplayToObservers:v24 context:a6];
  }

LABEL_29:
}

- (void)removeMonitor:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_monitors removeObject:v4];

  [(BKSharedCADisplayProvider *)self _lock_updateObservingState];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addMonitor:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_monitors addObject:v4];

  [(BKSharedCADisplayProvider *)self _lock_updateObservingState];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_monitors = self->_lock_monitors;
  self->_lock_monitors = 0;

  [(BKSharedCADisplayProvider *)self _lock_updateObservingState];

  os_unfair_lock_unlock(&self->_lock);
}

- (BKSharedCADisplayProvider)init
{
  v9.receiver = self;
  v9.super_class = BKSharedCADisplayProvider;
  v2 = [(BKSharedCADisplayProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableSet);
    lock_monitors = v3->_lock_monitors;
    v3->_lock_monitors = v4;

    v6 = objc_alloc_init(NSMutableSet);
    lock_observedDisplays = v3->_lock_observedDisplays;
    v3->_lock_observedDisplays = v6;

    [(BKSharedCADisplayProvider *)v3 _lock_updateObservingState];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1001260B0 != -1)
  {
    dispatch_once(&qword_1001260B0, &stru_1000FCA68);
  }

  v3 = qword_1001260B8;

  return v3;
}

@end