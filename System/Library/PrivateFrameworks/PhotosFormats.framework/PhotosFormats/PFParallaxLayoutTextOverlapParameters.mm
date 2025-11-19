@interface PFParallaxLayoutTextOverlapParameters
+ (PFParallaxLayoutTextOverlapParameters)standardAlphabeticTextParameters;
+ (PFParallaxLayoutTextOverlapParameters)standardNumericTextParameters;
+ (PFParallaxLayoutTextOverlapParameters)systemParameters;
- (double)maxTopOverlapForTopRect:(CGRect)a3 isInteractive:(BOOL)a4;
@end

@implementation PFParallaxLayoutTextOverlapParameters

+ (PFParallaxLayoutTextOverlapParameters)standardAlphabeticTextParameters
{
  v2 = objc_alloc_init(PFParallaxLayoutAlphabeticalTextOverlapParameters);

  return v2;
}

- (double)maxTopOverlapForTopRect:(CGRect)a3 isInteractive:(BOOL)a4
{
  v4 = _PFAssertFailHandler();
  +[(PFParallaxLayoutTextOverlapParameters *)v4];
  return result;
}

+ (PFParallaxLayoutTextOverlapParameters)standardNumericTextParameters
{
  v2 = objc_alloc_init(PFParallaxLayoutNumericTextOverlapParameters);

  return v2;
}

+ (PFParallaxLayoutTextOverlapParameters)systemParameters
{
  if (systemParameters_once[0] != -1)
  {
    dispatch_once(systemParameters_once, &__block_literal_global_6699);
  }

  v2 = sSystemParameters;
  if (sSystemParameters)
  {

    return v2;
  }

  else
  {
    v4 = _PFAssertFailHandler();
    return __57__PFParallaxLayoutTextOverlapParameters_systemParameters__block_invoke(v4);
  }
}

void __57__PFParallaxLayoutTextOverlapParameters_systemParameters__block_invoke()
{
  if (!sSystemParameters)
  {
    sSystemParameters = +[PFParallaxLayoutTextOverlapParameters standardNumericTextParameters];

    MEMORY[0x1EEE66BB8]();
  }
}

@end