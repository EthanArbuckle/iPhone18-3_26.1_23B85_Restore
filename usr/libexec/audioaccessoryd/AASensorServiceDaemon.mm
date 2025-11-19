@interface AASensorServiceDaemon
+ (id)sharedAASensorServiceDaemon;
- (AASensorServiceDaemon)init;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_activate;
- (void)_invalidate;
- (void)_personalTranslationMessageReceived:(id)a3 fromDeviceAddress:(id)a4;
- (void)_sensorDataUpdated:(id)a3;
- (void)activate;
- (void)invalidate;
@end

@implementation AASensorServiceDaemon

+ (id)sharedAASensorServiceDaemon
{
  if (qword_1002FA140 != -1)
  {
    sub_1001F1084();
  }

  v3 = qword_1002FA138;

  return v3;
}

- (AASensorServiceDaemon)init
{
  v10.receiver = self;
  v10.super_class = AASensorServiceDaemon;
  v2 = [(AASensorServiceDaemon *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AASensorServiceDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = +[NSMutableDictionary dictionary];
    ovadDataDict = v2->_ovadDataDict;
    v2->_ovadDataDict = v6;

    v8 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F550;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    if (dword_1002F6BE8 <= 30 && (dword_1002F6BE8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F1098();
    }

    [(AASensorServiceDaemon *)self _aaControllerEnsureStarted];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F648;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (dword_1002F6BE8 <= 30 && (dword_1002F6BE8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F10B4();
  }

  [(AASensorServiceDaemon *)self _aaControllerEnsureStopped];
  self->_activateCalled = 0;
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(AAController);
    [(AAController *)v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [(AAController *)v5 setInvalidationHandler:&stru_1002B9AE0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10008F870;
    v10[3] = &unk_1002B6E38;
    v6 = v5;
    v11 = v6;
    v12 = self;
    [(AAController *)v6 setPersonalTranslationMessageHandler:v10];
    if (dword_1002F6BE8 <= 30 && (dword_1002F6BE8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F10D0();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008F88C;
    v7[3] = &unk_1002B68A8;
    v4 = v6;
    v8 = v4;
    v9 = self;
    [(AAController *)v4 activateWithCompletion:v7];
  }
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (void)_personalTranslationMessageReceived:(id)a3 fromDeviceAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FA84;
  block[3] = &unk_1002B6CF0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_sensorDataUpdated:(id)a3
{
  v3 = a3;
  v4 = +[AAServicesDaemon sharedAAServicesDaemon];
  [v4 reportSensorInfo:v3];
}

@end