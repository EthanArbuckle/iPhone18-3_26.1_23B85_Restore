@interface SYDocumentSenderAvatar
- (SYDocumentSenderAvatar)initWithDocumentSender:(id)a3;
- (id)_createAvatarImageRenderer;
- (id)_createContactFromPersonNameComponents:(id)a3;
- (id)_documentSenderHandle;
- (id)_renderAvatarImageForContact:(id)a3 renderer:(id)a4 renderingScope:(id)a5;
- (id)_renderAvatarImageWithRenderer:(id)a3 renderingScope:(id)a4;
- (id)fetchThumbnailImages;
- (id)fetchThumbnailImagesWithScale:(double)a3 isRTL:(BOOL)a4;
- (void)fetchThumbnailImagesWithScale:(double)a3 isRTL:(BOOL)a4 completion:(id)a5;
@end

@implementation SYDocumentSenderAvatar

- (SYDocumentSenderAvatar)initWithDocumentSender:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SYDocumentSenderAvatar;
  v6 = [(SYDocumentSenderAvatar *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentSender, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.synapse.SYDocumentSenderAvatar", v8);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v9;
  }

  return v7;
}

- (void)fetchThumbnailImagesWithScale:(double)a3 isRTL:(BOOL)a4 completion:(id)a5
{
  v8 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke;
  v17[3] = &unk_27856B760;
  v18 = v8;
  v9 = v8;
  v10 = MEMORY[0x22AA6A360](v17);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke_2;
  block[3] = &unk_27856B7B0;
  v15 = a3;
  v16 = a4;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(processingQueue, block);
}

uint64_t __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke_2(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v3 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) documentSender];
    *buf = 138477827;
    v44 = v4;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_DEFAULT, "Fetching all matching contacts for sender: %{private}@", buf, 0xCu);
  }

  v5 = MEMORY[0x277CBDA58];
  v6 = [*(a1 + 32) _documentSenderHandle];
  v7 = [v5 predicateForContactsMatchingEmailAddress:v6];

  v47[0] = *MEMORY[0x277CBD158];
  [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  v30 = v41 = 0;
  v31 = v7;
  v8 = [v2 unifiedContactsMatchingPredicate:v7 keysToFetch:? error:?];
  v9 = 0;
  if (!v8)
  {
    v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke_2_cold_1(v9, v10);
    }
  }

  v29 = v9;
  v32 = v2;
  v11 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 count];
    v13 = [*(a1 + 32) documentSender];
    *buf = 134218243;
    v44 = v12;
    v45 = 2113;
    v46 = v13;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "Found %ld matching contacts for sender: %{private}@", buf, 0x16u);
  }

  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v15 = [*(a1 + 32) _createAvatarImageRenderer];
  v16 = [*(a1 + 32) _createRenderingScopeWithSize:*(a1 + 56) scale:100.0 isRTL:{100.0, *(a1 + 48)}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v38;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = [v22 thumbnailImageData];

        if (v23)
        {
          v24 = [*(a1 + 32) _renderAvatarImageForContact:v22 renderer:v15 renderingScope:v16];
          if (v24)
          {
            [v14 addObject:v24];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v19);
  }

  if ([v14 count])
  {
    v25 = *(a1 + 40);
    v26 = [v14 copy];
    (*(v25 + 16))(v25, v26);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke_7;
    block[3] = &unk_27856B7B0;
    v27 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    v34 = v27;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke_7(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _defaultThumbnailImageWithSize:*(a1 + 56) scale:100.0 isRTL:{100.0, *(a1 + 48)}];
  v3 = v2;
  if (v2)
  {
    v12[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*(a1 + 32) + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke_2_8;
  v9[3] = &unk_27856B788;
  v6 = *(a1 + 40);
  v10 = v4;
  v11 = v6;
  v7 = v4;
  dispatch_async(v5, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_documentSenderHandle
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(SYDocumentSenderAvatar *)self documentSender];
  v3 = [v2 handle];
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"<>"];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 length])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v6 lastObject];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchThumbnailImages
{
  v3 = 2.0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (SYScreenScale___onceToken != -1)
    {
      [SYDocumentSenderAvatar fetchThumbnailImages];
    }

    v3 = *&SYScreenScale___scale;
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    if (SYIsRTL___onceToken != -1)
    {
      [SYDocumentSenderAvatar fetchThumbnailImages];
    }

    v4 = SYIsRTL___isRTL;
  }

  else
  {
    v4 = 0;
  }

  return [(SYDocumentSenderAvatar *)self fetchThumbnailImagesWithScale:v4 & 1 isRTL:v3];
}

- (id)fetchThumbnailImagesWithScale:(double)a3 isRTL:(BOOL)a4
{
  v30 = a4;
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v7 = MEMORY[0x277CBDA58];
  v8 = [(SYDocumentSenderAvatar *)self _documentSenderHandle];
  v9 = [v7 predicateForContactsMatchingEmailAddress:v8];

  v43[0] = *MEMORY[0x277CBD158];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v37 = 0;
  v31 = v9;
  v32 = v6;
  v11 = [v6 unifiedContactsMatchingPredicate:v9 keysToFetch:v10 error:&v37];
  v12 = v37;
  if (!v11)
  {
    v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke_2_cold_1(v12, v13);
    }
  }

  v14 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 count];
    v16 = [(SYDocumentSenderAvatar *)self documentSender];
    *buf = 134218243;
    v40 = v15;
    v41 = 2113;
    v42 = v16;
    _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_DEFAULT, "Found %ld matching contacts for sender: %{private}@", buf, 0x16u);
  }

  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        v24 = [v23 thumbnailImageData];

        if (v24)
        {
          v25 = [v23 thumbnailImageData];
          [v17 addObject:v25];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v20);
  }

  if (![v17 count])
  {
    v26 = [(SYDocumentSenderAvatar *)self _defaultThumbnailImageWithSize:v30 scale:100.0 isRTL:100.0, a3];
    if (v26)
    {
      [v17 addObject:v26];
    }
  }

  v27 = [v17 copy];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_createAvatarImageRenderer
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = getCNAvatarImageRendererSettingsClass_softClass;
  v17 = getCNAvatarImageRendererSettingsClass_softClass;
  if (!getCNAvatarImageRendererSettingsClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getCNAvatarImageRendererSettingsClass_block_invoke;
    v12 = &unk_27856B3C8;
    v13 = &v14;
    __getCNAvatarImageRendererSettingsClass_block_invoke(&v9);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  v4 = [v2 defaultSettings];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getCNAvatarImageRendererClass_softClass;
  v17 = getCNAvatarImageRendererClass_softClass;
  if (!getCNAvatarImageRendererClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getCNAvatarImageRendererClass_block_invoke;
    v12 = &unk_27856B3C8;
    v13 = &v14;
    __getCNAvatarImageRendererClass_block_invoke(&v9);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  v7 = [[v5 alloc] initWithSettings:v4];

  return v7;
}

- (id)_renderAvatarImageWithRenderer:(id)a3 renderingScope:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SYDocumentSenderAvatar *)self documentSender];
    v20 = 138477827;
    v21 = v9;
    _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "Rendering avatar image for sender: %{private}@", &v20, 0xCu);
  }

  v10 = [(SYDocumentSenderAvatar *)self documentSender];
  v11 = [v10 personNameComponentsFormattedWithStyle:4];

  if (v11)
  {
    v12 = [(SYDocumentSenderAvatar *)self _createContactFromPersonNameComponents:v11];
    v13 = [(SYDocumentSenderAvatar *)self _renderAvatarImageForContact:v12 renderer:v6 renderingScope:v7];
    v14 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(SYDocumentSenderAvatar *)self documentSender];
      v16 = [v13 length];
      v20 = 138478595;
      v21 = v15;
      v22 = 2113;
      v23 = v12;
      v24 = 2113;
      v25 = v11;
      v26 = 2048;
      v27 = v16;
      _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_DEFAULT, "Finished rendering avatar image for sender: %{private}@, contact: %{private}@, components: %{private}@, size: %ld", &v20, 0x2Au);
    }
  }

  else
  {
    v14 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(SYDocumentSenderAvatar *)self documentSender];
      v20 = 138477827;
      v21 = v17;
      _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_DEFAULT, "Unable to get person name components for sender: %{private}@", &v20, 0xCu);
    }

    v13 = 0;
    v12 = v14;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_renderAvatarImageForContact:(id)a3 renderer:(id)a4 renderingScope:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v22[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v11 = [v8 avatarImageForContacts:v10 scope:v9];

  v12 = v11;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v13 = getUIImagePNGRepresentationSymbolLoc_ptr;
  v21 = getUIImagePNGRepresentationSymbolLoc_ptr;
  if (!getUIImagePNGRepresentationSymbolLoc_ptr)
  {
    v14 = UIKitLibrary();
    v19[3] = dlsym(v14, "UIImagePNGRepresentation");
    getUIImagePNGRepresentationSymbolLoc_ptr = v19[3];
    v13 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v13)
  {
    [SYDocumentSenderAvatar _renderAvatarImageForContact:renderer:renderingScope:];
  }

  v15 = v13(v12);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_createContactFromPersonNameComponents:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBDB38];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    v6 = [v4 namePrefix];
    [v5 setNamePrefix:v6];

    v7 = [v4 givenName];
    [v5 setGivenName:v7];

    v8 = [v4 middleName];
    [v5 setMiddleName:v8];

    v9 = [v4 familyName];
    [v5 setFamilyName:v9];

    v10 = [v4 nameSuffix];
    [v5 setNameSuffix:v10];

    v11 = [v4 nickname];

    [v5 setNickname:v11];
    v12 = [v5 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __73__SYDocumentSenderAvatar_fetchThumbnailImagesWithScale_isRTL_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Failed to find matching contacts, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_renderAvatarImageForContact:renderer:renderingScope:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSData *sy_UIImagePNGRepresentation(UIImage *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SYDocumentSenderAvatar.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

@end