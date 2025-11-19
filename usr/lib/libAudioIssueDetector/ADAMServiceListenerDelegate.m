@interface ADAMServiceListenerDelegate
- (ADAMServiceListenerDelegate)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ADAMServiceListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a4;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 valueForEntitlement:@"com.apple.audio.adam.xpc"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  v8 = 560295540;
  if (ADAM::ADAMLogScope(void)::scope)
  {
    v9 = *ADAM::ADAMLogScope(void)::scope;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
    v10 = MEMORY[0x29EDCA988];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 description];
    *v23 = 136315650;
    *&v23[4] = "ADAMServiceListenerDelegate.mm";
    *&v23[12] = 1024;
    *&v23[14] = 39;
    *&v23[18] = 2112;
    *&v23[20] = v12;
    _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Entitlement missing when connecting to ADAM: %@", v23, 0x1Cu);
  }

LABEL_12:
  v13 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A1DF1948];
  [v4 setExportedInterface:v13];

  v14 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A1DF38C8];
  [v4 setRemoteObjectInterface:v14];

  v15 = [[ADAMServerDelegate alloc] initWithConnection:v4 andErrorCode:v8];
  [v4 setExportedObject:v15];
  if (ADAM::ADAMLogScope(void)::once != -1)
  {
    dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
  }

  if (ADAM::ADAMLogScope(void)::scope)
  {
    v16 = *ADAM::ADAMLogScope(void)::scope;
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = MEMORY[0x29EDCA988];
    v17 = MEMORY[0x29EDCA988];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v4 processIdentifier];
    v20 = "Failed";
    *v23 = 136315906;
    *&v23[4] = "ADAMServiceListenerDelegate.mm";
    *&v23[12] = 1024;
    *&v23[14] = 51;
    if (v7)
    {
      v20 = "Success";
    }

    *&v23[18] = 1024;
    *&v23[20] = v19;
    *&v23[24] = 2080;
    *&v23[26] = v20;
    _os_log_impl(&dword_296C34000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d New XPC Connection to ADAM from pid: %d [%s]", v23, 0x22u);
  }

LABEL_23:
  [v4 resume];

  objc_autoreleasePoolPop(v5);
  v21 = *MEMORY[0x29EDCA608];
  return 1;
}

- (ADAMServiceListenerDelegate)init
{
  v3.receiver = self;
  v3.super_class = ADAMServiceListenerDelegate;
  return [(ADAMServiceListenerDelegate *)&v3 init];
}

@end