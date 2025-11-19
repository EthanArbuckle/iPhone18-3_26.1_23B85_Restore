@interface PLSyncCancellingProgress
+ (id)discreteProgressWithTotalUnitCount:(int64_t)a3;
- (void)cancel;
- (void)setCancellationHandler:(id)a3;
@end

@implementation PLSyncCancellingProgress

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = PLSyncCancellingProgress;
  [(PLSyncCancellingProgress *)&v5 cancel];
  v3 = [(PLSyncCancellingProgress *)self pl_cancellationHandler];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }
}

- (void)setCancellationHandler:(id)a3
{
  v6 = a3;
  [(PLSyncCancellingProgress *)self setPl_cancellationHandler:v6];
  v4 = [(PLSyncCancellingProgress *)self isCancelled];
  v5 = v6;
  if (v6 && v4)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

+ (id)discreteProgressWithTotalUnitCount:(int64_t)a3
{
  v4 = [[PLSyncCancellingProgress alloc] initWithParent:0 userInfo:0];
  [(PLSyncCancellingProgress *)v4 setTotalUnitCount:a3];

  return v4;
}

@end