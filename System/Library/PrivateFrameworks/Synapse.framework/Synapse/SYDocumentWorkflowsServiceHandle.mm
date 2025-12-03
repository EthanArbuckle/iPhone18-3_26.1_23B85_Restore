@interface SYDocumentWorkflowsServiceHandle
- (SYDocumentWorkflowsServiceHandle)initWithRepository:(id)repository;
- (id)_createOpenLastModifiedDocumentImpl;
- (id)_fallbackUserActivityForDocumentWithAttributes:(id)attributes;
- (void)fetchUserActivityForDocumentIndexKey:(id)key completion:(id)completion;
- (void)hasLastModifiedDocument:(id)document completion:(id)completion;
- (void)hasOriginalDocumentForFileAtURL:(id)l withAttributes:(id)attributes completion:(id)completion;
- (void)openLastModifiedDocument:(id)document completion:(id)completion;
- (void)returnToSenderDocument:(id)document withAttributes:(id)attributes shouldCreateNewMessage:(BOOL)message completion:(id)completion;
- (void)saveUserActivity:(id)activity forDocumentIndexKey:(id)key sourceBundleIdentifier:(id)identifier completion:(id)completion;
- (void)unlinkDocumentsWithRelatedUniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)updateLinkedDocumentsWithCompletion:(id)completion;
@end

@implementation SYDocumentWorkflowsServiceHandle

- (SYDocumentWorkflowsServiceHandle)initWithRepository:(id)repository
{
  repositoryCopy = repository;
  v9.receiver = self;
  v9.super_class = SYDocumentWorkflowsServiceHandle;
  v6 = [(SYDocumentWorkflowsServiceHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_repository, repository);
  }

  return v7;
}

- (void)fetchUserActivityForDocumentIndexKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__SYDocumentWorkflowsServiceHandle_fetchUserActivityForDocumentIndexKey_completion___block_invoke;
  v15[3] = &unk_27856BEF0;
  v8 = completionCopy;
  v16 = v8;
  v9 = MEMORY[0x22AA6A360](v15);
  v14 = 0;
  v10 = [(SYDocumentWorkflowsServiceHandle *)self _fetchUserActivityWithRelatedUniqueIdentifier:keyCopy error:&v14];
  v11 = v14;
  if (v10)
  {
    v12 = [[SYUserActivityWrapper alloc] initWithUserActivity:v10];
    (v9)[2](v9, v12, 0);
  }

  else
  {
    v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentWorkflowsServiceHandle fetchUserActivityForDocumentIndexKey:completion:];
    }

    (v9)[2](v9, 0, v11);
  }
}

uint64_t __84__SYDocumentWorkflowsServiceHandle_fetchUserActivityForDocumentIndexKey_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveUserActivity:(id)activity forDocumentIndexKey:(id)key sourceBundleIdentifier:(id)identifier completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __107__SYDocumentWorkflowsServiceHandle_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke;
  v22[3] = &unk_27856B738;
  v12 = completionCopy;
  v23 = v12;
  identifierCopy = identifier;
  activityCopy = activity;
  v15 = MEMORY[0x22AA6A360](v22);
  repository = self->_repository;
  userActivity = [activityCopy userActivity];

  v21 = 0;
  v18 = [(SYDocumentWorkflowsRepository *)repository saveUserActivity:userActivity forRelatedUniqueIdentifier:keyCopy sourceBundleIdentifier:identifierCopy error:&v21];

  v19 = v21;
  if ((v18 & 1) == 0)
  {
    v20 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentWorkflowsServiceHandle saveUserActivity:forDocumentIndexKey:sourceBundleIdentifier:completion:];
    }
  }

  (v15)[2](v15, v18, v19);
}

uint64_t __107__SYDocumentWorkflowsServiceHandle_saveUserActivity_forDocumentIndexKey_sourceBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)returnToSenderDocument:(id)document withAttributes:(id)attributes shouldCreateNewMessage:(BOOL)message completion:(id)completion
{
  messageCopy = message;
  v56[1] = *MEMORY[0x277D85DE8];
  documentCopy = document;
  attributesCopy = attributes;
  completionCopy = completion;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke;
  v47[3] = &unk_27856B738;
  v13 = completionCopy;
  v48 = v13;
  v14 = MEMORY[0x22AA6A360](v47);
  sourceBundleIdentifier = [attributesCopy sourceBundleIdentifier];
  if ([sourceBundleIdentifier length])
  {
    v46 = 0;
    v16 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:sourceBundleIdentifier allowPlaceholder:1 error:&v46];
    v17 = v46;
    v18 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    v19 = v18;
    if (!v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SYDocumentWorkflowsServiceHandle returnToSenderDocument:withAttributes:shouldCreateNewMessage:completion:];
      }

      (v14)[2](v14, 0, v17);
      goto LABEL_26;
    }

    v38 = messageCopy;
    v40 = documentCopy;
    v20 = v18;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      sender = [attributesCopy sender];
      *buf = 138412802;
      v50 = sourceBundleIdentifier;
      v51 = 2112;
      v52 = v40;
      v53 = 2112;
      v54 = sender;
      _os_log_impl(&dword_225901000, v20, OS_LOG_TYPE_DEFAULT, "Found record for bundle identifier: %@, to return document: %@, to sender: %@", buf, 0x20u);
    }

    indexKey = [attributesCopy indexKey];
    v45 = 0;
    v23 = [(SYDocumentWorkflowsServiceHandle *)self _fetchUserActivityWithRelatedUniqueIdentifier:indexKey error:&v45];
    v24 = v45;

    v39 = v24;
    if (v23 || !v24)
    {
      documentCopy = v40;
      if (v23)
      {
        v28 = v23;
        goto LABEL_17;
      }
    }

    else
    {
      v25 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      documentCopy = v40;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [SYDocumentWorkflowsServiceHandle returnToSenderDocument:attributesCopy withAttributes:v39 shouldCreateNewMessage:v25 completion:?];
      }
    }

    v28 = [(SYDocumentWorkflowsServiceHandle *)self _fallbackUserActivityForDocumentWithAttributes:attributesCopy];
    if (!v28)
    {
      v34 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SYDocumentWorkflowsServiceHandle returnToSenderDocument:attributesCopy withAttributes:v34 shouldCreateNewMessage:? completion:?];
      }

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10;
      v43[3] = &unk_27856BFE0;
      v43[4] = sourceBundleIdentifier;
      v44 = v14;
      [defaultWorkspace openApplicationWithBundleIdentifier:sourceBundleIdentifier configuration:0 completionHandler:v43];

      goto LABEL_25;
    }

LABEL_17:
    v37 = v23;
    v29 = [MEMORY[0x277CC1EF0] _syReturnToSenderActivityWithOriginalUserActivity:v28];
    v30 = v29;
    if (documentCopy)
    {
      [(NSUserActivity *)v29 set_syDocument:documentCopy];
    }

    [v30 set_syShouldCreateNewMessage:v38];
    v31 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      _syLoggableDescription = [v30 _syLoggableDescription];
      *buf = 138412546;
      v50 = sourceBundleIdentifier;
      v51 = 2112;
      v52 = _syLoggableDescription;
      _os_log_impl(&dword_225901000, v31, OS_LOG_TYPE_DEFAULT, "Launching app: %@, with user activity: %@", buf, 0x16u);

      documentCopy = v40;
    }

    defaultWorkspace2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_12;
    v41[3] = &unk_27856BFE0;
    v41[4] = sourceBundleIdentifier;
    v42 = v14;
    [defaultWorkspace2 openUserActivity:v30 usingApplicationRecord:v16 configuration:0 completionHandler:v41];

    v23 = v37;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v26 = MEMORY[0x277CCA9B8];
  v55 = *MEMORY[0x277CCA450];
  v56[0] = @"document source bundle identifier is empty.";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
  v17 = [v26 errorWithDomain:@"com.apple.synapse" code:-129 userInfo:v27];

  (v14)[2](v14, 0, v17);
LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_fallbackUserActivityForDocumentWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  sourceBundleIdentifier = [attributesCopy sourceBundleIdentifier];
  v6 = SYIsMailBundleId(sourceBundleIdentifier, v5);

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.mail.message"];
    indexKey = [attributesCopy indexKey];
    [v7 set_syRelatedUniqueIdentifier:indexKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)hasOriginalDocumentForFileAtURL:(id)l withAttributes:(id)attributes completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  attributesCopy = attributes;
  completionCopy = completion;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __94__SYDocumentWorkflowsServiceHandle_hasOriginalDocumentForFileAtURL_withAttributes_completion___block_invoke;
  v27[3] = &unk_27856B8D8;
  v10 = completionCopy;
  v28 = v10;
  v11 = MEMORY[0x22AA6A360](v27);
  v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    *buf = 138412290;
    v31 = path;
    _os_log_impl(&dword_225901000, v12, OS_LOG_TYPE_DEFAULT, "Asking for original document of file at url: %@", buf, 0xCu);
  }

  path2 = [lCopy path];
  if (SYPathIsInUserLibrarySubdirectory(path2, @"Containers/com.apple.mail/Data/Library/Mail Downloads/"))
  {
    goto LABEL_7;
  }

  path3 = [lCopy path];
  if (([path3 hasPrefix:@"/private/var/mobile/tmp/com.apple.email.maild/"] & 1) != 0 || objc_msgSend(path3, "hasPrefix:", @"/var/mobile/tmp/com.apple.email.maild/"))
  {

LABEL_7:
    goto LABEL_8;
  }

  path4 = [lCopy path];
  v20 = SYPathIsInUserLibrarySubdirectory(path4, @"Mail/AttachmentData/");

  if ((v20 & 1) == 0)
  {
    indexKey = [attributesCopy indexKey];
    v29 = indexKey;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __94__SYDocumentWorkflowsServiceHandle_hasOriginalDocumentForFileAtURL_withAttributes_completion___block_invoke_18;
    v23[3] = &unk_27856BE50;
    v24 = lCopy;
    v25 = attributesCopy;
    v26 = v11;
    [SYDocumentAttributesFetchRequest fetchAttributesForDocumentsWithIndexKeys:v22 completion:v23];

    goto LABEL_11;
  }

LABEL_8:
  v16 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    path5 = [lCopy path];
    *buf = 138412290;
    v31 = path5;
    _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_DEFAULT, "Requested original of document considered the original itself, url: %@", buf, 0xCu);
  }

  v11[2](v11, 0, 0);
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __94__SYDocumentWorkflowsServiceHandle_hasOriginalDocumentForFileAtURL_withAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__SYDocumentWorkflowsServiceHandle_hasOriginalDocumentForFileAtURL_withAttributes_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) path];
  v8 = [v7 hasPrefix:@"/var/tmp/com.apple.email.maild/"];

  v9 = [*(a1 + 40) originalFileURL];
  v10 = [v9 path];
  v11 = [v10 hasPrefix:@"/var/mobile/Library/Mail/AttachmentData/"];

  v12 = v8 & v11;
  v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) indexKey];
    v15 = [v5 firstObject];
    v16 = [v15 originalFileURL];
    v17 = [v16 path];
    v20 = 138412802;
    v21 = v14;
    v22 = 2112;
    v23 = v17;
    v24 = 1024;
    v25 = v12;
    _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Original document version of file with id: %@, found at: %@, suppressed: %{BOOL}d", &v20, 0x1Cu);
  }

  if (v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v5 firstObject];
  }

  (*(*(a1 + 48) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (void)hasLastModifiedDocument:(id)document completion:(id)completion
{
  documentCopy = document;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SYDocumentWorkflowsServiceHandle_hasLastModifiedDocument_completion___block_invoke;
  v14[3] = &unk_27856C120;
  v15 = completionCopy;
  v7 = completionCopy;
  v8 = MEMORY[0x22AA6A360](v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__SYDocumentWorkflowsServiceHandle_hasLastModifiedDocument_completion___block_invoke_2;
  v11[3] = &unk_27856C0D0;
  v12 = documentCopy;
  v13 = v8;
  v9 = documentCopy;
  v10 = v8;
  [SYLastModifiedDocumentFetchRequest fetchLastModifiedDocument:v9 completion:v11];
}

uint64_t __71__SYDocumentWorkflowsServiceHandle_hasLastModifiedDocument_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__SYDocumentWorkflowsServiceHandle_hasLastModifiedDocument_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    a3;
    v6 = [v5 fileURL];
    v7 = [v6 path];
    v8 = SYPathIsInUserLibrarySubdirectory(v7, @"Containers/com.apple.mail/Data/Library/Mail Downloads/");

    v9 = [v5 fileURL];
    v10 = [v9 path];
    v11 = SYPathIsInUserLibrarySubdirectory(v10, @"Containers/com.apple.Preview/Data/tmp/");

    v12 = v8 | v11;
    v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = [v5 fileURL];
      v16 = [v15 path];
      v18 = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      v22 = 1024;
      v23 = v12 & 1;
      _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Last document version of file with id: %@, found at: %@, suppressed: %{BOOL}d", &v18, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, a3);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)openLastModifiedDocument:(id)document completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke;
  v13[3] = &unk_27856B738;
  v14 = completionCopy;
  v7 = completionCopy;
  documentCopy = document;
  v9 = MEMORY[0x22AA6A360](v13);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke_2;
  v11[3] = &unk_27856C0D0;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [SYLastModifiedDocumentFetchRequest fetchLastModifiedDocument:documentCopy completion:v11];
}

uint64_t __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _createOpenLastModifiedDocumentImpl];
    v5 = [v3 fileURL];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__SYDocumentWorkflowsServiceHandle_openLastModifiedDocument_completion___block_invoke_3;
    v6[3] = &unk_27856B738;
    v7 = *(a1 + 40);
    [v4 revealDocumentAtURL:v5 completion:v6];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_createOpenLastModifiedDocumentImpl
{
  v2 = objc_alloc_init(SYOpenLastModifiedDocumentImplUIKit);

  return v2;
}

- (void)updateLinkedDocumentsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke;
  v9[3] = &unk_27856B738;
  v10 = completionCopy;
  v4 = completionCopy;
  v5 = MEMORY[0x22AA6A360](v9);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_2;
  v7[3] = &unk_27856BF68;
  v8 = v5;
  v6 = v5;
  [SYDocumentFetchRequest fetchAllDocumentsMatchingAnyIndexIdWithCompletion:v7];
}

uint64_t __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [v5 count];
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Found %ld linked document(s) matching any index key", buf, 0xCu);
  }

  if (v5 && [v5 count])
  {
    v8 = [MEMORY[0x277CBEB58] set];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_31;
    v19[3] = &unk_27856C760;
    v9 = v8;
    v20 = v9;
    [v5 enumerateObjectsUsingBlock:v19];
    v10 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 count];
      *buf = 134218242;
      v22 = v11;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "Found %ld linked document(s) with index keys: %@", buf, 0x16u);
    }

    v12 = [v9 allObjects];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33;
    v15[3] = &unk_27856C788;
    v16 = v9;
    v18 = *(a1 + 32);
    v17 = v5;
    v13 = v9;
    [SYDocumentAttributesFetchRequest fetchAttributesForDocumentsWithIndexKeys:v12 completion:v15];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 documentId];
  [v2 addObject:v3];
}

void __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v27 = v6;
    v34 = [*(a1 + 32) mutableCopy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v28 = v5;
    obj = v5;
    v32 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    v8 = 0;
    if (v32)
    {
      v30 = *v43;
      v9 = 1;
      v31 = a1;
      do
      {
        v10 = 0;
        do
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v10;
          v35 = *(*(&v42 + 1) + 8 * v10);
          v11 = [v35 indexKey];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v36 = *(a1 + 40);
          v12 = [v36 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v39;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v39 != v14)
                {
                  objc_enumerationMutation(v36);
                }

                v16 = *(*(&v38 + 1) + 8 * i);
                v17 = [v16 documentId];
                v18 = [v17 isEqualToString:v11];

                if (v18)
                {
                  v19 = os_log_create("com.apple.synapse", "DocumentWorkflows");
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = [v16 fileURL];
                    v21 = [v20 path];
                    *buf = 138412290;
                    v47 = v21;
                    _os_log_impl(&dword_225901000, v19, OS_LOG_TYPE_DEFAULT, "Linking: %@", buf, 0xCu);
                  }

                  v22 = [v16 fileURL];
                  v37 = 0;
                  v23 = [v35 saveToFileURL:v22 error:&v37];

                  v8 += v23;
                  v9 &= v23;
                  [v34 removeObject:v11];
                }
              }

              v13 = [v36 countByEnumeratingWithState:&v38 objects:v48 count:16];
            }

            while (v13);
          }

          v10 = v33 + 1;
          a1 = v31;
        }

        while (v33 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v32);
    }

    v25 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v47 = v8;
      _os_log_impl(&dword_225901000, v25, OS_LOG_TYPE_DEFAULT, "Linked %ld documents.", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    v7 = v27;
    v5 = v28;
  }

  else
  {
    v24 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)unlinkDocumentsWithRelatedUniqueIdentifiers:(id)identifiers completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = identifiersCopy;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Unlinking documents with ids: %{public}@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__SYDocumentWorkflowsServiceHandle_unlinkDocumentsWithRelatedUniqueIdentifiers_completion___block_invoke;
  v16[3] = &unk_27856B738;
  v17 = completionCopy;
  v8 = completionCopy;
  v9 = MEMORY[0x22AA6A360](v16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__SYDocumentWorkflowsServiceHandle_unlinkDocumentsWithRelatedUniqueIdentifiers_completion___block_invoke_2;
  v13[3] = &unk_27856C270;
  v14 = identifiersCopy;
  v15 = v9;
  v10 = v9;
  v11 = identifiersCopy;
  [SYDocumentFetchRequest fetchDocumentsWithIndexIds:v11 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __91__SYDocumentWorkflowsServiceHandle_unlinkDocumentsWithRelatedUniqueIdentifiers_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __91__SYDocumentWorkflowsServiceHandle_unlinkDocumentsWithRelatedUniqueIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  v8 = v7;
  if (v5)
  {
    v34 = v6;
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 count];
      v11 = *(a1 + 32);
      *buf = 134218242;
      v44 = v10;
      v45 = 2114;
      v46 = v11;
      _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Found %ld documents to unlink for ids: %{public}@", buf, 0x16u);
    }

    v33 = a1;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v39;
      v17 = "com.apple.synapse";
      v18 = "DocumentWorkflows";
      v19 = 0x27856A000uLL;
      do
      {
        v20 = 0;
        v36 = v14;
        do
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v21 = [*(*(&v38 + 1) + 8 * v20) fileURL];
          v22 = os_log_create(v17, v18);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [v21 path];
            v23 = v16;
            v24 = v19;
            v25 = v18;
            v26 = v17;
            v28 = v27 = v12;
            *buf = 138477827;
            v44 = v28;
            _os_log_impl(&dword_225901000, v22, OS_LOG_TYPE_DEFAULT, "Unlinking: %{private}@", buf, 0xCu);

            v12 = v27;
            v17 = v26;
            v18 = v25;
            v19 = v24;
            v16 = v23;
            v14 = v36;
          }

          v29 = *(v19 + 4048);
          v37 = 0;
          v15 += [v29 _removeDocumentAttributesForFileAtURL:v21 keepDocumentRelatedUniqueIdentifierKey:1 error:&v37];

          ++v20;
        }

        while (v14 != v20);
        v14 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v30 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v12 count];
      *buf = 134218240;
      v44 = v15;
      v45 = 2048;
      v46 = v31;
      _os_log_impl(&dword_225901000, v30, OS_LOG_TYPE_DEFAULT, "Unlinked %ld/%ld documents.", buf, 0x16u);
    }

    [v12 count];
    (*(*(v33 + 40) + 16))();
    v6 = v34;
    v5 = v35;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)fetchUserActivityForDocumentIndexKey:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to fetch user activity for index key: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveUserActivity:forDocumentIndexKey:sourceBundleIdentifier:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to save user activity for document index key: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)returnToSenderDocument:(NSObject *)a3 withAttributes:shouldCreateNewMessage:completion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 indexKey];
  OUTLINED_FUNCTION_1_1();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Unable to fetch original user activity for index key: %@, error: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)returnToSenderDocument:(void *)a1 withAttributes:(NSObject *)a2 shouldCreateNewMessage:completion:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 indexKey];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to find original user activity for document with index key: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)returnToSenderDocument:withAttributes:shouldCreateNewMessage:completion:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to find record for bundle identifier: %@, to return document back to sender, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __108__SYDocumentWorkflowsServiceHandle_returnToSenderDocument_withAttributes_shouldCreateNewMessage_completion___block_invoke_10_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v1, v2, "Unable to launch app with bundle identifier: %@, error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __72__SYDocumentWorkflowsServiceHandle_updateLinkedDocumentsWithCompletion___block_invoke_33_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v1, v2, "Unable to fetch documents with index keys: %@, error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

@end