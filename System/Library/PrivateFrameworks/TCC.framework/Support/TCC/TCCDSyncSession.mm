@interface TCCDSyncSession
- (TCCDSyncController)syncController;
- (TCCDSyncSession)initWithSyncController:(id)a3;
- (unint64_t)performRequestAccessAction:(id)a3;
@end

@implementation TCCDSyncSession

- (TCCDSyncSession)initWithSyncController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TCCDSyncSession;
  v5 = [(TCCDSyncSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_syncController, v4);
  }

  return v6;
}

- (unint64_t)performRequestAccessAction:(id)a3
{
  v4 = a3;
  if ([(TCCDSyncSession *)self didSendMessage])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(TCCDSyncSession *)self syncController];
    v7 = [v6 messageController];

    if (v7)
    {
      v8 = [(TCCDSyncSession *)self syncRequestAccessAction];

      if (v8)
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
        [(TCCDSyncSession *)self setSyncRequestAccessAction:v4];
        v11 = [(TCCDSyncSession *)self syncRequestAccessAction];
        v12 = [v11 idsMessageDictionary];

        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        [(TCCDSyncSession *)self setDidSendMessage:1];
        v13 = dispatch_semaphore_create(0);
        [(TCCDSyncSession *)self setSentMessageSemaphore:v13];

        v14 = [(TCCDSyncSession *)self syncController];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100013CAC;
        v20[3] = &unk_1000A5368;
        v20[4] = self;
        v20[5] = &v21;
        [v14 setSyncSession:self accessDidUpdateHandler:v20];

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100013D94;
        v19[3] = &unk_1000A5390;
        v19[4] = self;
        v19[5] = &v21;
        [v7 sendMessage:v12 ofType:@"TCCDSyncMessageTypeReplicaAccessRequestForService" handler:v19];
        v15 = [(TCCDSyncSession *)self sentMessageSemaphore];
        v16 = dispatch_time(0, 180000000000);
        dispatch_semaphore_wait(v15, v16);

        v5 = v22[3];
        if (!v5)
        {
          v17 = [(TCCDSyncSession *)self syncController];
          [v17 removeAccessDidUpdateHandlerForSession:self];

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