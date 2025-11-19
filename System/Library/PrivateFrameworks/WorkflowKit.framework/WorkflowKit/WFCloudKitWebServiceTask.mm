@interface WFCloudKitWebServiceTask
- (WFCloudKitWebServiceTask)init;
- (void)cancel;
@end

@implementation WFCloudKitWebServiceTask

- (void)cancel
{
  v3 = [(WFCloudKitWebServiceTask *)self dataTask];
  [v3 cancel];

  v4 = [(WFCloudKitWebServiceTask *)self operationQueue];
  [v4 cancelAllOperations];

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