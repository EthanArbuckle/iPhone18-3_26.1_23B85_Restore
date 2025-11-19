@interface PXSharedLibraryParticipantValidationManager
- (PXSharedLibraryParticipantValidationManager)init;
- (void)requestValidationForPhoneNumbers:(id)a3 emailAddresses:(id)a4 resultHandler:(id)a5;
@end

@implementation PXSharedLibraryParticipantValidationManager

- (void)requestValidationForPhoneNumbers:(id)a3 emailAddresses:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantValidationManager.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke;
  aBlock[3] = &unk_1E772DB30;
  aBlock[4] = self;
  v15 = v12;
  v28 = v15;
  v16 = _Block_copy(aBlock);
  v16[2](v16, v9, v13);
  v16[2](v16, v10, v14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_3;
  block[3] = &unk_1E774C2F0;
  v17 = v11;
  v26 = v17;
  v18 = v15;
  v25 = v18;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if ([v14 count] || objc_msgSend(v13, "count"))
  {
    v19 = MEMORY[0x1E6978AC0];
    v20 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_4;
    v22[3] = &unk_1E772F290;
    v22[4] = self;
    v23 = v17;
    [v19 queryParticipantsWithEmails:v14 phoneNumbers:v13 photoLibrary:v20 completionHandler:v22];
  }
}

void __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_2;
  v8[3] = &unk_1E772DB08;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  v7 = v5;
  [a2 enumerateObjectsUsingBlock:v8];
}

void __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  v8 = a2;
  v7(v6, v8, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_5;
  v10[3] = &unk_1E7745258;
  v10[4] = *(a1 + 32);
  [v8 enumerateKeysAndObjectsUsingBlock:v10];

  if (v5)
  {
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Error validating participants: %@", buf, 0xCu);
    }
  }
}

void __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 BOOLValue];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_6;
  block[3] = &unk_1E774B368;
  block[4] = v7;
  v11 = v5;
  v12 = v6;
  v9 = v5;
  dispatch_sync(v8, block);
}

void __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  [v2 setIsValid:v1];
}

void __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3860;
  v28 = __Block_byref_object_dispose__3861;
  v29 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_199;
  block[3] = &unk_1E7746448;
  v23 = &v24;
  block[4] = v4;
  v6 = v3;
  v22 = v6;
  dispatch_sync(v5, block);
  v7 = v25[5];
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isValid")}];
    [v8 setObject:v9 forKey:v6];
  }

  else
  {
    v10 = [[PXSharedLibraryParticipantValidationQuery alloc] initWithAddress:v6];
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_2_203;
    v17 = &unk_1E774A1B8;
    v18 = v11;
    v13 = v6;
    v19 = v13;
    v9 = v10;
    v20 = v9;
    dispatch_sync(v12, &v14);
    [*(a1 + 48) addObject:{v13, v14, v15, v16, v17, v18}];
  }

  _Block_object_dispose(&v24, 8);
}

void __109__PXSharedLibraryParticipantValidationManager_requestValidationForPhoneNumbers_emailAddresses_resultHandler___block_invoke_199(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (PXSharedLibraryParticipantValidationManager)init
{
  v10.receiver = self;
  v10.super_class = PXSharedLibraryParticipantValidationManager;
  v2 = [(PXSharedLibraryParticipantValidationManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryAddressesToQueries = v2->_queryAddressesToQueries;
    v2->_queryAddressesToQueries = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("PXSharedLibraryParticipantValidationQueryQueue", v6);
    ivarQueue = v2->_ivarQueue;
    v2->_ivarQueue = v7;
  }

  return v2;
}

@end