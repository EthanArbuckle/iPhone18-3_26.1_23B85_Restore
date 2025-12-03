@interface ASMServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)_entitledForPrivateSPIAndReturnError:(id *)error;
- (BOOL)_shouldSendXPCMessage;
- (void)modify:(id)modify peripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)write:(id)write withData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion;
- (void)xpcConnectionInterrupted;
- (void)xpcConnectionInvalidated;
@end

@implementation ASMServicesXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
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
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = ASMErrorF();
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (BOOL)_entitledForPrivateSPIAndReturnError:(id *)error
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
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = ASMErrorF();
    v10 = v9;
    result = 0;
    *error = v9;
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

- (void)modify:(id)modify peripheralConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  modifyCopy = modify;
  configurationCopy = configuration;
  identifierCopy = identifier;
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
  completionCopy = completion;
  v21 = completionCopy;
  v14 = objc_retainBlock(v20);
  v15 = (v24 + 5);
  obj = v24[5];
  LOBYTE(self) = [(ASMServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v15, obj);
  if (self)
  {
    if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
    {
      v17 = modifyCopy;
      v18 = identifierCopy;
      LogPrintF();
    }

    v16 = [ASMPeripheralControl sharedInstance:v17];
    [v16 modifyPeripheralConfiguration:configurationCopy identifier:identifierCopy completion:completionCopy];
  }

  (v14[2])(v14);

  _Block_object_dispose(&v23, 8);
}

- (void)write:(id)write withData:(id)data characteristic:(id)characteristic identifier:(id)identifier completion:(id)completion
{
  writeCopy = write;
  dataCopy = data;
  characteristicCopy = characteristic;
  identifierCopy = identifier;
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
  completionCopy = completion;
  v24 = completionCopy;
  v17 = objc_retainBlock(v23);
  v18 = (v27 + 5);
  obj = v27[5];
  LOBYTE(self) = [(ASMServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v18, obj);
  if (self)
  {
    if (dword_10001A478 <= 30 && (dword_10001A478 != -1 || _LogCategory_Initialize()))
    {
      v20 = writeCopy;
      v21 = identifierCopy;
      LogPrintF();
    }

    v19 = [ASMPeripheralControl sharedInstance:v20];
    [v19 writeWithData:dataCopy characteristic:characteristicCopy identifier:identifierCopy completion:completionCopy];
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

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy asmServicesRequireReset];

    return 0;
  }

  return 1;
}

@end