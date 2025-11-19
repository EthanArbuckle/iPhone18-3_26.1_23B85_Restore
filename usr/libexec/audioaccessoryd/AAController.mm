@interface AAController
- (AAController)init;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_accessoryUsageSummaryMessageReceived:(id)a3 fromDevice:(id)a4;
- (void)_activate;
- (void)_activateXPC:(BOOL)a3;
- (void)_activateXPCCompleted:(id)a3;
- (void)_batteryInfoMessageReceived:(id)a3 fromDevice:(id)a4;
- (void)_conversationDetectMessageReceived:(id)a3 fromDevice:(id)a4;
- (void)_interrupted;
- (void)_invalidated;
- (void)_multimodalContextMessageReceived:(id)a3 fromDevice:(id)a4;
- (void)_personalTranslationMessageReceived:(id)a3 fromDevice:(id)a4;
- (void)_pmeConfigDataReceived:(id)a3 fromDevice:(id)a4;
- (void)_rawGestureMessageReceived:(id)a3 fromDevice:(id)a4;
- (void)_sendAccessoryEventMessage:(id)a3 eventType:(unsigned __int8)a4 destinationIdentifier:(id)a5 completionHandler:(id)a6;
- (void)_sendDeviceConfig:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)_sleepDetectionMessageReceived:(id)a3 fromDevice:(id)a4;
- (void)_xpcReceivedAccessoryEvent:(id)a3;
- (void)_xpcReceivedAudioAccessoryDeviceInfoChange:(id)a3;
- (void)_xpcReceivedMessage:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)sendConversationDetectMessage:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendDEOCTempDisableIntervalMessage:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendDeviceConfig:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendGetTipiTableMessageToDestinationIdentifier:(id)a3 completionHandler:(id)a4;
- (void)sendMultimodalContextMessage:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendPMEConfigData:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)sendSleepDetectionMessage:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)xpcReceivedMessage:(id)a3;
@end

@implementation AAController

- (AAController)init
{
  v5.receiver = self;
  v5.super_class = AAController;
  v2 = [(AAController *)&v5 init];
  if (v2)
  {
    v2->_clientID = sub_10000DAF8();
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v2->_coreBluetoothInternalFlag = 0x2000;
    v3 = v2;
  }

  return v2;
}

- (id)description
{
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_activateCalled)
  {
    v5->_activateCalled = 1;
    v6 = objc_retainBlock(v4);
    activateCompletion = v5->_activateCompletion;
    v5->_activateCompletion = v6;

    dispatchQueue = v5->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DD30;
    block[3] = &unk_1002B6880;
    block[4] = v5;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(v5);
}

- (void)_activate
{
  if (self->_invalidateCalled)
  {
    v5 = NSErrorF();
    if (dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = objc_retainBlock(self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v3)
    {
      v3[2](v3, v5);
    }
  }

  else
  {

    [(AAController *)self _activateXPC:0];
  }
}

- (void)_activateXPC:(BOOL)a3
{
  if (a3)
  {
    if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
LABEL_12:
      sub_1001D22E4(self);
    }
  }

  else if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_12;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  coreBluetoothInternalFlag = self->_coreBluetoothInternalFlag;
  if (coreBluetoothInternalFlag)
  {
    xpc_dictionary_set_uint64(v4, "intF", coreBluetoothInternalFlag);
  }

  xpc_dictionary_set_string(v5, "mTyp", "CtrA");
  v7 = [(AAController *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000DFB0;
  handler[3] = &unk_1002B68D0;
  handler[4] = self;
  xpc_connection_send_message_with_reply(v7, v5, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)a3
{
  v4 = a3;
  v5 = CUXPCDecodeNSErrorIfNeeded();
  if (v5)
  {
    if (dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D2324(self);
    }

    v6 = objc_retainBlock(self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v6)
    {
      v6[2](v6, v5);
    }
  }

  else
  {
    v8 = xpc_dictionary_get_array(v4, "aaDD");
    v6 = v8;
    if (v8)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_1001D2278;
      applier[3] = &unk_1002B6B38;
      applier[4] = self;
      xpc_array_apply(v8, applier);
    }

    if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D2394(self);
    }

    v9 = objc_retainBlock(self->_activateCompletion);
    v10 = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v9)
    {
      v9[2](v9, 0);
    }
  }
}

- (id)_ensureXPCStarted
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_xpcCnx;
  if (!v2->_xpcCnx)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", v2->_dispatchQueue, 0);

    objc_storeStrong(&v2->_xpcCnx, mach_service);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000E278;
    v6[3] = &unk_1002B6B60;
    v3 = mach_service;
    v7 = v3;
    v8 = v2;
    xpc_connection_set_event_handler(v3, v6);
    xpc_connection_activate(v3);
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)_interrupted
{
  if (!self->_invalidateCalled)
  {
    if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D23D8();
    }

    v3 = objc_retainBlock(self->_interruptionHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    if (self->_activateCalled)
    {

      [(AAController *)self _activateXPC:1];
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E3B8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v3 = self;
    objc_sync_enter(v3);
    xpcCnx = v3->_xpcCnx;
    objc_sync_exit(v3);

    if (!xpcCnx)
    {
      conversationDetectMessageHandler = v3->_conversationDetectMessageHandler;
      v3->_conversationDetectMessageHandler = 0;

      deviceInfoChangeHandler = v3->_deviceInfoChangeHandler;
      v3->_deviceInfoChangeHandler = 0;

      multimodalContextMessageHandler = v3->_multimodalContextMessageHandler;
      v3->_multimodalContextMessageHandler = 0;

      pmeConfigMessageHandler = v3->_pmeConfigMessageHandler;
      v3->_pmeConfigMessageHandler = 0;

      interruptionHandler = v3->_interruptionHandler;
      v3->_interruptionHandler = 0;

      v13 = objc_retainBlock(v3->_invalidationHandler);
      invalidationHandler = v3->_invalidationHandler;
      v3->_invalidationHandler = 0;

      v12 = v13;
      if (v13)
      {
        v11 = v13[2](v13);
        v12 = v13;
      }

      self->_invalidateDone = 1;
      if (dword_1002F6000 <= 30)
      {
        if (dword_1002F6000 != -1 || (v11 = _LogCategory_Initialize(), v12 = v13, v11))
        {
          v11 = sub_1001D243C();
          v12 = v13;
        }
      }

      _objc_release_x1(v11, v12);
    }
  }
}

- (void)sendConversationDetectMessage:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E6C0;
  v15[3] = &unk_1002B6B88;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(dispatchQueue, v15);
}

- (void)sendDEOCTempDisableIntervalMessage:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E818;
  v15[3] = &unk_1002B6B88;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(dispatchQueue, v15);
}

- (void)sendMultimodalContextMessage:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E970;
  v15[3] = &unk_1002B6B88;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(dispatchQueue, v15);
}

- (void)sendPMEConfigData:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EAC8;
  v15[3] = &unk_1002B6B88;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(dispatchQueue, v15);
}

- (void)sendDeviceConfig:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EC20;
  v15[3] = &unk_1002B6B88;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(dispatchQueue, v15);
}

- (void)sendGetTipiTableMessageToDestinationIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ED54;
  block[3] = &unk_1002B6BB0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)sendSleepDetectionMessage:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EED8;
  v15[3] = &unk_1002B6B88;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(dispatchQueue, v15);
}

- (void)_sendAccessoryEventMessage:(id)a3 eventType:(unsigned __int8)a4 destinationIdentifier:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (self->_invalidateCalled)
  {
    v13 = NSErrorF();
    if (dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D26AC(v8);
    }

LABEL_15:
    v12[2](v12, v13);
    goto LABEL_16;
  }

  if (!v11)
  {
    v13 = NSErrorF();
    if (dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D2618(v8);
    }

    goto LABEL_15;
  }

  v13 = objc_alloc_init(CBDevice);
  [v13 setIdentifier:v11];
  [v13 dictionaryRepresentation];
  v14 = _CFXPCCreateXPCObjectFromCFObject();
  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v15, "mTyp", "SnAE");
  xpc_dictionary_set_uint64(v15, "acET", v8);
  if (v10)
  {
    v16 = v10;
    v17 = v15;
    v18 = v10;
    v19 = [v18 bytes];
    v20 = "";
    if (v19)
    {
      v20 = v19;
    }

    v21 = v10;
    v22 = v13;
    v23 = v14;
    v24 = [v18 length];

    v25 = v24;
    v14 = v23;
    v13 = v22;
    v10 = v21;
    xpc_dictionary_set_data(v17, "acMd", bytes, v25);
  }

  xpc_dictionary_set_value(v15, "dstD", v14);
  v26 = [(AAController *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000F230;
  handler[3] = &unk_1002B6BD8;
  v30 = v12;
  xpc_connection_send_message_with_reply(v26, v15, dispatchQueue, handler);

LABEL_16:
}

- (void)_sendDeviceConfig:(id)a3 destinationIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_invalidateCalled)
  {
    v11 = NSErrorF();
    if (dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D27A0();
    }

LABEL_11:
    v10[2](v10, v11);
    goto LABEL_12;
  }

  if (!v9)
  {
    v11 = NSErrorF();
    if (dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D2744();
    }

    goto LABEL_11;
  }

  v11 = objc_alloc_init(CBDevice);
  [v11 setIdentifier:v9];
  [v11 dictionaryRepresentation];
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v13, "mTyp", "SnAC");
  xpc_dictionary_set_value(v13, "acMd", v8);
  xpc_dictionary_set_value(v13, "dstD", v12);
  v14 = [(AAController *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000F4E8;
  handler[3] = &unk_1002B6BD8;
  v17 = v10;
  xpc_connection_send_message_with_reply(v14, v13, dispatchQueue, handler);

LABEL_12:
}

- (void)xpcReceivedMessage:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (dword_1002F6000 <= 10)
  {
    if (dword_1002F6000 != -1 || (v5 = _LogCategory_Initialize(), v4 = v12, v5))
    {
      sub_1001D280C();
      v4 = v12;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    [(AAController *)self _xpcReceivedMessage:v12];
  }

  else if (v12 == &_xpc_error_connection_interrupted)
  {
    [(AAController *)self _interrupted];
  }

  else if (v12 == &_xpc_error_connection_invalid)
  {
    if (!self->_invalidateCalled && dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D28F0(self);
    }

    v9 = self;
    objc_sync_enter(v9);
    xpcCnx = v9->_xpcCnx;
    v9->_xpcCnx = 0;

    objc_sync_exit(v9);
    [(AAController *)v9 _invalidated];
  }

  else
  {
    v6 = CUXPCDecodeNSErrorIfNeeded();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = NSErrorF();
    }

    v11 = v8;

    if (dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D2868();
    }
  }
}

- (void)_xpcReceivedMessage:(id)a3
{
  v6 = a3;
  string = xpc_dictionary_get_string(v6, "mTyp");
  if (string)
  {
    v5 = string;
    if (!strcmp(string, "AcRc"))
    {
      [(AAController *)self _xpcReceivedAccessoryEvent:v6];
    }

    else if (!strcmp(v5, "AcIC"))
    {
      [(AAController *)self _xpcReceivedAudioAccessoryDeviceInfoChange:v6];
    }

    else if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D2938();
    }
  }

  else if (dword_1002F6000 <= 90 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2978();
  }
}

- (void)_xpcReceivedAccessoryEvent:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000038C8;
  v14 = sub_100003810;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000FD48;
  v9[3] = &unk_1002B6C00;
  v9[4] = &v10;
  v4 = objc_retainBlock(v9);
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    objc_opt_class();
    CUXPCDecodeObject();
    v5 = 0;
    v8 = CUPrintNSError();
    v6 = NSPrintF_safe();
    v7 = v11[5];
    v11[5] = v6;
  }

  else
  {
    v5 = v11[5];
    v11[5] = @"non-dict message";
  }

  (v4[2])(v4);
  _Block_object_dispose(&v10, 8);
}

- (void)_xpcReceivedAudioAccessoryDeviceInfoChange:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000038C8;
  v14 = sub_100003810;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000FFB4;
  v9[3] = &unk_1002B6C00;
  v9[4] = &v10;
  v5 = objc_retainBlock(v9);
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_value(v4, "aaID");
    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      v7 = objc_retainBlock(self->_deviceInfoChangeHandler);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 2))(v7, v6);
      }
    }

    else
    {
      v8 = v11[5];
      v11[5] = @"missing key for AADeviceInfo";
    }
  }

  else
  {
    v6 = v11[5];
    v11[5] = @"non-dict message";
  }

  (v5[2])(v5);
  _Block_object_dispose(&v10, 8);
}

- (void)_batteryInfoMessageReceived:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000038C8;
  v20 = sub_100003810;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100010284;
  v15[3] = &unk_1002B6C00;
  v15[4] = &v16;
  v8 = objc_retainBlock(v15);
  if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = objc_retainBlock(self->_batteryInfoMessageHandler);
  if (v9)
  {
    v10 = [v7 identifier];
    if (v10)
    {
      v9[2](v9, v10, v6);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v16, 8);
}

- (void)_conversationDetectMessageReceived:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000038C8;
  v20 = sub_100003810;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100010554;
  v15[3] = &unk_1002B6C00;
  v15[4] = &v16;
  v8 = objc_retainBlock(v15);
  if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = objc_retainBlock(self->_conversationDetectMessageHandler);
  if (v9)
  {
    v10 = [v7 identifier];
    if (v10)
    {
      v9[2](v9, v10, v6);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v16, 8);
}

- (void)_accessoryUsageSummaryMessageReceived:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000038C8;
  v27 = sub_100003810;
  v28 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100010924;
  v22[3] = &unk_1002B6C00;
  v22[4] = &v23;
  v8 = objc_retainBlock(v22);
  if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    v21 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = objc_retainBlock(self->_accessoryUsageSummaryMessageHandler);
  if (v9)
  {
    v10 = [v7 identifier];
    if (!v10)
    {
      v14 = CUPrintNSError();
      v20 = NSPrintF_safe();
      v17 = v24[5];
      v24[5] = v20;
      goto LABEL_19;
    }

    v11 = [v7 btAddressData];
    v12 = CUPrintNSDataAddress();

    v13 = v12;
    v14 = v13;
    if (v13 && [v13 UTF8String])
    {
      v15 = NSDataWithHex();
      if ([v15 length] == 6 && objc_msgSend(v15, "bytes"))
      {
        v30 = 0;
        __s1 = 0;
        v16 = memcmp(&__s1, [v15 bytes], objc_msgSend(v15, "length"));

        if (v16)
        {
          v9[2](v9, v14, v6);
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_17;
      }
    }

LABEL_17:
    v17 = CUPrintNSError();
    v18 = NSPrintF_safe();
    v19 = v24[5];
    v24[5] = v18;

LABEL_19:
    goto LABEL_13;
  }

LABEL_14:

  (v8[2])(v8);
  _Block_object_dispose(&v23, 8);
}

- (void)_multimodalContextMessageReceived:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000038C8;
  v20 = sub_100003810;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100010BF4;
  v15[3] = &unk_1002B6C00;
  v15[4] = &v16;
  v8 = objc_retainBlock(v15);
  if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = objc_retainBlock(self->_multimodalContextMessageHandler);
  if (v9)
  {
    v10 = [v7 identifier];
    if (v10)
    {
      v9[2](v9, v10, v6);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v16, 8);
}

- (void)_personalTranslationMessageReceived:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000038C8;
  v21 = sub_100003810;
  v22 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100010EDC;
  v16[3] = &unk_1002B6C00;
  v16[4] = &v17;
  v8 = objc_retainBlock(v16);
  if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    [v6 length];
    v15 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = objc_retainBlock(self->_personalTranslationMessageHandler);
  if (v9)
  {
    v10 = [v7 btAddressData];
    v11 = CUPrintNSDataAddress();

    if (v11)
    {
      v9[2](v9, v11, v6);
    }

    else
    {
      v14 = CUPrintNSError();
      v12 = NSPrintF_safe();
      v13 = v18[5];
      v18[5] = v12;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v17, 8);
}

- (void)_pmeConfigDataReceived:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000038C8;
  v20 = sub_100003810;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000111AC;
  v15[3] = &unk_1002B6C00;
  v15[4] = &v16;
  v8 = objc_retainBlock(v15);
  if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = objc_retainBlock(self->_pmeConfigMessageHandler);
  if (v9)
  {
    v10 = [v7 identifier];
    if (v10)
    {
      v9[2](v9, v10, v6);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v16, 8);
}

- (void)_rawGestureMessageReceived:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000038C8;
  v20 = sub_100003810;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011484;
  v15[3] = &unk_1002B6C00;
  v15[4] = &v16;
  v8 = objc_retainBlock(v15);
  if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    [v6 length];
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = objc_retainBlock(self->_rawGestureMessageHandler);
  if (v9)
  {
    v10 = [v7 identifier];
    if (v10)
    {
      v9[2](v9, v10, v6);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v16, 8);
}

- (void)_sleepDetectionMessageReceived:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000038C8;
  v20 = sub_100003810;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011754;
  v15[3] = &unk_1002B6C00;
  v15[4] = &v16;
  v8 = objc_retainBlock(v15);
  if (dword_1002F6000 <= 10 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    v14 = CUPrintNSDataHex();
    LogPrintF();
  }

  v9 = objc_retainBlock(self->_sleepDetectionMessageHandler);
  if (v9)
  {
    v10 = [v7 identifier];
    if (v10)
    {
      v9[2](v9, v10, v6);
    }

    else
    {
      v13 = CUPrintNSError();
      v11 = NSPrintF_safe();
      v12 = v17[5];
      v17[5] = v11;
    }
  }

  (v8[2])(v8);
  _Block_object_dispose(&v16, 8);
}

@end