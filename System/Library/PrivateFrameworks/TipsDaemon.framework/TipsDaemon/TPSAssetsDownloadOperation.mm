@interface TPSAssetsDownloadOperation
- (NSString)assetIdentifier;
- (NSURL)downloadedURL;
- (TPSAssetsDownloadOperation)init;
- (TPSAssetsDownloadOperation)initWithAssetIdentifier:(id)a3 assetURLPath:(id)a4;
- (void)main;
- (void)setAssetIdentifier:(id)a3;
- (void)setDownloadedURL:(id)a3;
@end

@implementation TPSAssetsDownloadOperation

- (NSString)assetIdentifier
{
  v2 = (self + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_232E014C0();

  return v5;
}

- (void)setAssetIdentifier:(id)a3
{
  v4 = sub_232E014D0();
  v6 = v5;
  v7 = (self + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSURL)downloadedURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  sub_232DAB3CC(self + v7, v6, &qword_27DDD7300, &qword_232E06830);
  v8 = sub_232E00BE0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_232E00B70();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setDownloadedURL:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    sub_232E00BB0();
    v9 = sub_232E00BE0();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_232E00BE0();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  v12 = self;
  sub_232DDEBE0(v8, self + v11);
  swift_endAccess();
}

- (TPSAssetsDownloadOperation)initWithAssetIdentifier:(id)a3 assetURLPath:(id)a4
{
  v5 = sub_232E014D0();
  v7 = v6;
  v8 = sub_232E014D0();
  v10 = v9;
  v11 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  v12 = sub_232E00BE0();
  (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
  *(self + OBJC_IVAR___TPSAssetsDownloadOperation_priority) = *MEMORY[0x277CCA790];
  *(self + OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem) = 0;
  v13 = (self + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  *v13 = v5;
  v13[1] = v7;
  v14 = (self + OBJC_IVAR___TPSAssetsDownloadOperation_assetURLPath);
  *v14 = v8;
  v14[1] = v10;
  v16.receiver = self;
  v16.super_class = type metadata accessor for AssetsDownloadOperation();
  return [(TPSAsyncOperation *)&v16 init];
}

- (void)main
{
  v2 = self;
  sub_232DDE3C8();
}

- (TPSAssetsDownloadOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end