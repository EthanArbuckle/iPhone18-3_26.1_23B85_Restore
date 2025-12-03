@interface PFParallaxLayoutNumericTextOverlapParameters
- (double)maxTopOverlapForTopRect:(CGRect)rect isInteractive:(BOOL)interactive;
@end

@implementation PFParallaxLayoutNumericTextOverlapParameters

- (double)maxTopOverlapForTopRect:(CGRect)rect isInteractive:(BOOL)interactive
{
  result = rect.size.height * 4.0 / 3.0 * 0.2 / rect.size.width;
  if (interactive)
  {
    return result + (1.0 - result) * 0.25;
  }

  return result;
}

@end