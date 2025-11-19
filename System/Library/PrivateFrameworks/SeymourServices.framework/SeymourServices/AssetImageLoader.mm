@interface AssetImageLoader
- (_TtC15SeymourServices16AssetImageLoader)init;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4;
@end

@implementation AssetImageLoader

- (_TtC15SeymourServices16AssetImageLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662430();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_227143CA4(v14, v12);

  (*(v9 + 8))(v12, v8);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_2271445C4(v12, a6, a7);
}

- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_227144D54(v7);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_2271451F8(v9, a5);
}

@end