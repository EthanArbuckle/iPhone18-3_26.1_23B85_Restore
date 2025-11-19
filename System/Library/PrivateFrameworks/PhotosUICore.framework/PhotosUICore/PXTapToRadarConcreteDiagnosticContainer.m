@interface PXTapToRadarConcreteDiagnosticContainer
- (NSArray)attachments;
- (NSArray)subproviders;
- (NSDictionary)dictionary;
- (PXTapToRadarConcreteDiagnosticContainer)initWithName:(id)a3;
- (id)beginCollectionOperationWithName:(id)a3 timeout:(double)a4;
- (id)objectForKeyedSubscript:(id)a3;
- (void)addAttachment:(id)a3;
- (void)addAttachmentWithData:(id)a3 name:(id)a4;
- (void)addAttachmentWithDictionary:(id)a3 name:(id)a4;
- (void)addAttachmentWithText:(id)a3 name:(id)a4 extension:(id)a5;
- (void)addSubprovider:(id)a3;
- (void)addSubproviders:(id)a3;
- (void)finalizeWithCompletionHandler:(id)a3;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation PXTapToRadarConcreteDiagnosticContainer

- (void)finalizeWithCompletionHandler:(id)a3
{
  v3 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  v5 = v6;
  PXIterateAsynchronously();
}

void __73__PXTapToRadarConcreteDiagnosticContainer_finalizeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  objc_sync_exit(v3);

  v5 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        dispatch_group_enter(v5);
        v10 = [v9 name];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __73__PXTapToRadarConcreteDiagnosticContainer_finalizeWithCompletionHandler___block_invoke_2;
        v17[3] = &unk_1E774AEC0;
        v18 = *(a1 + 40);
        v19 = v10;
        v20 = v5;
        v11 = v10;
        [v9 installCompletionHandler:v17];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXTapToRadarConcreteDiagnosticContainer_finalizeWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E774C620;
  block[4] = *(a1 + 32);
  v16 = v13;
  v12 = v13;
  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], block);
}

void __73__PXTapToRadarConcreteDiagnosticContainer_finalizeWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    if ([*(a1 + 32) count] == 1)
    {
      v2 = [*(a1 + 32) firstObject];
    }

    else
    {
      v3 = MEMORY[0x1E696ABC0];
      v4 = *off_1E7721FC0;
      v5 = *(a1 + 32);
      v7 = *MEMORY[0x1E696A750];
      v8[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      v2 = [v3 errorWithDomain:v4 code:-1 userInfo:v6];
    }
  }

  else
  {
    v2 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void __73__PXTapToRadarConcreteDiagnosticContainer_finalizeWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"unknown error for %@", *(a1 + 40)}];
      [v5 addObject:v6];
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __73__PXTapToRadarConcreteDiagnosticContainer_finalizeWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 32) count];
  objc_sync_exit(v2);

  v4 = *(a1 + 40);
  if (v3)
  {

    return [v4 next];
  }

  else
  {

    return [v4 stop];
  }
}

- (id)beginCollectionOperationWithName:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v7 = [[_PXTapToRadarDiagnosticCollectionOperation alloc] initWithName:v6 timeout:a4];
  v8 = self;
  objc_sync_enter(v8);
  [(NSMutableArray *)v8->_collectionOperations addObject:v7];
  objc_sync_exit(v8);

  return v7;
}

- (void)addSubproviders:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSMutableArray *)v5->_subproviders addObjectsFromArray:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)addSubprovider:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSMutableArray *)v5->_subproviders addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)addAttachmentWithData:(id)a3 name:(id)a4
{
  v5 = PXFeedbackTapToRadarUtilitiesWriteDataToFile(a3, a4);
  if (v5)
  {
    v6 = v5;
    [(PXTapToRadarConcreteDiagnosticContainer *)self addAttachment:v5];
    v5 = v6;
  }
}

- (void)addAttachmentWithText:(id)a3 name:(id)a4 extension:(id)a5
{
  v6 = PXFeedbackTapToRadarUtilitiesWriteStringToFileWithExtension(a3, a4, a5);
  if (v6)
  {
    v7 = v6;
    [(PXTapToRadarConcreteDiagnosticContainer *)self addAttachment:v6];
    v6 = v7;
  }
}

- (void)addAttachmentWithDictionary:(id)a3 name:(id)a4
{
  v5 = PXFeedbackTapToRadarUtilitiesWriteDictionaryToPlistFile(a3, a4);
  if (v5)
  {
    v6 = v5;
    [(PXTapToRadarConcreteDiagnosticContainer *)self addAttachment:v5];
    v5 = v6;
  }
}

- (void)addAttachment:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSMutableArray *)v5->_attachments addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    [(NSMutableDictionary *)v7->_dictionary setObject:v8 forKeyedSubscript:v6];
    objc_sync_exit(v7);
  }
}

- (NSArray)subproviders
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_subproviders copy];
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)attachments
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_attachments copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_dictionary objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (NSDictionary)dictionary
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_dictionary copy];
  objc_sync_exit(v2);

  return v3;
}

- (PXTapToRadarConcreteDiagnosticContainer)initWithName:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PXTapToRadarConcreteDiagnosticContainer;
  v5 = [(PXTapToRadarConcreteDiagnosticContainer *)&v17 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v5->_dictionary;
    v5->_dictionary = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    attachments = v5->_attachments;
    v5->_attachments = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subproviders = v5->_subproviders;
    v5->_subproviders = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    collectionOperations = v5->_collectionOperations;
    v5->_collectionOperations = v14;
  }

  return v5;
}

@end