@interface BKTouchDeliveryObservationManager
+ (id)sharedInstance;
- (BKTouchDeliveryObservationManager)init;
- (void)_queue_pendUpdate:(id)a3;
- (void)_queue_postPendingUpdates;
- (void)_queue_postUpdate:(id)a3 forTouchIdentifier:(unsigned int)a4;
- (void)_queue_setProcessPID:(int)a3 observesGlobalTouches:(BOOL)a4;
- (void)_queue_setProcessPID:(int)a3 observesTouch:(BOOL)a4 withIdentifier:(unsigned int)a5;
- (void)connectionDidTerminate:(id)a3;
- (void)noteTouchUpOccurred:(unsigned int)a3 detached:(BOOL)a4 context:(unsigned int)a5 clientPort:(unsigned int)a6;
- (void)setObservesAllTouches:(id)a3;
- (void)setObservesTouch:(id)a3 withIdentifier:(id)a4;
- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 upAtPoint:(CGPoint)a5 detached:(BOOL)a6;
- (void)touchDidDetach:(unsigned int)a3 destinations:(id)a4;
- (void)touchDidFinishProcessingTouchCollection;
@end

@implementation BKTouchDeliveryObservationManager

- (void)_queue_postPendingUpdates
{
  dispatch_assert_queue_V2(self->_queue);
  touchIdentifierToUpdate = self->_touchIdentifierToUpdate;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100009AC0;
  v4[3] = &unk_1000FA6F0;
  v4[4] = self;
  [(BSMutableIntegerMap *)touchIdentifierToUpdate enumerateWithBlock:v4];
  [(BSMutableIntegerMap *)self->_touchIdentifierToUpdate removeAllObjects];
}

+ (id)sharedInstance
{
  if (qword_100125DA8 != -1)
  {
    dispatch_once(&qword_100125DA8, &stru_1000FA658);
  }

  v3 = qword_100125DA0;

  return v3;
}

- (void)touchDidFinishProcessingTouchCollection
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007600;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_postUpdate:(id)a3 forTouchIdentifier:(unsigned int)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [v6 pid];
  v8 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v21 = a4;
    v22 = 1024;
    v23 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "touch %X sent to destination pid:%d", buf, 0xEu);
  }

  v9 = [(BSMutableIntegerMap *)self->_touchIdentifierToPIDs objectForKey:a4];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100025F64;
  v18[3] = &unk_1000FA718;
  v18[4] = self;
  v10 = v6;
  v19 = v10;
  [v9 enumerateIndexesUsingBlock:v18];
  v11 = [(NSMutableIndexSet *)self->_globalTouchObserverPIDs mutableCopy];
  v12 = v11;
  if (v9)
  {
    [v11 removeIndexes:v9];
  }

  if (v7 >= 1 && [v12 count])
  {
    v13 = [v10 copy];
    [v13 setTouchIdentifier:0];
    globalTouchObserverPIDs = self->_globalTouchObserverPIDs;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100025F74;
    v16[3] = &unk_1000FA718;
    v16[4] = self;
    v15 = v13;
    v17 = v15;
    [(NSMutableIndexSet *)globalTouchObserverPIDs enumerateIndexesUsingBlock:v16];
  }
}

- (void)_queue_pendUpdate:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [v9 touchIdentifier];
  v5 = [v9 contextID];
  v6 = v4;
  v7 = [(BSMutableIntegerMap *)self->_touchIdentifierToUpdate objectForKey:v4];
  v8 = v7;
  if (v5 || !v7)
  {
    [(BSMutableIntegerMap *)self->_touchIdentifierToUpdate setObject:v9 forKey:v6];
  }
}

- (void)_queue_setProcessPID:(int)a3 observesGlobalTouches:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  globalTouchObserverPIDs = self->_globalTouchObserverPIDs;
  if (v4)
  {

    [(NSMutableIndexSet *)globalTouchObserverPIDs addIndex:a3];
  }

  else
  {

    [(NSMutableIndexSet *)globalTouchObserverPIDs removeIndex:a3];
  }
}

- (void)_queue_setProcessPID:(int)a3 observesTouch:(BOOL)a4 withIdentifier:(unsigned int)a5
{
  v5 = a4;
  v9 = [(BSMutableIntegerMap *)self->_touchIdentifierToPIDs objectForKey:a5];
  if (v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v5;
  }

  if (!v8)
  {
    v9 = +[NSMutableIndexSet indexSet];
    [BSMutableIntegerMap setObject:"setObject:forKey:" forKey:?];
  }

  if (v5)
  {
    [v9 addIndex:a3];
  }

  else
  {
    [v9 removeIndex:a3];
  }
}

- (void)touchDidDetach:(unsigned int)a3 destinations:(id)a4
{
  v6 = a4;
  v7 = [v6 copy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026258;
  block[3] = &unk_1000FD1A0;
  v11 = v7;
  v12 = self;
  v13 = a3;
  v9 = v7;
  dispatch_async(queue, block);
}

- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 upAtPoint:(CGPoint)a5 detached:(BOOL)a6
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026480;
  v7[3] = &unk_1000FA6C8;
  v7[4] = self;
  v8 = a3;
  v9 = a6;
  dispatch_async(queue, v7);
}

- (void)setObservesTouch:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = +[BSServiceConnection currentContext];
  v9 = [v8 remoteProcess];

  v10 = [v9 pid];
  v11 = [v7 unsignedIntValue];
  v12 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109632;
    v13[1] = v10;
    v14 = 1024;
    v15 = [v6 BOOLValue];
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "pid:%d observes touch:%{BOOL}u identifier:%X", v13, 0x14u);
  }

  -[BKTouchDeliveryObservationManager _queue_setProcessPID:observesTouch:withIdentifier:](self, "_queue_setProcessPID:observesTouch:withIdentifier:", v10, [v6 BOOLValue], v11);
}

- (void)setObservesAllTouches:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[BSServiceConnection currentContext];
  v6 = [v5 remoteProcess];

  v7 = [v6 pid];
  v8 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[BSServiceConnection currentContext];
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v9;
    v14 = 1024;
    v15 = [v4 BOOLValue];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "process:%{public}@ (ctx:%{public}@) observes all touches:%{BOOL}u", &v10, 0x1Cu);
  }

  -[BKTouchDeliveryObservationManager _queue_setProcessPID:observesGlobalTouches:](self, "_queue_setProcessPID:observesGlobalTouches:", v7, [v4 BOOLValue]);
}

- (void)connectionDidTerminate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogTouchDeliveryObserver();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "terminate %{public}@", buf, 0xCu);
  }

  v6 = [v4 remoteToken];
  v7 = [v6 pid];

  [(NSMutableIndexSet *)self->_globalTouchObserverPIDs removeIndex:v7];
  touchIdentifierToPIDs = self->_touchIdentifierToPIDs;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100026A38;
  v9[3] = &unk_1000FA6A0;
  v10 = v7;
  [(BSMutableIntegerMap *)touchIdentifierToPIDs enumerateWithBlock:v9];
}

- (void)noteTouchUpOccurred:(unsigned int)a3 detached:(BOOL)a4 context:(unsigned int)a5 clientPort:(unsigned int)a6
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026AC8;
  block[3] = &unk_1000FA680;
  block[4] = self;
  v8 = a6;
  v9 = a3;
  v10 = a5;
  v11 = a4;
  dispatch_async(queue, block);
}

- (BKTouchDeliveryObservationManager)init
{
  v19.receiver = self;
  v19.super_class = BKTouchDeliveryObservationManager;
  v2 = [(BKTouchDeliveryObservationManager *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_new();
    touchIdentifierToPIDs = v2->_touchIdentifierToPIDs;
    v2->_touchIdentifierToPIDs = v3;

    v5 = objc_opt_new();
    touchIdentifierToUpdate = v2->_touchIdentifierToUpdate;
    v2->_touchIdentifierToUpdate = v5;

    v7 = +[NSMutableIndexSet indexSet];
    globalTouchObserverPIDs = v2->_globalTouchObserverPIDs;
    v2->_globalTouchObserverPIDs = v7;

    v9 = [BSServiceDispatchQueue queueWithName:@"com.apple.backboard.BKTouchDeliveryObservationManager"];
    bsServiceDispatchQueue = v2->_bsServiceDispatchQueue;
    v2->_bsServiceDispatchQueue = v9;

    v11 = [(BSServiceDispatchQueue *)v2->_bsServiceDispatchQueue queue];
    queue = v2->_queue;
    v2->_queue = v11;

    v13 = [BKHIDDomainServiceServer alloc];
    v14 = v2->_bsServiceDispatchQueue;
    v15 = BKLogTouchDeliveryObserver();
    v16 = [v13 initWithDelegate:v2 incomingServiceConnectionHandler:0 serverTarget:v2 serverProtocol:&OBJC_PROTOCOL___BKSTouchDeliveryObservationService_IPC clientProtocol:&OBJC_PROTOCOL___BKSTouchDeliveryObserving_IPC serviceName:BKSTouchDeliveryObservationBSServiceName queue:v14 log:v15 entitlement:BKObserveTouchDeliveryObservingEntitlement];
    server = v2->_server;
    v2->_server = v16;

    [(BKHIDDomainServiceServer *)v2->_server activate];
  }

  return v2;
}

@end