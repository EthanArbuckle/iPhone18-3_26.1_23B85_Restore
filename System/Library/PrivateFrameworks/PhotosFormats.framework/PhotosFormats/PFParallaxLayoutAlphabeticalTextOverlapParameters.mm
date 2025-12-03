@interface PFParallaxLayoutAlphabeticalTextOverlapParameters
- (double)bottomAreaHeight;
- (double)maxBottomOverlap;
- (double)maxTopOverlapForTopRect:(CGRect)rect isInteractive:(BOOL)interactive;
- (double)targetBottomOverlap;
@end

@implementation PFParallaxLayoutAlphabeticalTextOverlapParameters

- (double)maxTopOverlapForTopRect:(CGRect)rect isInteractive:(BOOL)interactive
{
  height = rect.size.height;
  width = rect.size.width;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:@"PFAlphabeticalTextMaxTopAreaOverlap"];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = height * 4.0 / 3.0 * 0.2 / width * 0.5;
  }

  return v9;
}

- (double)maxBottomOverlap
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PFAlphabeticalTextMaxBottomAreaOverlap"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (double)targetBottomOverlap
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PFAlphabeticalTextTargetBottomAreaOverlap"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)bottomAreaHeight
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PFAlphabeticalTextBottomAreaHeight"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  return v5;
}

@end