@interface TFFeedbackFormViewDataSourceBase
- (TFFeedbackFormViewDataSourceBase)initWithPresenter:(id)a3 refreshCallback:(id)a4;
- (unint64_t)screenshotCount;
- (void)addScreenshots:(id)a3;
- (void)removeScreenshot:(id)a3;
- (void)resetScreenshots:(id)a3;
@end

@implementation TFFeedbackFormViewDataSourceBase

- (TFFeedbackFormViewDataSourceBase)initWithPresenter:(id)a3 refreshCallback:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TFFeedbackFormViewDataSourceBase;
  v9 = [(TFFeedbackFormViewDataSourceBase *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, a3);
    v11 = _Block_copy(v8);
    refreshCallback = v10->_refreshCallback;
    v10->_refreshCallback = v11;
  }

  return v10;
}

- (unint64_t)screenshotCount
{
  v2 = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  v3 = [v2 feedbackDataSource];
  v4 = [v3 imageCollectionForIdentifer:@"c"];

  v5 = [v4 count];
  return v5;
}

- (void)addScreenshots:(id)a3
{
  v4 = a3;
  v5 = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  v6 = [v5 feedbackDataSource];
  v11 = [v6 imageCollectionForIdentifer:@"c"];

  v7 = [v11 arrayByAddingObjectsFromArray:v4];

  v8 = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  v9 = [v8 session];
  [v9 associateScreenshotImages:v7];

  v10 = [(TFFeedbackFormViewDataSourceBase *)self refreshCallback];
  v10[2]();
}

- (void)removeScreenshot:(id)a3
{
  v4 = a3;
  v5 = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  v6 = [v5 feedbackDataSource];
  v7 = [v6 imageCollectionForIdentifer:@"c"];
  v11 = [v7 mutableCopy];

  [v11 removeObject:v4];
  v8 = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  v9 = [v8 session];
  [v9 associateScreenshotImages:v11];

  v10 = [(TFFeedbackFormViewDataSourceBase *)self refreshCallback];
  v10[2]();
}

- (void)resetScreenshots:(id)a3
{
  v4 = a3;
  v5 = [(TFFeedbackFormViewDataSourceBase *)self presenter];
  v6 = [v5 session];
  [v6 associateScreenshotImages:v4];

  v7 = [(TFFeedbackFormViewDataSourceBase *)self refreshCallback];
  v7[2]();
}

@end