@interface _PXTapToRadarDiagnosticCollectionOperation
- (_PXTapToRadarDiagnosticCollectionOperation)initWithName:(id)a3 timeout:(double)a4;
- (void)_timedOut;
- (void)endWithSuccess:(BOOL)a3 error:(id)a4;
- (void)installCompletionHandler:(id)a3;
@end

@implementation _PXTapToRadarDiagnosticCollectionOperation

- (void)endWithSuccess:(BOOL)a3 error:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_ended)
  {
    PXAssertGetLog();
  }

  v8->_ended = 1;
  if (!v8->_timedOut)
  {
    v8->_success = a3;
    objc_storeStrong(&v8->_error, a4);
    dispatch_group_leave(v8->_completionGroup);
  }

  objc_sync_exit(v8);
}

- (void)_timedOut
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_ended)
  {
    obj->_timedOut = 1;
    obj->_success = 0;
    v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Diagnostic collection operation “%@” timed out", obj->_name}];
    error = obj->_error;
    obj->_error = v2;

    dispatch_group_leave(obj->_completionGroup);
  }

  objc_sync_exit(obj);
}

- (void)installCompletionHandler:(id)a3
{
  v4 = a3;
  completionGroup = self->_completionGroup;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___PXTapToRadarDiagnosticCollectionOperation_installCompletionHandler___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(completionGroup, MEMORY[0x1E69E96A0], v7);
}

- (_PXTapToRadarDiagnosticCollectionOperation)initWithName:(id)a3 timeout:(double)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = _PXTapToRadarDiagnosticCollectionOperation;
  v7 = [(_PXTapToRadarDiagnosticCollectionOperation *)&v17 init];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = *(v7 + 4);
    *(v7 + 4) = v8;

    v10 = dispatch_group_create();
    v11 = *(v7 + 1);
    *(v7 + 1) = v10;

    dispatch_group_enter(*(v7 + 1));
    objc_initWeak(&location, v7);
    v12 = dispatch_time(0, (a4 * 1000000000.0));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67___PXTapToRadarDiagnosticCollectionOperation_initWithName_timeout___block_invoke;
    v14[3] = &unk_1E774C318;
    objc_copyWeak(&v15, &location);
    dispatch_after(v12, MEMORY[0x1E69E96A0], v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

@end