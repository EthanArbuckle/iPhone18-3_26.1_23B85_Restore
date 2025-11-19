@interface CRTextRecognizerResults
- (NSArray)lineFeatures;
@end

@implementation CRTextRecognizerResults

- (NSArray)lineFeatures
{
  v2 = [(CRTextRecognizerResults *)self textFeatures];
  v3 = [CRTextResults linesFromTextFeatures:v2];

  return v3;
}

@end