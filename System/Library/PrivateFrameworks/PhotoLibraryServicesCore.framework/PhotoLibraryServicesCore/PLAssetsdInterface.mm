@interface PLAssetsdInterface
+ (NSXPCInterface)assetsdInterface;
+ (void)_addCloudInterfaces:(id)interfaces;
+ (void)_addDebugInterfaces:(id)interfaces;
+ (void)_addDemoInterface:(id)interface;
+ (void)_addDiagnosticsInterface:(id)interface;
+ (void)_addLibraryInterfaces:(id)interfaces;
+ (void)_addMigrationInterface:(id)interface;
+ (void)_addNotificationInterface:(id)interface;
+ (void)_addPhotoKitAddInterface:(id)interface;
+ (void)_addPhotoKitInterface:(id)interface;
+ (void)_addResourceAvailabilityInterface:(id)interface;
+ (void)_addResourceInterfaces:(id)interfaces;
+ (void)_addSyncInterface:(id)interface;
@end

@implementation PLAssetsdInterface

+ (void)_addDebugInterfaces:(id)interfaces
{
  v3 = MEMORY[0x1E695DFD8];
  interfacesCopy = interfaces;
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
  [interfacesCopy setInterface:v13 forSelector:sel_getDebugServiceWithReply_ argumentIndex:0 ofReply:1];
  [v13 setClasses:v17 forSelector:sel_debugSidecarURLsWithObjectURI_reply_ argumentIndex:1 ofReply:1];
  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAE940];
  [interfacesCopy setInterface:v14 forSelector:sel_getNonBindingDebugServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addDiagnosticsInterface:(id)interface
{
  v3 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE450];
  [interfaceCopy setInterface:v5 forSelector:sel_getDiagnosticsServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addDemoInterface:(id)interface
{
  v3 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE398];
  [interfaceCopy setInterface:v5 forSelector:sel_getDemoServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addNotificationInterface:(id)interface
{
  v3 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE2D8];
  [interfaceCopy setInterface:v5 forSelector:sel_getNotificationServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addSyncInterface:(id)interface
{
  v3 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE190];
  [interfaceCopy setInterface:v5 forSelector:sel_getSyncServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addMigrationInterface:(id)interface
{
  v3 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAE0C8];
  [interfaceCopy setInterface:v5 forSelector:sel_getMigrationServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addCloudInterfaces:(id)interfaces
{
  v3 = MEMORY[0x1E696B0D0];
  interfacesCopy = interfaces;
  v6 = [v3 interfaceWithProtocol:&unk_1F1FADC50];
  [interfacesCopy setInterface:v6 forSelector:sel_getCloudServiceWithReply_ argumentIndex:0 ofReply:1];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAE010];
  [interfacesCopy setInterface:v5 forSelector:sel_getCloudInternalServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addResourceInterfaces:(id)interfaces
{
  v3 = MEMORY[0x1E696B0D0];
  interfacesCopy = interfaces;
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
  [interfacesCopy setInterface:v29 forSelector:sel_getResourceServiceWithReply_ argumentIndex:0 ofReply:1];
  v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FA7F68];
  [v24 setClasses:v27 forSelector:sel_saveAssetWithDataAndPorts_imageSurface_previewImageSurface_reply_ argumentIndex:0 ofReply:0];
  [v24 setClasses:v23 forSelector:sel_saveAssetWithDataAndPorts_imageSurface_previewImageSurface_reply_ argumentIndex:1 ofReply:1];
  [interfacesCopy setInterface:v24 forSelector:sel_getResourceWriteOnlyServiceWithReply_ argumentIndex:0 ofReply:1];
  v25 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FADB50];
  [v25 setClasses:v23 forSelector:sel_batchSaveAssetJobs_reply_ argumentIndex:0 ofReply:1];
  [interfacesCopy setInterface:v25 forSelector:sel_getResourceInternalServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addResourceAvailabilityInterface:(id)interface
{
  v3 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAD8E0];
  [interfaceCopy setInterface:v5 forSelector:sel_getResourceAvailabilityServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addPhotoKitAddInterface:(id)interface
{
  v3 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
  v5 = [v3 interfaceWithProtocol:&unk_1F1FAD880];
  [interfaceCopy setInterface:v5 forSelector:sel_getPhotoKitAddServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addPhotoKitInterface:(id)interface
{
  v3 = MEMORY[0x1E696B0D0];
  interfaceCopy = interface;
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
  [interfaceCopy setInterface:v17 forSelector:sel_getPhotoKitServiceWithReply_ argumentIndex:0 ofReply:1];
}

+ (void)_addLibraryInterfaces:(id)interfaces
{
  v3 = MEMORY[0x1E695DFD8];
  interfacesCopy = interfaces;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v16 = [v3 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD0B0];
  [v8 setClasses:v16 forSelector:sel_upgradePhotoLibraryDatabaseWithOptions_reply_ argumentIndex:0 ofReply:0];
  [interfacesCopy setInterface:v8 forSelector:sel_getLibraryServiceWithReply_ argumentIndex:0 ofReply:1];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD370];
  [interfacesCopy setInterface:v9 forSelector:sel_getLibraryInternalServiceWithReply_ argumentIndex:0 ofReply:1];
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD4A0];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, NSClassFromString(@"PLPhotoLibraryIdentifier"), 0}];
  [v10 setClasses:v16 forSelector:sel_createManagedPhotoLibraryWithOptions_sandboxExtension_reply_ argumentIndex:0 ofReply:0];
  [v10 setClasses:v13 forSelector:sel_findPhotoLibraryIdentifiersMatchingSearchCriteria_reply_ argumentIndex:0 ofReply:1];
  [interfacesCopy setInterface:v10 forSelector:sel_getLibraryManagementServiceWithReply_ argumentIndex:0 ofReply:1];
  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD560];
  [interfacesCopy setInterface:v14 forSelector:sel_getSystemLibraryURLReadOnlyServiceWithReply_ argumentIndex:0 ofReply:1];
  v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FAD618];
  [interfacesCopy setInterface:v15 forSelector:sel_getPrivacySupportServiceWithReply_ argumentIndex:0 ofReply:1];
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
  [self _addLibraryInterfaces:v3];
  [self _addPhotoKitInterface:v3];
  [self _addPhotoKitAddInterface:v3];
  [self _addResourceAvailabilityInterface:v3];
  [self _addResourceInterfaces:v3];
  [self _addCloudInterfaces:v3];
  [self _addMigrationInterface:v3];
  [self _addSyncInterface:v3];
  [self _addNotificationInterface:v3];
  [self _addDemoInterface:v3];
  [self _addDiagnosticsInterface:v3];
  [self _addDebugInterfaces:v3];

  return v3;
}

@end