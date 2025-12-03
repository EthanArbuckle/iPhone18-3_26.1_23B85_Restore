@interface CRTextOrientationRecognizerConfiguration
- (CRTextOrientationRecognizerConfiguration)initWithImageReaderOptions:(id)options error:(id *)error;
@end

@implementation CRTextOrientationRecognizerConfiguration

- (CRTextOrientationRecognizerConfiguration)initWithImageReaderOptions:(id)options error:(id *)error
{
  v5.receiver = self;
  v5.super_class = CRTextOrientationRecognizerConfiguration;
  return [(CRNeuralRecognizerConfiguration *)&v5 initWithLocale:@"en-US" imageReaderOptions:options error:error];
}

@end