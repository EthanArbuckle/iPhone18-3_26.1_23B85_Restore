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
    v5 = [a1 completedUnitCount] + 250;
    v6 = [a1 totalUnitCount];
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    [a1 setCompletedUnitCount:v7];
  }

  [a1 fractionCompleted];
  if (v8 < 1.0)
  {
    v9 = dispatch_time(0, 250000000);
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__NSProgress_PhotosUICore___px_performSimulatedWorkStep___block_invoke;
    v11[3] = &unk_1E77498A0;
    v11[4] = a1;
    v11[5] = a3;
    dispatch_after(v9, v10, v11);
  }
}

- (void)px_appendSimulatedProgressWithDuration:()PhotosUICore pendingUnitCount:
{
  v6 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:(a2 * 1000.0)];
  [a1 px_appendChild:v6 withPendingUnitCount:a4];
  [v6 _px_performSimulatedWorkStep:0];
}

- (void)px_appendChild:()PhotosUICore withPendingUnitCount:
{
  v6 = a3;
  [a1 setTotalUnitCount:{objc_msgSend(a1, "totalUnitCount") + a4}];
  [a1 addChild:v6 withPendingUnitCount:a4];
}

@end