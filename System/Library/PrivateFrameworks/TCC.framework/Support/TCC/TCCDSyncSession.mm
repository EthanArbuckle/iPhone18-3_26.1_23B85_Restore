@interface TCCDSyncSession
- (TCCDSyncController)syncController;
- (TCCDSyncSession)initWithSyncController:(id)controller;
- (unint64_t)performRequestAccessAction:(id)action;
@end

@implementation TCCDSyncSession

- (TCCDSyncSession)initWithSyncController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = TCCDSyncSession;
  v5 = [(TCCDSyncSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_syncController, controllerCopy);
  }

  return v6;
}

- (unint64_t)performRequestAccessAction:(id)action
{
  actionCopy = action;
  if ([(TCCDSyncSession *)self didSendMessage])
  {
    v5 = 0;
  }

  else
  {
    syncController = [(TCCDSyncSession *)self syncController];
    messageController = [syncController messageController];

    if (messageController)
    {
      syncRequestAccessAction = [(TCCDSyncSession *)self syncRequestAccessAction];

      if (syncRequestAccessAction)
      {
        v9 = qword_1000C12F8;
        if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
        {
          sub_100060A84(v9);
        }

        v5 = 1;
      }

      else
      {
        [(TCCDSyncSession *)self setSyncRequestAccessAction:actionCopy];
        syncRequestAccessAction2 = [(TCCDSyncSession *)self syncRequestAccessAction];
        idsMessageDictionary = [syncRequestAccessAction2 idsMessageDictionary];

        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        [(TCCDSyncSession *)self setDidSendMessage:1];
        v13 = dispatch_semaphore_create(0);
        [(TCCDSyncSession *)self setSentMessageSemaphore:v13];

        syncController2 = [(TCCDSyncSession *)self syncController];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100013CAC;
        v20[3] = &unk_1000A5368;
        v20[4] = self;
        v20[5] = &v21;
        [syncController2 setSyncSession:self accessDidUpdateHandler:v20];

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100013D94;
        v19[3] = &unk_1000A5390;
        v19[4] = self;
        v19[5] = &v21;
        [messageController sendMessage:idsMessageDictionary ofType:@"TCCDSyncMessageTypeReplicaAccessRequestForService" handler:v19];
        sentMessageSemaphore = [(TCCDSyncSession *)self sentMessageSemaphore];
        v16 = dispatch_time(0, 180000000000);
        dispatch_semaphore_wait(sentMessageSemaphore, v16);

        v5 = v22[3];
        if (!v5)
        {
          syncController3 = [(TCCDSyncSession *)self syncController];
          [syncController3 removeAccessDidUpdateHandlerForSession:self];

          v5 = 1;
          v22[3] = 1;
        }

        _Block_object_dispose(&v21, 8);
      }
    }

    else
    {
      v10 = qword_1000C12F8;
      if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
      {
        sub_100060B08(v10);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (TCCDSyncController)syncController
{
  WeakRetained = objc_loadWeakRetained(&self->_syncController);

  return WeakRetained;
}

@end