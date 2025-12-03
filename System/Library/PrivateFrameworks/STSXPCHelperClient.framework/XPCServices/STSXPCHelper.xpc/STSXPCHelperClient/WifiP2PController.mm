@interface WifiP2PController
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info;
- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason;
- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error;
- (void)publisher:(id)publisher receivedMessage:(id)message fromSubscriberID:(unsigned __int8)d subscriberAddress:(id)address;
- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason;
- (void)publisherStarted:(id)started;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
@end

@implementation WifiP2PController

- (void)dataSessionRequestStarted:(id)started
{
  v4 = _os_activity_create(&_mh_execute_header, "dataSessionRequestStarted:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController dataSessionRequestStarted:]", 455, self, @"Data session started", v5, v6, v8);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001588C;
  block[3] = &unk_100058A08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
  v11 = _os_activity_create(&_mh_execute_header, "dataSession:confirmedForPeerDataAddress:serviceSepcificInfo:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (self)
  {
    wifiDataSession = self->_wifiDataSession;
  }

  else
  {
    wifiDataSession = 0;
  }

  v13 = wifiDataSession;
  [infoCopy protocolType];
  [infoCopy servicePort];
  hostname = [infoCopy hostname];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:]", 468, self, @"PeerAddr=%@, session=%@, serviceSpecificInfo={type=%ld, port=%d, host=%@}}", v14, v15, addressCopy);

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015A4C;
  block[3] = &unk_100058DB8;
  block[4] = self;
  v22 = addressCopy;
  v23 = sessionCopy;
  v24 = infoCopy;
  v17 = infoCopy;
  v18 = sessionCopy;
  v19 = addressCopy;
  dispatch_async(workQueue, block);
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  v6 = _os_activity_create(&_mh_execute_header, "dataSession:failedToStartWithError:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController dataSession:failedToStartWithError:]", 495, self, @"Data session fail to start, error=%ld", v7, v8, error);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015D08;
  block[3] = &unk_100058A08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  v6 = _os_activity_create(&_mh_execute_header, "dataSession:terminatedWithReason:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController dataSession:terminatedWithReason:]", 510, self, @"Data session terminated, reason=%ld", v7, v8, reason);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015E04;
  block[3] = &unk_100058DE0;
  block[4] = self;
  block[5] = reason;
  dispatch_async(workQueue, block);
}

- (void)publisherStarted:(id)started
{
  v4 = _os_activity_create(&_mh_execute_header, "publisherStarted:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController publisherStarted:]", 525, self, @"Publisher started", v5, v6, v8);
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016094;
  block[3] = &unk_100058A08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error
{
  v6 = _os_activity_create(&_mh_execute_header, "publisher:failedToStartWithError:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController publisher:failedToStartWithError:]", 538, self, @"Publisher start failure, reason=%ld", v7, v8, error);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000161F8;
  block[3] = &unk_100058DE0;
  block[4] = self;
  block[5] = error;
  dispatch_async(workQueue, block);
}

- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason
{
  v6 = _os_activity_create(&_mh_execute_header, "publisher:terminatedWithReason:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController publisher:terminatedWithReason:]", 554, self, @"Publisher terminated, reason=%ld", v7, v8, reason);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001649C;
  block[3] = &unk_100058A08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)publisher:(id)publisher receivedMessage:(id)message fromSubscriberID:(unsigned __int8)d subscriberAddress:(id)address
{
  addressCopy = address;
  messageCopy = message;
  v10 = _os_activity_create(&_mh_execute_header, "publisher:receivedMessage:fromSubscriberID:subscriberAddress:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController publisher:receivedMessage:fromSubscriberID:subscriberAddress:]", 566, self, @"Recv msg %@, subscriberID=%ld, address=%@", v11, v12, messageCopy);
}

- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info
{
  handleCopy = handle;
  infoCopy = info;
  v11 = _os_activity_create(&_mh_execute_header, "publisher:dataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  [infoCopy protocolType];
  [infoCopy servicePort];
  hostname = [infoCopy hostname];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController publisher:dataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:]", 577, self, @"handle=%@, localInterfaceIdx=%u, serviceSpecificInfo={type=%ld, port=%d, host=%@}", v12, v13, handleCopy);

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000166E8;
  block[3] = &unk_100058E08;
  block[4] = self;
  v19 = handleCopy;
  indexCopy = index;
  v20 = infoCopy;
  v15 = infoCopy;
  v16 = handleCopy;
  dispatch_async(workQueue, block);
}

- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason
{
  handleCopy = handle;
  v8 = _os_activity_create(&_mh_execute_header, "publisher:dataTerminatedForHandle:reason:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController publisher:dataTerminatedForHandle:reason:]", 607, self, @"Publisher data session terminated; handle=%@, reason=%ld", v9, v10, handleCopy);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000169D4;
  block[3] = &unk_100058DE0;
  block[4] = self;
  block[5] = reason;
  dispatch_async(workQueue, block);
}

- (void)subscriberStarted:(id)started
{
  v4 = _os_activity_create(&_mh_execute_header, "subscriberStarted:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);
  os_activity_scope_leave(&v8);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController subscriberStarted:]", 622, self, @"Subscriber started", v5, v6, v8.opaque[0]);
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained wifiP2PController:self didStart:0];
  }
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  v6 = _os_activity_create(&_mh_execute_header, "subscriber:failedToStartWithError:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController subscriber:failedToStartWithError:]", 632, self, @"Subscriber start failure, reason=%ld", v7, v8, error);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016D30;
  block[3] = &unk_100058DE0;
  block[4] = self;
  block[5] = error;
  dispatch_async(workQueue, block);
}

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  dCopy = d;
  v7 = _os_activity_create(&_mh_execute_header, "subscriber:lostDiscoveryResultForPublishID:address:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController subscriber:lostDiscoveryResultForPublishID:address:]", 649, self, @"Subscriber lost discovery result, publishID=%ld", v8, v9, dCopy);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016FC0;
  block[3] = &unk_100058A08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result
{
  resultCopy = result;
  v6 = _os_activity_create(&_mh_execute_header, "subscriber:receivedDiscoveryResult:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[WifiP2PController subscriber:receivedDiscoveryResult:]", 666, self, @"Subscriber recv discovery result:%@", v7, v8, resultCopy);
  v9 = resultCopy;
  v10 = v9;
  if (self)
  {
    workQueue = self->_workQueue;
    state.opaque[0] = _NSConcreteStackBlock;
    state.opaque[1] = 3221225472;
    v13 = sub_100013ECC;
    v14 = &unk_100058CB0;
    selfCopy = self;
    v16 = v9;
    dispatch_async(workQueue, &state);
  }
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  v6 = _os_activity_create(&_mh_execute_header, "subscriber:terminatedWithReason:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[WifiP2PController subscriber:terminatedWithReason:]", 673, self, @"Subscriber terminated, reason=%ld", v7, v8, reason);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017380;
  block[3] = &unk_100058A08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

@end