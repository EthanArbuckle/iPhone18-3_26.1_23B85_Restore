@interface CRTextRecognizerResults
- (NSArray)lineFeatures;
@end

@implementation CRTextRecognizerResults

- (NSArray)lineFeatures
{
  textFeatures = [(CRTextRecognizerResults *)self textFeatures];
  v3 = [CRTextResults linesFromTextFeatures:textFeatures];

  return v3;
}

@end