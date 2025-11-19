@interface PXImageViewSpec
- (BOOL)isEqual:(id)a3;
- (CGPoint)floatingContentMotionRotation;
- (CGPoint)floatingContentMotionTranslation;
- (CGSize)floatingUnfocusedShadowExpansion;
- (PXImageViewSpec)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXImageViewSpec

- (CGSize)floatingUnfocusedShadowExpansion
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)floatingContentMotionTranslation
{
  v2 = 10.0;
  v3 = 10.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)floatingContentMotionRotation
{
  v2 = 0.100000001;
  v3 = 0.100000001;
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PXImageViewSpec;
  v5 = [(PXViewSpec *)&v9 copyWithZone:?];
  if (self->_overlaySpecs)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] allocWithZone:{a3), "initWithArray:copyItems:", self->_overlaySpecs, 1}];
  }

  else
  {
    v6 = 0;
  }

  v7 = v5[13];
  v5[13] = v6;

  *(v5 + 96) = self->_shouldEnableFocus;
  v5[14] = self->_roundedCornersMode;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PXImageViewSpec;
  v5 = [(PXViewSpec *)&v15 isEqual:v4];
  v6 = v4;
  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = [(PXImageViewSpec *)self overlaySpecs];
  v8 = [v6 overlaySpecs];
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v11 = [(PXImageViewSpec *)self shouldEnableFocus];
  if (v11 == [v6 shouldEnableFocus])
  {
    v14 = [(PXImageViewSpec *)self roundedCornersMode];
    v12 = v14 == [v6 roundedCornersMode];
    goto LABEL_8;
  }

LABEL_7:
  v12 = 0;
LABEL_8:

  return v12;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXImageViewSpec;
  v3 = [(PXViewSpec *)&v7 hash];
  v4 = [(PXImageViewSpec *)self overlaySpecs];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (PXImageViewSpec)init
{
  v3.receiver = self;
  v3.super_class = PXImageViewSpec;
  result = [(PXViewSpec *)&v3 init];
  if (result)
  {
    result->_roundedCornersMode = 1;
  }

  return result;
}

@end