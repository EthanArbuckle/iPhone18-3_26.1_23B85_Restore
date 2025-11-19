@interface TPSUIAppController
+ (TPSUIAppController)shared;
+ (id)sharedInstance;
- (BOOL)viewNavigationCollapsed;
- (id)assetConfigurationForAssets:(id)a3 language:(id)a4 sizeClass:(int64_t)a5 style:(int64_t)a6 assetFileInfoManager:(id)a7;
- (void)contentWillUpdate;
- (void)overrideWidgetWithTip:(id)a3;
- (void)resetAttributedStringCache;
- (void)setViewNavigationCollapsed:(BOOL)a3;
@end

@implementation TPSUIAppController

- (BOOL)viewNavigationCollapsed
{
  v3 = OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setViewNavigationCollapsed:(BOOL)a3
{
  v5 = OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (void)contentWillUpdate
{
  v2 = self;
  sub_220B6115C();
}

- (id)assetConfigurationForAssets:(id)a3 language:(id)a4 sizeClass:(int64_t)a5 style:(int64_t)a6 assetFileInfoManager:(id)a7
{
  if (a4)
  {
    v11 = sub_220BCDBA0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = a3;
  v15 = a7;
  v16 = self;
  v17 = sub_220B62950(a3, v11, v13, a6, v15);

  return v17;
}

- (void)resetAttributedStringCache
{
  v2 = self;
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

- (void)overrideWidgetWithTip:(id)a3
{
  type metadata accessor for TipsContentModel();
  v6 = a3;
  v4 = static TipsContentModel.shared()();
  if ([objc_opt_self() isInternalBuild])
  {
    v5 = sub_220BA0840();
    [v5 attemptWidgetUpdateWith_];
  }
}

@end