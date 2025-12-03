@interface PLLibraryContentsEnumerator
- (BOOL)processObjectsWithError:(id *)error;
- (PLLibraryContentsEnumerator)initWithSourceManagedObjectContext:(id)context concurrent:(BOOL)concurrent readOnly:(BOOL)only;
- (id)_setupAlbumController;
- (id)_setupAssetResourceFaceController;
- (id)_setupConversationController;
- (id)_setupPersonController;
- (unint64_t)_enumerateAndSaveOptions;
- (void)addAlbumVisitor:(id)visitor;
- (void)addAssetVisitor:(id)visitor;
- (void)addConversationVisitor:(id)visitor;
- (void)addEndOfListVisitor:(id)visitor;
- (void)addFaceVisitor:(id)visitor;
- (void)addPersonVisitor:(id)visitor;
- (void)addResourceVisitor:(id)visitor;
@end

@implementation PLLibraryContentsEnumerator

- (BOOL)processObjectsWithError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_conversationHandlerBlocks count])
  {
    _setupConversationController = [(PLLibraryContentsEnumerator *)self _setupConversationController];
  }

  else
  {
    _setupConversationController = 0;
  }

  if ([(NSMutableArray *)self->_assetHandlerBlocks count]|| [(NSMutableArray *)self->_resourceHandlerBlocks count]|| [(NSMutableArray *)self->_faceHandlerBlocks count])
  {
    _setupAssetResourceFaceController = [(PLLibraryContentsEnumerator *)self _setupAssetResourceFaceController];
  }

  else
  {
    _setupAssetResourceFaceController = 0;
  }

  if ([(NSMutableArray *)self->_albumHandlerBlocks count])
  {
    _setupAlbumController = [(PLLibraryContentsEnumerator *)self _setupAlbumController];
    if (_setupConversationController)
    {
      goto LABEL_15;
    }
  }

  else
  {
    _setupAlbumController = 0;
    if (_setupConversationController)
    {
      goto LABEL_15;
    }
  }

  if (!_setupAssetResourceFaceController && !_setupAlbumController)
  {
    LOBYTE(v8) = 1;
    goto LABEL_37;
  }

LABEL_15:
  date = [MEMORY[0x1E695DF00] date];
  if (!_setupConversationController)
  {
    v11 = 0;
    v10 = 0;
    v8 = 1;
LABEL_19:
    if (_setupAssetResourceFaceController)
    {
      v32 = v10;
      v8 = [_setupAssetResourceFaceController processObjectsWithError:&v32];
      v12 = v32;

      v11 = @"PLLibraryContentsEnumerator";
      v10 = v12;
    }

    goto LABEL_21;
  }

  v33 = 0;
  v8 = [_setupConversationController processObjectsWithError:&v33];
  v10 = v33;
  v11 = @"PLConversationEnumerator";
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_21:
  errorCopy = error;
  if (v8 && _setupAlbumController)
  {
    v31 = v10;
    LOBYTE(v8) = [_setupAlbumController processObjectsWithError:&v31];
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

  date2 = [MEMORY[0x1E695DF00] date];
  [date2 timeIntervalSinceDate:date];
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

  if (errorCopy)
  {
    v23 = v10;
    *errorCopy = v10;
  }

LABEL_37:
  return v8;
}

- (id)_setupPersonController
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  name = [(NSManagedObjectContext *)self->_sourceContext name];
  v5 = [v3 stringWithFormat:@"%@-PersonEnumerator", name];

  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLPerson entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v23[0] = @"userFeedbacks";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  sourceContext = [(PLLibraryContentsEnumerator *)self sourceContext];
  transactionAuthor = [sourceContext transactionAuthor];

  v12 = [PLEnumerateAndSaveController alloc];
  sourceContext = self->_sourceContext;
  _enumerateAndSaveOptions = [(PLLibraryContentsEnumerator *)self _enumerateAndSaveOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53__PLLibraryContentsEnumerator__setupPersonController__block_invoke;
  v20[3] = &unk_1E7574590;
  v20[4] = self;
  v21 = v5;
  v22 = transactionAuthor;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__PLLibraryContentsEnumerator__setupPersonController__block_invoke_2;
  v19[3] = &unk_1E7574630;
  v19[4] = self;
  v15 = transactionAuthor;
  v16 = v5;
  v17 = [(PLEnumerateAndSaveController *)v12 initWithName:v16 fetchRequest:v8 context:sourceContext options:_enumerateAndSaveOptions generateContextBlock:v20 didFetchObjectIDsBlock:0 processResultBlock:v19];

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
  name = [(NSManagedObjectContext *)self->_sourceContext name];
  v5 = [v3 stringWithFormat:@"%@-ConversationEnumerator", name];

  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLConversation entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v23[0] = @"assets";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  sourceContext = [(PLLibraryContentsEnumerator *)self sourceContext];
  transactionAuthor = [sourceContext transactionAuthor];

  v12 = [PLEnumerateAndSaveController alloc];
  sourceContext = self->_sourceContext;
  _enumerateAndSaveOptions = [(PLLibraryContentsEnumerator *)self _enumerateAndSaveOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__PLLibraryContentsEnumerator__setupConversationController__block_invoke;
  v20[3] = &unk_1E7574590;
  v20[4] = self;
  v21 = v5;
  v22 = transactionAuthor;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__PLLibraryContentsEnumerator__setupConversationController__block_invoke_2;
  v19[3] = &unk_1E7574608;
  v19[4] = self;
  v15 = transactionAuthor;
  v16 = v5;
  v17 = [(PLEnumerateAndSaveController *)v12 initWithName:v16 fetchRequest:v8 context:sourceContext options:_enumerateAndSaveOptions generateContextBlock:v20 didFetchObjectIDsBlock:0 processResultBlock:v19];

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
  name = [(NSManagedObjectContext *)self->_sourceContext name];
  v5 = [v3 stringWithFormat:@"%@-ManagedAlbumEnumerator", name];

  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAlbum entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  sourceContext = [(PLLibraryContentsEnumerator *)self sourceContext];
  transactionAuthor = [sourceContext transactionAuthor];

  v11 = [PLEnumerateAndSaveController alloc];
  sourceContext = self->_sourceContext;
  _enumerateAndSaveOptions = [(PLLibraryContentsEnumerator *)self _enumerateAndSaveOptions];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__PLLibraryContentsEnumerator__setupAlbumController__block_invoke;
  v19[3] = &unk_1E7574590;
  v19[4] = self;
  v20 = v5;
  v21 = transactionAuthor;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__PLLibraryContentsEnumerator__setupAlbumController__block_invoke_2;
  v18[3] = &unk_1E75745E0;
  v18[4] = self;
  v14 = transactionAuthor;
  v15 = v5;
  v16 = [(PLEnumerateAndSaveController *)v11 initWithName:v15 fetchRequest:v8 context:sourceContext options:_enumerateAndSaveOptions generateContextBlock:v19 didFetchObjectIDsBlock:0 processResultBlock:v18];

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
  name = [(NSManagedObjectContext *)self->_sourceContext name];
  v5 = [v3 stringWithFormat:@"%@-AssetResourceFaceEnumerator", name];

  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v23[0] = @"additionalAttributes";
  v23[1] = @"modernResources";
  v23[2] = @"detectedFaces";
  v23[3] = @"extendedAttributes";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  sourceContext = [(PLLibraryContentsEnumerator *)self sourceContext];
  transactionAuthor = [sourceContext transactionAuthor];

  v12 = [PLEnumerateAndSaveController alloc];
  sourceContext = self->_sourceContext;
  _enumerateAndSaveOptions = [(PLLibraryContentsEnumerator *)self _enumerateAndSaveOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__PLLibraryContentsEnumerator__setupAssetResourceFaceController__block_invoke;
  v20[3] = &unk_1E7574590;
  v20[4] = self;
  v21 = v5;
  v22 = transactionAuthor;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__PLLibraryContentsEnumerator__setupAssetResourceFaceController__block_invoke_2;
  v19[3] = &unk_1E75745B8;
  v19[4] = self;
  v15 = transactionAuthor;
  v16 = v5;
  v17 = [(PLEnumerateAndSaveController *)v12 initWithName:v16 fetchRequest:v8 context:sourceContext options:_enumerateAndSaveOptions generateContextBlock:v20 didFetchObjectIDsBlock:0 processResultBlock:v19];

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

- (void)addEndOfListVisitor:(id)visitor
{
  visitorCopy = visitor;
  v9 = visitorCopy;
  if (!visitorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"endOfListHandler"}];

    visitorCopy = 0;
  }

  endOfListHandlerBlocks = self->_endOfListHandlerBlocks;
  v7 = _Block_copy(visitorCopy);
  [(NSMutableArray *)endOfListHandlerBlocks addObject:v7];
}

- (void)addPersonVisitor:(id)visitor
{
  visitorCopy = visitor;
  v9 = visitorCopy;
  if (!visitorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"personHandler"}];

    visitorCopy = 0;
  }

  personHandlerBlocks = self->_personHandlerBlocks;
  v7 = _Block_copy(visitorCopy);
  [(NSMutableArray *)personHandlerBlocks addObject:v7];
}

- (void)addFaceVisitor:(id)visitor
{
  visitorCopy = visitor;
  v9 = visitorCopy;
  if (!visitorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"faceHandler"}];

    visitorCopy = 0;
  }

  faceHandlerBlocks = self->_faceHandlerBlocks;
  v7 = _Block_copy(visitorCopy);
  [(NSMutableArray *)faceHandlerBlocks addObject:v7];
}

- (void)addConversationVisitor:(id)visitor
{
  visitorCopy = visitor;
  v9 = visitorCopy;
  if (!visitorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"conversationHandler"}];

    visitorCopy = 0;
  }

  conversationHandlerBlocks = self->_conversationHandlerBlocks;
  v7 = _Block_copy(visitorCopy);
  [(NSMutableArray *)conversationHandlerBlocks addObject:v7];
}

- (void)addResourceVisitor:(id)visitor
{
  visitorCopy = visitor;
  v9 = visitorCopy;
  if (!visitorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"resourceHandler"}];

    visitorCopy = 0;
  }

  resourceHandlerBlocks = self->_resourceHandlerBlocks;
  v7 = _Block_copy(visitorCopy);
  [(NSMutableArray *)resourceHandlerBlocks addObject:v7];
}

- (void)addAlbumVisitor:(id)visitor
{
  visitorCopy = visitor;
  v9 = visitorCopy;
  if (!visitorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"albumHandler"}];

    visitorCopy = 0;
  }

  albumHandlerBlocks = self->_albumHandlerBlocks;
  v7 = _Block_copy(visitorCopy);
  [(NSMutableArray *)albumHandlerBlocks addObject:v7];
}

- (void)addAssetVisitor:(id)visitor
{
  visitorCopy = visitor;
  v9 = visitorCopy;
  if (!visitorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLibraryContentsEnumerator.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];

    visitorCopy = 0;
  }

  assetHandlerBlocks = self->_assetHandlerBlocks;
  v7 = _Block_copy(visitorCopy);
  [(NSMutableArray *)assetHandlerBlocks addObject:v7];
}

- (PLLibraryContentsEnumerator)initWithSourceManagedObjectContext:(id)context concurrent:(BOOL)concurrent readOnly:(BOOL)only
{
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = PLLibraryContentsEnumerator;
  v11 = [(PLLibraryContentsEnumerator *)&v28 init];
  if (v11)
  {
    if (!contextCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"PLLibraryContentsEnumerator.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"sourceContext"}];
    }

    objc_storeStrong(&v11->_sourceContext, context);
    array = [MEMORY[0x1E695DF70] array];
    assetHandlerBlocks = v11->_assetHandlerBlocks;
    v11->_assetHandlerBlocks = array;

    array2 = [MEMORY[0x1E695DF70] array];
    albumHandlerBlocks = v11->_albumHandlerBlocks;
    v11->_albumHandlerBlocks = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    resourceHandlerBlocks = v11->_resourceHandlerBlocks;
    v11->_resourceHandlerBlocks = array3;

    array4 = [MEMORY[0x1E695DF70] array];
    conversationHandlerBlocks = v11->_conversationHandlerBlocks;
    v11->_conversationHandlerBlocks = array4;

    array5 = [MEMORY[0x1E695DF70] array];
    faceHandlerBlocks = v11->_faceHandlerBlocks;
    v11->_faceHandlerBlocks = array5;

    array6 = [MEMORY[0x1E695DF70] array];
    personHandlerBlocks = v11->_personHandlerBlocks;
    v11->_personHandlerBlocks = array6;

    array7 = [MEMORY[0x1E695DF70] array];
    endOfListHandlerBlocks = v11->_endOfListHandlerBlocks;
    v11->_endOfListHandlerBlocks = array7;

    v11->_concurrent = concurrent;
    v11->_readOnly = only;
  }

  return v11;
}

@end