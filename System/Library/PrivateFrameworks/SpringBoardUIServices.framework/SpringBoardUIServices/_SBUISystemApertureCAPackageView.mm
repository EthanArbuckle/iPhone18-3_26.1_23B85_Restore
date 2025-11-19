@interface _SBUISystemApertureCAPackageView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)intrinsicPackageSize;
- (uint64_t)setIntrinsicPackageSize:(double)a3;
@end

@implementation _SBUISystemApertureCAPackageView

- (double)intrinsicPackageSize
{
  if (a1)
  {
    return *(a1 + 480);
  }

  else
  {
    return OUTLINED_FUNCTION_0_6();
  }
}

- (uint64_t)setIntrinsicPackageSize:(double)a3
{
  if (result)
  {
    *(result + 480) = a2;
    *(result + 488) = a3;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self)
  {
    width = self->_intrinsicPackageSize.width;
    height = self->_intrinsicPackageSize.height;
  }

  else
  {
    height = 0.0;
    width = 0.0;
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v13 = v3;
    v14 = v4;
    v12.receiver = self;
    v12.super_class = _SBUISystemApertureCAPackageView;
    [(BSUICAPackageView *)&v12 sizeThatFits:a3.width, a3.height, height];
    width = v8;
    height = v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  if (self)
  {
    width = self->_intrinsicPackageSize.width;
    height = self->_intrinsicPackageSize.height;
  }

  else
  {
    height = 0.0;
    width = 0.0;
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = _SBUISystemApertureCAPackageView;
    [(_SBUISystemApertureCAPackageView *)&v7 intrinsicContentSize];
  }

  result.height = height;
  result.width = width;
  return result;
}

@end