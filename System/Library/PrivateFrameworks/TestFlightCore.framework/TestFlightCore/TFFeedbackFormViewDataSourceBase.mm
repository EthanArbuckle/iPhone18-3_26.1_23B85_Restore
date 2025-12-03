@interface TFFeedbackFormViewDataSourceBase
- (TFFeedbackFormViewDataSourceBase)initWithPresenter:(id)presenter refreshCallback:(id)callback;
- (unint64_t)screenshotCount;
- (void)addScreenshots:(id)screenshots;
- (void)removeScreenshot:(id)screenshot;
- (void)resetScreenshots:(id)screenshots;
@end

@implementation TFFeedbackFormViewDataSourceBase

- (TFFeedbackFormViewDataSourceBase)initWithPresenter:(id)presenter refreshCallback:(id)callback
{
  presenterCopy = presenter;
  callbackCopy = callback;
  v14.receiver = self;
  v14.super_class = TFFeedbackFormViewDataSourceBase;
  v9 = [(TFFeedbackFormViewDataSourceBase *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    v11 = _Block_copy(callbackCopy);
    refreshCallback = v10->_refreshCallback;
    v10->_refreshCallback = v11;
  }

  return v10;
}

- (unint64_t)screenshotCount
{
  presenter = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  feedbackDataSource = [presenter feedbackDataSource];
  v4 = [feedbackDataSource imageCollectionForIdentifer:@"c"];

  v5 = [v4 count];
  return v5;
}

- (void)addScreenshots:(id)screenshots
{
  screenshotsCopy = screenshots;
  presenter = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  feedbackDataSource = [presenter feedbackDataSource];
  v11 = [feedbackDataSource imageCollectionForIdentifer:@"c"];

  v7 = [v11 arrayByAddingObjectsFromArray:screenshotsCopy];

  presenter2 = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  session = [presenter2 session];
  [session associateScreenshotImages:v7];

  refreshCallback = [(TFFeedbackFormViewDataSourceBase *)self refreshCallback];
  refreshCallback[2]();
}

- (void)removeScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  presenter = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  feedbackDataSource = [presenter feedbackDataSource];
  v7 = [feedbackDataSource imageCollectionForIdentifer:@"c"];
  v11 = [v7 mutableCopy];

  [v11 removeObject:screenshotCopy];
  presenter2 = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  session = [presenter2 session];
  [session associateScreenshotImages:v11];

  refreshCallback = [(TFFeedbackFormViewDataSourceBase *)self refreshCallback];
  refreshCallback[2]();
}

- (void)resetScreenshots:(id)screenshots
{
  screenshotsCopy = screenshots;
  presenter = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  session = [presenter session];
  [session associateScreenshotImages:screenshotsCopy];

  refreshCallback = [(TFFeedbackFormViewDataSourceBase *)self refreshCallback];
  refreshCallback[2]();
}

@end