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

    operationQueue = [(WFCloudKitItemTask *)v2 operationQueue];
    [operationQueue setQualityOfService:25];

    v5 = v2;
  }

  return v2;
}

- (void)cancel
{
  operationQueue = [(WFCloudKitItemTask *)self operationQueue];
  [operationQueue cancelAllOperations];

  cloudOperation = [(WFCloudKitItemTask *)self cloudOperation];
  [cloudOperation cancel];

  v5.receiver = self;
  v5.super_class = WFCloudKitItemTask;
  [(WFCloudKitTask *)&v5 cancel];
}

@end