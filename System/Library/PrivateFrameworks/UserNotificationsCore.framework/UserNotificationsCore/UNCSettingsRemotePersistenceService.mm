@interface UNCSettingsRemotePersistenceService
+ (id)_allowedClasses;
+ (id)clientInterface;
+ (id)serverInterface;
@end

@implementation UNCSettingsRemotePersistenceService

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[UNCSettingsRemotePersistenceService clientInterface];
  }

  v3 = clientInterface___interface;

  return v3;
}

uint64_t __54__UNCSettingsRemotePersistenceService_clientInterface__block_invoke()
{
  clientInterface___interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5681AD8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)serverInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UNCSettingsRemotePersistenceService_serverInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (serverInterface_onceToken != -1)
  {
    dispatch_once(&serverInterface_onceToken, block);
  }

  v2 = serverInterface___interface;

  return v2;
}

void __54__UNCSettingsRemotePersistenceService_serverInterface__block_invoke(uint64_t a1)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5673DC0];
  v3 = serverInterface___interface;
  serverInterface___interface = v2;

  v4 = serverInterface___interface;
  v5 = [*(a1 + 32) _allowedClasses];
  [v4 setClasses:v5 forSelector:sel_sectionInfosForSectionIDs_effective_withHandler_ argumentIndex:0 ofReply:0];

  v6 = serverInterface___interface;
  v7 = [*(a1 + 32) _allowedClasses];
  [v6 setClasses:v7 forSelector:sel_sectionInfosForSectionIDs_effective_withHandler_ argumentIndex:0 ofReply:1];

  v8 = serverInterface___interface;
  v9 = [*(a1 + 32) _allowedClasses];
  [v8 setClasses:v9 forSelector:sel_allSectionIDsWithHandler_ argumentIndex:0 ofReply:1];

  v10 = serverInterface___interface;
  v11 = [*(a1 + 32) _allowedClasses];
  [v10 setClasses:v11 forSelector:sel_allSectionInfosByIDWithHandler_ argumentIndex:0 ofReply:1];

  v12 = serverInterface___interface;
  v13 = [*(a1 + 32) _allowedClasses];
  [v12 setClasses:v13 forSelector:sel_allSortedSectionInfos_withHandler_ argumentIndex:0 ofReply:1];

  v14 = serverInterface___interface;
  v15 = [*(a1 + 32) _allowedClasses];
  [v14 setClasses:v15 forSelector:sel_allSortedActiveSections_withHandler_ argumentIndex:0 ofReply:1];

  v16 = serverInterface___interface;
  v17 = [*(a1 + 32) _allowedClasses];
  [v16 setClasses:v17 forSelector:sel_setAllSectionInfoByID_withHandler_ argumentIndex:0 ofReply:0];

  v18 = serverInterface___interface;
  v19 = [*(a1 + 32) _allowedClasses];
  [v18 setClasses:v19 forSelector:sel_clearedSectionsByIDWithHandler_ argumentIndex:0 ofReply:1];

  v20 = serverInterface___interface;
  v21 = [*(a1 + 32) _allowedClasses];
  [v20 setClasses:v21 forSelector:sel_setClearedSectionsByID_withHandler_ argumentIndex:0 ofReply:0];

  v22 = serverInterface___interface;
  v23 = [*(a1 + 32) _allowedClasses];
  [v22 setClasses:v23 forSelector:sel_readSectionInfoWithHandler_ argumentIndex:0 ofReply:1];

  v24 = serverInterface___interface;
  v25 = [*(a1 + 32) _allowedClasses];
  [v24 setClasses:v25 forSelector:sel_readSavedClearedSectionsWithHandler_ argumentIndex:0 ofReply:1];

  v26 = serverInterface___interface;
  v27 = [*(a1 + 32) _allowedClasses];
  [v26 setClasses:v27 forSelector:sel_readSectionOrderWithHandler_ argumentIndex:0 ofReply:1];

  v28 = serverInterface___interface;
  v29 = [*(a1 + 32) _allowedClasses];
  [v28 setClasses:v29 forSelector:sel_readSectionInfoLegacyFileWithHandler_ argumentIndex:0 ofReply:1];

  v30 = serverInterface___interface;
  v31 = [*(a1 + 32) _allowedClasses];
  [v30 setClasses:v31 forSelector:sel_writeClearedSections_ argumentIndex:0 ofReply:0];

  v32 = serverInterface___interface;
  v33 = [*(a1 + 32) _allowedClasses];
  [v32 setClasses:v33 forSelector:sel_writeSectionInfo_ argumentIndex:0 ofReply:0];

  v34 = serverInterface___interface;
  v35 = [*(a1 + 32) _allowedClasses];
  [v34 setClasses:v35 forSelector:sel_writeSectionOrder_ argumentIndex:0 ofReply:0];

  v36 = serverInterface___interface;
  v37 = MEMORY[0x1E695DFD8];
  v46[0] = objc_opt_class();
  v46[1] = objc_opt_class();
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v39 = [v37 setWithArray:v38];
  [v36 setClasses:v39 forSelector:sel_getEffectiveGlobalScheduledDeliveryTimesWithHandler_ argumentIndex:0 ofReply:1];

  v40 = serverInterface___interface;
  v41 = MEMORY[0x1E695DFD8];
  v45[0] = objc_opt_class();
  v45[1] = objc_opt_class();
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v43 = [v41 setWithArray:v42];
  [v40 setClasses:v43 forSelector:sel_setEffectiveGlobalScheduledDeliveryTimes_withHandler_ argumentIndex:0 ofReply:0];

  v44 = *MEMORY[0x1E69E9840];
}

+ (id)_allowedClasses
{
  if (_allowedClasses_onceToken != -1)
  {
    +[UNCSettingsRemotePersistenceService _allowedClasses];
  }

  v3 = _allowedClasses_allowedClasses;

  return v3;
}

void __54__UNCSettingsRemotePersistenceService__allowedClasses__block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
  v1 = [MEMORY[0x1E695DFD8] setWithArray:v0];
  v2 = _allowedClasses_allowedClasses;
  _allowedClasses_allowedClasses = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end