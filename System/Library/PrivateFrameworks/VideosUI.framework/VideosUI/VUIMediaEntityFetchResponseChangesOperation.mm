@interface VUIMediaEntityFetchResponseChangesOperation
+ (id)_changeSetFromCurrentMediaEntities:(id)entities toLatestMediaEntities:(id)mediaEntities;
- (VUIMediaEntityFetchResponseChangesOperation)init;
- (VUIMediaEntityFetchResponseChangesOperation)initWithLatestFetchResponses:(id)responses currentFetchResponses:(id)fetchResponses;
- (id)_groupingChangeSetWithCurrentGrouping:(id)grouping latestGrouping:(id)latestGrouping;
- (id)_groupingChangeSetWithLatestFetchResponse:(id)response currentFetchResponse:(id)fetchResponse;
- (id)_mediaEntitiesChangeSetWithLatestFetchResponse:(id)response currentFetchResponse:(id)fetchResponse;
- (void)_preloadMediaEntityMetadata;
- (void)_preloadMetadataForFetchResponse:(id)response;
- (void)executionDidBegin;
@end

@implementation VUIMediaEntityFetchResponseChangesOperation

- (VUIMediaEntityFetchResponseChangesOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaEntityFetchResponseChangesOperation)initWithLatestFetchResponses:(id)responses currentFetchResponses:(id)fetchResponses
{
  responsesCopy = responses;
  fetchResponsesCopy = fetchResponses;
  v8 = fetchResponsesCopy;
  v9 = MEMORY[0x1E695D940];
  if (!responsesCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"latestFetchResponses"}];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    [MEMORY[0x1E695DF30] raise:*v9 format:{@"The %@ parameter must not be nil.", @"currentFetchResponses"}];
    goto LABEL_3;
  }

  if (!fetchResponsesCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (![responsesCopy count] || (v10 = objc_msgSend(responsesCopy, "count"), v10 != objc_msgSend(v8, "count")))
  {
    [MEMORY[0x1E695DF30] raise:*v9 format:@"The fetch responses arrays parameters must be non empty and contain the same number of response objects"];
  }

  v17.receiver = self;
  v17.super_class = VUIMediaEntityFetchResponseChangesOperation;
  v11 = [(VUIMediaEntityFetchResponseChangesOperation *)&v17 init];
  if (v11)
  {
    v12 = [responsesCopy copy];
    latestFetchResponses = v11->_latestFetchResponses;
    v11->_latestFetchResponses = v12;

    v14 = [v8 copy];
    currentFetchResponses = v11->_currentFetchResponses;
    v11->_currentFetchResponses = v14;
  }

  return v11;
}

- (void)executionDidBegin
{
  [(VUIMediaEntityFetchResponseChangesOperation *)self _preloadMediaEntityMetadata];
  if (([(VUIMediaEntityFetchResponseChangesOperation *)self isCancelled]& 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentFetchResponses = [(VUIMediaEntityFetchResponseChangesOperation *)self currentFetchResponses];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __64__VUIMediaEntityFetchResponseChangesOperation_executionDidBegin__block_invoke;
    v9 = &unk_1E8734BB8;
    selfCopy = self;
    v11 = v3;
    v5 = v3;
    [currentFetchResponses enumerateObjectsUsingBlock:&v6];

    [(VUIMediaEntityFetchResponseChangesOperation *)self setFetchResponseChanges:v5, v6, v7, v8, v9, selfCopy];
  }

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

void __64__VUIMediaEntityFetchResponseChangesOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 latestFetchResponses];
  v11 = [v7 objectAtIndex:a3];

  v8 = [*(a1 + 32) _mediaEntitiesChangeSetWithLatestFetchResponse:v11 currentFetchResponse:v6];
  v9 = [[VUIMediaEntityFetchResponseChanges alloc] initWithMediaEntitiesChangeSet:v8];
  v10 = [*(a1 + 32) _groupingChangeSetWithLatestFetchResponse:v11 currentFetchResponse:v6];

  [(VUIMediaEntityFetchResponseChanges *)v9 setGroupingChangeSet:v10];
  [*(a1 + 40) addObject:v9];
}

- (void)_preloadMediaEntityMetadata
{
  currentFetchResponses = [(VUIMediaEntityFetchResponseChangesOperation *)self currentFetchResponses];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__VUIMediaEntityFetchResponseChangesOperation__preloadMediaEntityMetadata__block_invoke;
  v4[3] = &unk_1E8734BE0;
  v4[4] = self;
  [currentFetchResponses enumerateObjectsUsingBlock:v4];
}

void __74__VUIMediaEntityFetchResponseChangesOperation__preloadMediaEntityMetadata__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _preloadMetadataForFetchResponse:a2];
  v5 = [*(a1 + 32) latestFetchResponses];
  v6 = [v5 objectAtIndex:a3];

  [*(a1 + 32) _preloadMetadataForFetchResponse:v6];
}

- (void)_preloadMetadataForFetchResponse:(id)response
{
  v15 = *MEMORY[0x1E69E9840];
  [response mediaEntities];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v10 + 1) + 8 * v8);
      if (([(VUIMediaEntityFetchResponseChangesOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      [v9 populateMetadata];
      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)_mediaEntitiesChangeSetWithLatestFetchResponse:(id)response currentFetchResponse:(id)fetchResponse
{
  responseCopy = response;
  mediaEntities = [fetchResponse mediaEntities];
  mediaEntities2 = [responseCopy mediaEntities];

  v8 = [objc_opt_class() _changeSetFromCurrentMediaEntities:mediaEntities toLatestMediaEntities:mediaEntities2];

  return v8;
}

- (id)_groupingChangeSetWithLatestFetchResponse:(id)response currentFetchResponse:(id)fetchResponse
{
  fetchResponseCopy = fetchResponse;
  grouping = [response grouping];
  grouping2 = [fetchResponseCopy grouping];

  v9 = 0;
  if (grouping2 && grouping)
  {
    v9 = [(VUIMediaEntityFetchResponseChangesOperation *)self _groupingChangeSetWithCurrentGrouping:grouping2 latestGrouping:grouping];
  }

  return v9;
}

- (id)_groupingChangeSetWithCurrentGrouping:(id)grouping latestGrouping:(id)latestGrouping
{
  v6 = MEMORY[0x1E69DF6B0];
  latestGroupingCopy = latestGrouping;
  groupingCopy = grouping;
  v9 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__VUIMediaEntityFetchResponseChangesOperation__groupingChangeSetWithCurrentGrouping_latestGrouping___block_invoke_2;
  v12[3] = &unk_1E8734C28;
  v12[4] = self;
  v10 = [v9 changeSetFromObjects:groupingCopy toObjects:latestGroupingCopy identifierBlock:&__block_literal_global_123 updateChangeSetBlock:v12];

  return v10;
}

id __100__VUIMediaEntityFetchResponseChangesOperation__groupingChangeSetWithCurrentGrouping_latestGrouping___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_class();
  v7 = [v5 mediaEntities];

  v8 = [v4 mediaEntities];

  v9 = [v6 _changeSetFromCurrentMediaEntities:v7 toLatestMediaEntities:v8];

  return v9;
}

+ (id)_changeSetFromCurrentMediaEntities:(id)entities toLatestMediaEntities:(id)mediaEntities
{
  v5 = MEMORY[0x1E69DF6B0];
  mediaEntitiesCopy = mediaEntities;
  entitiesCopy = entities;
  v8 = objc_alloc_init(v5);
  v9 = [v8 changeSetFromObjects:entitiesCopy toObjects:mediaEntitiesCopy identifierBlock:&__block_literal_global_21_0 isEqualBlock:&__block_literal_global_24_1];

  return v9;
}

@end