@interface NetworkOperationURLSessionDelegate
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
@end

@implementation NetworkOperationURLSessionDelegate

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  selfCopy = self;
  errorCopy = error;
  NetworkOperationURLSessionDelegate.urlSession(_:didBecomeInvalidWithError:)(sessionCopy, error);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  NetworkOperationURLSessionDelegate.urlSession(_:task:didCompleteWithError:)();
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  NetworkOperationURLSessionDelegate.urlSession(_:task:didFinishCollecting:)(selfCopy, taskCopy, metricsCopy);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  selfCopy = self;
  v11 = sub_1BF17935C();
  v13 = v12;

  NetworkOperationURLSessionDelegate.urlSession(_:dataTask:didReceive:)(v14, taskCopy);
  sub_1BF014E18(v11, v13);
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v8 = sub_1BF17923C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF1791BC();
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  NetworkOperationURLSessionDelegate.urlSession(_:downloadTask:didFinishDownloadingTo:)();

  (*(v9 + 8))(v12, v8);
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  NetworkOperationURLSessionDelegate.urlSessionDidFinishEvents(forBackgroundURLSession:)(sessionCopy);
}

@end