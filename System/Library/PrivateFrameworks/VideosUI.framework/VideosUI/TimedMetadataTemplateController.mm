@interface TimedMetadataTemplateController
- (BOOL)_canShowWhileLocked;
- (void)recordImpressionsHandler;
- (void)recordPageHandler;
- (void)vui_viewDidLoad;
- (void)vui_viewWillDisappear:(BOOL)disappear;
@end

@implementation TimedMetadataTemplateController

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E4180E10();
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1E4181390(disappear);
}

- (BOOL)_canShowWhileLocked
{
  selfCopy = self;
  v3 = sub_1E41815BC();

  return v3;
}

- (void)recordPageHandler
{
  selfCopy = self;
  sub_1E418336C();
}

- (void)recordImpressionsHandler
{
  selfCopy = self;
  sub_1E41833B8();
}

@end