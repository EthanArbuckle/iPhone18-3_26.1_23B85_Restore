@interface _PBFPosterSnapshotDefinitionCollection
- (_PBFPosterSnapshotDefinitionCollection)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)requestStatusForDisplayContext:(id)a3;
- (void)cancel;
- (void)invalidate;
@end

@implementation _PBFPosterSnapshotDefinitionCollection

- (_PBFPosterSnapshotDefinitionCollection)init
{
  v10.receiver = self;
  v10.super_class = _PBFPosterSnapshotDefinitionCollection;
  v2 = [(_PBFPosterSnapshotDefinitionCollection *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    invalidationSignal = v2->_invalidationSignal;
    v2->_invalidationSignal = v3;

    v5 = objc_opt_new();
    snapshotBundleFutureForDisplayContext = v2->_snapshotBundleFutureForDisplayContext;
    v2->_snapshotBundleFutureForDisplayContext = v5;

    v7 = objc_opt_new();
    displayContextRequestFailures = v2->_displayContextRequestFailures;
    v2->_displayContextRequestFailures = v7;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_PBFPosterSnapshotDefinitionCollection allocWithZone:?]];
  [(NSMutableDictionary *)v4->_snapshotBundleFutureForDisplayContext addEntriesFromDictionary:self->_snapshotBundleFutureForDisplayContext];
  v5 = [(NSCountedSet *)self->_displayContextRequestFailures copy];
  displayContextRequestFailures = v4->_displayContextRequestFailures;
  v4->_displayContextRequestFailures = v5;

  return v4;
}

- (int64_t)requestStatusForDisplayContext:(id)a3
{
  v4 = a3;
  if (v4 && ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    v7 = [(_PBFPosterSnapshotDefinitionCollection *)self displayContextRequestFailures];
    v8 = [v7 countForObject:v4];

    if (v8 <= 2)
    {
      v9 = [(_PBFPosterSnapshotDefinitionCollection *)self snapshotBundleFutureForDisplayContext];
      v10 = [v9 objectForKey:v4];

      if (v10)
      {
        if ([v10 isFinished])
        {
          v12 = 0;
          v11 = [v10 result:&v12];
          if (v12)
          {
            v5 = 2;
          }

          else
          {
            v5 = 3;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)cancel
{
  v15 = *MEMORY[0x277D85DE8];
  if (([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(_PBFPosterSnapshotDefinitionCollection *)self snapshotBundleFutureForDisplayContext];
    v4 = [v3 copy];
    v5 = [v4 objectEnumerator];

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

          [*(*(&v10 + 1) + 8 * v9++) cancel];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)self->_snapshotBundleFutureForDisplayContext removeAllObjects];
    [(NSCountedSet *)self->_displayContextRequestFailures removeAllObjects];
  }
}

- (void)invalidate
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [(_PBFPosterSnapshotDefinitionCollection *)self snapshotBundleFutureForDisplayContext];
    v4 = [v3 copy];
    v5 = [v4 objectEnumerator];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          v11 = PFFunctionNameForAddress();
          v12 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
          [v10 finishWithError:{v12, 0}];

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)self->_snapshotBundleFutureForDisplayContext removeAllObjects];
    [(NSCountedSet *)self->_displayContextRequestFailures removeAllObjects];
  }
}

@end