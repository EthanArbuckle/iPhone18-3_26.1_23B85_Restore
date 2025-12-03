@interface PUImportBrowsingSession
+ (PUImportBrowsingSession)withDeviceMedia;
- (NSString)emptyPlaceholderSubtitle;
- (NSString)emptyPlaceholderTitle;
- (PUBrowsingSessionImageWellThumbnailProvider)imageWellThumbnailProvider;
- (PUImportBrowsingSession)initWithDataSourceManager:(id)manager actionManager:(id)actionManager mediaProvider:(id)provider photosDetailsContext:(id)context lowMemoryMode:(BOOL)mode importStatusManager:(id)statusManager privacyController:(id)controller;
- (PXImportController)importController;
- (void)importController:(id)controller addedImportSource:(id)source;
- (void)importController:(id)controller failedToAddImportSource:(id)source exceptions:(id)exceptions;
- (void)setImportController:(id)controller;
@end

@implementation PUImportBrowsingSession

+ (PUImportBrowsingSession)withDeviceMedia
{
  v2 = sub_1B37C0630();

  return v2;
}

- (NSString)emptyPlaceholderTitle
{
  selfCopy = self;
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

- (void)setImportController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1B37C0BAC(controller);
}

- (PUBrowsingSessionImageWellThumbnailProvider)imageWellThumbnailProvider
{
  v2 = sub_1B37C0CCC();

  return v2;
}

- (void)importController:(id)controller addedImportSource:(id)source
{
  controllerCopy = controller;
  sourceCopy = source;
  selfCopy = self;
  sub_1B37C0D00(selfCopy, sourceCopy);
}

- (void)importController:(id)controller failedToAddImportSource:(id)source exceptions:(id)exceptions
{
  sub_1B3710718(0, &qword_1EB8546C8);
  sub_1B3C9C788();
}

- (PUImportBrowsingSession)initWithDataSourceManager:(id)manager actionManager:(id)actionManager mediaProvider:(id)provider photosDetailsContext:(id)context lowMemoryMode:(BOOL)mode importStatusManager:(id)statusManager privacyController:(id)controller
{
  managerCopy = manager;
  actionManagerCopy = actionManager;
  providerCopy = provider;
  contextCopy = context;
  swift_unknownObjectRetain();
  controllerCopy = controller;
  return ImportBrowsingSession.init(dataSourceManager:actionManager:mediaProvider:photosDetailsContext:lowMemoryMode:importStatusManager:privacyController:)(manager, actionManager, provider, context, mode, statusManager, controller);
}

@end