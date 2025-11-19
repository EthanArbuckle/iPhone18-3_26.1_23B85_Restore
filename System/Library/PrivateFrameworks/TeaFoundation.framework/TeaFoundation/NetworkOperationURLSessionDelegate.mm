@interface NetworkOperationURLSessionDelegate
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
@end

@implementation NetworkOperationURLSessionDelegate

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  NetworkOperationURLSessionDelegate.urlSession(_:didBecomeInvalidWithError:)(v6, a4);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  NetworkOperationURLSessionDelegate.urlSession(_:task:didCompleteWithError:)();
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  NetworkOperationURLSessionDelegate.urlSession(_:task:didFinishCollecting:)(v11, v9, v10);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = self;
  v11 = sub_1BF17935C();
  v13 = v12;

  NetworkOperationURLSessionDelegate.urlSession(_:dataTask:didReceive:)(v14, v9);
  sub_1BF014E18(v11, v13);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v8 = sub_1BF17923C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF1791BC();
  v13 = a3;
  v14 = a4;
  v15 = self;
  NetworkOperationURLSessionDelegate.urlSession(_:downloadTask:didFinishDownloadingTo:)();

  (*(v9 + 8))(v12, v8);
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkOperationURLSessionDelegate.urlSessionDidFinishEvents(forBackgroundURLSession:)(v4);
}

@end