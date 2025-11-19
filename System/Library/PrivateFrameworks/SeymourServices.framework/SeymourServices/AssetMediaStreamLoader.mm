@interface AssetMediaStreamLoader
- (_TtC15SeymourServices22AssetMediaStreamLoader)init;
- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7;
- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 willDownloadToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation AssetMediaStreamLoader

- (_TtC15SeymourServices22AssetMediaStreamLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_22754F528(v8, v9, a5);
}

- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 willDownloadToURL:(id)a5
{
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_227662430();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_lock);
  v16 = self;
  v17 = a4;
  v18 = v11;
  v13 = a4;
  v14 = self;
  sub_2276696A0();

  (*(v8 + 8))(v11, v7);
}

- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7
{
  var3 = a7->var1.var3;
  v15[0] = a7->var0.var0;
  v15[1] = *&a7->var0.var1;
  v16 = *&a7->var0.var3;
  v17 = *&a7->var1.var1;
  v18 = var3;
  sub_226E99364(0, &qword_27D7BE738, 0x277CCAE60);
  v11 = sub_22766C2C0();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_227595480(v13, v11, v15);
}

@end