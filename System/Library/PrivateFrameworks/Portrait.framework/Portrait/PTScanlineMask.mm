@interface PTScanlineMask
+ (id)scanlineMaskWithFocusBlurMap:(id)a3 region:(id)a4;
- (CGRect)placement;
@end

@implementation PTScanlineMask

+ (id)scanlineMaskWithFocusBlurMap:(id)a3 region:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PTScanlineMask_FocusBlurMap alloc] initWithFocusBlurMap:v6 region:v5];

  return v7;
}

- (CGRect)placement
{
  objc_copyStruct(v6, &self->_placement, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end