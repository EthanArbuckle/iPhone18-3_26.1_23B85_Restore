@interface TimedMetadataTemplateController
- (BOOL)_canShowWhileLocked;
- (void)recordImpressionsHandler;
- (void)recordPageHandler;
- (void)vui_viewDidLoad;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation TimedMetadataTemplateController

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E4180E10();
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1E4181390(a3);
}

- (BOOL)_canShowWhileLocked
{
  v2 = self;
  v3 = sub_1E41815BC();

  return v3;
}

- (void)recordPageHandler
{
  v2 = self;
  sub_1E418336C();
}

- (void)recordImpressionsHandler
{
  v2 = self;
  sub_1E41833B8();
}

@end