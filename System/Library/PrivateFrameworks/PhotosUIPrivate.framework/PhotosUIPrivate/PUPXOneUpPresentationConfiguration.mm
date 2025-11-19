@interface PUPXOneUpPresentationConfiguration
- (PUPXOneUpPresentationConfiguration)init;
@end

@implementation PUPXOneUpPresentationConfiguration

- (PUPXOneUpPresentationConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PUPXOneUpPresentationConfiguration;
  result = [(PUPXOneUpPresentationConfiguration *)&v3 init];
  if (result)
  {
    *&result->_animated = 1;
    result->_interactiveMode = 0;
    result->_activity = 0;
  }

  return result;
}

@end