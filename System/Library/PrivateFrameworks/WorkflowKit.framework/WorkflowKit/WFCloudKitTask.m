@interface WFCloudKitTask
- (void)cancel;
@end

@implementation WFCloudKitTask

- (void)cancel
{
  if (![(WFCloudKitTask *)self isCancelled])
  {
    [(WFCloudKitTask *)self setCancelled:1];
    v3 = [(WFCloudKitTask *)self cancellationHandler];

    if (v3)
    {
      v4 = [(WFCloudKitTask *)self cancellationHandler];
      v4[2]();
    }
  }
}

@end