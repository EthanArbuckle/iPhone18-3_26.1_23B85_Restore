@interface SFCollaborationUtilities
+ (BOOL)canDeleteShareForCollaborationItem:(id)a3;
+ (BOOL)hasiWorkSendCopyRepresentationForItemProvider:(id)a3;
+ (BOOL)isCKShareItemProvider:(id)a3;
+ (BOOL)isCollaborationItemPrivateShare:(id)a3;
+ (BOOL)isHeroCollaborationActivityType:(id)a3;
+ (BOOL)isInPlaceFileOrURLItemProvider:(id)a3;
+ (BOOL)isOplockError:(id)a3 updatedShare:(id *)a4;
+ (BOOL)isPostCKShareItemProvider:(id)a3;
+ (BOOL)isPreCKShareItemProvider:(id)a3;
+ (BOOL)isSWYActivityItemProvider:(id)a3;
+ (BOOL)isServiceManateeCKShareItemProvider:(id)a3;
+ (BOOL)isSharedFileURL:(id)a3 isLocalStorageFileURL:(BOOL *)a4 isiCloudDriveFileURL:(BOOL *)a5 isInSharedFolder:(BOOL *)a6;
+ (BOOL)isThirdPartyFileProviderBackedURL:(id)a3;
+ (BOOL)shareSupportsRequestAccess:(id)a3 options:(id)a4;
+ (NSString)_copyRepresentationTypeIdentifier;
+ (NSString)defaultCKOptionsSummary;
+ (id)_dataForFilepath:(id)a3;
+ (id)baseCollaborationDictionaryFromCollaborationItem:(id)a3;
+ (id)ckShareDictionaryFromCKShare:(id)a3 setupInfo:(id)a4;
+ (id)createItemProviderForFileURL:(id)a3;
+ (id)createLinkMetadataWithCKShare:(id)a3 containerSetupInfo:(id)a4;
+ (id)createLinkMetadataWithCKShareItemProvider:(id)a3;
+ (id)descriptionForShareOptions:(id)a3;
+ (id)fileCollaborationItemFromActivityItems:(id)a3;
+ (id)fileShareDictionaryFromFileURLItems:(id)a3;
+ (id)optionsFromCKShare:(id)a3 previousCKOptions:(id)a4 newCKOptions:(id *)a5;
+ (id)underlyingCKErrorForError:(id)a3;
+ (id)urlFromActivityItem:(id)a3 allowsLoading:(BOOL)a4;
+ (id)urlRequestsForCollaborationItems:(id)a3;
+ (void)_addParticipantsAllowedForShare:(id)a3 completionHandler:(id)a4;
+ (void)_addParticipantsAllowedForURL:(id)a3 share:(id)a4 collaborationService:(id)a5 completionHandler:(id)a6;
+ (void)_copyRepresentationTypeIdentifier;
+ (void)_fetchCollaborationAppInfoIfNeededForActivityType:(id)a3 deviceScreenScale:(double)a4 appInfoCompletion:(id)a5;
+ (void)_findOriginatingSharedItemInParentItems:(id)a3 forSubitem:(id)a4 completionHandler:(id)a5;
+ (void)_loadCKShareWithMetadataForItemProvider:(id)a3 completionHandler:(id)a4;
+ (void)_loadShareOptionsForCKShareItemProvider:(id)a3 completionHandler:(id)a4;
+ (void)_loadShareOptionsForSWYItemProvider:(id)a3 completionHandler:(id)a4;
+ (void)_processRemainingActivityItems:(id)a3 toFinalActivityItems:(id)a4 onQueue:(id)a5 completion:(id)a6;
+ (void)addParticipantsAllowedForCollaborationItem:(id)a3 collaborationService:(id)a4 completionHandler:(id)a5;
+ (void)addParticipantsAllowedForURL:(id)a3 share:(id)a4 completionHandler:(id)a5;
+ (void)canShowShareOptionsForCollaborationItem:(id)a3 service:(id)a4 completionHandler:(id)a5;
+ (void)createCollaborationRequestWithCollaborationItem:(id)a3 activityType:(id)a4 deviceScreenScale:(double)a5 completionHandler:(id)a6;
+ (void)createMailContentForRequest:(id)a3 completionHandler:(id)a4;
+ (void)createSharingURLForCollaborationRequest:(id)a3 completionHandler:(id)a4;
+ (void)deleteSharingURL:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5;
+ (void)findOriginatingSharedItemForSubitemURL:(id)a3 completionHandler:(id)a4;
+ (void)getCKSharingOptionsFromOptions:(id)a3 accessType:(id *)a4 permissionType:(id *)a5 allowOthersToInvite:(id *)a6;
+ (void)getFailureTitle:(id *)a3 message:(id *)a4 error:(id)a5;
+ (void)isShareOwnerOrAdminForCollaborationItem:(id)a3 service:(id)a4 completionHandler:(id)a5;
+ (void)isShareOwnerOrAdminForFileURL:(id)a3 completionHandler:(id)a4;
+ (void)isShareOwnerOrAdminForShare:(id)a3 completionHandler:(id)a4;
+ (void)loadCKContainerForItemProvider:(id)a3 completionHandler:(id)a4;
+ (void)loadCKShareItemProvider:(id)a3 onlyPostShare:(BOOL)a4 completionHandler:(id)a5;
+ (void)loadMetadataForFileURL:(id)a3 completionHandler:(id)a4;
+ (void)loadMetadataForItemProvider:(id)a3 completionHandler:(id)a4;
+ (void)loadPendingCollaborationForItemProvider:(id)a3 completionHandler:(id)a4;
+ (void)loadSendCopyRepresentationIfNeededForActivityItems:(id)a3 completion:(id)a4;
+ (void)loadSendCopyRepresentationIfNeededForItemProvider:(id)a3 completion:(id)a4;
+ (void)loadShareOptionsForItemProvider:(id)a3 completionHandler:(id)a4;
+ (void)loadiWorkCopyRepresentationURLForItemProvider:(id)a3 completionHandler:(id)a4;
+ (void)requestSharedURLForCollaborationItem:(id)a3 collaborationService:(id)a4 completionHandler:(id)a5;
+ (void)requestSharedURLForCollaborationRequest:(id)a3 completionHandler:(id)a4;
+ (void)shareStatusForURL:(id)a3 completionHandler:(id)a4;
@end

@implementation SFCollaborationUtilities

+ (id)baseCollaborationDictionaryFromCollaborationItem:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 metadata];
  [v5 setObject:v6 forKeyedSubscript:@"CollaborationMetadata"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "type")}];
  [v5 setObject:v7 forKeyedSubscript:@"CollaborationType"];

  v8 = [v4 shareOptions];
  [v5 setObject:v8 forKeyedSubscript:@"CollaborationShareOptions"];

  v9 = [v4 shareOptions];

  v10 = [v9 optionsGroups];
  [v5 setObject:v10 forKeyedSubscript:@"CollaborationOptions"];

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CollaborationMode"];

  return v5;
}

+ (BOOL)isCKShareItemProvider:(id)a3
{
  v3 = a3;
  v4 = get_CKCloudKitPreShareType();
  if ([v3 hasItemConformingToTypeIdentifier:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = get_CKCloudKitPostShareType();
    v5 = [v3 hasItemConformingToTypeIdentifier:v6];
  }

  return v5;
}

+ (BOOL)isPreCKShareItemProvider:(id)a3
{
  v3 = a3;
  v4 = get_CKCloudKitPreShareType();
  v5 = [v3 hasItemConformingToTypeIdentifier:v4];

  return v5;
}

+ (BOOL)isPostCKShareItemProvider:(id)a3
{
  v3 = a3;
  v4 = get_CKCloudKitPostShareType();
  v5 = [v3 hasItemConformingToTypeIdentifier:v4];

  return v5;
}

+ (void)getCKSharingOptionsFromOptions:(id)a3 accessType:(id *)a4 permissionType:(id *)a5 allowOthersToInvite:(id *)a6
{
  v9 = a3;
  if ([v9 count])
  {
    v10 = soft_CKSharingAccessTypeFromOptionsGroups(v9);
    v11 = v9;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v12 = getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr;
    v22 = getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr;
    if (!getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr)
    {
      v13 = CloudKitLibrary_0();
      v20[3] = dlsym(v13, "CKSharingPermissionTypeFromOptionsGroups");
      getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr = v20[3];
      v12 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v12)
    {
      +[SFCollaborationUtilities getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:];
    }

    v14 = v12(v11);

    v15 = v11;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v16 = getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr;
    v22 = getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr;
    if (!getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr)
    {
      v17 = CloudKitLibrary_0();
      v20[3] = dlsym(v17, "CKSharingAllowOthersToInviteFromOptionsGroups");
      getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr = v20[3];
      v16 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v16)
    {
      +[SFCollaborationUtilities getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:];
    }

    v18 = v16(v15);
  }

  else
  {
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:];
    }

    v18 = 0;
    v14 = 0;
    v10 = 0;
  }

  *a4 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  *a5 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  *a6 = [MEMORY[0x1E696AD98] numberWithBool:v18];
}

+ (id)ckShareDictionaryFromCKShare:(id)a3 setupInfo:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = gelato_sharing_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_INFO, "Creating dictionary from ckShare: %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    [v8 setValue:v9 forKey:@"share"];
  }

  else if (v10)
  {
    [v8 setObject:v10 forKey:@"shareError"];
  }

  v16 = v11;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v16];
  v13 = v16;

  if (v12)
  {
    [v8 setValue:v12 forKey:@"setupInfo"];
  }

  else if (v13)
  {
    [v8 setObject:v13 forKey:@"setupInfoError"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (NSString)defaultCKOptionsSummary
{
  v2 = [getCKAllowedSharingOptionsClass() standardOptions];
  v3 = [v2 shareOptions];
  v4 = [v3 summary];

  return v4;
}

+ (void)deleteSharingURL:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "remove sharingURL:%@ with containerSetupInfo:%@", &v12, 0x16u);
  }

  [getCloudSharingClass() removeFromShareURL:v7 containerSetupInfo:v8 completionHandler:v9];
  v11 = *MEMORY[0x1E69E9840];
}

+ (void)_loadShareOptionsForCKShareItemProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 canLoadObjectOfClass:getCKAllowedSharingOptionsClass()])
  {
    v7 = gelato_sharing_log();
    v8 = os_signpost_id_make_with_pointer(v7, v5);

    v9 = gelato_sharing_log();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationLoadShareOptionsForCKShareItemProvider", "", buf, 2u);
    }

    CKAllowedSharingOptionsClass = getCKAllowedSharingOptionsClass();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__SFCollaborationUtilities__loadShareOptionsForCKShareItemProvider_completionHandler___block_invoke;
    v14[3] = &unk_1E788E340;
    v16 = v8;
    v15 = v6;
    v12 = [v5 loadObjectOfClass:CKAllowedSharingOptionsClass completionHandler:v14];
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities _loadShareOptionsForCKShareItemProvider:completionHandler:];
    }

    (*(v6 + 2))(v6, 0, 0);
  }
}

void __86__SFCollaborationUtilities__loadShareOptionsForCKShareItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v7)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __86__SFCollaborationUtilities__loadShareOptionsForCKShareItemProvider_completionHandler___block_invoke_cold_1();
    }
  }

  v9 = gelato_sharing_log();
  v10 = v9;
  v11 = *(a1 + 40);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CollaborationLoadShareOptionsForCKShareItemProvider", "", v14, 2u);
  }

  v12 = *(a1 + 32);
  v13 = [v7 shareOptions];
  (*(v12 + 16))(v12, v13, v7);
}

+ (void)loadCKShareItemProvider:(id)a3 onlyPostShare:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = gelato_sharing_log();
  v10 = os_signpost_id_make_with_pointer(v9, v7);

  v11 = gelato_sharing_log();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CollaborationLoadCKShareItemProvider", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E368;
  v33 = v10;
  v13 = v8;
  v32 = v13;
  v14 = _Block_copy(aBlock);
  v15 = get_CKCloudKitPostShareType();
  v16 = [v7 hasItemConformingToTypeIdentifier:v15];

  if (v16)
  {
    CKPostSharingContextClass = getCKPostSharingContextClass();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165;
    v27[3] = &unk_1E788E3B8;
    v30 = a4;
    v18 = &v28;
    v19 = v7;
    v28 = v19;
    v29 = v14;
    v20 = [v19 loadObjectOfClass:CKPostSharingContextClass completionHandler:v27];

LABEL_8:
    goto LABEL_9;
  }

  v21 = get_CKCloudKitPreShareType();
  v22 = [v7 hasItemConformingToTypeIdentifier:v21];

  if (v22)
  {
    CKPreSharingContextClass = getCKPreSharingContextClass();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_167;
    v25[3] = &unk_1E788E390;
    v18 = &v26;
    v26 = v14;
    v24 = [v7 loadObjectOfClass:CKPreSharingContextClass completionHandler:v25];
    goto LABEL_8;
  }

LABEL_9:
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Cksharingconte.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 share];
    v6 = [v4 containerSetupInfo];
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = gelato_sharing_log();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollaborationLoadCKShareItemProvider", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    goto LABEL_7;
  }

  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165_cold_1();
  }

  if ((*(a1 + 48) & 1) != 0 || (v8 = *(a1 + 32), get_CKCloudKitPreShareType(), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = [v8 hasItemConformingToTypeIdentifier:v9], v9, !v8))
  {
LABEL_7:
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    CKPreSharingContextClass = getCKPreSharingContextClass();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166;
    v13[3] = &unk_1E788E390;
    v14 = *(a1 + 40);
    v12 = [v10 loadObjectOfClass:CKPreSharingContextClass completionHandler:v13];
  }
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)_loadCKShareWithMetadataForItemProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = gelato_sharing_log();
  v8 = os_signpost_id_make_with_pointer(v7, v5);

  v9 = gelato_sharing_log();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationLoadCKShareWithMetadataForItemProvider", "", buf, 2u);
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __86__SFCollaborationUtilities__loadCKShareWithMetadataForItemProvider_completionHandler___block_invoke;
  v22 = &unk_1E788E340;
  v23 = v6;
  v24 = v8;
  v11 = v6;
  v12 = _Block_copy(&v19);
  v13 = get_CKCloudKitPostShareType();
  v14 = [v5 hasItemConformingToTypeIdentifier:{v13, v19, v20, v21, v22}];

  if (v14)
  {
    CKPostSharingContextClass = getCKPostSharingContextClass();
LABEL_8:
    v18 = [v5 loadObjectOfClass:CKPostSharingContextClass completionHandler:v12];
    goto LABEL_9;
  }

  v16 = get_CKCloudKitPreShareType();
  v17 = [v5 hasItemConformingToTypeIdentifier:v16];

  if (v17)
  {
    CKPostSharingContextClass = getCKPreSharingContextClass();
    goto LABEL_8;
  }

LABEL_9:
}

void __86__SFCollaborationUtilities__loadCKShareWithMetadataForItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165_cold_1();
    }
  }

  NSClassFromString(&cfstr_Cksharingconte.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = [v8 share];
    v10 = [v8 containerSetupInfo];
    v11 = [v8 allowedOptions];

    v12 = [v11 shareOptions];
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v9 = 0;
  }

  v13 = gelato_sharing_log();
  v14 = v13;
  v15 = *(a1 + 40);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v14, OS_SIGNPOST_INTERVAL_END, v15, "CollaborationLoadCKShareWithMetadataForItemProvider", "", v16, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)loadCKContainerForItemProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v7 = get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr;
  v27 = get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr;
  if (!get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __get_CKCloudKitContainerSetupInfoTypeSymbolLoc_block_invoke;
    v22 = &unk_1E788A938;
    v23 = &v24;
    v8 = CloudKitLibrary_0();
    v25[3] = dlsym(v8, "_CKCloudKitContainerSetupInfoType");
    get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr = *(v23[1] + 24);
    v7 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v7)
  {
    +[SFCollaborationUtilities loadCKContainerForItemProvider:completionHandler:];
  }

  if ([v5 hasItemConformingToTypeIdentifier:*v7])
  {
    v9 = gelato_sharing_log();
    v10 = os_signpost_id_make_with_pointer(v9, v5);

    v11 = gelato_sharing_log();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CollaborationLoadCKContainerForItemProvider", "", buf, 2u);
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v13 = getCKContainerSetupInfoClass_softClass_0;
    v27 = getCKContainerSetupInfoClass_softClass_0;
    if (!getCKContainerSetupInfoClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getCKContainerSetupInfoClass_block_invoke_0;
      v22 = &unk_1E788A938;
      v23 = &v24;
      __getCKContainerSetupInfoClass_block_invoke_0(buf);
      v13 = v25[3];
    }

    v14 = v13;
    _Block_object_dispose(&v24, 8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __77__SFCollaborationUtilities_loadCKContainerForItemProvider_completionHandler___block_invoke;
    v16[3] = &unk_1E788E340;
    v18 = v10;
    v17 = v6;
    v15 = [v5 loadObjectOfClass:v13 completionHandler:v16];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __77__SFCollaborationUtilities_loadCKContainerForItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationLoadCKContainerForItemProvider", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (BOOL)isServiceManateeCKShareItemProvider:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SFCollaborationUtilities_isServiceManateeCKShareItemProvider___block_invoke;
  v9[3] = &unk_1E788E3E0;
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [SFCollaborationUtilities loadCKContainerForItemProvider:v3 completionHandler:v9];
  v6 = dispatch_time(0, 200000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

intptr_t __64__SFCollaborationUtilities_isServiceManateeCKShareItemProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containerOptions];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isServiceManatee];

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

+ (BOOL)isCollaborationItemPrivateShare:(id)a3
{
  v3 = [a3 options];
  if ([v3 count])
  {
    v4 = soft_CKSharingAccessTypeFromOptionsGroups(v3) == 1;
  }

  else
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isCollaborationItemPrivateShare:];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)createLinkMetadataWithCKShareItemProvider:(id)a3
{
  v4 = a3;
  if ([a1 isPostCKShareItemProvider:v4])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__7;
    v27 = __Block_byref_object_dispose__7;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__7;
    v21 = __Block_byref_object_dispose__7;
    v22 = 0;
    v5 = dispatch_semaphore_create(0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__SFCollaborationUtilities_createLinkMetadataWithCKShareItemProvider___block_invoke;
    v13[3] = &unk_1E788E408;
    v15 = &v23;
    v16 = &v17;
    v6 = v5;
    v14 = v6;
    [a1 loadCKShareItemProvider:v4 onlyPostShare:1 completionHandler:v13];
    v7 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v6, v7);
    v8 = v24[5];
    if (v8)
    {
      v9 = [SFCollaborationUtilities createLinkMetadataWithCKShare:v8 containerSetupInfo:v18[5]];
    }

    else
    {
      v10 = share_sheet_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "timed out to load post CKShare to provide metadata.", v12, 2u);
      }

      v9 = 0;
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __70__SFCollaborationUtilities_createLinkMetadataWithCKShareItemProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)createLinkMetadataWithCKShare:(id)a3 containerSetupInfo:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v7 = getLPiCloudSharingMetadataClass_softClass;
  v44 = getLPiCloudSharingMetadataClass_softClass;
  if (!getLPiCloudSharingMetadataClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getLPiCloudSharingMetadataClass_block_invoke;
    v46 = &unk_1E788A938;
    v47 = &v41;
    __getLPiCloudSharingMetadataClass_block_invoke(buf);
    v7 = v42[3];
  }

  v8 = v7;
  _Block_object_dispose(&v41, 8);
  v9 = objc_alloc_init(v7);
  v10 = getCKShareTitleKey();
  v11 = [v5 objectForKeyedSubscript:{v10, v41}];
  [v9 setTitle:v11];

  v12 = [v6 containerOptions];
  v13 = [v12 applicationBundleIdentifierOverrideForContainerAccess];

  if ([v13 length])
  {
    v14 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v13 allowPlaceholder:1 error:0];
    v15 = [v14 URL];

    if (v15)
    {
      v16 = MEMORY[0x1E696AAE8];
      v17 = [v14 URL];
      v18 = [v16 bundleWithURL:v17];

      if (v18)
      {
        v19 = [v18 infoDictionary];
        v20 = [v19 objectForKeyedSubscript:@"CFBundleDisplayName"];
        [v9 setApplication:v20];
        v21 = share_sheet_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&dword_1A9662000, v21, OS_LOG_TYPE_DEFAULT, "Setting application to:%@ for bundleIdentifier: %@", buf, 0x16u);
        }

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      v22 = share_sheet_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[SFCollaborationUtilities createLinkMetadataWithCKShare:containerSetupInfo:];
      }
    }

    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities createLinkMetadataWithCKShare:v14 containerSetupInfo:?];
    }

    goto LABEL_16;
  }

  v14 = share_sheet_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[SFCollaborationUtilities createLinkMetadataWithCKShare:containerSetupInfo:];
  }

LABEL_17:

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v23 = getCKShareThumbnailImageDataKeySymbolLoc_ptr;
  v44 = getCKShareThumbnailImageDataKeySymbolLoc_ptr;
  if (!getCKShareThumbnailImageDataKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCKShareThumbnailImageDataKeySymbolLoc_block_invoke;
    v46 = &unk_1E788A938;
    v47 = &v41;
    v24 = CloudKitLibrary_0();
    v25 = dlsym(v24, "CKShareThumbnailImageDataKey");
    *(v47[1] + 24) = v25;
    getCKShareThumbnailImageDataKeySymbolLoc_ptr = *(v47[1] + 24);
    v23 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v23)
  {
    +[SFCollaborationUtilities createLinkMetadataWithCKShare:containerSetupInfo:];
  }

  v26 = [v5 objectForKeyedSubscript:{*v23, v41}];
  if (v26)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v27 = getLPImageClass_softClass;
    v44 = getLPImageClass_softClass;
    if (!getLPImageClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLPImageClass_block_invoke;
      v46 = &unk_1E788A938;
      v47 = &v41;
      __getLPImageClass_block_invoke(buf);
      v27 = v42[3];
    }

    v28 = v27;
    _Block_object_dispose(&v41, 8);
    v29 = [v27 alloc];
    v30 = [v29 initWithData:v26 MIMEType:{@"image/png", v41}];
    [v9 setIcon:v30];
LABEL_24:

    goto LABEL_25;
  }

  v40 = share_sheet_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&dword_1A9662000, v40, OS_LOG_TYPE_DEFAULT, "Falling back to using App Icon for bundleIdentifier:%@", buf, 0xCu);
  }

  if (![v13 length])
  {
    v30 = share_sheet_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities createLinkMetadataWithCKShare:containerSetupInfo:];
    }

    goto LABEL_24;
  }

  if ([v13 containsString:@"com.apple."])
  {
    v30 = share_sheet_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&dword_1A9662000, v30, OS_LOG_TYPE_DEFAULT, "Not defaulting an icon for %@. Please file a radar!", buf, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_25:
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v31 = getLPSharedObjectMetadataClass_softClass;
  v44 = getLPSharedObjectMetadataClass_softClass;
  if (!getLPSharedObjectMetadataClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getLPSharedObjectMetadataClass_block_invoke;
    v46 = &unk_1E788A938;
    v47 = &v41;
    __getLPSharedObjectMetadataClass_block_invoke(buf);
    v31 = v42[3];
  }

  v32 = v31;
  _Block_object_dispose(&v41, 8);
  v33 = objc_alloc_init(v31);
  [v33 setSpecialization:{v9, v41}];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v34 = getLPLinkMetadataClass_softClass;
  v44 = getLPLinkMetadataClass_softClass;
  if (!getLPLinkMetadataClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getLPLinkMetadataClass_block_invoke;
    v46 = &unk_1E788A938;
    v47 = &v41;
    __getLPLinkMetadataClass_block_invoke(buf);
    v34 = v42[3];
  }

  v35 = v34;
  _Block_object_dispose(&v41, 8);
  v36 = objc_alloc_init(v34);
  v37 = [v5 URL];
  [v36 setOriginalURL:v37];

  [v36 setSpecialization:v33];
  v38 = *MEMORY[0x1E69E9840];

  return v36;
}

+ (id)optionsFromCKShare:(id)a3 previousCKOptions:(id)a4 newCKOptions:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [getCKAllowedSharingOptionsClass() resolvedOptionsFromOptions:v7 forExistingShare:v8];

  if (a5)
  {
    v10 = v9;
    *a5 = v9;
  }

  v11 = [v9 shareOptions];

  return v11;
}

+ (BOOL)shareSupportsRequestAccess:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 allowsAccessRequests])
  {
    v7 = 1;
  }

  else if ([v6 count])
  {
    v8 = v6;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v9 = getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr;
    v15 = getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr;
    if (!getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr)
    {
      v10 = CloudKitLibrary_0();
      v13[3] = dlsym(v10, "CKSharingAllowAccessRequestsFromOptionsGroups");
      getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr = v13[3];
      v9 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v9)
    {
      +[SFCollaborationUtilities shareSupportsRequestAccess:options:];
    }

    v7 = v9(v8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fileShareDictionaryFromFileURLItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = gelato_sharing_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_INFO, "Creating dictionary from fileURLs: %@", buf, 0xCu);
  }

  if ([v3 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    if ([v3 count])
    {
      [v5 setObject:v3 forKeyedSubscript:@"fileURLs"];
      v6 = [MEMORY[0x1E695DF70] array];
      [v5 setObject:v6 forKeyedSubscript:@"files"];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            __64__SFCollaborationUtilities_fileShareDictionaryFromFileURLItems___block_invoke(v8, *(*(&v14 + 1) + 8 * v11++), v6);
          }

          while (v9 != v11);
          v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          v9 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

void __64__SFCollaborationUtilities_fileShareDictionaryFromFileURLItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v11 = 0;
  v6 = [v4 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v11];
  v7 = v11;
  if (v6)
  {
    [v5 addObject:v6];
  }

  else
  {
    v8 = gelato_sharing_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v4 absoluteString];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1A9662000, v8, OS_LOG_TYPE_INFO, "Failed to create bookmark data for URL: %@ %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isThirdPartyFileProviderBackedURL:(id)a3
{
  v3 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = getFPProviderDomainClass_softClass;
  v18 = getFPProviderDomainClass_softClass;
  if (!getFPProviderDomainClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getFPProviderDomainClass_block_invoke;
    v14[3] = &unk_1E788A938;
    v14[4] = &v15;
    __getFPProviderDomainClass_block_invoke(v14);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  v13 = 0;
  v6 = [v4 providerDomainForURL:v3 error:&v13];
  v7 = v13;
  if (!v6)
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isThirdPartyFileProviderBackedURL:];
    }

    goto LABEL_9;
  }

  v8 = [v6 providerID];
  v9 = [v8 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v9)
  {
LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  v10 = [v6 isiCloudDriveProvider] ^ 1;
LABEL_10:

  return v10;
}

+ (BOOL)isSharedFileURL:(id)a3 isLocalStorageFileURL:(BOOL *)a4 isiCloudDriveFileURL:(BOOL *)a5 isInSharedFolder:(BOOL *)a6
{
  v9 = a3;
  v10 = [getFPItemManagerClass() defaultManager];
  v19 = 0;
  v11 = [v10 itemForURL:v9 error:&v19];
  v12 = v19;

  if (!v11)
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isSharedFileURL:isLocalStorageFileURL:isiCloudDriveFileURL:isInSharedFolder:];
    }
  }

  if (a4)
  {
    *a4 = v11 != 0;
  }

  v14 = [v11 isShared];
  if (a5)
  {
    v15 = [v11 itemID];
    v16 = [v15 providerID];
    *a5 = [v16 fp_isiCloudDriveIdentifier];
  }

  if (a6)
  {
    if (v14)
    {
      v17 = [v11 isTopLevelSharedItem] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    *a6 = v17;
  }

  return v14;
}

+ (id)fileCollaborationItemFromActivityItems:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          if (![v9 type])
          {
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = 0;
LABEL_12:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)urlFromActivityItem:(id)a3 allowsLoading:(BOOL)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_4:
    v7 = v6;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || a4)
      {
        v6 = [v5 shareItemURL];
        goto LABEL_4;
      }

      v10 = share_sheet_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Activity item %@ is an item provider, skipping load for URL since we only want placeholder values", &v13, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  v9 = v8;
  if (v8 && SFIsStringURLSafelyConvertible(v8))
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

LABEL_18:
  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)createItemProviderForFileURL:(id)a3
{
  v3 = a3;
  v4 = gelato_sharing_log();
  v5 = os_signpost_id_make_with_pointer(v4, v3);

  v6 = gelato_sharing_log();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CollaborationCreateItemProviderForFileURL", "", buf, 2u);
  }

  v8 = [v3 pathExtension];
  if (!v8 || (PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6982C48], v8, 0)) == 0)
  {
    PreferredIdentifierForTag = [*MEMORY[0x1E6982D60] identifier];
  }

  v10 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__SFCollaborationUtilities_createItemProviderForFileURL___block_invoke;
  v13[3] = &unk_1E788E430;
  v14 = v3;
  v15 = v5;
  v11 = v3;
  [v10 registerFileRepresentationForTypeIdentifier:PreferredIdentifierForTag fileOptions:1 visibility:0 loadHandler:v13];

  return v10;
}

uint64_t __57__SFCollaborationUtilities_createItemProviderForFileURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationCreateItemProviderForFileURL", "", v8, 2u);
  }

  (*(v3 + 2))(v3, *(a1 + 32), 0, 0);
  return 0;
}

+ (void)requestSharedURLForCollaborationItem:(id)a3 collaborationService:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = gelato_sharing_log();
  v12 = os_signpost_id_make_with_pointer(v11, v8);

  v13 = gelato_sharing_log();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CollaborationRequestSharedURLForCollaborationItem", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E458;
  v48 = v12;
  v15 = v10;
  v47 = v15;
  v16 = _Block_copy(aBlock);
  if (![v8 type])
  {
    v17 = v8;
    v19 = [v17 fileURL];
    if ([v17 isiCloudDrive])
    {
      if (v9)
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_203;
        v43[3] = &unk_1E788E4A8;
        v44 = v9;
        v45 = v16;
        [a1 createCollaborationRequestWithCollaborationItem:v17 activityType:@"com.apple.UIKit.activity.CollaborationCopyLink" deviceScreenScale:v43 completionHandler:0.0];
      }

      else
      {
        v34 = share_sheet_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          +[SFCollaborationUtilities requestSharedURLForCollaborationItem:collaborationService:completionHandler:];
        }

        (*(v16 + 2))(v16, 0, 0);
      }
    }

    else
    {
      v54 = 0;
      v55 = &v54;
      v56 = 0x2050000000;
      v22 = get_SWStartCollaborationActionClass_softClass;
      v57 = get_SWStartCollaborationActionClass_softClass;
      if (!get_SWStartCollaborationActionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        v50 = 3221225472;
        v51 = __get_SWStartCollaborationActionClass_block_invoke;
        v52 = &unk_1E788A938;
        v53 = &v54;
        __get_SWStartCollaborationActionClass_block_invoke(buf);
        v22 = v55[3];
      }

      v23 = v22;
      _Block_object_dispose(&v54, 8);
      v24 = [v17 metadata];
      v25 = [v22 actionWithMetadata:v24];

      if (SharedWithYouCoreLibrary())
      {
        v26 = SharedWithYouCoreLibrary();
        if (dlsym(v26, "SWPerformActionForDocumentURL"))
        {
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_207;
          v41[3] = &unk_1E788E4D0;
          v42 = v16;
          v35 = v19;
          v27 = v25;
          v28 = v41;
          v54 = 0;
          v55 = &v54;
          v56 = 0x2020000000;
          v29 = getSWPerformActionForDocumentURLSymbolLoc_ptr;
          v57 = getSWPerformActionForDocumentURLSymbolLoc_ptr;
          if (!getSWPerformActionForDocumentURLSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            v50 = 3221225472;
            v51 = __getSWPerformActionForDocumentURLSymbolLoc_block_invoke;
            v52 = &unk_1E788A938;
            v53 = &v54;
            v30 = SharedWithYouCoreLibrary();
            v31 = dlsym(v30, "SWPerformActionForDocumentURL");
            *(v53[1] + 24) = v31;
            getSWPerformActionForDocumentURLSymbolLoc_ptr = *(v53[1] + 24);
            v29 = v55[3];
          }

          _Block_object_dispose(&v54, 8);
          if (!v29)
          {
            +[SFCollaborationUtilities requestSharedURLForCollaborationItem:collaborationService:completionHandler:];
          }

          v29(v35, v27, v28);
        }
      }
    }

    goto LABEL_36;
  }

  if ([v8 type] == 1)
  {
    v17 = [v8 itemProvider];
    if ([SFCollaborationUtilities isPostCKShareItemProvider:v17])
    {
      if (v9 && [v8 optionsChanged])
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_2_209;
        v38[3] = &unk_1E788E4A8;
        v39 = v9;
        v40 = v16;
        [a1 createCollaborationRequestWithCollaborationItem:v8 activityType:@"com.apple.UIKit.activity.CollaborationCopyLink" deviceScreenScale:v38 completionHandler:0.0];

        v18 = v39;
      }

      else
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_4;
        v36[3] = &unk_1E788E4F8;
        v37 = v16;
        [SFCollaborationUtilities loadCKShareItemProvider:v17 onlyPostShare:1 completionHandler:v36];
        v18 = v37;
      }
    }

    else
    {
      v32 = share_sheet_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[SFCollaborationUtilities requestSharedURLForCollaborationItem:collaborationService:completionHandler:];
      }

      (*(v16 + 2))(v16, 0, 0);
    }

LABEL_36:

    goto LABEL_37;
  }

  if ([v8 type] == 2)
  {
    v20 = [v8 cloudSharingResult];
    v21 = [v20 sharingURL];

    (*(v16 + 2))(v16, v21, 0);
  }

  else
  {
    v33 = share_sheet_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities requestSharedURLForCollaborationItem:v8 collaborationService:? completionHandler:?];
    }

    (*(v16 + 2))(v16, 0, 0);
  }

LABEL_37:
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = gelato_sharing_log();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollaborationRequestSharedURLForCollaborationItem", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_203(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_2;
  v4[3] = &unk_1E788E480;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 requestSharedURLForCollaborationRequest:a2 completionHandler:v4];
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 sharingURL];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_207(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v8 url];
  (*(v5 + 16))(v5, v7, v6);
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_2_209(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_3;
  v4[3] = &unk_1E788E480;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 requestSharedURLForCollaborationRequest:a2 completionHandler:v4];
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 sharingURL];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URL];
  (*(v2 + 16))(v2, v3, 0);
}

+ (void)findOriginatingSharedItemForSubitemURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [getFPItemManagerClass() defaultManager];
  v20 = 0;
  v9 = [v8 itemForURL:v6 error:&v20];
  v10 = v20;

  if (v9)
  {
    objc_initWeak(&location, a1);
    v11 = [getFPItemManagerClass() defaultManager];
    v12 = [v9 itemID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__SFCollaborationUtilities_findOriginatingSharedItemForSubitemURL_completionHandler___block_invoke;
    v14[3] = &unk_1E788E520;
    v15 = v6;
    v17 = v7;
    objc_copyWeak(&v18, &location);
    v16 = v9;
    [v11 fetchParentsForItemID:v12 recursively:1 completionHandler:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isSharedFileURL:isLocalStorageFileURL:isiCloudDriveFileURL:isInSharedFolder:];
    }

    (*(v7 + 2))(v7, 0, v10);
  }
}

void __85__SFCollaborationUtilities_findOriginatingSharedItemForSubitemURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _findOriginatingSharedItemInParentItems:v5 forSubitem:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __85__SFCollaborationUtilities_findOriginatingSharedItemForSubitemURL_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)_findOriginatingSharedItemInParentItems:(id)a3 forSubitem:(id)a4 completionHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v23;
    v15 = v10;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ([v17 isShared])
        {
          v18 = v17;
          v19 = v15;
          v15 = v18;
        }

        else
        {
          v20 = [v15 fileURL];
          v19 = v13;
          v13 = v20;
        }
      }

      v12 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v15 = v10;
  }

  v9[2](v9, v13, 0);

  v21 = *MEMORY[0x1E69E9840];
}

+ (BOOL)hasiWorkSendCopyRepresentationForItemProvider:(id)a3
{
  v3 = a3;
  v4 = +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
  if (v4)
  {
    v5 = [v3 hasItemConformingToTypeIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)loadiWorkCopyRepresentationURLForItemProvider:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([SFCollaborationUtilities hasiWorkSendCopyRepresentationForItemProvider:v5])
  {
    v7 = gelato_sharing_log();
    v8 = os_signpost_id_make_with_pointer(v7, v5);

    v9 = gelato_sharing_log();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SendCopyRepresentationLoadForItemProvider", "", buf, 2u);
    }

    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Loading send copy representation for item provider %@", buf, 0xCu);
    }

    v12 = +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke;
    v15[3] = &unk_1E788E570;
    v17 = v8;
    v16 = v6;
    v13 = [v5 loadInPlaceFileRepresentationForTypeIdentifier:v12 completionHandler:v15];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      v9 = share_sheet_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Send copy representation was not loaded in place. Current URL: %@", buf, 0xCu);
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211;
    v18[3] = &unk_1E788E548;
    v10 = v7;
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v19 = v10;
    v21 = v11;
    v20 = v12;
    [v10 coordinateReadingWithSaveToTempDir:1 options:8 completionHandler:v18];
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_cold_1();
    }

    v14 = gelato_sharing_log();
    v15 = v14;
    v16 = *(a1 + 40);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v15, OS_SIGNPOST_INTERVAL_END, v16, "SendCopyRepresentationLoadForItemProvider", "", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v5)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211_cold_1(a1);
    }

    v7 = a1[4];
  }

  v9 = v7;
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Loaded send copy representation at URL %@", &v15, 0xCu);
  }

  v11 = gelato_sharing_log();
  v12 = v11;
  v13 = a1[6];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v12, OS_SIGNPOST_INTERVAL_END, v13, "SendCopyRepresentationLoadForItemProvider", "", &v15, 2u);
  }

  (*(a1[5] + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isInPlaceFileOrURLItemProvider:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [SFCollaborationUtilities isCKShareItemProvider:v4];
    v6 = [SFCollaborationUtilities isSWYActivityItemProvider:v4];
    v10 = 0;
    v7 = [v4 preferredContentTypeForSavingWithCanOpenInPlace:&v10];
    v8 = (v7 && (v10 & 1) != 0 || [v4 canLoadObjectOfClass:objc_opt_class()]) && !v5 && !v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NSString)_copyRepresentationTypeIdentifier
{
  v2 = _copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier;
  if (_copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier)
  {
    return [v2 copy];
  }

  if (SharedWithYouCoreLibrary())
  {
    v3 = SharedWithYouCoreLibrary();
    if (dlsym(v3, "SWCopyRepresentationTypeIdentifier"))
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v4 = getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr;
      v13 = getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr;
      if (!getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr)
      {
        v5 = SharedWithYouCoreLibrary();
        v11[3] = dlsym(v5, "SWCopyRepresentationTypeIdentifier");
        getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr = v11[3];
        v4 = v11[3];
      }

      _Block_object_dispose(&v10, 8);
      if (!v4)
      {
        +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
      }

LABEL_13:
      objc_storeStrong(&_copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier, *v4);
      goto LABEL_14;
    }
  }

  if (SharedWithYouCoreLibrary())
  {
    v6 = SharedWithYouCoreLibrary();
    if (dlsym(v6, "UTCopyRepresentationTypeIdentifier"))
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v4 = getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr;
      v13 = getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr;
      if (!getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr)
      {
        v7 = SharedWithYouCoreLibrary();
        v11[3] = dlsym(v7, "UTCopyRepresentationTypeIdentifier");
        getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr = v11[3];
        v4 = v11[3];
      }

      _Block_object_dispose(&v10, 8);
      if (!v4)
      {
        +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  v2 = _copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier;
  if (!_copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
    }

    v2 = _copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier;
  }

  return [v2 copy];
}

+ (BOOL)isSWYActivityItemProvider:(id)a3
{
  v3 = a3;
  v4 = get_SWPendingCollaborationTypeIdentifier();
  v5 = [v3 hasItemConformingToTypeIdentifier:v4];

  return v5;
}

+ (void)_loadShareOptionsForSWYItemProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = getUTCollaborationOptionsTypeIdentifier();
  v8 = [v5 hasItemConformingToTypeIdentifier:v7];

  if (v8)
  {
    v9 = gelato_sharing_log();
    v10 = os_signpost_id_make_with_pointer(v9, v5);

    v11 = gelato_sharing_log();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CollaborationLoadShareOptionsForSWYItemProvider", "", buf, 2u);
    }

    v13 = getUTCollaborationOptionsTypeIdentifier();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke;
    v25[3] = &unk_1E788E598;
    v27 = v10;
    v26 = v6;
    [v5 loadItemForTypeIdentifier:v13 options:0 completionHandler:v25];

    v14 = v26;
LABEL_11:

    goto LABEL_15;
  }

  v15 = get_SWPendingCollaborationTypeIdentifier();
  v16 = [v5 hasItemConformingToTypeIdentifier:v15];

  if (v16)
  {
    v17 = gelato_sharing_log();
    v18 = os_signpost_id_make_with_pointer(v17, v5);

    v19 = gelato_sharing_log();
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "CollaborationLoadShareOptionsForSWYItemProvider", "", buf, 2u);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_216;
    v22[3] = &unk_1E788E5C0;
    v24 = v18;
    v23 = v6;
    [SFCollaborationUtilities loadPendingCollaborationForItemProvider:v5 completionHandler:v22];
    v14 = v23;
    goto LABEL_11;
  }

  v21 = share_sheet_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    +[SFCollaborationUtilities _loadShareOptionsForSWYItemProvider:completionHandler:];
  }

  (*(v6 + 2))(v6, 0, 0);
LABEL_15:
}

void __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v7)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_cold_1();
    }
  }

  v9 = gelato_sharing_log();
  v10 = v9;
  v11 = *(a1 + 40);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_END, v11, "CollaborationLoadShareOptionsForSWYItemProvider", "", v12, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_216(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collaborationMetadata];
  v5 = [v4 defaultShareOptions];

  if (!v5)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_216_cold_1(v3);
    }
  }

  v7 = gelato_sharing_log();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollaborationLoadShareOptionsForSWYItemProvider", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)loadSendCopyRepresentationIfNeededForItemProvider:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (![SFCollaborationUtilities hasiWorkSendCopyRepresentationForItemProvider:v5])
  {
    if ([SFCollaborationUtilities isCKShareItemProvider:v5]|| [SFCollaborationUtilities isSWYActivityItemProvider:v5])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = [v5 registeredTypeIdentifiers];
      v8 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v38;
        v11 = *MEMORY[0x1E6982F40];
        v12 = *MEMORY[0x1E6982E48];
LABEL_7:
        v13 = 0;
        while (1)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v37 + 1) + 8 * v13)];
          if ([v14 conformsToType:v11] & 1) != 0 || (objc_msgSend(v14, "conformsToType:", v12))
          {
            break;
          }

          if (v9 == ++v13)
          {
            v9 = [v7 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v9)
            {
              goto LABEL_7;
            }

            goto LABEL_14;
          }
        }

        if (!v14)
        {
          goto LABEL_19;
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_219;
        aBlock[3] = &unk_1E788E610;
        v15 = v6;
        v36 = v15;
        v16 = _Block_copy(aBlock);
        if ([v14 conformsToType:v11])
        {
          if ([v5 canLoadObjectOfClass:objc_opt_class()])
          {
            v17 = objc_opt_class();
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_222;
            v33[3] = &unk_1E788E638;
            v18 = &v34;
            v34 = v16;
            v19 = v33;
          }

          else
          {
            if (![v5 canLoadObjectOfClass:objc_opt_class()])
            {
              v24 = [v14 identifier];
              v29[0] = MEMORY[0x1E69E9820];
              v29[1] = 3221225472;
              v29[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_3;
              v29[3] = &unk_1E788E688;
              v18 = &v30;
              v30 = v16;
              [v5 loadItemForTypeIdentifier:v24 options:0 completionHandler:v29];

              goto LABEL_28;
            }

            v17 = objc_opt_class();
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_2;
            v31[3] = &unk_1E788E660;
            v18 = &v32;
            v32 = v16;
            v19 = v31;
          }

          v23 = [v5 loadObjectOfClass:v17 completionHandler:v19];
        }

        else
        {
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_4;
          v26[3] = &unk_1E788E6D8;
          v18 = &v27;
          v27 = v16;
          v28 = v15;
          v22 = [v5 loadFileRepresentationForContentType:v14 openInPlace:0 completionHandler:v26];
        }

LABEL_28:

        goto LABEL_29;
      }

LABEL_14:

LABEL_19:
      v20 = share_sheet_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v5 registeredTypeIdentifiers];
        *buf = 138412290;
        v44 = v21;
        _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "Could not find send copy type in item provider with type identifiers: %@", buf, 0xCu);
      }
    }

    (*(v6 + 2))(v6, 0);
    goto LABEL_29;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke;
  v41[3] = &unk_1E788E5E8;
  v42 = v6;
  [SFCollaborationUtilities loadiWorkCopyRepresentationURLForItemProvider:v5 completionHandler:v41];

LABEL_29:
  v25 = *MEMORY[0x1E69E9840];
}

void __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_219(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_219_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_5;
    v7[3] = &unk_1E788E6B0;
    v8 = v5;
    v9 = *(a1 + 40);
    [v8 coordinateReadingWithSaveToTempDir:a3 ^ 1u completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211_cold_1(a1);
    }

    v8 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)loadSendCopyRepresentationIfNeededForActivityItems:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 mutableCopy];
  v8 = MEMORY[0x1E695DF70];
  v9 = [v6 count];

  v10 = [v8 arrayWithCapacity:v9];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.sharing.collaborationUtilities.loadItems", v11);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForActivityItems_completion___block_invoke;
  v17[3] = &unk_1E788B750;
  v18 = v7;
  v19 = v10;
  v20 = v12;
  v21 = v5;
  v13 = v5;
  v14 = v12;
  v15 = v10;
  v16 = v7;
  dispatch_async(v14, v17);
}

+ (void)_processRemainingActivityItems:(id)a3 toFinalActivityItems:(id)a4 onQueue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 firstObject];
  if (v13)
  {
    v14 = v13;
    while (1)
    {
      [v9 removeObjectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      [v10 addObject:v14];
      v15 = [v9 firstObject];

      v14 = v15;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v17 = v14;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke;
    v22[3] = &unk_1E788E728;
    v23 = v11;
    v24 = v10;
    v25 = v17;
    v26 = v9;
    v27 = v12;
    v18 = v12;
    v16 = v10;
    [SFCollaborationUtilities loadSendCopyRepresentationIfNeededForItemProvider:v17 completion:v22];
  }

  else
  {
LABEL_5:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke_228;
    block[3] = &unk_1E788B318;
    v20 = v10;
    v21 = v12;
    v16 = v12;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v18 = v21;
  }
}

void __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke_2;
  v12[3] = &unk_1E788E700;
  v13 = v3;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[4];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = a1[8];
  v11 = v3;
  dispatch_async(v4, v12);
}

uint64_t __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 addObject:?];
  }

  else
  {
    [v2 addObject:a1[6]];
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[6];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_INFO, "Item provider %@ does not contain a separate send copy representation. Passing in the provider unchanged", &v8, 0xCu);
    }
  }

  result = [SFCollaborationUtilities _processRemainingActivityItems:a1[7] toFinalActivityItems:a1[5] onQueue:a1[8] completion:a1[9]];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)loadShareOptionsForItemProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([SFCollaborationUtilities isSWYActivityItemProvider:v5])
  {
    [SFCollaborationUtilities _loadShareOptionsForSWYItemProvider:v5 completionHandler:v6];
  }

  else if ([SFCollaborationUtilities isCKShareItemProvider:v5])
  {
    [SFCollaborationUtilities _loadShareOptionsForCKShareItemProvider:v5 completionHandler:v6];
  }

  else
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities loadShareOptionsForItemProvider:completionHandler:];
    }

    (*(v6 + 2))(v6, 0, 0);
  }
}

+ (BOOL)isHeroCollaborationActivityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.UIKit.activity.Message"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.InCallService.ShareExtension"];
  }

  return v4;
}

+ (void)loadMetadataForItemProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  if ([SFCollaborationUtilities isCKShareItemProvider:v5])
  {
    v7 = gelato_sharing_log();
    v8 = os_signpost_id_make_with_pointer(v7, v5);

    v9 = gelato_sharing_log();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationLoadMetadataForItemProvider", "", buf, 2u);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke;
    v12[3] = &unk_1E788E750;
    v14 = &v17;
    v15 = v8;
    v13 = v6;
    [SFCollaborationUtilities _loadCKShareWithMetadataForItemProvider:v5 completionHandler:v12];
  }

  else
  {
    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities loadMetadataForItemProvider:completionHandler:];
    }

    (*(v6 + 2))(v6, v18[5]);
  }

  _Block_object_dispose(&v17, 8);
}

void __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 URL];
  v11 = [v10 absoluteString];

  v12 = [v7 URL];
  v13 = [v12 fragment];

  if (v13 && ([MEMORY[0x1E696AEC0] stringWithFormat:@"#%@", v13], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "stringByReplacingOccurrencesOfString:withString:", v14, &stru_1F1D30528), v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
  {
    v16 = getCKShareTitleKey();
    v17 = [v7 objectForKeyedSubscript:v16];

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v18 = getCKShareTypeKeySymbolLoc_ptr;
    v44 = getCKShareTypeKeySymbolLoc_ptr;
    if (!getCKShareTypeKeySymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getCKShareTypeKeySymbolLoc_block_invoke;
      v39 = &unk_1E788A938;
      v40 = &v41;
      v19 = CloudKitLibrary_0();
      v42[3] = dlsym(v19, "CKShareTypeKey");
      getCKShareTypeKeySymbolLoc_ptr = *(v40[1] + 24);
      v18 = v42[3];
    }

    _Block_object_dispose(&v41, 8);
    if (!v18)
    {
      __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_2();
    }

    v34 = v17;
    v35 = v8;
    v20 = [v7 objectForKeyedSubscript:*v18];
    if (v20)
    {
      v21 = [MEMORY[0x1E6982C40] typeWithIdentifier:v20];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v9 optionsGroups];
    v23 = [v22 count];

    if (!v23)
    {
      v24 = share_sheet_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_1();
      }
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v25 = get_SWCollaborationMetadataClass_softClass;
    v44 = get_SWCollaborationMetadataClass_softClass;
    if (!get_SWCollaborationMetadataClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __get_SWCollaborationMetadataClass_block_invoke;
      v39 = &unk_1E788A938;
      v40 = &v41;
      __get_SWCollaborationMetadataClass_block_invoke(buf);
      v25 = v42[3];
    }

    v26 = v25;
    _Block_object_dispose(&v41, 8);
    v27 = [[v25 alloc] initWithCollaborationIdentifier:v15 title:v34 defaultShareOptions:v9 creationDate:0 contentType:v21 initiatorHandle:0 initiatorNameComponents:0];
    v28 = *(a1[5] + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    v8 = v35;
  }

  else
  {
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_3(v7);
    }
  }

  v30 = gelato_sharing_log();
  v31 = v30;
  v32 = a1[6];
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v31, OS_SIGNPOST_INTERVAL_END, v32, "CollaborationLoadMetadataForItemProvider", "", buf, 2u);
  }

  v33 = *(*(a1[5] + 8) + 40);
  (*(a1[4] + 16))();
}

+ (void)loadPendingCollaborationForItemProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([SFCollaborationUtilities isSWYActivityItemProvider:v5])
  {
    v7 = gelato_sharing_log();
    v8 = os_signpost_id_make_with_pointer(v7, v5);

    v9 = gelato_sharing_log();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationLoadPendingForItemProvider", "", buf, 2u);
    }

    v11 = get_SWPendingCollaborationTypeIdentifier();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__SFCollaborationUtilities_loadPendingCollaborationForItemProvider_completionHandler___block_invoke;
    v12[3] = &unk_1E788E778;
    v14 = v8;
    v13 = v6;
    [v5 loadItemForTypeIdentifier:v11 options:0 completionHandler:v12];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __86__SFCollaborationUtilities_loadPendingCollaborationForItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = gelato_sharing_log();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollaborationLoadPendingForItemProvider", "", &v13, 2u);
  }

  v10 = share_sheet_log();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Loaded pending collaboration: %@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __86__SFCollaborationUtilities_loadPendingCollaborationForItemProvider_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

+ (void)loadMetadataForFileURL:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SFCollaborationUtilities loadMetadataForFileURL:a2 completionHandler:a1];
  }

  v9 = [[SFCollaborationFileMetadataLoader alloc] initWithFileURL:v7];
  v10 = gelato_sharing_log();
  v11 = os_signpost_id_make_with_pointer(v10, v7);

  v12 = gelato_sharing_log();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CollaborationLoadMetadataForFileURL", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__SFCollaborationUtilities_loadMetadataForFileURL_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E7A0;
  v19 = v8;
  v20 = v11;
  v18 = v9;
  v14 = v8;
  v15 = v9;
  v16 = _Block_copy(aBlock);
  [MEMORY[0x1E696ABF8] addFilePresenter:v15];
  [(SFCollaborationFileMetadataLoader *)v15 loadMetadataWithCompletionHandler:v16];
}

void __69__SFCollaborationUtilities_loadMetadataForFileURL_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = gelato_sharing_log();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollaborationLoadMetadataForFileURL", "", v10, 2u);
  }

  [MEMORY[0x1E696ABF8] removeFilePresenter:a1[4]];
  (*(a1[5] + 16))();
}

+ (void)addParticipantsAllowedForCollaborationItem:(id)a3 collaborationService:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 type] != 1)
  {
    if (![v8 type])
    {
      v15 = [v8 fileURL];
      [a1 _addParticipantsAllowedForURL:v15 share:0 collaborationService:v9 completionHandler:v10];

      goto LABEL_10;
    }

    v14 = share_sheet_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "SWY add participants allowed check is not supported", location, 2u);
    }

    goto LABEL_8;
  }

  v11 = [v8 itemProvider];
  v12 = [SFCollaborationUtilities isPostCKShareItemProvider:v11];

  if (!v12)
  {
LABEL_8:
    v10[2](v10, 1, 0);
    goto LABEL_10;
  }

  objc_initWeak(location, a1);
  v13 = [v8 itemProvider];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __110__SFCollaborationUtilities_addParticipantsAllowedForCollaborationItem_collaborationService_completionHandler___block_invoke;
  v16[3] = &unk_1E788E7C8;
  v18 = v10;
  objc_copyWeak(&v19, location);
  v17 = v9;
  [SFCollaborationUtilities loadCKShareItemProvider:v13 onlyPostShare:1 completionHandler:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
LABEL_10:
}

void __110__SFCollaborationUtilities_addParticipantsAllowedForCollaborationItem_collaborationService_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _addParticipantsAllowedForURL:0 share:v4 collaborationService:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)addParticipantsAllowedForURL:(id)a3 share:(id)a4 completionHandler:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 | v9)
  {
    if (v8)
    {
      objc_initWeak(&location, a1);
      CloudSharingClass = getCloudSharingClass();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __81__SFCollaborationUtilities_addParticipantsAllowedForURL_share_completionHandler___block_invoke;
      v17[3] = &unk_1E788E7F0;
      v18 = v10;
      objc_copyWeak(&v19, &location);
      [CloudSharingClass existingShareForFileOrFolderURL:v8 completionHandler:v17];
      objc_destroyWeak(&v19);

      objc_destroyWeak(&location);
    }

    else
    {
      [a1 _addParticipantsAllowedForShare:v9 completionHandler:v10];
    }
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Called _addParticipantsAllowedForURL:share:completionHandler: with nil URL and nil CKShare";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.sharesheet.addParticipantsAllowed" code:0 userInfo:v13];

    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities addParticipantsAllowedForURL:v14 share:? completionHandler:?];
    }

    (*(v10 + 2))(v10, 1, v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __81__SFCollaborationUtilities_addParticipantsAllowedForURL_share_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _addParticipantsAllowedForShare:v7 completionHandler:*(a1 + 32)];

    goto LABEL_10;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  v11 = [v8 domain];
  v12 = getCKErrorDomain();
  if (([v11 isEqualToString:v12] & 1) == 0)
  {

    goto LABEL_8;
  }

  v13 = [v9 code];

  if (v13 != 12)
  {
LABEL_8:
    v14 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

LABEL_6:
  v14 = *(*(a1 + 32) + 16);
LABEL_9:
  v14();
LABEL_10:
}

+ (void)_addParticipantsAllowedForURL:(id)a3 share:(id)a4 collaborationService:(id)a5 completionHandler:(id)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!(v9 | v10))
  {
    v13 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"Called _addParticipantsAllowedForURL:share:collaborationService:completionHandler: with nil URL and nil CKShare";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.sharesheet.addParticipantsAllowed" code:0 userInfo:v14];

    v16 = share_sheet_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities _addParticipantsAllowedForURL:v15 share:? collaborationService:? completionHandler:?];
    }

    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"requestAddParticipantsAllowedForURL:share:completionHandler: has not yet been implemented";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [v17 errorWithDomain:@"com.apple.sharesheet.addParticipantsAllowed" code:0 userInfo:v18];

    v16 = share_sheet_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities _addParticipantsAllowedForURL:v15 share:? collaborationService:? completionHandler:?];
    }

LABEL_8:

    v12[2](v12, 1, v15);
    goto LABEL_9;
  }

  [v11 requestAddParticipantsAllowedForURL:v9 share:v10 completionHandler:v12];
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
}

+ (void)_addParticipantsAllowedForShare:(id)a3 completionHandler:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    CloudSharingClass = getCloudSharingClass();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__SFCollaborationUtilities__addParticipantsAllowedForShare_completionHandler___block_invoke;
    v13[3] = &unk_1E788E818;
    v14 = v6;
    [CloudSharingClass sharingStatusForShare:v5 completionHandler:v13];
    v8 = v14;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"Called _addParticipantsAllowedForShare:completionHandler: with nil CKShare";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = [v9 errorWithDomain:@"com.apple.sharesheet.addParticipantsAllowed" code:0 userInfo:v10];

    v11 = share_sheet_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities _addParticipantsAllowedForURL:v8 share:? collaborationService:? completionHandler:?];
    }

    (*(v6 + 2))(v6, 1, v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __78__SFCollaborationUtilities__addParticipantsAllowedForShare_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

+ (id)_dataForFilepath:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
    if ([v4 isFileURL])
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)canShowShareOptionsForCollaborationItem:(id)a3 service:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 itemProvider];
  v11 = [SFCollaborationUtilities isPostCKShareItemProvider:v10];

  if ([v7 type])
  {
    if (v11)
    {
      v12 = [v7 itemProvider];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_3;
      v15[3] = &unk_1E788E4F8;
      v16 = v9;
      [SFCollaborationUtilities loadCKShareItemProvider:v12 onlyPostShare:1 completionHandler:v15];
    }

    else
    {
      (*(v9 + 2))(v9, 1);
    }
  }

  else
  {
    v13 = v7;
    if ([v13 isShared])
    {
      v14 = [v13 fileURL];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke;
      v17[3] = &unk_1E788E868;
      v18 = v9;
      [v8 isShareOwnerOrAdminForFileURL:v14 completionHandler:v17];
    }

    else
    {
      (*(v9 + 2))(v9, 1);
    }
  }
}

void __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_2;
  v3[3] = &unk_1E788E840;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_4;
  v3[3] = &unk_1E788E868;
  v4 = *(a1 + 32);
  [SFCollaborationUtilities isShareOwnerOrAdminForShare:a2 completionHandler:v3];
}

void __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_4(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_5;
  v3[3] = &unk_1E788E840;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

+ (void)isShareOwnerOrAdminForCollaborationItem:(id)a3 service:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 type])
  {
    v10 = [v7 itemProvider];
    v11 = [SFCollaborationUtilities isPostCKShareItemProvider:v10];

    if (v11)
    {
      v12 = [v7 itemProvider];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_3;
      v15[3] = &unk_1E788E4F8;
      v16 = v9;
      [SFCollaborationUtilities loadCKShareItemProvider:v12 onlyPostShare:1 completionHandler:v15];
    }

    else
    {
      (*(v9 + 2))(v9, 1, 0);
    }
  }

  else
  {
    v13 = v7;
    if ([v13 isShared] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = [v13 fileURL];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke;
      v17[3] = &unk_1E788E868;
      v18 = v9;
      [v8 isShareOwnerOrAdminForFileURL:v14 completionHandler:v17];
    }

    else
    {
      (*(v9 + 2))(v9, 1, 0);
    }
  }
}

void __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_2;
  v5[3] = &unk_1E788E890;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_4;
  v3[3] = &unk_1E788E868;
  v4 = *(a1 + 32);
  [SFCollaborationUtilities isShareOwnerOrAdminForShare:a2 completionHandler:v3];
}

void __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_4(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_5;
  v5[3] = &unk_1E788E890;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

+ (void)isShareOwnerOrAdminForFileURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    CloudSharingClass = getCloudSharingClass();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__SFCollaborationUtilities_isShareOwnerOrAdminForFileURL_completionHandler___block_invoke;
    v9[3] = &unk_1E788E8B8;
    v10 = v5;
    v11 = v6;
    [CloudSharingClass existingShareForFileOrFolderURL:v10 completionHandler:v9];
  }

  else
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isShareOwnerOrAdminForFileURL:completionHandler:];
    }

    (*(v6 + 2))(v6, 0, 0);
  }
}

void __76__SFCollaborationUtilities_isShareOwnerOrAdminForFileURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __76__SFCollaborationUtilities_isShareOwnerOrAdminForFileURL_completionHandler___block_invoke_cold_1(a1);
    }
  }

  [SFCollaborationUtilities isShareOwnerOrAdminForShare:v6 completionHandler:*(a1 + 40)];
}

+ (void)isShareOwnerOrAdminForShare:(id)a3 completionHandler:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = v12;
  if (!v12)
  {
    v5[2](v5, 1, 0);
    v6 = 0;
  }

  v7 = [v6 currentUserParticipant];
  v8 = [v7 role];

  v9 = [v12 publicPermission] == 2 || objc_msgSend(v12, "publicPermission") == 3;
  v10 = [v12 currentUserParticipant];
  v11 = [v10 role] == 2 || v9;

  (v5)[2](v5, v8 == 1, v11);
}

+ (void)_fetchCollaborationAppInfoIfNeededForActivityType:(id)a3 deviceScreenScale:(double)a4 appInfoCompletion:(id)a5
{
  v7 = a5;
  if ([a3 isEqualToString:@"com.apple.UIKit.activity.Mail"])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __114__SFCollaborationUtilities__fetchCollaborationAppInfoIfNeededForActivityType_deviceScreenScale_appInfoCompletion___block_invoke;
    v13[3] = &unk_1E788E8E0;
    v8 = &v14;
    v14 = v7;
    v9 = v7;
    SFCurrentAppIconData(v13, a4);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __114__SFCollaborationUtilities__fetchCollaborationAppInfoIfNeededForActivityType_deviceScreenScale_appInfoCompletion___block_invoke_2;
    v11[3] = &unk_1E788B1C0;
    v8 = &v12;
    v12 = v7;
    v10 = v7;
    sf_dispatch_on_main_queue(v11);
  }
}

void __114__SFCollaborationUtilities__fetchCollaborationAppInfoIfNeededForActivityType_deviceScreenScale_appInfoCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = SFCurrentAppName();
  (*(v2 + 16))(v2, v4, v3);
}

+ (void)createCollaborationRequestWithCollaborationItem:(id)a3 activityType:(id)a4 deviceScreenScale:(double)a5 completionHandler:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = share_sheet_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 identifier];
    *buf = 138412290;
    v26 = v14;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Create Collaboration request for collaboration item %@", buf, 0xCu);
  }

  if ([v10 type] == 2)
  {
    v15 = [SFCollaborationCloudSharingRequest alloc];
    v16 = [v10 identifier];
    v17 = [v10 options];
    LOBYTE(v20) = [v10 optionsChanged];
    v18 = [(SFCollaborationCloudSharingRequest *)v15 initWithCollaborationItemIdentifier:v16 options:v17 fileOrFolderURL:0 share:0 setupInfo:0 phoneNumbers:MEMORY[0x1E695E0F0] emailAddresses:v11 activityType:0 appName:0 appIconData:v20 optionsChanged:?];

    v12[2](v12, v18);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke;
    v21[3] = &unk_1E788E930;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    [a1 _fetchCollaborationAppInfoIfNeededForActivityType:v23 deviceScreenScale:v21 appInfoCompletion:a5];

    v18 = v22;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] type];
  switch(v7)
  {
    case 2:
      v16 = share_sheet_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke_cold_1();
      }

      (*(a1[6] + 2))();
      break;
    case 1:
      v15 = [a1[4] itemProvider];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke_2;
      v18[3] = &unk_1E788E908;
      v19 = a1[4];
      v20 = a1[5];
      v21 = v5;
      v22 = v6;
      v23 = a1[6];
      [SFCollaborationUtilities loadCKShareItemProvider:v15 completionHandler:v18];

      break;
    case 0:
      v8 = a1[4];
      v9 = [SFCollaborationCloudSharingRequest alloc];
      v10 = [v8 identifier];
      v11 = [a1[4] options];
      v12 = [v8 fileURL];
      v13 = a1[5];
      LOBYTE(v17) = [a1[4] optionsChanged];
      v14 = [(SFCollaborationCloudSharingRequest *)v9 initWithCollaborationItemIdentifier:v10 options:v11 fileOrFolderURL:v12 share:0 setupInfo:0 phoneNumbers:MEMORY[0x1E695E0F0] emailAddresses:v13 activityType:v5 appName:v6 appIconData:v17 optionsChanged:?];

      (*(a1[6] + 2))();
      break;
  }
}

void __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v17 = a2;
  v7 = [v5 updatedShare];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v17;
  }

  v9 = v8;

  v10 = [SFCollaborationCloudSharingRequest alloc];
  v11 = [*(a1 + 32) identifier];
  v12 = [*(a1 + 32) options];
  v16 = *(a1 + 40);
  v13 = *(a1 + 56);
  LOBYTE(v15) = [*(a1 + 32) optionsChanged];
  v14 = [SFCollaborationCloudSharingRequest initWithCollaborationItemIdentifier:v10 options:"initWithCollaborationItemIdentifier:options:fileOrFolderURL:share:setupInfo:phoneNumbers:emailAddresses:activityType:appName:appIconData:optionsChanged:" fileOrFolderURL:v11 share:v12 setupInfo:0 phoneNumbers:v9 emailAddresses:v6 activityType:MEMORY[0x1E695E0F0] appName:v16 appIconData:v13 optionsChanged:v15];

  (*(*(a1 + 64) + 16))();
}

+ (void)createSharingURLForCollaborationRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = gelato_sharing_log();
  v8 = os_signpost_id_make_with_pointer(v7, v5);

  v9 = gelato_sharing_log();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationCreateSharingURL", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E958;
  v80 = v8;
  v11 = v6;
  v79 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [v5 fileOrFolderURL];

  if (v13)
  {
    CloudSharingClass = getCloudSharingClass();
    v15 = [v5 fileOrFolderURL];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_272;
    v75[3] = &unk_1E788E9A8;
    v76 = v5;
    v77 = v12;
    [CloudSharingClass sharingStatusForFileOrFolderURL:v15 completionHandler:v75];

    v16 = v76;
    goto LABEL_6;
  }

  v17 = [v5 share];

  if (!v17)
  {
    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities createSharingURLForCollaborationRequest:completionHandler:];
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharesheet.sharingURLCreation" code:0 userInfo:0];
    v22 = [SFCollaborationCloudSharingResult alloc];
    v23 = [v5 collaborationItemIdentifier];
    v24 = [(SFCollaborationCloudSharingResult *)v22 initWithCollaborationItemIdentifier:v23 sharingURL:0 share:0 error:v16 mailResult:0];

    (*(v12 + 2))(v12, v24);
    goto LABEL_6;
  }

  v18 = [v5 options];
  if ([v18 count])
  {
    v19 = [v5 options];
    v20 = soft_CKSharingAccessTypeFromOptionsGroups(v19) != 1;
  }

  else
  {
    v20 = 1;
  }

  v25 = [v5 share];
  v26 = [v25 URL];
  if (v26)
  {
    v27 = v26;
    v28 = [v5 share];
    v29 = [v28 participants];
    if ([v29 count] >= 2)
    {
      v30 = [v5 emailAddresses];
      if (![v30 count])
      {
        v31 = [v5 phoneNumbers];
        if (![v31 count])
        {
          v65 = [v5 optionsChanged];

          if ((v65 & 1) == 0)
          {
            v51 = share_sheet_log();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A9662000, v51, OS_LOG_TYPE_DEFAULT, "Share exists and we are not intending to add participants, using existing share URL", buf, 2u);
            }

            v52 = [SFCollaborationCloudSharingResult alloc];
            v53 = [v5 collaborationItemIdentifier];
            v54 = [v5 share];
            v55 = [v54 URL];
            v56 = [v5 share];
            v16 = [(SFCollaborationCloudSharingResult *)v52 initWithCollaborationItemIdentifier:v53 sharingURL:v55 share:v56 existingShare:1 error:0 mailResult:0];

            (*(v12 + 2))(v12, v16);
            goto LABEL_6;
          }

          goto LABEL_22;
        }
      }
    }
  }

LABEL_22:
  v32 = [v5 share];
  v33 = [v32 URL];
  if (!v33)
  {
LABEL_29:

    goto LABEL_30;
  }

  v34 = v33;
  v35 = [v5 share];
  v36 = [v35 participants];
  if ([v36 count] < 2)
  {
LABEL_28:

    goto LABEL_29;
  }

  v37 = [v5 emailAddresses];
  if ([v37 count])
  {
LABEL_27:

    goto LABEL_28;
  }

  v38 = [v5 phoneNumbers];
  if ([v38 count])
  {

    goto LABEL_27;
  }

  v57 = [v5 optionsChanged] & v20;

  if (v57 != 1)
  {
LABEL_30:
    v39 = [v5 share];
    v40 = [v39 participants];
    v41 = [v40 count];

    if (v41 > 1)
    {
      v45 = getCloudSharingClass();
      v46 = [v5 share];
      v47 = [v5 setupInfo];
      v48 = [v5 emailAddresses];
      v49 = [v5 phoneNumbers];
      v50 = [v5 options];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_2;
      v66[3] = &unk_1E788E8B8;
      v67 = v5;
      v68 = v12;
      [v45 addParticipantsToShare:v46 containerSetupInfo:v47 emailAddresses:v48 phoneNumbers:v49 optionsGroups:v50 completionHandler:v66];

      v16 = v67;
    }

    else
    {
      v42 = share_sheet_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9662000, v42, OS_LOG_TYPE_DEFAULT, "Getting status for share", buf, 2u);
      }

      v43 = getCloudSharingClass();
      v44 = [v5 share];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_282;
      v69[3] = &unk_1E788E9A8;
      v70 = v5;
      v71 = v12;
      [v43 sharingStatusForShare:v44 completionHandler:v69];

      v16 = v70;
    }

    goto LABEL_6;
  }

  v58 = share_sheet_log();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v58, OS_LOG_TYPE_DEFAULT, "Share is existing public share but options changed, updating options", buf, 2u);
  }

  v59 = getCloudSharingClass();
  v60 = [v5 share];
  v61 = [v5 setupInfo];
  v62 = [v5 emailAddresses];
  v63 = [v5 phoneNumbers];
  v64 = [v5 options];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_281;
  v72[3] = &unk_1E788E8B8;
  v73 = v5;
  v74 = v12;
  [v59 completeShare:v60 containerSetupInfo:v61 emailAddresses:v62 phoneNumbers:v63 optionsGroups:v64 completionHandler:v72];

  v16 = v73;
LABEL_6:
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationCreateSharingURL", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_272(uint64_t a1, uint64_t a2)
{
  if (a2 == 6)
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Sharing an unshared folder with shared subitems. First we need to override the share", buf, 2u);
    }

    CloudSharingClass = getCloudSharingClass();
    v5 = [*(a1 + 32) fileOrFolderURL];
    v6 = [*(a1 + 32) emailAddresses];
    v7 = [*(a1 + 32) phoneNumbers];
    v8 = [*(a1 + 32) options];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_273;
    v15[3] = &unk_1E788E8B8;
    v9 = &v16;
    v16 = *(a1 + 32);
    v10 = &v17;
    v17 = *(a1 + 40);
    [CloudSharingClass shareFolderRemovingSubshares:v5 emailAddresses:v6 phoneNumbers:v7 optionsGroups:v8 completionHandler:v15];
  }

  else
  {
    v11 = getCloudSharingClass();
    v5 = [*(a1 + 32) fileOrFolderURL];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_275;
    v12[3] = &unk_1E788E8B8;
    v9 = &v13;
    v13 = *(a1 + 32);
    v10 = &v14;
    v14 = *(a1 + 40);
    [v11 existingShareForFileOrFolderURL:v5 completionHandler:v12];
  }
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_273(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = share_sheet_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v11)
    {
      v12 = [v7 debugDescription];
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Failed to override folder subitems' shares with error: %@", &v17, 0xCu);
    }
  }

  else if (v11)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Created an empty share for the folder which overrode the shared subitems", &v17, 2u);
  }

  v13 = [SFCollaborationCloudSharingResult alloc];
  v14 = [*(a1 + 32) collaborationItemIdentifier];
  v15 = [(SFCollaborationCloudSharingResult *)v13 initWithCollaborationItemIdentifier:v14 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_275(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) options];
  if ([v9 count])
  {
    v10 = [*(a1 + 32) options];
    v11 = soft_CKSharingAccessTypeFromOptionsGroups(v10) != 1;
  }

  else
  {
    v11 = 1;
  }

  if (!v8 || a4)
  {
    v19 = share_sheet_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v19, OS_LOG_TYPE_DEFAULT, "File is unshared, sharing as owner", buf, 2u);
    }

    CloudSharingClass = getCloudSharingClass();
    v21 = [*(a1 + 32) fileOrFolderURL];
    v22 = [*(a1 + 32) emailAddresses];
    v23 = [*(a1 + 32) phoneNumbers];
    v24 = [*(a1 + 32) options];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_276;
    v43[3] = &unk_1E788E8B8;
    v44 = *(a1 + 32);
    v45 = *(a1 + 40);
    [CloudSharingClass shareFileOrFolderURL:v21 emailAddresses:v22 phoneNumbers:v23 optionsGroups:v24 completionHandler:v43];

    v18 = v44;
    goto LABEL_21;
  }

  if (!v7)
  {
LABEL_15:
    v16 = share_sheet_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v16, OS_LOG_TYPE_DEFAULT, "File is shared, getting share status", buf, 2u);
    }

    v17 = getCloudSharingClass();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_278;
    v35[3] = &unk_1E788E980;
    v36 = v8;
    v37 = *(a1 + 32);
    v39 = *(a1 + 40);
    v38 = v7;
    [v17 sharingStatusForShare:v36 completionHandler:v35];

    v18 = v36;
    goto LABEL_21;
  }

  v12 = [*(a1 + 32) emailAddresses];
  if (![v12 count])
  {
    v13 = [*(a1 + 32) phoneNumbers];
    if (![v13 count])
    {
      v25 = [*(a1 + 32) optionsChanged];

      if ((v25 & 1) == 0)
      {
        v26 = share_sheet_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v26, OS_LOG_TYPE_DEFAULT, "File is shared and we are not intending to add participants, using existing share URL", buf, 2u);
        }

        v27 = [SFCollaborationCloudSharingResult alloc];
        v28 = [*(a1 + 32) collaborationItemIdentifier];
        v18 = [(SFCollaborationCloudSharingResult *)v27 initWithCollaborationItemIdentifier:v28 sharingURL:v7 share:v8 existingShare:1 error:0 mailResult:0];

        (*(*(a1 + 40) + 16))();
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  v14 = [*(a1 + 32) emailAddresses];
  if ([v14 count])
  {
LABEL_14:

    goto LABEL_15;
  }

  v15 = [*(a1 + 32) phoneNumbers];
  if ([v15 count])
  {

    goto LABEL_14;
  }

  v29 = [*(a1 + 32) optionsChanged] & v11;

  if (v29 != 1)
  {
    goto LABEL_15;
  }

  v30 = share_sheet_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v30, OS_LOG_TYPE_DEFAULT, "File is shared publicly but options changed, updating options", buf, 2u);
  }

  v31 = getCloudSharingClass();
  v32 = [*(a1 + 32) emailAddresses];
  v33 = [*(a1 + 32) phoneNumbers];
  v34 = [*(a1 + 32) options];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_277;
  v40[3] = &unk_1E788E8B8;
  v41 = *(a1 + 32);
  v42 = *(a1 + 40);
  [v31 completeShare:v8 containerSetupInfo:0 emailAddresses:v32 phoneNumbers:v33 optionsGroups:v34 completionHandler:v40];

  v18 = v41;
LABEL_21:
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_276(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_277(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_278(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = a2;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Shared file status is %ld", buf, 0xCu);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      CloudSharingClass = getCloudSharingClass();
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) emailAddresses];
      v10 = [*(a1 + 40) phoneNumbers];
      v11 = [*(a1 + 40) options];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_279;
      v25[3] = &unk_1E788E8B8;
      v26 = *(a1 + 40);
      v27 = *(a1 + 56);
      [CloudSharingClass addParticipantsToShare:v8 containerSetupInfo:0 emailAddresses:v9 phoneNumbers:v10 optionsGroups:v11 completionHandler:v25];

      v12 = v26;
    }

    else
    {
      v19 = [SFCollaborationCloudSharingResult alloc];
      v20 = [*(a1 + 40) collaborationItemIdentifier];
      v12 = [(SFCollaborationCloudSharingResult *)v19 initWithCollaborationItemIdentifier:v20 sharingURL:*(a1 + 48) share:*(a1 + 32) existingShare:1 error:0 mailResult:0];

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_278_cold_1();
    }

    v14 = getCloudSharingClass();
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) emailAddresses];
    v17 = [*(a1 + 40) phoneNumbers];
    v18 = [*(a1 + 40) options];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_280;
    v22[3] = &unk_1E788E8B8;
    v23 = *(a1 + 40);
    v24 = *(a1 + 56);
    [v14 addParticipantsToShare:v15 containerSetupInfo:0 emailAddresses:v16 phoneNumbers:v17 optionsGroups:v18 completionHandler:v22];

    v12 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_279(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 existingShare:1 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_280(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 existingShare:1 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_281(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_282(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = a2;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Share status is %ld", buf, 0xCu);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      CloudSharingClass = getCloudSharingClass();
      v8 = [*(a1 + 32) share];
      v9 = [*(a1 + 32) setupInfo];
      v10 = [*(a1 + 32) emailAddresses];
      v11 = [*(a1 + 32) phoneNumbers];
      v12 = [*(a1 + 32) options];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_283;
      v30[3] = &unk_1E788E8B8;
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      [CloudSharingClass completeShare:v8 containerSetupInfo:v9 emailAddresses:v10 phoneNumbers:v11 optionsGroups:v12 completionHandler:v30];

      v13 = v31;
    }

    else
    {
      v21 = [SFCollaborationCloudSharingResult alloc];
      v22 = [*(a1 + 32) collaborationItemIdentifier];
      v23 = [*(a1 + 32) share];
      v24 = [v23 URL];
      v25 = [*(a1 + 32) share];
      v13 = [(SFCollaborationCloudSharingResult *)v21 initWithCollaborationItemIdentifier:v22 sharingURL:v24 share:v25 error:0 mailResult:0];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v14 = share_sheet_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_282_cold_1(v5);
    }

    v15 = getCloudSharingClass();
    v16 = [*(a1 + 32) share];
    v17 = [*(a1 + 32) setupInfo];
    v18 = [*(a1 + 32) emailAddresses];
    v19 = [*(a1 + 32) phoneNumbers];
    v20 = [*(a1 + 32) options];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_284;
    v27[3] = &unk_1E788E8B8;
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    [v15 completeShare:v16 containerSetupInfo:v17 emailAddresses:v18 phoneNumbers:v19 optionsGroups:v20 completionHandler:v27];

    v13 = v28;
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_283(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_284(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 existingShare:1 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

+ (void)requestSharedURLForCollaborationRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = gelato_sharing_log();
  v8 = os_signpost_id_make_with_pointer(v7, v5);

  v9 = gelato_sharing_log();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationRequestSharedURL", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E958;
  v42 = v8;
  v11 = v6;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [v5 fileOrFolderURL];

  if (v13)
  {
    CloudSharingClass = getCloudSharingClass();
    v15 = [v5 fileOrFolderURL];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_288;
    v37[3] = &unk_1E788E8B8;
    v38 = v5;
    v39 = v12;
    [CloudSharingClass existingShareForFileOrFolderURL:v15 completionHandler:v37];

    v16 = v38;
  }

  else
  {
    v17 = [v5 share];

    if (v17)
    {
      if ([v5 optionsChanged])
      {
        v18 = share_sheet_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v18, OS_LOG_TYPE_DEFAULT, "Updating options for share", buf, 2u);
        }

        v19 = getCloudSharingClass();
        v20 = [v5 share];
        v21 = [v5 setupInfo];
        v22 = [v5 emailAddresses];
        v23 = [v5 phoneNumbers];
        v24 = [v5 options];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_290;
        v34[3] = &unk_1E788E8B8;
        v35 = v5;
        v36 = v12;
        [v19 completeShare:v20 containerSetupInfo:v21 emailAddresses:v22 phoneNumbers:v23 optionsGroups:v24 completionHandler:v34];

        v16 = v35;
      }

      else
      {
        v29 = [SFCollaborationCloudSharingResult alloc];
        v30 = [v5 collaborationItemIdentifier];
        v31 = [v5 share];
        v32 = [v31 URL];
        v33 = [v5 share];
        v16 = [(SFCollaborationCloudSharingResult *)v29 initWithCollaborationItemIdentifier:v30 sharingURL:v32 share:v33 error:0 mailResult:0];

        (*(v12 + 2))(v12, v16);
      }
    }

    else
    {
      v25 = share_sheet_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[SFCollaborationUtilities createSharingURLForCollaborationRequest:completionHandler:];
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharesheet.sharedURLRequest" code:0 userInfo:0];
      v26 = [SFCollaborationCloudSharingResult alloc];
      v27 = [v5 collaborationItemIdentifier];
      v28 = [(SFCollaborationCloudSharingResult *)v26 initWithCollaborationItemIdentifier:v27 sharingURL:0 share:0 error:v16 mailResult:0];

      (*(v12 + 2))(v12, v28);
    }
  }
}

void __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationRequestSharedURL", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_288(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v16 = [SFCollaborationCloudSharingResult alloc];
    v17 = [*(a1 + 32) collaborationItemIdentifier];
    v18 = v16;
    v19 = v17;
    v20 = 0;
    v21 = 0;
    v22 = v10;
LABEL_9:
    v24 = [(SFCollaborationCloudSharingResult *)v18 initWithCollaborationItemIdentifier:v19 sharingURL:v20 share:v21 error:v22 mailResult:0];

    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  if (![*(a1 + 32) optionsChanged])
  {
    v23 = [SFCollaborationCloudSharingResult alloc];
    v17 = [*(a1 + 32) collaborationItemIdentifier];
    v18 = v23;
    v19 = v17;
    v20 = v7;
    v21 = v8;
    v22 = 0;
    goto LABEL_9;
  }

  v11 = share_sheet_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Updating options for file URL", buf, 2u);
  }

  CloudSharingClass = getCloudSharingClass();
  v13 = [*(a1 + 32) emailAddresses];
  v14 = [*(a1 + 32) phoneNumbers];
  v15 = [*(a1 + 32) options];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_289;
  v25[3] = &unk_1E788E8B8;
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  [CloudSharingClass completeShare:v8 containerSetupInfo:0 emailAddresses:v13 phoneNumbers:v14 optionsGroups:v15 completionHandler:v25];

LABEL_10:
}

void __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_289(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_290(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

+ (void)createMailContentForRequest:(id)a3 completionHandler:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = gelato_sharing_log();
  v8 = os_signpost_id_make_with_pointer(v7, v5);

  v9 = gelato_sharing_log();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationCreateMailContent", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__SFCollaborationUtilities_createMailContentForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E9D0;
  v32 = v6;
  v33 = v8;
  v11 = v6;
  v12 = _Block_copy(aBlock);
  v13 = share_sheet_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v5 sharingURL];
    v15 = [v5 fileOrFolderURL];
    v16 = [v5 appName];
    v17 = [v5 share];
    *buf = 138413826;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = 0;
    v42 = 2112;
    v43 = 0;
    v44 = 2112;
    v45 = 0;
    v46 = 2112;
    v47 = v17;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Calling messageContentForMail SPI with sharingURL:%@, fileURL:%@, appName:%@, canEdit:%@, allowOthersToInvite:%@, containerID:%@, share:%@", buf, 0x48u);
  }

  CloudSharingClass = getCloudSharingClass();
  v19 = [v5 sharingURL];
  v20 = [v5 share];
  v21 = [v5 fileOrFolderURL];
  v22 = [v5 appName];
  v23 = [v5 appIconData];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __74__SFCollaborationUtilities_createMailContentForRequest_completionHandler___block_invoke_295;
  v26[3] = &unk_1E788E9F8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = v12;
  v24 = v12;
  [CloudSharingClass messageContentForMail:v19 share:v20 fileURL:v21 appName:v22 appIconData:v23 completionHandler:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __74__SFCollaborationUtilities_createMailContentForRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationCreateMailContent", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__SFCollaborationUtilities_createMailContentForRequest_completionHandler___block_invoke_295(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Call to messageContentForMail SPI returned subject:%@, body:%@, error:%@", &v13, 0x20u);
  }

  v11 = [[SFCollaborationCloudSharingMailResult alloc] initWithSubject:v7 body:v8 containerID:a1[4] canEdit:a1[5] allowOthersToInvite:a1[6] error:v9];
  (*(a1[7] + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

+ (BOOL)canDeleteShareForCollaborationItem:(id)a3
{
  v3 = a3;
  if ([v3 type] == 1)
  {
    v4 = [v3 itemProvider];
    LOBYTE(v5) = [SFCollaborationUtilities isPreCKShareItemProvider:v4];
  }

  else if ([v3 type])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v3 isShared] ^ 1;
  }

  return v5;
}

+ (id)descriptionForShareOptions:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 description];
  v6 = [v4 summary];
  v7 = [v4 optionsGroups];

  v8 = [v3 stringWithFormat:@"<%@ summary: %@, options: %@>", v5, v6, v7];

  return v8;
}

+ (void)getFailureTitle:(id *)a3 message:(id *)a4 error:(id)a5
{
  v7 = a5;
  v26 = SFLocalizedStringForKey(@"ERROR_TITLE_COULD_NOT_ADD_PARTICIPANTS");
  v8 = SFLocalizedStringForKey(@"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS");
  v9 = [SFCollaborationUtilities underlyingCKErrorForError:v7];

  v10 = [v9 domain];
  v11 = getCKErrorDomain();
  v12 = [v10 isEqualToString:v11];

  if (!v12)
  {
    v20 = [v9 domain];
    v21 = [v20 isEqualToString:*MEMORY[0x1E696A250]];

    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = MEMORY[0x1E696AEC0];
    v14 = SFLocalizedStringForKey(@"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS_WITH_ERROR_INFO");
    v23 = [v9 localizedDescription];
    v19 = [v22 stringWithFormat:v14, v23];

    v8 = v23;
    goto LABEL_17;
  }

  v13 = [MEMORY[0x1E696AE30] processInfo];
  v14 = [v13 processName];

  v15 = [v9 code];
  if (v15 > 28)
  {
    switch(v15)
    {
      case 29:
        v16 = SFLocalizedStringForKey(@"ERROR_TITLE_TOO_MANY_PARTICIPANTS");

        v24 = @"ERROR_MESSAGE_TOO_MANY_PARTICIPANTS";
        break;
      case 30:
        v16 = SFLocalizedStringForKey(@"ERROR_TITLE_FILE_ALREADY_SHARED");

        v24 = @"ERROR_MESSAGE_FILE_ALREADY_SHARED";
        break;
      case 32:
        v16 = SFLocalizedStringForKey(@"ERROR_TITLE_MAID");

        v24 = @"ERROR_MESSAGE_MAID";
        break;
      default:
        goto LABEL_18;
    }

    v19 = SFLocalizedStringForKey(v24);
    goto LABEL_16;
  }

  if ((v15 - 3) < 2)
  {
    v16 = SFLocalizedStringForKey(@"ERROR_TITLE_NETWORK_UNAVAILABLE_OR_FAILURE");

    v17 = MEMORY[0x1E696AEC0];
    v18 = SFLocalizedStringForKey(@"ERROR_MESSAGE_NETWORK_UNAVAILABLE_OR_FAILURE");
    v19 = [v17 localizedStringWithFormat:v18, v14];

    v8 = v18;
LABEL_16:
    v26 = v16;
    goto LABEL_17;
  }

  if (v15 == 14)
  {
    v19 = SFLocalizedStringForKey(@"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS_WITH_TRY_AGAIN");
LABEL_17:

    v8 = v19;
  }

LABEL_18:

LABEL_19:
  if (a3)
  {
    *a3 = v26;
  }

  if (a4)
  {
    v25 = v8;
    *a4 = v8;
  }
}

+ (BOOL)isOplockError:(id)a3 updatedShare:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [SFCollaborationUtilities underlyingCKErrorForError:v5];
    v7 = [v6 domain];
    v8 = getCKErrorDomain();
    if ([v7 isEqualToString:v8])
    {
      v9 = [v6 code];

      if (v9 == 14)
      {
        v10 = [v6 userInfo];
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v11 = getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr;
        v21 = getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr;
        if (!getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr)
        {
          v12 = CloudKitLibrary_0();
          v19[3] = dlsym(v12, "CKRecordChangedErrorServerRecordKey");
          getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr = v19[3];
          v11 = v19[3];
        }

        _Block_object_dispose(&v18, 8);
        if (!v11)
        {
          +[SFCollaborationUtilities isOplockError:updatedShare:];
        }

        v13 = *v11;
        v14 = [v10 objectForKeyedSubscript:v13];

        if (a4)
        {
          v15 = v14;
          *a4 = v14;
        }

        v16 = 1;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v16 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

+ (id)underlyingCKErrorForError:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 domain];
  v5 = getCKErrorDomain();
  if ([v4 isEqualToString:v5] || (objc_msgSend(v3, "userInfo"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    v12 = v3;
  }

  else
  {
    v7 = v6;
    v8 = [v3 userInfo];
    v9 = *MEMORY[0x1E696AA08];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = v3;
    if (isKindOfClass)
    {
      v13 = [v3 userInfo];
      v14 = [v13 objectForKeyedSubscript:v9];

      v15 = [v3 userInfo];
      v16 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696A750]];

      v17 = [v14 domain];
      v18 = getCKErrorDomain();
      v19 = [v17 isEqualToString:v18];

      if (v19)
      {
        v12 = v14;
      }

      else
      {
        v12 = v3;
        if (v16)
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v22 = v16;
          v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
          v12 = v3;
          if (v23)
          {
            v24 = v23;
            v31 = v16;
            v25 = *v33;
            while (2)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v33 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v32 + 1) + 8 * i);
                v28 = [v27 domain];
                v29 = getCKErrorDomain();
                v30 = [v28 isEqualToString:v29];

                if (v30)
                {
                  v12 = v27;

                  goto LABEL_21;
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }

            v12 = v3;
LABEL_21:
            v16 = v31;
          }
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)shareStatusForURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  CloudSharingClass = getCloudSharingClass();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SFCollaborationUtilities_shareStatusForURL_completionHandler___block_invoke;
  v9[3] = &unk_1E788E818;
  v10 = v5;
  v8 = v5;
  [CloudSharingClass sharingStatusForFileOrFolderURL:v6 completionHandler:v9];
}

+ (id)urlRequestsForCollaborationItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (![v9 type])
        {
          if (!v6)
          {
            v6 = [MEMORY[0x1E695DF70] array];
          }

          v10 = [v9 fileURL];
          v11 = [MEMORY[0x1E696AD68] requestWithURL:v10];
          [v11 _setNonAppInitiated:1];
          [v6 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (void)getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_CKSharingAllowOthersToInviteFromOptionsGroups(NSArray<_SWCollaborationOptionsGroup *> *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:81 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CKShareParticipantPermission soft_CKSharingPermissionTypeFromOptionsGroups(NSArray<_SWCollaborationOptionsGroup *> *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:80 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_loadShareOptionsForCKShareItemProvider:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __86__SFCollaborationUtilities__loadShareOptionsForCKShareItemProvider_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)loadCKContainerForItemProvider:completionHandler:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_CKCloudKitContainerSetupInfoType(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:70 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)isCollaborationItemPrivateShare:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createLinkMetadataWithCKShare:containerSetupInfo:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)createLinkMetadataWithCKShare:(void *)a1 containerSetupInfo:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 URL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)createLinkMetadataWithCKShare:containerSetupInfo:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)createLinkMetadataWithCKShare:containerSetupInfo:.cold.4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createLinkMetadataWithCKShare:containerSetupInfo:.cold.5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKShareThumbnailImageDataKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:99 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)shareSupportsRequestAccess:options:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_CKSharingAllowAccessRequestsFromOptionsGroups(NSArray<_SWCollaborationOptionsGroup *> *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:82 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)isThirdPartyFileProviderBackedURL:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, v0, v1, "error fetching file provider domain for URL:%@ : %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)isSharedFileURL:isLocalStorageFileURL:isiCloudDriveFileURL:isInSharedFolder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, v0, v1, "error fetching item for URL:%@ : %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)requestSharedURLForCollaborationItem:(void *)a1 collaborationService:completionHandler:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 type];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)requestSharedURLForCollaborationItem:collaborationService:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)requestSharedURLForCollaborationItem:collaborationService:completionHandler:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_SWPerformActionForDocumentURL(NSURL *__strong, SWAction *__strong, void (^__strong)(_SWActionResponse * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:146 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)requestSharedURLForCollaborationItem:collaborationService:completionHandler:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __85__SFCollaborationUtilities_findOriginatingSharedItemForSubitemURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, v1, v2, "error fetching parent items for URL:%@ : %@");
  v3 = *MEMORY[0x1E69E9840];
}

void __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, v1, v2, "Failed to coordinate read for copy representation URL for file at URL %@ with error: %@");
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)_copyRepresentationTypeIdentifier
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_loadShareOptionsForSWYItemProvider:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_216_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 collaborationMetadata];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_219_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)loadShareOptionsForItemProvider:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)loadMetadataForItemProvider:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKShareTypeKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:100 description:{@"%s", dlerror()}];

  __break(1u);
}

void __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 URL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __86__SFCollaborationUtilities_loadPendingCollaborationForItemProvider_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)loadMetadataForFileURL:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SFCollaborationUtilities.m" lineNumber:1259 description:@"fileURL is nil."];
}

+ (void)addParticipantsAllowedForURL:(void *)a1 share:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_addParticipantsAllowedForURL:(void *)a1 share:collaborationService:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)isShareOwnerOrAdminForFileURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__SFCollaborationUtilities_isShareOwnerOrAdminForFileURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, v1, v2, "error to get existing share for fileURL:%@ %@");
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)createSharingURLForCollaborationRequest:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_278_cold_1()
{
  OUTLINED_FUNCTION_3_6();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(v1 + 40) fileOrFolderURL];
  v9 = [v0 localizedDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_282_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)isOplockError:updatedShare:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKRecordChangedErrorServerRecordKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:72 description:{@"%s", dlerror()}];

  __break(1u);
}

@end