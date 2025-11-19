@interface PLAssetsdInterface
+ (NSXPCInterface)assetsdInterface;
+ (void)_addCloudInterfaces:(id)a3;
+ (void)_addDebugInterfaces:(id)a3;
+ (void)_addDemoInterface:(id)a3;
+ (void)_addDiagnosticsInterface:(id)a3;
+ (void)_addLibraryInterfaces:(id)a3;
+ (void)_addMigrationInterface:(id)a3;
+ (void)_addNotificationInterface:(id)a3;
+ (void)_addPhotoKitAddInterface:(id)a3;
+ (void)_addPhotoKitInterface:(id)a3;
+ (void)_addResourceAvailabilityInterface:(id)a3;
+ (void)_addResourceInterfaces:(id)a3;
+ (void)_addSyncInterface:(id)a3;
@end

@implementation PLAssetsdInterface

+ (void)_addDebugInterfaces:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v17 = [v3 setWithObjects:{v16, v15, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAE830];
  [v4 setInterface:v13 forSelector:sel_getDebugServiceWithReply_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v17 forSelector:sel_debugSidecarURLsWithObjectURI_reply_ argumentIndex:1 ofReply:1];
  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAE940];
  [v4 setInterface:v14 forSelector:sel_getNonBindingDebugServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addDiagnosticsInterface:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE450];
  [v4 setInterface:v5 forSelector:sel_getDiagnosticsServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addDemoInterface:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE398];
  [v4 setInterface:v5 forSelector:sel_getDemoServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addNotificationInterface:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE2D8];
  [v4 setInterface:v5 forSelector:sel_getNotificationServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addSyncInterface:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE190];
  [v4 setInterface:v5 forSelector:sel_getSyncServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addMigrationInterface:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE0C8];
  [v4 setInterface:v5 forSelector:sel_getMigrationServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addCloudInterfaces:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v6 = [v3 interfaceWithProtocol:&unk_1F1FADC50];
  [v4 setInterface:v6 forSelector:sel_getCloudServiceWithReply_ argumentIndex:0 ofReply:1];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAE010];
  [v4 setInterface:v5 forSelector:sel_getCloudInternalServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addResourceInterfaces:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v28 = a3;
  v29 = [v3 interfaceWithProtocol:&unk_1F1FADA78];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v27 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v13 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = [v13 setWithObjects:{v26, v14, v15, v16, v17, v18, v19, v20, v21, v22, objc_opt_class(), 0}];
  [v29 setClasses:v27 forSelector:sel_saveAssetWithDataAndPorts_imageSurface_previewImageSurface_reply_ argumentIndex:0 ofReply:0];
  [v29 setClasses:v23 forSelector:sel_saveAssetWithDataAndPorts_imageSurface_previewImageSurface_reply_ argumentIndex:1 ofReply:1];
  [v29 setClasses:v23 forSelector:sel_consolidateAssets_reply_ argumentIndex:0 ofReply:1];
  [v28 setInterface:v29 forSelector:sel_getResourceServiceWithReply_ argumentIndex:0 ofReply:1];
  v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FA7F68];
  [v24 setClasses:v27 forSelector:sel_saveAssetWithDataAndPorts_imageSurface_previewImageSurface_reply_ argumentIndex:0 ofReply:0];
  [v24 setClasses:v23 forSelector:sel_saveAssetWithDataAndPorts_imageSurface_previewImageSurface_reply_ argumentIndex:1 ofReply:1];
  [v28 setInterface:v24 forSelector:sel_getResourceWriteOnlyServiceWithReply_ argumentIndex:0 ofReply:1];
  v25 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FADB50];
  [v25 setClasses:v23 forSelector:sel_batchSaveAssetJobs_reply_ argumentIndex:0 ofReply:1];
  [v28 setInterface:v25 forSelector:sel_getResourceInternalServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addResourceAvailabilityInterface:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAD8E0];
  [v4 setInterface:v5 forSelector:sel_getResourceAvailabilityServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addPhotoKitAddInterface:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAD880];
  [v4 setInterface:v5 forSelector:sel_getPhotoKitAddServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addPhotoKitInterface:(id)a3
{
  v3 = MEMORY[0x1E696B0D0];
  v4 = a3;
  v17 = [v3 interfaceWithProtocol:&unk_1F1FAD7E8];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
  [v17 setClasses:v9 forSelector:sel_getUUIDsForAssetObjectURIs_filterPredicate_reply_ argumentIndex:0 ofReply:0];
  [v17 setClasses:v9 forSelector:sel_getUUIDsForAssetObjectURIs_filterPredicate_reply_ argumentIndex:1 ofReply:0];
  [v17 setClasses:v16 forSelector:sel_getUUIDsForAssetObjectURIs_filterPredicate_reply_ argumentIndex:0 ofReply:1];
  [v17 setClasses:v16 forSelector:sel_reserveCloudIdentifiersWithEntityName_count_reply_ argumentIndex:0 ofReply:1];
  [v17 setClasses:v16 forSelector:sel_reservedCloudIdentifiersWithEntityName_reply_ argumentIndex:0 ofReply:1];
  [v17 setClasses:v9 forSelector:sel_cancelReservedCloudIdentifiers_reply_ argumentIndex:0 ofReply:0];
  [v4 setInterface:v17 forSelector:sel_getPhotoKitServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addLibraryInterfaces:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v16 = [v3 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD0B0];
  [v8 setClasses:v16 forSelector:sel_upgradePhotoLibraryDatabaseWithOptions_reply_ argumentIndex:0 ofReply:0];
  [v4 setInterface:v8 forSelector:sel_getLibraryServiceWithReply_ argumentIndex:0 ofReply:1];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD370];
  [v4 setInterface:v9 forSelector:sel_getLibraryInternalServiceWithReply_ argumentIndex:0 ofReply:1];
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD4A0];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, NSClassFromString(@"PLPhotoLibraryIdentifier"), 0}];
  [v10 setClasses:v16 forSelector:sel_createManagedPhotoLibraryWithOptions_sandboxExtension_reply_ argumentIndex:0 ofReply:0];
  [v10 setClasses:v13 forSelector:sel_findPhotoLibraryIdentifiersMatchingSearchCriteria_reply_ argumentIndex:0 ofReply:1];
  [v4 setInterface:v10 forSelector:sel_getLibraryManagementServiceWithReply_ argumentIndex:0 ofReply:1];
  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD560];
  [v4 setInterface:v14 forSelector:sel_getSystemLibraryURLReadOnlyServiceWithReply_ argumentIndex:0 ofReply:1];
  v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD618];
  [v4 setInterface:v15 forSelector:sel_getPrivacySupportServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (NSXPCInterface)assetsdInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FACEA8];
  v15 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v15 setWithObjects:{v14, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v3 setClasses:v12 forSelector:sel_bindToPhotoLibraryURL_sandboxExtension_clientOptions_withReply_ argumentIndex:2 ofReply:0];
  [a1 _addLibraryInterfaces:v3];
  [a1 _addPhotoKitInterface:v3];
  [a1 _addPhotoKitAddInterface:v3];
  [a1 _addResourceAvailabilityInterface:v3];
  [a1 _addResourceInterfaces:v3];
  [a1 _addCloudInterfaces:v3];
  [a1 _addMigrationInterface:v3];
  [a1 _addSyncInterface:v3];
  [a1 _addNotificationInterface:v3];
  [a1 _addDemoInterface:v3];
  [a1 _addDiagnosticsInterface:v3];
  [a1 _addDebugInterfaces:v3];

  return v3;
}

@end