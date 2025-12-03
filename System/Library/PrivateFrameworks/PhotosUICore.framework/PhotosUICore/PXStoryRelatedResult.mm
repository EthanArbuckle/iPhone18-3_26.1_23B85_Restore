@interface PXStoryRelatedResult
- (PXStoryRelatedResult)initWithStoryConfigurations:(id)configurations debugInfo:(id)info;
@end

@implementation PXStoryRelatedResult

- (PXStoryRelatedResult)initWithStoryConfigurations:(id)configurations debugInfo:(id)info
{
  configurationsCopy = configurations;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = PXStoryRelatedResult;
  v8 = [(PXStoryRelatedResult *)&v12 init];
  if (v8)
  {
    v9 = [configurationsCopy copy];
    storyConfigurations = v8->_storyConfigurations;
    v8->_storyConfigurations = v9;

    objc_storeStrong(&v8->_debugInfo, info);
  }

  return v8;
}

@end