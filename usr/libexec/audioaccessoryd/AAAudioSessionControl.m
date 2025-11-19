@interface AAAudioSessionControl
- (AAAudioSessionControl)init;
- (AAAudioSessionControl)initWithCoder:(id)a3;
- (id)_ensureXPCStarted;
- (id)description;
- (void)_activateDirect:(id)a3;
- (void)_activateXPC:(id)a3 reactivate:(BOOL)a4;
- (void)_interrupted;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)setConversationDetectSignal:(int)a3;
- (void)setMuteAction:(int)a3 auditToken:(id *)a4 bundleIdentifier:(id)a5;
@end

@implementation AAAudioSessionControl

- (AAAudioSessionControl)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAAudioSessionControl *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_conversationDetectSignal = 0;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  clientID = self->_clientID;
  v7 = v4;
  if (clientID)
  {
    [v4 encodeInt64:clientID forKey:@"cid"];
    v4 = v7;
  }

  conversationDetectSignal = self->_conversationDetectSignal;
  if (conversationDetectSignal)
  {
    [v7 encodeInteger:conversationDetectSignal forKey:@"cds"];
    v4 = v7;
  }
}

- (id)description
{
  clientID = self->_clientID;
  conversationDetectSignal = self->_conversationDetectSignal;
  if (conversationDetectSignal <= 0xB)
  {
    v5 = (&off_1002B6A58)[conversationDetectSignal];
  }

  v10 = self->_clientID;
  NSAppendPrintF();
  v6 = 0;
  v7 = v6;
  if (self->_direct)
  {
    v11 = v6;
    NSAppendPrintF_safe();
    v8 = v11;

    v7 = v8;
  }

  return v7;
}

- (AAAudioSessionControl)init
{
  v5.receiver = self;
  v5.super_class = AAAudioSessionControl;
  v2 = [(AAAudioSessionControl *)&v5 init];
  if (v2)
  {
    v2->_clientID = sub_10000DAF8();
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v3 = v2;
  }

  return v2;
}

- (void)setConversationDetectSignal:(int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_activateCalled)
  {
    dispatchQueue = v4->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000C62C;
    v6[3] = &unk_1002B68F8;
    v6[4] = v4;
    v7 = a3;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    v4->_conversationDetectSignal = a3;
  }

  objc_sync_exit(v4);
}

- (void)setMuteAction:(int)a3 auditToken:(id *)a4 bundleIdentifier:(id)a5
{
  v8 = a5;
  if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1ED4(a3);
  }

  v9 = self;
  objc_sync_enter(v9);
  if (v9->_activateCalled)
  {
    dispatchQueue = v9->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v11 = *&a4->var0[4];
    v15 = *a4->var0;
    block[2] = sub_10000C86C;
    block[3] = &unk_1002B6920;
    block[4] = v9;
    v14 = a3;
    v16 = v11;
    v13 = v8;
    dispatch_async(dispatchQueue, block);
  }

  else if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  objc_sync_exit(v9);
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C9D4;
  v7[3] = &unk_1002B6948;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateDirect:(id)a3
{
  v4 = a3;
  if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D207C(self);
  }

  v5 = qword_100300AE0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CF04;
  v7[3] = &unk_1002B69C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 activateAudioSessionControl:self completion:v7];
}

- (void)_activateXPC:(id)a3 reactivate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    if (dword_1002F5E10 > 30)
    {
      goto LABEL_12;
    }

    if (dword_1002F5E10 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (dword_1002F5E10 > 30)
  {
    goto LABEL_12;
  }

  if (dword_1002F5E10 != -1 || _LogCategory_Initialize())
  {
LABEL_16:
    sub_1001D20C0();
  }

LABEL_9:
  if (dword_1002F5E10 <= 30 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D20D8(self);
  }

LABEL_12:
  v7 = [(AAAudioSessionControl *)self _ensureXPCStarted];
  if (v7)
  {
    v6[2](v6, v7);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000D1D0;
    v13[3] = &unk_1002B69E8;
    v15 = v4;
    v9 = v6;
    v14 = v9;
    v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D2A8;
    v11[3] = &unk_1002B6A10;
    v12 = v9;
    [v10 audioSessionControlActivate:self completion:v11];
  }
}

- (id)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = self->_testListenerEndpoint;
    v4 = [NSXPCConnection alloc];
    if (v3)
    {
      v5 = [v4 initWithListenerEndpoint:v3];
    }

    else
    {
      v5 = [v4 initWithMachServiceName:@"com.apple.AudioAccessoryServices" options:0];
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AAServicesXPCClientInterface];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000D454;
    v11[3] = &unk_1002B6880;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000D45C;
    v10[3] = &unk_1002B6880;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v10];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AAServicesXPCDaemonInterface];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }

  return 0;
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1002F5E10 <= 50 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D219C();
  }

  v3 = BTErrorF();
  [(AAAudioSessionControl *)self _reportError:v3];

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (self->_activateCalled)
  {
    [(AAAudioSessionControl *)self _activate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v6 = *(interruptionHandler + 2);

    v6();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D5E8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && dword_1002F5E10 <= 50 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D21D4();
    }

    if (!self->_direct && !self->_xpcCnx)
    {
      v8 = objc_retainBlock(self->_activateCompletion);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v8)
      {
        v4 = BTErrorF();
        v8[2](v8, v4);
      }

      v5 = objc_retainBlock(self->_invalidationHandler);
      invalidationHandler = self->_invalidationHandler;
      self->_invalidationHandler = 0;

      if (v5)
      {
        v5[2](v5);
      }

      xpcCnx = self->_xpcCnx;
      self->_xpcCnx = 0;

      self->_invalidateDone = 1;
      if (dword_1002F5E10 <= 10 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D21F0();
      }
    }
  }
}

- (void)_reportError:(id)a3
{
  v6 = a3;
  if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2210();
  }

  v4 = objc_retainBlock(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    v4[2](v4, v6);
  }
}

@end