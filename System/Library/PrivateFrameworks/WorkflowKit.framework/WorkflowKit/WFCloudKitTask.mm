@interface WFCloudKitTask
- (void)cancel;
@end

@implementation WFCloudKitTask

- (void)cancel
{
  if (![(WFCloudKitTask *)self isCancelled])
  {
    [(WFCloudKitTask *)self setCancelled:1];
    cancellationHandler = [(WFCloudKitTask *)self cancellationHandler];

    if (cancellationHandler)
    {
      cancellationHandler2 = [(WFCloudKitTask *)self cancellationHandler];
      cancellationHandler2[2]();
    }
  }
}

@end