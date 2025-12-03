@interface PLSyncCancellingProgress
+ (id)discreteProgressWithTotalUnitCount:(int64_t)count;
- (void)cancel;
- (void)setCancellationHandler:(id)handler;
@end

@implementation PLSyncCancellingProgress

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = PLSyncCancellingProgress;
  [(PLSyncCancellingProgress *)&v5 cancel];
  pl_cancellationHandler = [(PLSyncCancellingProgress *)self pl_cancellationHandler];
  v4 = pl_cancellationHandler;
  if (pl_cancellationHandler)
  {
    (*(pl_cancellationHandler + 16))(pl_cancellationHandler);
  }
}

- (void)setCancellationHandler:(id)handler
{
  handlerCopy = handler;
  [(PLSyncCancellingProgress *)self setPl_cancellationHandler:handlerCopy];
  isCancelled = [(PLSyncCancellingProgress *)self isCancelled];
  v5 = handlerCopy;
  if (handlerCopy && isCancelled)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v5 = handlerCopy;
  }
}

+ (id)discreteProgressWithTotalUnitCount:(int64_t)count
{
  v4 = [[PLSyncCancellingProgress alloc] initWithParent:0 userInfo:0];
  [(PLSyncCancellingProgress *)v4 setTotalUnitCount:count];

  return v4;
}

@end