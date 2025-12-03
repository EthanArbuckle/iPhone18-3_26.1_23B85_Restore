@interface PUISceneSnapshotAction
- (PUIPosterSnapshotDescriptor)snapshotDescriptor;
- (PUIPosterSnapshotDestinationFinalizer)destinationFinalizer;
- (PUISceneSnapshotAction)initWithInfo:(id)info responder:(id)responder;
- (PUISceneSnapshotAction)initWithSnapshotDescriptor:(id)descriptor destination:(id)destination responder:(id)responder;
- (id)respondWithSnapshotBundle:(id)bundle;
- (void)respondWithError:(id)error;
@end

@implementation PUISceneSnapshotAction

- (PUISceneSnapshotAction)initWithSnapshotDescriptor:(id)descriptor destination:(id)destination responder:(id)responder
{
  descriptorCopy = descriptor;
  destinationCopy = destination;
  responderCopy = responder;
  if (!destinationCopy)
  {
    [PUISceneSnapshotAction initWithSnapshotDescriptor:a2 destination:self responder:?];
  }

  v12 = responderCopy;
  v13 = objc_opt_new();
  v14 = v13;
  if (descriptorCopy)
  {
    [v13 setObject:descriptorCopy forSetting:1];
  }

  v15 = [[PUIPosterSnapshotDestinationFinalizer alloc] initWithDestination:destinationCopy];
  [v14 setObject:v15 forSetting:2];

  v19.receiver = self;
  v19.super_class = PUISceneSnapshotAction;
  v16 = [(PUISceneSnapshotAction *)&v19 initWithInfo:v14 responder:v12];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_destination, destination);
  }

  return v17;
}

- (PUISceneSnapshotAction)initWithInfo:(id)info responder:(id)responder
{
  [(PUISceneSnapshotAction *)self doesNotRecognizeSelector:a2, responder];

  return 0;
}

- (PUIPosterSnapshotDescriptor)snapshotDescriptor
{
  info = [(PUISceneSnapshotAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (PUIPosterSnapshotDestinationFinalizer)destinationFinalizer
{
  info = [(PUISceneSnapshotAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (id)respondWithSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  if (([(PUISceneSnapshotAction *)self canSendResponse]& 1) != 0)
  {
    destinationFinalizer = [(PUISceneSnapshotAction *)self destinationFinalizer];
    v6 = [destinationFinalizer finalizeSnapshotBundle:bundleCopy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__PUISceneSnapshotAction_respondWithSnapshotBundle___block_invoke;
    v13[3] = &unk_1E7854A98;
    v13[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__PUISceneSnapshotAction_respondWithSnapshotBundle___block_invoke_2;
    v12[3] = &unk_1E7854AC0;
    v12[4] = self;
    globalAsyncScheduler = [MEMORY[0x1E69C5268] globalAsyncScheduler];
    [v6 addSuccessBlock:v13 andFailureBlock:v12 scheduler:globalAsyncScheduler];
  }

  else
  {
    v8 = MEMORY[0x1E69C5258];
    v9 = PFFunctionNameForAddress();
    v10 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v6 = [v8 futureWithError:{v10, 0}];
  }

  return v6;
}

void __52__PUISceneSnapshotAction_respondWithSnapshotBundle___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 bundleURL];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v3 bundleURL];
    [v5 setObject:v6 forSetting:0];

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E698E600] responseWithInfo:v5];
    [v7 sendResponse:v8];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = MEMORY[0x1E698E600];
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v16[0] = @"Snapshot finished successfully, however, a bundle could not be written to disk.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v11 pui_errorWithCode:3 userInfo:v12];
    v14 = [v10 responseForError:v13];
    [v9 sendResponse:v14];
  }
}

void __52__PUISceneSnapshotAction_respondWithSnapshotBundle___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E698E600] responseForError:a2];
  [v2 sendResponse:v3];
}

- (void)respondWithError:(id)error
{
  v4 = [MEMORY[0x1E698E600] responseForError:error];
  [(PUISceneSnapshotAction *)self sendResponse:v4];
}

- (void)initWithSnapshotDescriptor:(const char *)a1 destination:(uint64_t)a2 responder:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"destination"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PUISceneSnapshotAction.m";
    v16 = 1024;
    v17 = 26;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end