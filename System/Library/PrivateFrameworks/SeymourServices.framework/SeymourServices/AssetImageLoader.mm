@interface AssetImageLoader
- (_TtC15SeymourServices16AssetImageLoader)init;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
@end

@implementation AssetImageLoader

- (_TtC15SeymourServices16AssetImageLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662430();
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_227143CA4(taskCopy, v12);

  (*(v9 + 8))(v12, v8);
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_2271445C4(taskCopy, written, write);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  sessionCopy = session;
  connectivityCopy = connectivity;
  selfCopy = self;
  sub_227144D54(connectivityCopy);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_2271451F8(taskCopy, error);
}

@end