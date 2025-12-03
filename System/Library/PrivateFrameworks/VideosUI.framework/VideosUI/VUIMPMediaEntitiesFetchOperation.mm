@interface VUIMPMediaEntitiesFetchOperation
- (VUIMPMediaEntitiesFetchOperation)init;
- (VUIMPMediaEntitiesFetchOperation)initWithMediaLibrary:(id)library requests:(id)requests;
- (void)executionDidBegin;
@end

@implementation VUIMPMediaEntitiesFetchOperation

- (VUIMPMediaEntitiesFetchOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMPMediaEntitiesFetchOperation)initWithMediaLibrary:(id)library requests:(id)requests
{
  libraryCopy = library;
  requestsCopy = requests;
  v9 = requestsCopy;
  if (libraryCopy)
  {
    if (requestsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requests"}];
LABEL_3:
  v16.receiver = self;
  v16.super_class = VUIMPMediaEntitiesFetchOperation;
  v10 = [(VUIMPMediaEntitiesFetchOperation *)&v16 init];
  if (v10)
  {
    vui_deepCopy = [v9 vui_deepCopy];
    requests = v10->_requests;
    v10->_requests = vui_deepCopy;

    objc_storeStrong(&v10->_mediaLibrary, library);
    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    privateQueue = v10->_privateQueue;
    v10->_privateQueue = v13;
  }

  return v10;
}

- (void)executionDidBegin
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E696AAE0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __53__VUIMPMediaEntitiesFetchOperation_executionDidBegin__block_invoke;
  v22[3] = &unk_1E872F038;
  objc_copyWeak(&v24, &location);
  v5 = v3;
  v23 = v5;
  v6 = [v4 blockOperationWithBlock:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  requests = [(VUIMPMediaEntitiesFetchOperation *)self requests];
  v8 = [requests countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(requests);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [VUIMPMediaEntitiesSingleFetchOperation alloc];
        mediaLibrary = [(VUIMPMediaEntitiesFetchOperation *)self mediaLibrary];
        v14 = [(VUIMPMediaEntitiesSingleFetchOperation *)v12 initWithMediaLibrary:mediaLibrary request:v11];

        identifier = [v11 identifier];
        [v5 setObject:v14 forKey:identifier];

        [v6 addDependency:v14];
        privateQueue = [(VUIMPMediaEntitiesFetchOperation *)self privateQueue];
        [privateQueue addOperation:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [requests countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  privateQueue2 = [(VUIMPMediaEntitiesFetchOperation *)self privateQueue];
  [privateQueue2 addOperation:v6];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __53__VUIMPMediaEntitiesFetchOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [WeakRetained requests];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(a1 + 32);
          v10 = [*(*(&v14 + 1) + 8 * v8) identifier];
          v11 = [v9 objectForKey:v10];

          v12 = [v11 response];
          v13 = [v11 error];
          if (!v12)
          {

            v3 = 0;
            goto LABEL_12;
          }

          [v3 addObject:v12];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:

    [WeakRetained setResponses:v3];
    [WeakRetained setError:v13];
    [WeakRetained finishExecutionIfPossible];
  }
}

@end