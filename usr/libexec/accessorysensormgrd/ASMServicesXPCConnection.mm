@interface ASMServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (BOOL)_entitledForPrivateSPIAndReturnError:(id *)a3;
- (BOOL)_shouldSendXPCMessage;
- (void)modify:(id)a3 peripheralConfiguration:(id)a4 identifier:(id)a5 completion:(id)a6;
- (void)write:(id)a3 withData:(id)a4 characteristic:(id)a5 identifier:(id)a6 completion:(id)a7;
- (void)xpcConnectionInterrupted;
- (void)xpcConnectionInvalidated;
@end

@implementation ASMServicesXPCConnection

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.AccessorySensorManager"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_10001A478 <= 90 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_1000097F8(p_xpcCnx);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
LABEL_9:
    v9 = ASMErrorF();
    v10 = v9;
    result = 0;
    *a3 = v9;
    return result;
  }

  return 0;
}

- (BOOL)_entitledForPrivateSPIAndReturnError:(id *)a3
{
  if (self->_entitledForPrivateSPI)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.private.AccessorySensorManager"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitledForPrivateSPI = 1;
    return result;
  }

  if (dword_10001A478 <= 90 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_100009848(p_xpcCnx);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
LABEL_9:
    v9 = ASMErrorF();
    v10 = v9;
    result = 0;
    *a3 = v9;
    return result;
  }

  return 0;
}

- (void)xpcConnectionInvalidated
{
  if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_100009898();
  }
}

- (void)xpcConnectionInterrupted
{
  if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
  {
    sub_1000098B4();
  }
}

- (void)modify:(id)a3 peripheralConfiguration:(id)a4 identifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100007B64;
  v27 = sub_100007B74;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100007B7C;
  v20[3] = &unk_100014728;
  v22 = &v23;
  v13 = a6;
  v21 = v13;
  v14 = objc_retainBlock(v20);
  v15 = (v24 + 5);
  obj = v24[5];
  LOBYTE(self) = [(ASMServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v15, obj);
  if (self)
  {
    if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
    {
      v17 = v10;
      v18 = v12;
      LogPrintF();
    }

    v16 = [ASMPeripheralControl sharedInstance:v17];
    [v16 modifyPeripheralConfiguration:v11 identifier:v12 completion:v13];
  }

  (v14[2])(v14);

  _Block_object_dispose(&v23, 8);
}

- (void)write:(id)a3 withData:(id)a4 characteristic:(id)a5 identifier:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100007B64;
  v30 = sub_100007B74;
  v31 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100007E88;
  v23[3] = &unk_100014728;
  v25 = &v26;
  v16 = a7;
  v24 = v16;
  v17 = objc_retainBlock(v23);
  v18 = (v27 + 5);
  obj = v27[5];
  LOBYTE(self) = [(ASMServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v18, obj);
  if (self)
  {
    if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
    {
      v20 = v12;
      v21 = v15;
      LogPrintF();
    }

    v19 = [ASMPeripheralControl sharedInstance:v20];
    [v19 writeWithData:v13 characteristic:v14 identifier:v15 completion:v16];
  }

  (v17[2])(v17);

  _Block_object_dispose(&v26, 8);
}

- (BOOL)_shouldSendXPCMessage
{
  p_xpcMessageCounter = &self->_xpcMessageCounter;
  xpcMessageCounter = self->_xpcMessageCounter;
  if (xpcMessageCounter == -1)
  {
    return 0;
  }

  *p_xpcMessageCounter = xpcMessageCounter + 1;
  if (xpcMessageCounter > 0xC7)
  {
    return 0;
  }

  if (xpcMessageCounter == 99)
  {
    xpcCnx = self->_xpcCnx;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008070;
    v8[3] = &unk_1000143A0;
    v8[4] = self;
    [(NSXPCConnection *)xpcCnx scheduleSendBarrierBlock:v8];
  }

  else if (xpcMessageCounter == 199)
  {
    if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
    {
      sub_1000098D0(self, p_xpcMessageCounter);
    }

    v5 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v5 asmServicesRequireReset];

    return 0;
  }

  return 1;
}

@end