@interface DownloadManager
- (_TtC21RapidResourceDelivery15DownloadManager)init;
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
@end

@implementation DownloadManager

- (_TtC21RapidResourceDelivery15DownloadManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_227ECCD70(v7);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = self;
  v9 = a5;
  v10 = [v7 taskIdentifier];
  v11 = [v7 state];
  v12 = [v7 response];
  if (v12)
  {
    v13 = v12;
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
  sub_227EC732C(v10, v11, v15, v9);
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_227ECCE5C(v9, v10);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_227ECD0D4(v11, a5, a6);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_227ECD1E4(v13, a5, a6, a7);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v7 = sub_227F2B114();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F2B084();
  v12 = a4;
  v13 = self;
  v14 = [v12 response];
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      sub_227EC8C98([v12 taskIdentifier], v11, v16);

      (*(v8 + 8))(v11, v7);
      return;
    }
  }

  sub_227F2BA74();
  __break(1u);
}

@end