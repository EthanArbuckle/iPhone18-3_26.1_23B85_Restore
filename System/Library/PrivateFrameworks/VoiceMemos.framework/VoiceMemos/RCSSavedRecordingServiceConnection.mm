@interface RCSSavedRecordingServiceConnection
+ (id)clientInterface;
+ (id)newConnection;
+ (id)serviceInterface;
@end

@implementation RCSSavedRecordingServiceConnection

+ (id)newConnection
{
  v3 = [[RCSSavedRecordingServiceConnection alloc] initWithMachServiceName:@"com.apple.voicememod.xpc" options:0];
  serviceInterface = [self serviceInterface];
  [(RCSSavedRecordingServiceConnection *)v3 setRemoteObjectInterface:serviceInterface];

  return v3;
}

+ (id)serviceInterface
{
  if (serviceInterface_onceToken != -1)
  {
    +[RCSSavedRecordingServiceConnection serviceInterface];
  }

  v3 = serviceInterface_interface;

  return v3;
}

void __54__RCSSavedRecordingServiceConnection_serviceInterface__block_invoke()
{
  v63[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2881B7128];
  v1 = serviceInterface_interface;
  serviceInterface_interface = v0;

  v2 = sel_prepareToCaptureToCompositionAVURL_accessRequestHandler_;
  v63[0] = sel_prepareToPreviewCompositionAVURL_accessRequestHandler_;
  v63[1] = sel_prepareToExportCompositionAVURL_accessRequestHandler_;
  v63[2] = sel_prepareToTrimCompositionAVURL_accessRequestHandler_;
  v63[3] = 0;
  v61 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v62 = [v61 initWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = [v14 setByAddingObjectsFromSet:v62];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v60 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v18 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = [v19 setWithObjects:{v20, v21, v22, v23, v58, objc_opt_class(), 0}];
  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
  if (sel_prepareToCaptureToCompositionAVURL_accessRequestHandler_)
  {
    v28 = v63;
    do
    {
      [serviceInterface_interface setClasses:v18 forSelector:v2 argumentIndex:0 ofReply:0];
      [serviceInterface_interface setClasses:v15 forSelector:v2 argumentIndex:0 ofReply:1];
      [serviceInterface_interface setClasses:v27 forSelector:v2 argumentIndex:1 ofReply:1];
      v29 = *v28++;
      v2 = v29;
    }

    while (v29);
  }

  [serviceInterface_interface setClasses:v15 forSelector:sel_endAccessSessionWithToken_completionBlock_ argumentIndex:0 ofReply:0];
  v30 = serviceInterface_interface;
  v31 = [v27 setByAddingObjectsFromSet:v15];
  [v30 setClasses:v31 forSelector:sel_endAccessSessionWithToken_completionBlock_ argumentIndex:0 ofReply:1];

  [serviceInterface_interface setClasses:v62 forSelector:sel_disableOrphanedFragmentCleanupForCompositionAVURL_completionBlock_ argumentIndex:0 ofReply:0];
  [serviceInterface_interface setClasses:v62 forSelector:sel_enableOrphanedFragmentCleanupForCompositionAVURL_ argumentIndex:0 ofReply:0];
  [serviceInterface_interface setClasses:v62 forSelector:sel_fetchCompositionAVURLsBeingExported_ argumentIndex:0 ofReply:1];
  [serviceInterface_interface setClasses:v62 forSelector:sel_fetchCompositionAVURLsBeingModified_ argumentIndex:0 ofReply:1];
  [serviceInterface_interface setClasses:v15 forSelector:sel__fetchAllAccessTokens_ argumentIndex:0 ofReply:1];
  [serviceInterface_interface setClasses:v60 forSelector:sel_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock_ argumentIndex:0 ofReply:0];
  v32 = serviceInterface_interface;
  v33 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v32 setClasses:v33 forSelector:sel_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock_ argumentIndex:1 ofReply:0];

  v34 = serviceInterface_interface;
  v35 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v34 setClasses:v35 forSelector:sel_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock_ argumentIndex:2 ofReply:0];

  v36 = serviceInterface_interface;
  v37 = [v62 setByAddingObjectsFromSet:v59];
  [v36 setClasses:v37 forSelector:sel_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock_ argumentIndex:3 ofReply:0];

  [serviceInterface_interface setClasses:v18 forSelector:sel_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock_ argumentIndex:0 ofReply:1];
  [serviceInterface_interface setClasses:v27 forSelector:sel_importRecordingWithSourceAudioURL_name_date_userInfo_importCompletionBlock_ argumentIndex:1 ofReply:1];
  [serviceInterface_interface setClasses:v27 forSelector:sel_enableCloudRecordingsWithCompletionBlock_ argumentIndex:0 ofReply:1];
  v38 = serviceInterface_interface;
  v39 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v38 setClasses:v39 forSelector:sel_importRecordingsFromCloud_ argumentIndex:0 ofReply:1];

  [serviceInterface_interface setClasses:v27 forSelector:sel_importRecordingsFromCloud_ argumentIndex:1 ofReply:1];
  v40 = serviceInterface_interface;
  v41 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v40 setClasses:v41 forSelector:sel_expungeRecordingsFromCloud_ argumentIndex:0 ofReply:1];

  [serviceInterface_interface setClasses:v27 forSelector:sel_expungeRecordingsFromCloud_ argumentIndex:1 ofReply:1];
  v42 = serviceInterface_interface;
  v43 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v42 setClasses:v43 forSelector:sel_exportRecordingsToCloud_ argumentIndex:0 ofReply:1];

  [serviceInterface_interface setClasses:v27 forSelector:sel_exportRecordingsToCloud_ argumentIndex:1 ofReply:1];
  v44 = serviceInterface_interface;
  v45 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v44 setClasses:v45 forSelector:sel_sizeOfRecordingsForExport_ argumentIndex:0 ofReply:1];

  [serviceInterface_interface setClasses:v27 forSelector:sel_sizeOfRecordingsForExport_ argumentIndex:1 ofReply:1];
  v46 = serviceInterface_interface;
  v47 = MEMORY[0x277CBEB98];
  v48 = objc_opt_class();
  v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
  [v46 setClasses:v49 forSelector:sel_fetchRecordingUUIDsForExport_ argumentIndex:0 ofReply:1];

  [serviceInterface_interface setClasses:v27 forSelector:sel_fetchRecordingUUIDsForExport_ argumentIndex:1 ofReply:1];
  v50 = serviceInterface_interface;
  v51 = [v62 setByAddingObjectsFromSet:v59];
  [v50 setClasses:v51 forSelector:sel_fetchMetadataForRecordingWithUUID_completionBlock_ argumentIndex:0 ofReply:1];

  [serviceInterface_interface setClasses:v27 forSelector:sel_fetchMetadataForRecordingWithUUID_completionBlock_ argumentIndex:1 ofReply:1];
  v52 = serviceInterface_interface;
  v53 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v52 setClasses:v53 forSelector:sel_fetchMetadataForRecordingWithUUID_completionBlock_ argumentIndex:0 ofReply:0];

  [serviceInterface_interface setClasses:v27 forSelector:sel_reloadExistingSearchMetadataWithCompletionBlock_ argumentIndex:0 ofReply:1];
  [serviceInterface_interface setClasses:v27 forSelector:sel_clearAndReloadSearchMetadataWithCompletionBlock_ argumentIndex:0 ofReply:1];
  v54 = MEMORY[0x277CBEB98];
  v55 = objc_opt_class();
  v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
  [serviceInterface_interface setClasses:v56 forSelector:sel_updateSearchMetadataWithRecordingURIsToInsert_recordingURIsToUpdate_recordingURIsToDelete_completionBlock_ argumentIndex:0 ofReply:0];
  [serviceInterface_interface setClasses:v56 forSelector:sel_updateSearchMetadataWithRecordingURIsToInsert_recordingURIsToUpdate_recordingURIsToDelete_completionBlock_ argumentIndex:1 ofReply:0];
  [serviceInterface_interface setClasses:v56 forSelector:sel_updateSearchMetadataWithRecordingURIsToInsert_recordingURIsToUpdate_recordingURIsToDelete_completionBlock_ argumentIndex:2 ofReply:0];
  [serviceInterface_interface setClasses:v27 forSelector:sel_updateSearchMetadataWithRecordingURIsToInsert_recordingURIsToUpdate_recordingURIsToDelete_completionBlock_ argumentIndex:0 ofReply:1];

  v57 = *MEMORY[0x277D85DE8];
}

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[RCSSavedRecordingServiceConnection clientInterface];
  }

  v3 = clientInterface_interface;

  return v3;
}

uint64_t __53__RCSSavedRecordingServiceConnection_clientInterface__block_invoke()
{
  clientInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2881B6BA8];

  return MEMORY[0x2821F96F8]();
}

@end