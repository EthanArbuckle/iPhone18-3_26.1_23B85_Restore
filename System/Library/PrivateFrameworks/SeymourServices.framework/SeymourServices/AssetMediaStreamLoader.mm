@interface AssetMediaStreamLoader
- (_TtC15SeymourServices22AssetMediaStreamLoader)init;
- (void)URLSession:(id)session assetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load;
- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation AssetMediaStreamLoader

- (_TtC15SeymourServices22AssetMediaStreamLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_22754F528(sessionCopy, taskCopy, error);
}

- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadToURL:(id)l
{
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_227662430();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_lock);
  selfCopy = self;
  taskCopy = task;
  v18 = v11;
  taskCopy2 = task;
  selfCopy2 = self;
  sub_2276696A0();

  (*(v8 + 8))(v11, v7);
}

- (void)URLSession:(id)session assetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load
{
  var3 = load->var1.var3;
  v15[0] = load->var0.var0;
  v15[1] = *&load->var0.var1;
  v16 = *&load->var0.var3;
  v17 = *&load->var1.var1;
  v18 = var3;
  sub_226E99364(0, &qword_27D7BE738, 0x277CCAE60);
  v11 = sub_22766C2C0();
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_227595480(taskCopy, v11, v15);
}

@end