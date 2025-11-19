@interface SBSUtils
+ (id)connectionWithExportedObject:(id)a3;
+ (id)createProxyConnectionForRapportTarget:(id)a3;
+ (id)createProxyConnectionForXPCWithExportedObject:(id)a3 connection:(id *)a4;
@end

@implementation SBSUtils

+ (id)createProxyConnectionForRapportTarget:(id)a3
{
  v3 = a3;
  v4 = [[SBSRemoteDeviceSender alloc] initWithDevice:v3];

  return v4;
}

+ (id)connectionWithExportedObject:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.soundboardservices.server" options:4096];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCB3C8];
  [v4 setRemoteObjectInterface:v5];

  if (v3)
  {
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCD1E0];
    [v4 setExportedInterface:v6];

    [v4 setExportedObject:v3];
  }

  v7 = [v4 remoteObjectInterface];
  v8 = [v7 classesForSelector:sel_getAllSyncedAlarmsAndTimers_ argumentIndex:0 ofReply:1];
  v9 = [v8 mutableCopy];

  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v9 addObjectsFromArray:v10];
  v11 = [v4 remoteObjectInterface];
  [v11 setClasses:v9 forSelector:sel_getAllSyncedAlarmsAndTimers_ argumentIndex:0 ofReply:1];

  [v4 setInterruptionHandler:&__block_literal_global_541];
  [v4 setInvalidationHandler:&__block_literal_global_158];
  [v4 resume];

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

void __41__SBSUtils_connectionWithExportedObject___block_invoke_156()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _SBSLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "+[SBSUtils connectionWithExportedObject:]_block_invoke";
    _os_log_impl(&dword_26B246000, v0, OS_LOG_TYPE_DEFAULT, "%s - Connection to SoundBoard server was invalidated!\n", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __41__SBSUtils_connectionWithExportedObject___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _SBSLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "+[SBSUtils connectionWithExportedObject:]_block_invoke";
    _os_log_impl(&dword_26B246000, v0, OS_LOG_TYPE_DEFAULT, "%s - Connection to SoundBoard server was interrupted!\n", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

+ (id)createProxyConnectionForXPCWithExportedObject:(id)a3 connection:(id *)a4
{
  v5 = [SBSUtils connectionWithExportedObject:a3];
  if (a4)
  {
    objc_storeStrong(a4, v5);
  }

  v6 = [v5 remoteObjectProxy];

  return v6;
}

@end