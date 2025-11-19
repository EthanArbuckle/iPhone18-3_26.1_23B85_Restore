@interface PXStoryRelatedResult
- (PXStoryRelatedResult)initWithStoryConfigurations:(id)a3 debugInfo:(id)a4;
@end

@implementation PXStoryRelatedResult

- (PXStoryRelatedResult)initWithStoryConfigurations:(id)a3 debugInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXStoryRelatedResult;
  v8 = [(PXStoryRelatedResult *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    storyConfigurations = v8->_storyConfigurations;
    v8->_storyConfigurations = v9;

    objc_storeStrong(&v8->_debugInfo, a4);
  }

  return v8;
}

@end