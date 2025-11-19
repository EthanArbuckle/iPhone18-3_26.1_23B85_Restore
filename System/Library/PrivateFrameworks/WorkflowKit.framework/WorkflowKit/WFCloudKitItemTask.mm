@interface WFCloudKitItemTask
- (WFCloudKitItemTask)init;
- (void)cancel;
@end

@implementation WFCloudKitItemTask

- (WFCloudKitItemTask)init
{
  v7.receiver = self;
  v7.super_class = WFCloudKitItemTask;
  v2 = [(WFCloudKitItemTask *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(WFCloudKitItemTask *)v2 setOperationQueue:v3];

    v4 = [(WFCloudKitItemTask *)v2 operationQueue];
    [v4 setQualityOfService:25];

    v5 = v2;
  }

  return v2;
}

- (void)cancel
{
  v3 = [(WFCloudKitItemTask *)self operationQueue];
  [v3 cancelAllOperations];

  v4 = [(WFCloudKitItemTask *)self cloudOperation];
  [v4 cancel];

  v5.receiver = self;
  v5.super_class = WFCloudKitItemTask;
  [(WFCloudKitTask *)&v5 cancel];
}

@end