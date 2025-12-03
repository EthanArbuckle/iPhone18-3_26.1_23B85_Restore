@interface DownloadManager
- (_TtC21RapidResourceDelivery15DownloadManager)init;
- (void)URLSession:(id)session didCreateTask:(id)task;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
@end

@implementation DownloadManager

- (_TtC21RapidResourceDelivery15DownloadManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)session didCreateTask:(id)task
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_227ECCD70(taskCopy);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  taskIdentifier = [taskCopy taskIdentifier];
  state = [taskCopy state];
  response = [taskCopy response];
  if (response)
  {
    v13 = response;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = v15;
  sub_227EC732C(taskIdentifier, state, v15, errorCopy);
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  sub_227ECCE5C(taskCopy, metricsCopy);
}

- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_227ECD0D4(taskCopy, offset, bytes);
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_227ECD1E4(taskCopy, data, written, write);
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v7 = sub_227F2B114();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F2B084();
  taskCopy = task;
  selfCopy = self;
  response = [taskCopy response];
  if (response)
  {
    v15 = response;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      sub_227EC8C98([taskCopy taskIdentifier], v11, v16);

      (*(v8 + 8))(v11, v7);
      return;
    }
  }

  sub_227F2BA74();
  __break(1u);
}

@end