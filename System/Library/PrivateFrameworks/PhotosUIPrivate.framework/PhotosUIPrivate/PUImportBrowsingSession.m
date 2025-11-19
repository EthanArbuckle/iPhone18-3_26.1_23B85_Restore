@interface PUImportBrowsingSession
+ (PUImportBrowsingSession)withDeviceMedia;
- (NSString)emptyPlaceholderSubtitle;
- (NSString)emptyPlaceholderTitle;
- (PUBrowsingSessionImageWellThumbnailProvider)imageWellThumbnailProvider;
- (PUImportBrowsingSession)initWithDataSourceManager:(id)a3 actionManager:(id)a4 mediaProvider:(id)a5 photosDetailsContext:(id)a6 lowMemoryMode:(BOOL)a7 importStatusManager:(id)a8 privacyController:(id)a9;
- (PXImportController)importController;
- (void)importController:(id)a3 addedImportSource:(id)a4;
- (void)importController:(id)a3 failedToAddImportSource:(id)a4 exceptions:(id)a5;
- (void)setImportController:(id)a3;
@end

@implementation PUImportBrowsingSession

+ (PUImportBrowsingSession)withDeviceMedia
{
  v2 = sub_1B37C0630();

  return v2;
}

- (NSString)emptyPlaceholderTitle
{
  v2 = self;
  sub_1B37C0A14();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1B3C9C5A8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)emptyPlaceholderSubtitle
{
  v2 = sub_1B3C9C5A8();

  return v2;
}

- (PXImportController)importController
{
  v2 = sub_1B37C0B04();

  return v2;
}

- (void)setImportController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B37C0BAC(a3);
}

- (PUBrowsingSessionImageWellThumbnailProvider)imageWellThumbnailProvider
{
  v2 = sub_1B37C0CCC();

  return v2;
}

- (void)importController:(id)a3 addedImportSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1B37C0D00(v8, v7);
}

- (void)importController:(id)a3 failedToAddImportSource:(id)a4 exceptions:(id)a5
{
  sub_1B3710718(0, &qword_1EB8546C8);
  sub_1B3C9C788();
}

- (PUImportBrowsingSession)initWithDataSourceManager:(id)a3 actionManager:(id)a4 mediaProvider:(id)a5 photosDetailsContext:(id)a6 lowMemoryMode:(BOOL)a7 importStatusManager:(id)a8 privacyController:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  swift_unknownObjectRetain();
  v19 = a9;
  return ImportBrowsingSession.init(dataSourceManager:actionManager:mediaProvider:photosDetailsContext:lowMemoryMode:importStatusManager:privacyController:)(a3, a4, a5, a6, a7, a8, a9);
}

@end