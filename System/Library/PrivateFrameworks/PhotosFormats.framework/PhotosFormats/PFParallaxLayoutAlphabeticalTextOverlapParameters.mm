@interface PFParallaxLayoutAlphabeticalTextOverlapParameters
- (double)bottomAreaHeight;
- (double)maxBottomOverlap;
- (double)maxTopOverlapForTopRect:(CGRect)a3 isInteractive:(BOOL)a4;
- (double)targetBottomOverlap;
@end

@implementation PFParallaxLayoutAlphabeticalTextOverlapParameters

- (double)maxTopOverlapForTopRect:(CGRect)a3 isInteractive:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 objectForKey:@"PFAlphabeticalTextMaxTopAreaOverlap"];

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
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PFAlphabeticalTextMaxBottomAreaOverlap"];

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
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PFAlphabeticalTextTargetBottomAreaOverlap"];

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
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PFAlphabeticalTextBottomAreaHeight"];

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