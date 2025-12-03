@interface TPSUIAppController
+ (TPSUIAppController)shared;
+ (id)sharedInstance;
- (BOOL)viewNavigationCollapsed;
- (id)assetConfigurationForAssets:(id)assets language:(id)language sizeClass:(int64_t)class style:(int64_t)style assetFileInfoManager:(id)manager;
- (void)contentWillUpdate;
- (void)overrideWidgetWithTip:(id)tip;
- (void)resetAttributedStringCache;
- (void)setViewNavigationCollapsed:(BOOL)collapsed;
@end

@implementation TPSUIAppController

- (BOOL)viewNavigationCollapsed
{
  v3 = OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setViewNavigationCollapsed:(BOOL)collapsed
{
  v5 = OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = collapsed;
}

- (void)contentWillUpdate
{
  selfCopy = self;
  sub_220B6115C();
}

- (id)assetConfigurationForAssets:(id)assets language:(id)language sizeClass:(int64_t)class style:(int64_t)style assetFileInfoManager:(id)manager
{
  if (language)
  {
    v11 = sub_220BCDBA0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  assetsCopy = assets;
  managerCopy = manager;
  selfCopy = self;
  v17 = sub_220B62950(assets, v11, v13, style, managerCopy);

  return v17;
}

- (void)resetAttributedStringCache
{
  selfCopy = self;
  sub_220B62140();
}

+ (TPSUIAppController)shared
{
  if (qword_2812C1420 != -1)
  {
    swift_once();
  }

  v3 = qword_2812C1428;

  return v3;
}

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = static TPSUIAppController.sharedInstance()();

  return v2;
}

- (void)overrideWidgetWithTip:(id)tip
{
  type metadata accessor for TipsContentModel();
  tipCopy = tip;
  v4 = static TipsContentModel.shared()();
  if ([objc_opt_self() isInternalBuild])
  {
    v5 = sub_220BA0840();
    [v5 attemptWidgetUpdateWith_];
  }
}

@end