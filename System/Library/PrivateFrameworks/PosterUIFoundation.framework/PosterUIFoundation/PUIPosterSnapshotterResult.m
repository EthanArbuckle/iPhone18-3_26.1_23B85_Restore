@interface PUIPosterSnapshotterResult
- (PUIPosterSnapshotterResult)init;
- (PUIPosterSnapshotterResult)initWithRequest:(id)a3 snapshotBundle:(id)a4 destination:(id)a5 executionTime:(double)a6;
- (void)appendURLForCleanup:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotterResult

- (PUIPosterSnapshotterResult)initWithRequest:(id)a3 snapshotBundle:(id)a4 destination:(id)a5 executionTime:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PUIPosterSnapshotterResult;
  v14 = [(PUIPosterSnapshotterResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, a3);
    v15->_executionTime = a6;
    objc_storeStrong(&v15->_snapshotBundle, a4);
    objc_storeStrong(&v15->_destination, a5);
  }

  return v15;
}

- (PUIPosterSnapshotterResult)init
{
  [(PUIPosterSnapshotterResult *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(PUIPosterSnapshotterResult *)self invalidate];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotterResult;
  [(PUIPosterSnapshotterResult *)&v3 dealloc];
}

- (void)appendURLForCleanup:(id)a3
{
  cleanupURLs = self->_cleanupURLs;
  if (cleanupURLs)
  {

    [(NSMutableSet *)cleanupURLs addObject:a3];
  }

  else
  {
    self->_cleanupURLs = [MEMORY[0x1E695DFA8] setWithObject:a3];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)invalidate
{
  v18 = *MEMORY[0x1E69E9840];
  [(PUIPosterSnapshotDestination *)self->_destination invalidate];
  destination = self->_destination;
  self->_destination = 0;

  snapshotBundle = self->_snapshotBundle;
  self->_snapshotBundle = 0;

  request = self->_request;
  self->_request = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_cleanupURLs;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        [v12 removeItemAtURL:v11 error:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

@end