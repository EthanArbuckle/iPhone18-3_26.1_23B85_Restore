@interface PLLibraryContentsEnumerator
- (BOOL)processObjectsWithError:(id *)a3;
- (PLLibraryContentsEnumerator)initWithSourceManagedObjectContext:(id)a3 concurrent:(BOOL)a4 readOnly:(BOOL)a5;
- (id)_setupAlbumController;
- (id)_setupAssetResourceFaceController;
- (id)_setupConversationController;
- (id)_setupPersonController;
- (unint64_t)_enumerateAndSaveOptions;
- (void)addAlbumVisitor:(id)a3;
- (void)addAssetVisitor:(id)a3;
- (void)addConversationVisitor:(id)a3;
- (void)addEndOfListVisitor:(id)a3;
- (void)addFaceVisitor:(id)a3;
- (void)addPersonVisitor:(id)a3;
- (void)addResourceVisitor:(id)a3;
@end

@implementation PLLibraryContentsEnumerator

- (BOOL)processObjectsWithError:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_conversationHandlerBlocks count])
  {
    v5 = [(PLLibraryContentsEnumerator *)self _setupConversationController];
  }

  else
  {
    v5 = 0;
  }

  if ([(NSMutableArray *)self->_assetHandlerBlocks count]|| [(NSMutableArray *)self->_resourceHandlerBlocks count]|| [(NSMutableArray *)self->_faceHandlerBlocks count])
  {
    v6 = [(PLLibraryContentsEnumerator *)self _setupAssetResourceFaceController];
  }

  else
  {
    v6 = 0;
  }

  if ([(NSMutableArray *)self->_albumHandlerBlocks count])
  {
    v7 = [(PLLibraryContentsEnumerator *)self _setupAlbumController];
    if (v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_15;
    }
  }

  if (!v6 && !v7)
  {
    LOBYTE(v8) = 1;
    goto LABEL_37;
  }

LABEL_15:
  v9 = [MEMORY[0x1E695DF00] date];
  if (!v5)
  {
    v11 = 0;
    v10 = 0;
    v8 = 1;
LABEL_19:
    if (v6)
    {
      v32 = v10;
      v8 = [v6 processObjectsWithError:&v32];
      v12 = v32;

      v11 = @"PLLibraryContentsEnumerator";
      v10 = v12;
    }

    goto LABEL_21;
  }

  v33 = 0;
  v8 = [v5 processObjectsWithError:&v33];
  v10 = v33;
  v11 = @"PLConversationEnumerator";
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_21:
  v26 = a3;
  if (v8 && v7)
  {
    v31 = v10;
    LOBYTE(v8) = [v7 processObjectsWithError:&v31];
    v13 = v31;

    v25 = @"PLLibraryContentsAlbumEnumerator";
    v10 = v13;
  }

  else
  {
    v25 = v11;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->_endOfListHandlerBlocks;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        (*(*(*(&v27 + 1) + 8 * i) + 16))();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v16);
  }

  v19 = [MEMORY[0x1E695DF00] date];
  [v19 timeIntervalSinceDate:v9];
  v21 = v20;

  v22 = PLBackendGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v25;
    v36 = 2048;
    v37 = v21;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "%@ enumerator duration: %g", buf, 0x16u);
  }

  if (v26)
  {
    v23 = v10;
    *v26 = v10;
  }

LABEL_37:
  return v8;
}

- (id)_setupPersonController
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSManagedObjectContext *)self->_sourceContext name];
  v5 = [v3 stringWithFormat:@"%@-PersonEnumerator", v4];

  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLPerson entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v23[0] = @"userFeedbacks";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  v10 = [(PLLibraryContentsEnumerator *)self sourceContext];
  v11 = [v10 transactionAuthor];

  v12 = [PLEnumerateAndSaveController alloc];
  sourceContext = self->_sourceContext;
  v14 = [(PLLibraryContentsEnumerator *)self _enumerateAndSaveOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53__PLLibraryContentsEnumerator__setupPersonController__block_invoke;
  v20[3] = &unk_1E7574590;
  v20[4] = self;
  v21 = v5;
  v22 = v11;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__PLLibraryContentsEnumerator__setupPersonController__block_invoke_2;
  v19[3] = &unk_1E7574630;
  v19[4] = self;
  v15 = v11;
  v16 = v5;
  v17 = [(PLEnumerateAndSaveController *)v12 initWithName:v16 fetchRequest:v8 context:sourceContext options:v14 generateContextBlock:v20 didFetchObjectIDsBlock:0 processResultBlock:v19];

  return v17;
}

void __53__PLLibraryContentsEnumerator__setupPersonController__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(*(a1 + 32) + 48);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_setupConversationController
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSManagedObjectContext *)self->_sourceContext name];
  v5 = [v3 stringWithFormat:@"%@-ConversationEnumerator", v4];

  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLConversation entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v23[0] = @"assets";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  v10 = [(PLLibraryContentsEnumerator *)self sourceContext];
  v11 = [v10 transactionAuthor];

  v12 = [PLEnumerateAndSaveController alloc];
  sourceContext = self->_sourceContext;
  v14 = [(PLLibraryContentsEnumerator *)self _enumerateAndSaveOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__PLLibraryContentsEnumerator__setupConversationController__block_invoke;
  v20[3] = &unk_1E7574590;
  v20[4] = self;
  v21 = v5;
  v22 = v11;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__PLLibraryContentsEnumerator__setupConversationController__block_invoke_2;
  v19[3] = &unk_1E7574608;
  v19[4] = self;
  v15 = v11;
  v16 = v5;
  v17 = [(PLEnumerateAndSaveController *)v12 initWithName:v16 fetchRequest:v8 context:sourceContext options:v14 generateContextBlock:v20 didFetchObjectIDsBlock:0 processResultBlock:v19];

  return v17;
}

void __59__PLLibraryContentsEnumerator__setupConversationController__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(*(a1 + 32) + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_setupAlbumController
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSManagedObjectContext *)self->_sourceContext name];
  v5 = [v3 stringWithFormat:@"%@-ManagedAlbumEnumerator", v4];

  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAlbum entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [(PLLibraryContentsEnumerator *)self sourceContext];
  v10 = [v9 transactionAuthor];

  v11 = [PLEnumerateAndSaveController alloc];
  sourceContext = self->_sourceContext;
  v13 = [(PLLibraryContentsEnumerator *)self _enumerateAndSaveOptions];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__PLLibraryContentsEnumerator__setupAlbumController__block_invoke;
  v19[3] = &unk_1E7574590;
  v19[4] = self;
  v20 = v5;
  v21 = v10;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__PLLibraryContentsEnumerator__setupAlbumController__block_invoke_2;
  v18[3] = &unk_1E75745E0;
  v18[4] = self;
  v14 = v10;
  v15 = v5;
  v16 = [(PLEnumerateAndSaveController *)v11 initWithName:v15 fetchRequest:v8 context:sourceContext options:v13 generateContextBlock:v19 didFetchObjectIDsBlock:0 processResultBlock:v18];

  return v16;
}

void __52__PLLibraryContentsEnumerator__setupAlbumController__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(*(a1 + 32) + 16);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_setupAssetResourceFaceController
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSManagedObjectContext *)self->_sourceContext name];
  v5 = [v3 stringWithFormat:@"%@-AssetResourceFaceEnumerator", v4];

  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v23[0] = @"additionalAttributes";
  v23[1] = @"modernResources";
  v23[2] = @"detectedFaces";
  v23[3] = @"extendedAttributes";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  v10 = [(PLLibraryContentsEnumerator *)self sourceContext];
  v11 = [v10 transactionAuthor];

  v12 = [PLEnumerateAndSaveController alloc];
  sourceContext = self->_sourceContext;
  v14 = [(PLLibraryContentsEnumerator *)self _enumerateAndSaveOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__PLLibraryContentsEnumerator__setupAssetResourceFaceController__block_invoke;
  v20[3] = &unk_1E7574590;
  v20[4] = self;
  v21 = v5;
  v22 = v11;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__PLLibraryContentsEnumerator__setupAssetResourceFaceController__block_invoke_2;
  v19[3] = &unk_1E75745B8;
  v19[4] = self;
  v15 = v11;
  v16 = v5;
  v17 = [(PLEnumerateAndSaveController *)v12 initWithName:v16 fetchRequest:v8 context:sourceContext options:v14 generateContextBlock:v20 didFetchObjectIDsBlock:0 processResultBlock:v19];

  return v17;
}

void __64__PLLibraryContentsEnumerator__setupAssetResourceFaceController__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = *(*(a1 + 32) + 8);
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v46 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  if ([*(*(a1 + 32) + 24) count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [v4 modernResources];
    v10 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        v13 = 0;
        do
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v14 = *(*(a1 + 32) + 24);
          v15 = [v14 countByEnumeratingWithState:&v38 objects:v52 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v39;
            do
            {
              v18 = 0;
              do
              {
                if (*v39 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                (*(*(*(&v38 + 1) + 8 * v18++) + 16))();
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v38 objects:v52 count:16];
            }

            while (v16);
          }

          ++v13;
        }

        while (v13 != v11);
        v11 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v11);
    }
  }

  if ([*(*(a1 + 32) + 40) count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obja = [v4 detectedFaces];
    v19 = [obja countByEnumeratingWithState:&v34 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        v22 = 0;
        do
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(obja);
          }

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v23 = *(*(a1 + 32) + 40);
          v24 = [v23 countByEnumeratingWithState:&v30 objects:v50 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v31;
            do
            {
              v27 = 0;
              do
              {
                if (*v31 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                (*(*(*(&v30 + 1) + 8 * v27++) + 16))();
              }

              while (v25 != v27);
              v25 = [v23 countByEnumeratingWithState:&v30 objects:v50 count:16];
            }

            while (v25);
          }

          ++v22;
        }

        while (v22 != v20);
        v20 = [obja countByEnumeratingWithState:&v34 objects:v51 count:16];
      }

      while (v20);
    }
  }
}

- (unint64_t)_enumerateAndSaveOptions
{
  v2 = 4;
  if (self->_concurrent)
  {
    v2 = 5;
  }

  if (self->_readOnly)
  {
    return v2 | 0xA;
  }

  else
  {
    return v2;
  }
}

- (void)addEndOfListVisitor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"endOfListHandler"}];

    v5 = 0;
  }

  endOfListHandlerBlocks = self->_endOfListHandlerBlocks;
  v7 = _Block_copy(v5);
  [(NSMutableArray *)endOfListHandlerBlocks addObject:v7];
}

- (void)addPersonVisitor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"personHandler"}];

    v5 = 0;
  }

  personHandlerBlocks = self->_personHandlerBlocks;
  v7 = _Block_copy(v5);
  [(NSMutableArray *)personHandlerBlocks addObject:v7];
}

- (void)addFaceVisitor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"faceHandler"}];

    v5 = 0;
  }

  faceHandlerBlocks = self->_faceHandlerBlocks;
  v7 = _Block_copy(v5);
  [(NSMutableArray *)faceHandlerBlocks addObject:v7];
}

- (void)addConversationVisitor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"conversationHandler"}];

    v5 = 0;
  }

  conversationHandlerBlocks = self->_conversationHandlerBlocks;
  v7 = _Block_copy(v5);
  [(NSMutableArray *)conversationHandlerBlocks addObject:v7];
}

- (void)addResourceVisitor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"resourceHandler"}];

    v5 = 0;
  }

  resourceHandlerBlocks = self->_resourceHandlerBlocks;
  v7 = _Block_copy(v5);
  [(NSMutableArray *)resourceHandlerBlocks addObject:v7];
}

- (void)addAlbumVisitor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"albumHandler"}];

    v5 = 0;
  }

  albumHandlerBlocks = self->_albumHandlerBlocks;
  v7 = _Block_copy(v5);
  [(NSMutableArray *)albumHandlerBlocks addObject:v7];
}

- (void)addAssetVisitor:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];

    v5 = 0;
  }

  assetHandlerBlocks = self->_assetHandlerBlocks;
  v7 = _Block_copy(v5);
  [(NSMutableArray *)assetHandlerBlocks addObject:v7];
}

- (PLLibraryContentsEnumerator)initWithSourceManagedObjectContext:(id)a3 concurrent:(BOOL)a4 readOnly:(BOOL)a5
{
  v10 = a3;
  v28.receiver = self;
  v28.super_class = PLLibraryContentsEnumerator;
  v11 = [(PLLibraryContentsEnumerator *)&v28 init];
  if (v11)
  {
    if (!v10)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:v11 file:@"PLLibraryContentsEnumerator.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"sourceContext"}];
    }

    objc_storeStrong(&v11->_sourceContext, a3);
    v12 = [MEMORY[0x1E695DF70] array];
    assetHandlerBlocks = v11->_assetHandlerBlocks;
    v11->_assetHandlerBlocks = v12;

    v14 = [MEMORY[0x1E695DF70] array];
    albumHandlerBlocks = v11->_albumHandlerBlocks;
    v11->_albumHandlerBlocks = v14;

    v16 = [MEMORY[0x1E695DF70] array];
    resourceHandlerBlocks = v11->_resourceHandlerBlocks;
    v11->_resourceHandlerBlocks = v16;

    v18 = [MEMORY[0x1E695DF70] array];
    conversationHandlerBlocks = v11->_conversationHandlerBlocks;
    v11->_conversationHandlerBlocks = v18;

    v20 = [MEMORY[0x1E695DF70] array];
    faceHandlerBlocks = v11->_faceHandlerBlocks;
    v11->_faceHandlerBlocks = v20;

    v22 = [MEMORY[0x1E695DF70] array];
    personHandlerBlocks = v11->_personHandlerBlocks;
    v11->_personHandlerBlocks = v22;

    v24 = [MEMORY[0x1E695DF70] array];
    endOfListHandlerBlocks = v11->_endOfListHandlerBlocks;
    v11->_endOfListHandlerBlocks = v24;

    v11->_concurrent = a4;
    v11->_readOnly = a5;
  }

  return v11;
}

@end