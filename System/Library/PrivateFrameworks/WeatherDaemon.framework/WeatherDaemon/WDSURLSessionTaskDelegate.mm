@interface WDSURLSessionTaskDelegate
- (void)URLSession:(id)session didCreateTask:(id)task;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
@end

@implementation WDSURLSessionTaskDelegate

- (void)URLSession:(id)session didCreateTask:(id)task
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_1B6037418(selfCopy, taskCopy);
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  sub_1B6048224(selfCopy, taskCopy, metricsCopy);
}

@end