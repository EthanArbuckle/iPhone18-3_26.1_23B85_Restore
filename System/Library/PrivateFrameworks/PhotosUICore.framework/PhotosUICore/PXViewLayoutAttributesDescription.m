@interface PXViewLayoutAttributesDescription
@end

@implementation PXViewLayoutAttributesDescription

__CFString *__PXViewLayoutAttributesDescription_block_invoke(double a1)
{
  if (a1 == INFINITY)
  {
    v2 = @"fit";
  }

  else if (a1 == -INFINITY)
  {
    v2 = @"anchored";
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%0.1f", *&a1];
  }

  return v2;
}

@end