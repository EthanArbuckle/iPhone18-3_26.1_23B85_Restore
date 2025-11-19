@interface CRTextOrientationRecognizerConfiguration
- (CRTextOrientationRecognizerConfiguration)initWithImageReaderOptions:(id)a3 error:(id *)a4;
@end

@implementation CRTextOrientationRecognizerConfiguration

- (CRTextOrientationRecognizerConfiguration)initWithImageReaderOptions:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = CRTextOrientationRecognizerConfiguration;
  return [(CRNeuralRecognizerConfiguration *)&v5 initWithLocale:@"en-US" imageReaderOptions:a3 error:a4];
}

@end