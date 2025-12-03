@interface PXDiagnosticsNotificationCenter
- (PXDiagnosticsNotificationCenter)init;
- (void)_didReplyToIDNumber:(int64_t)number;
- (void)postNotificationWithName:(id)name userInfo:(id)info resultHandler:(id)handler;
@end

@implementation PXDiagnosticsNotificationCenter

- (void)_didReplyToIDNumber:(int64_t)number
{
  pendingReplyHandles = self->_pendingReplyHandles;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:number];
  [(NSMutableDictionary *)pendingReplyHandles removeObjectForKey:v4];
}

- (void)postNotificationWithName:(id)name userInfo:(id)info resultHandler:(id)handler
{
  nameCopy = name;
  infoCopy = info;
  handlerCopy = handler;
  nextReplyID = self->_nextReplyID;
  self->_nextReplyID = nextReplyID + 1;
  objc_initWeak(&location, self);
  v12 = [_PXDiagnosticsNotificationReplyHandle alloc];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __83__PXDiagnosticsNotificationCenter_postNotificationWithName_userInfo_resultHandler___block_invoke;
  v19[3] = &unk_1E772E598;
  v13 = handlerCopy;
  v20 = v13;
  objc_copyWeak(&v21, &location);
  v14 = [(_PXDiagnosticsNotificationReplyHandle *)v12 initWithIDNumber:nextReplyID replyBlock:v19];
  pendingReplyHandles = self->_pendingReplyHandles;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:nextReplyID];
  [(NSMutableDictionary *)pendingReplyHandles setObject:v14 forKeyedSubscript:v16];

  v17 = [infoCopy mutableCopy];
  [v17 setObject:v14 forKeyedSubscript:@"PXDiagnosticsNotificationCenterReplyHandleKey"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:nameCopy object:0 userInfo:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __83__PXDiagnosticsNotificationCenter_postNotificationWithName_userInfo_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didReplyToIDNumber:a2];
}

- (PXDiagnosticsNotificationCenter)init
{
  v6.receiver = self;
  v6.super_class = PXDiagnosticsNotificationCenter;
  v2 = [(PXDiagnosticsNotificationCenter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingReplyHandles = v2->_pendingReplyHandles;
    v2->_pendingReplyHandles = v3;
  }

  return v2;
}

@end