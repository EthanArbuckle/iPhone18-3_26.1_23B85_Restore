@interface WFCloudKitWebServiceTask
- (WFCloudKitWebServiceTask)init;
- (void)cancel;
@end

@implementation WFCloudKitWebServiceTask

- (void)cancel
{
  dataTask = [(WFCloudKitWebServiceTask *)self dataTask];
  [dataTask cancel];

  operationQueue = [(WFCloudKitWebServiceTask *)self operationQueue];
  [operationQueue cancelAllOperations];

  v5.receiver = self;
  v5.super_class = WFCloudKitWebServiceTask;
  [(WFCloudKitTask *)&v5 cancel];
}

- (WFCloudKitWebServiceTask)init
{
  v6.receiver = self;
  v6.super_class = WFCloudKitWebServiceTask;
  v2 = [(WFCloudKitWebServiceTask *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(WFCloudKitWebServiceTask *)v2 setOperationQueue:v3];

    v4 = v2;
  }

  return v2;
}

@end