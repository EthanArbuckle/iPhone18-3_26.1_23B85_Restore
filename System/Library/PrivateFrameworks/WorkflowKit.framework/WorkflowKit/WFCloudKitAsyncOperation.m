@interface WFCloudKitAsyncOperation
- (void)finishExecuting;
- (void)startExecuting;
@end

@implementation WFCloudKitAsyncOperation

- (void)startExecuting
{
  [(WFCloudKitAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  [(WFCloudKitAsyncOperation *)self setIsExecuting:1];

  [(WFCloudKitAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)finishExecuting
{
  [(WFCloudKitAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  [(WFCloudKitAsyncOperation *)self willChangeValueForKey:@"isFinished"];
  [(WFCloudKitAsyncOperation *)self setIsExecuting:0];
  [(WFCloudKitAsyncOperation *)self setIsFinished:1];
  [(WFCloudKitAsyncOperation *)self didChangeValueForKey:@"isExecuting"];

  [(WFCloudKitAsyncOperation *)self didChangeValueForKey:@"isFinished"];
}

@end