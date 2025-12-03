@interface NSProgress(PhotosUICore)
- (void)_px_performSimulatedWorkStep:()PhotosUICore;
- (void)px_appendChild:()PhotosUICore withPendingUnitCount:;
- (void)px_appendSimulatedProgressWithDuration:()PhotosUICore pendingUnitCount:;
@end

@implementation NSProgress(PhotosUICore)

- (void)_px_performSimulatedWorkStep:()PhotosUICore
{
  if (a3 >= 1)
  {
    v5 = [self completedUnitCount] + 250;
    totalUnitCount = [self totalUnitCount];
    if (v5 >= totalUnitCount)
    {
      v7 = totalUnitCount;
    }

    else
    {
      v7 = v5;
    }

    [self setCompletedUnitCount:v7];
  }

  [self fractionCompleted];
  if (v8 < 1.0)
  {
    v9 = dispatch_time(0, 250000000);
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__NSProgress_PhotosUICore___px_performSimulatedWorkStep___block_invoke;
    v11[3] = &unk_1E77498A0;
    v11[4] = self;
    v11[5] = a3;
    dispatch_after(v9, v10, v11);
  }
}

- (void)px_appendSimulatedProgressWithDuration:()PhotosUICore pendingUnitCount:
{
  v6 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:(a2 * 1000.0)];
  [self px_appendChild:v6 withPendingUnitCount:a4];
  [v6 _px_performSimulatedWorkStep:0];
}

- (void)px_appendChild:()PhotosUICore withPendingUnitCount:
{
  v6 = a3;
  [self setTotalUnitCount:{objc_msgSend(self, "totalUnitCount") + a4}];
  [self addChild:v6 withPendingUnitCount:a4];
}

@end