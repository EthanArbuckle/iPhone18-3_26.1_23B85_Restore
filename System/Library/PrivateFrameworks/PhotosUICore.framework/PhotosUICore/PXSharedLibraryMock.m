@interface PXSharedLibraryMock
- (BOOL)canDeleteParticipants:(id)a3;
- (BOOL)canMoveAssetsToSharedLibrary:(id)a3;
- (PXSharedLibraryMock)init;
- (id)sourceLibraryInfo;
- (void)acceptInvitationWithRule:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)addAssetSharingSuggestions:(id)a3 completion:(id)a4;
- (void)addParticipantsWithEmailAddresses:(id)a3 phoneNumbers:(id)a4 presentationEnvironment:(id)a5 withCompletion:(id)a6;
- (void)addPersonUUIDsToPersonCondition:(id)a3 completion:(id)a4;
- (void)declineInvitationWithCompletion:(id)a3;
- (void)deleteParticipants:(id)a3 presentationEnvironment:(id)a4 withCompletion:(id)a5;
- (void)exitPreviewWithPresentationEnvironment:(id)a3 completion:(id)a4;
- (void)exitWithRetentionPolicy:(int64_t)a3 presentationEnvironment:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)moveAssetsToPersonalLibrary:(id)a3 completion:(id)a4;
- (void)moveAssetsToSharedLibrary:(id)a3 completion:(id)a4;
- (void)moveAssetsWithLocalIdentifiersToSharedLibrary:(id)a3 completion:(id)a4;
- (void)previewInvitationWithRule:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)publishPreviewWithPresentationEnvironment:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)removeAssetSharingSuggestions:(id)a3 completion:(id)a4;
- (void)removePersonUUIDsFromPersonCondition:(id)a3 completion:(id)a4;
- (void)restoreDeclinedInvitationWithCompletion:(id)a3;
@end

@implementation PXSharedLibraryMock

- (void)removePersonUUIDsFromPersonCondition:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Removing personUUIDs: %@, from shared library: %@", &v9, 0x16u);
  }

  if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)addPersonUUIDsToPersonCondition:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Adding personUUIDs: %@, from shared library: %@", &v9, 0x16u);
  }

  if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)addAssetSharingSuggestions:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Adding sharing suggestions for assets: %@, from shared library: %@", &v9, 0x16u);
  }

  if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)removeAssetSharingSuggestions:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Removing sharing suggestions for assets: %@, from shared library: %@", &v9, 0x16u);
  }

  if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)moveAssetsToPersonalLibrary:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Moving assets: %@, from shared library: %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = +[PXSharedLibrarySettings sharedInstance];
    v10 = [v9 simulateErrorType];

    if (v10 == 25)
    {
      v11 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__PXSharedLibraryMock_moveAssetsToPersonalLibrary_completion___block_invoke;
      block[3] = &unk_1E774C250;
      v13 = v7;
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(v7 + 2))(v7, 1, 0);
    }
  }
}

void __62__PXSharedLibraryMock_moveAssetsToPersonalLibrary_completion___block_invoke(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Simulated Error: Move Assets to Personal Library Failed", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Move Assets to Personal Library Failed"];
  (*(*(a1 + 32) + 16))();
}

- (void)moveAssetsWithLocalIdentifiersToSharedLibrary:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Moving assets with local identifiers: %@, to shared library: %@", &v9, 0x16u);
  }

  if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)moveAssetsToSharedLibrary:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Moving assets: %@, to shared library: %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = +[PXSharedLibrarySettings sharedInstance];
    v10 = [v9 simulateErrorType];

    if (v10 == 25)
    {
      v11 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__PXSharedLibraryMock_moveAssetsToSharedLibrary_completion___block_invoke;
      block[3] = &unk_1E774C250;
      v13 = v7;
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(v7 + 2))(v7, 1, 0);
    }
  }
}

void __60__PXSharedLibraryMock_moveAssetsToSharedLibrary_completion___block_invoke(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Simulated Error: Move Assets to Shared Library Failed", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Move Assets to Shared Library Failed"];
  (*(*(a1 + 32) + 16))();
}

- (BOOL)canMoveAssetsToSharedLibrary:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) participatesInLibraryScope])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (void)deleteParticipants:(id)a3 presentationEnvironment:(id)a4 withCompletion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count])
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMock.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"participants.count"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMock.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_3:
  v12 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Deleting participants: %{public}@, from shared library: %@", buf, 0x16u);
  }

  v13 = +[PXSharedLibrarySettings sharedInstance];
  v14 = [v13 simulateErrorType] == 21;

  if (v14)
  {
    v15 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__PXSharedLibraryMock_deleteParticipants_presentationEnvironment_withCompletion___block_invoke;
    block[3] = &unk_1E774C250;
    v27 = v11;
    dispatch_after(v15, MEMORY[0x1E69E96A0], block);
    v16 = v27;
  }

  else
  {
    v17 = [(NSArray *)self->_participants mutableCopy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__181488;
    v30 = __Block_byref_object_dispose__181489;
    v31 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __81__PXSharedLibraryMock_deleteParticipants_presentationEnvironment_withCompletion___block_invoke_86;
    v23[3] = &unk_1E7740D40;
    v16 = v17;
    v24 = v16;
    v25 = buf;
    [v9 enumerateObjectsUsingBlock:v23];
    v18 = *(*&buf[8] + 40);
    if (!v18)
    {
      v19 = [v16 copy];
      participants = self->_participants;
      self->_participants = v19;
    }

    if (v11)
    {
      (*(v11 + 2))(v11, v18 == 0, *(*&buf[8] + 40));
    }

    _Block_object_dispose(buf, 8);
  }
}

void __81__PXSharedLibraryMock_deleteParticipants_presentationEnvironment_withCompletion___block_invoke(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Simulated Error: Deleting Participants Failed", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Deleting Participants Failed"];
  (*(*(a1 + 32) + 16))();
}

void __81__PXSharedLibraryMock_deleteParticipants_presentationEnvironment_withCompletion___block_invoke_86(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PXSharedLibraryMock_deleteParticipants_presentationEnvironment_withCompletion___block_invoke_2;
  v13[3] = &unk_1E7740D18;
  v14 = v6;
  v8 = v6;
  v9 = [v7 indexOfObjectPassingTest:v13];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Failed to delete participants: Email address not found"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) removeObjectAtIndex:v9];
  }
}

uint64_t __81__PXSharedLibraryMock_deleteParticipants_presentationEnvironment_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 emailAddress];
  v4 = [*(a1 + 32) emailAddress];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (BOOL)canDeleteParticipants:(id)a3
{
  v4 = [a3 indexOfObjectPassingTest:&__block_literal_global_181507];
  result = [(PXSharedLibraryMock *)self canEditParticipants];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (void)addParticipantsWithEmailAddresses:(id)a3 phoneNumbers:(id)a4 presentationEnvironment:(id)a5 withCompletion:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (![v11 count])
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMock.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"emailAddresses.count > 0"}];
  }

  if ([v12 count])
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMock.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"phoneNumbers.count == 0"}];

    if (a5)
    {
      goto LABEL_5;
    }
  }

  else if (a5)
  {
    goto LABEL_5;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryMock.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_5:
  v14 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = self;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Adding participants with email addresses: %{public}@, to shared library: %@", buf, 0x16u);
  }

  v15 = +[PXSharedLibrarySettings sharedInstance];
  v16 = [v15 simulateErrorType];

  if (v16 == 21)
  {
    v17 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__PXSharedLibraryMock_addParticipantsWithEmailAddresses_phoneNumbers_presentationEnvironment_withCompletion___block_invoke;
    block[3] = &unk_1E774C250;
    v28 = v13;
    dispatch_after(v17, MEMORY[0x1E69E96A0], block);
    v18 = v28;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __109__PXSharedLibraryMock_addParticipantsWithEmailAddresses_phoneNumbers_presentationEnvironment_withCompletion___block_invoke_76;
    v25[3] = &unk_1E7744F28;
    v18 = v19;
    v26 = v18;
    [v11 enumerateObjectsUsingBlock:v25];
    v20 = [(NSArray *)self->_participants arrayByAddingObjectsFromArray:v18];
    participants = self->_participants;
    self->_participants = v20;

    if (v13)
    {
      (*(v13 + 2))(v13, 1, 0);
    }
  }
}

void __109__PXSharedLibraryMock_addParticipantsWithEmailAddresses_phoneNumbers_presentationEnvironment_withCompletion___block_invoke(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Simulated Error: Adding Participants Failed", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Adding Participants Failed"];
  (*(*(a1 + 32) + 16))();
}

void __109__PXSharedLibraryMock_addParticipantsWithEmailAddresses_phoneNumbers_presentationEnvironment_withCompletion___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(PXSharedLibraryMockParticipant);
  [(PXSharedLibraryMockParticipant *)v4 setEmailAddress:v3];

  [*(a1 + 32) addObject:v4];
}

- (void)exitWithRetentionPolicy:(int64_t)a3 presentationEnvironment:(id)a4 progress:(id)a5 completion:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a6;
  v9 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PXSharedLibraryExitRetentionPolicyDescription(a3);
    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Exiting shared library: %@ with policy: %@", buf, 0x16u);
  }

  if (v8)
  {
    v11 = +[PXSharedLibrarySettings sharedInstance];
    v12 = [v11 simulateErrorType];

    if (v12 == 5)
    {
      v13 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __91__PXSharedLibraryMock_exitWithRetentionPolicy_presentationEnvironment_progress_completion___block_invoke;
      block[3] = &unk_1E774C250;
      v15 = v8;
      dispatch_after(v13, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(v8 + 2))(v8, 1, 0);
    }
  }
}

void __91__PXSharedLibraryMock_exitWithRetentionPolicy_presentationEnvironment_progress_completion___block_invoke(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Simulated Error: Exit Failed", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Exit Failed"];
  (*(*(a1 + 32) + 16))();
}

- (void)exitPreviewWithPresentationEnvironment:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = self;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Exiting shared library preview: %@", buf, 0xCu);
  }

  if (v5)
  {
    v7 = +[PXSharedLibrarySettings sharedInstance];
    v8 = [v7 simulateErrorType];

    if (v8 == 5)
    {
      v9 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__PXSharedLibraryMock_exitPreviewWithPresentationEnvironment_completion___block_invoke;
      block[3] = &unk_1E774C250;
      v11 = v5;
      dispatch_after(v9, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(v5 + 2))(v5, 1, 0);
    }
  }
}

void __73__PXSharedLibraryMock_exitPreviewWithPresentationEnvironment_completion___block_invoke(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Simulated Error: Exit from Preview Failed", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Exit from Preview Failed"];
  (*(*(a1 + 32) + 16))();
}

- (void)publishPreviewWithPresentationEnvironment:(id)a3 progress:(id)a4 completion:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = self;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Publish shared library preview: %@", buf, 0xCu);
  }

  if (v6)
  {
    v8 = +[PXSharedLibrarySettings sharedInstance];
    v9 = [v8 simulateErrorType];

    if (v9 == 4)
    {
      v10 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__PXSharedLibraryMock_publishPreviewWithPresentationEnvironment_progress_completion___block_invoke;
      block[3] = &unk_1E774C250;
      v12 = v6;
      dispatch_after(v10, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [(PXSharedLibraryMock *)self setIsPublished:1];
      (*(v6 + 2))(v6, self, 0);
    }
  }
}

void __85__PXSharedLibraryMock_publishPreviewWithPresentationEnvironment_progress_completion___block_invoke(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Simulated Error: Publish Shared Library Preview Failed", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Publish Shared Library Preview Failed"];
  (*(*(a1 + 32) + 16))();
}

- (void)restoreDeclinedInvitationWithCompletion:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Restore previously declined shared library invitation: %@", &v6, 0xCu);
  }

  if (v4)
  {
    v4[2](v4, self, 0);
  }
}

- (void)declineInvitationWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = self;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Declining shared library invitation: %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = +[PXSharedLibrarySettings sharedInstance];
    v7 = [v6 simulateErrorType];

    if (v7 == 19)
    {
      v8 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Simulated Error: Decline Invitation Failed", buf, 2u);
      }

      v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Decline Invitation Failed"];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__PXSharedLibraryMock_declineInvitationWithCompletion___block_invoke;
      v11[3] = &unk_1E774C2F0;
      v12 = v9;
      v13 = v4;
      v10 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], v11);
    }

    else
    {
      (*(v4 + 2))(v4, 1, 0);
    }
  }
}

- (void)acceptInvitationWithRule:(id)a3 progress:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Accepting shared library invitation: %@ with rule: %@", buf, 0x16u);
  }

  if (v8)
  {
    v10 = +[PXSharedLibrarySettings sharedInstance];
    v11 = [v10 simulateErrorType];

    if (v11 == 16)
    {
      v12 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "Simulated Error: Accept Invitation Failed", buf, 2u);
      }

      v13 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Accept Invitation Failed"];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__PXSharedLibraryMock_acceptInvitationWithRule_progress_completion___block_invoke;
      block[3] = &unk_1E774C2F0;
      v19 = v13;
      v20 = v8;
      v14 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v15 = dispatch_time(0, 3000000000);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __68__PXSharedLibraryMock_acceptInvitationWithRule_progress_completion___block_invoke_2;
      v16[3] = &unk_1E774C250;
      v17 = v8;
      dispatch_after(v15, MEMORY[0x1E69E96A0], v16);
      v14 = v17;
    }
  }
}

- (void)previewInvitationWithRule:(id)a3 progress:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Preview shared library invitation: %@ with rule: %@", buf, 0x16u);
  }

  if (v8)
  {
    v10 = +[PXSharedLibrarySettings sharedInstance];
    v11 = [v10 simulateErrorType];

    if (v11 == 3)
    {
      v12 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PXSharedLibraryMock_previewInvitationWithRule_progress_completion___block_invoke;
      block[3] = &unk_1E774C250;
      v14 = v8;
      dispatch_after(v12, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      (*(v8 + 2))(v8, 1, 0);
    }
  }
}

void __69__PXSharedLibraryMock_previewInvitationWithRule_progress_completion___block_invoke(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Simulated Error: Create Invitation Preview Failed", v4, 2u);
  }

  v3 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Create Invitation Preview Failed"];
  (*(*(a1 + 32) + 16))();
}

- (id)sourceLibraryInfo
{
  v2 = objc_alloc_init(PXSharedLibrarySourceLibraryInfoMock);

  return v2;
}

- (PXSharedLibraryMock)init
{
  v12.receiver = self;
  v12.super_class = PXSharedLibraryMock;
  v2 = [(PXSharedLibraryMock *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    v5 = [v4 copy];
    identifier = v2->_identifier;
    v2->_identifier = v5;

    v7 = [MEMORY[0x1E695DFF8] URLWithString:@"https://share.icloud.com/shared_library/123"];
    shareURL = v2->_shareURL;
    v2->_shareURL = v7;

    v9 = [MEMORY[0x1E695DF00] date];
    creationDate = v2->_creationDate;
    v2->_creationDate = v9;
  }

  return v2;
}

@end