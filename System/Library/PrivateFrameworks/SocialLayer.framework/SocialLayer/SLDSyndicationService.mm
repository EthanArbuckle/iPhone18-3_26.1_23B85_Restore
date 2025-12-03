@interface SLDSyndicationService
+ (id)sharedService;
- (void)removeMessageGUIDFromSyndication:(id)syndication reply:(id)reply;
@end

@implementation SLDSyndicationService

+ (id)sharedService
{
  if (sharedService_onceToken_9 != -1)
  {
    +[SLDSyndicationService sharedService];
  }

  v3 = sharedService_sService_9;

  return v3;
}

uint64_t __38__SLDSyndicationService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDSyndicationService);
  v1 = sharedService_sService_9;
  sharedService_sService_9 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)removeMessageGUIDFromSyndication:(id)syndication reply:(id)reply
{
  v17 = *MEMORY[0x277D85DE8];
  syndicationCopy = syndication;
  replyCopy = reply;
  v7 = SLDaemonLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SLDSyndicationService removeMessageGUIDFromSyndication:reply:]";
    v15 = 2112;
    v16 = syndicationCopy;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "%s messageGUID: %@", &v13, 0x16u);
  }

  if (![syndicationCopy length])
  {
    v9 = SLDaemonLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SLDSyndicationService removeMessageGUIDFromSyndication:syndicationCopy reply:v9];
    }

    goto LABEL_14;
  }

  if (!IMCoreLibraryCore_0() || !getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc())
  {
    v9 = SLDaemonLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SLDSyndicationService removeMessageGUIDFromSyndication:v9 reply:?];
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v8 = SLDaemonLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[SLDSyndicationService removeMessageGUIDFromSyndication:reply:]";
    v15 = 2112;
    v16 = syndicationCopy;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_INFO, "%s: Calling remove message guid: %@", &v13, 0x16u);
  }

  v9 = syndicationCopy;
  IMSPIRemoveMessageGUIDFromSyndicationSymbolLoc = getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc();
  if (!IMSPIRemoveMessageGUIDFromSyndicationSymbolLoc)
  {
    SLDCreateGroupPhotoImageWithGroupID_cold_2();
  }

  IMSPIRemoveMessageGUIDFromSyndicationSymbolLoc(v9);
  v11 = 1;
LABEL_15:

  replyCopy[2](replyCopy, v11);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeMessageGUIDFromSyndication:(os_log_t)log reply:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SLDSyndicationService removeMessageGUIDFromSyndication:reply:]";
  _os_log_error_impl(&dword_231772000, log, OS_LOG_TYPE_ERROR, "%s: IMSPIRemoveMessageGUIDFromSyndication is unavailable.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)removeMessageGUIDFromSyndication:(uint64_t)a1 reply:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SLDSyndicationService removeMessageGUIDFromSyndication:reply:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "%s: invalid messageGUID passed in: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end