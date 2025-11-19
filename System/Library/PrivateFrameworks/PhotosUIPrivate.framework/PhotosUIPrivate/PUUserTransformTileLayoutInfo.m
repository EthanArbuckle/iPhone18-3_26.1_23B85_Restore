@interface PUUserTransformTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)a3;
- (CGRect)untransformedContentFrame;
- (CGSize)contentPixelSize;
- (PUUserTransformTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9;
- (UIEdgeInsets)chromeInsets;
- (double)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 alpha:(double)a6 transform:(double)a7 zPosition:(uint64_t)a8 coordinateSystem:(uint64_t)a9 untransformedContentFrame:(_OWORD *)a10 chromeInsets:(uint64_t)a11 contentPixelSize:(double)a12 cropInsets:(double)a13;
- (double)initWithTileIdentifier:(uint64_t)a3 center:(_OWORD *)a4 size:(uint64_t)a5 alpha:(uint64_t)a6 transform:(uint64_t)a7 zPosition:(uint64_t)a8 coordinateSystem:(double)a9 untransformedContentFrame:(double)a10 chromeInsets:(double)a11 contentPixelSize:(double)a12;
- (id)clone;
@end

@implementation PUUserTransformTileLayoutInfo

- (CGSize)contentPixelSize
{
  width = self->_contentPixelSize.width;
  height = self->_contentPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)chromeInsets
{
  top = self->_chromeInsets.top;
  left = self->_chromeInsets.left;
  bottom = self->_chromeInsets.bottom;
  right = self->_chromeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)untransformedContentFrame
{
  x = self->_untransformedContentFrame.origin.x;
  y = self->_untransformedContentFrame.origin.y;
  width = self->_untransformedContentFrame.size.width;
  height = self->_untransformedContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v36 = v6;
  v37 = v5;
  [(PUTileLayoutInfo *)self size];
  v34 = v8;
  v35 = v7;
  [(PUTileLayoutInfo *)self alpha];
  v33 = v9;
  [(PUTileLayoutInfo *)self transform];
  [(PUTileLayoutInfo *)self zPosition];
  v32 = v10;
  v11 = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUUserTransformTileLayoutInfo *)self untransformedContentFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(PUUserTransformTileLayoutInfo *)self chromeInsets];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(PUUserTransformTileLayoutInfo *)self contentPixelSize];
  v30 = [v3 initWithTileIdentifier:v4 center:v38 size:v11 alpha:v37 transform:v36 zPosition:v35 coordinateSystem:v34 untransformedContentFrame:v33 chromeInsets:v32 contentPixelSize:{v13, v15, v17, v19, v21, v23, v25, v27, v28, v29}];

  return v30;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PUUserTransformTileLayoutInfo;
  if (-[PUTileLayoutInfo isGeometryEqualToLayoutInfo:](&v14, sel_isGeometryEqualToLayoutInfo_, v4) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 untransformedContentFrame], v15.origin.x = v5, v15.origin.y = v6, v15.size.width = v7, v15.size.height = v8, CGRectEqualToRect(self->_untransformedContentFrame, v15)) && (objc_msgSend(v4, "chromeInsets"), PXEdgeInsetsEqualToEdgeInsets()))
  {
    p_contentPixelSize = &self->_contentPixelSize;
    [v4 contentPixelSize];
    v12 = p_contentPixelSize->height == v11 && p_contentPixelSize->width == v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 alpha:(double)a6 transform:(double)a7 zPosition:(uint64_t)a8 coordinateSystem:(uint64_t)a9 untransformedContentFrame:(_OWORD *)a10 chromeInsets:(uint64_t)a11 contentPixelSize:(double)a12 cropInsets:(double)a13
{
  v31.receiver = a1;
  v31.super_class = PUUserTransformTileLayoutInfo;
  v27 = a10[1];
  v30[0] = *a10;
  v30[1] = v27;
  v30[2] = a10[2];
  v28 = objc_msgSendSuper2(&v31, sel_initWithTileIdentifier_center_size_alpha_cornerRadius_cornerCurve_cornerMask_borderWidth_borderColor_transform_zPosition_contentsRect_hitTestOutset_coordinateSystem_cropInsets_normalizedLegibilityInsets_, a9, 0, 0, 0, v30, a11, a2, a3, a4, a5, a6, 0.0, 0.0, a7, 0, 0, 0x3FF0000000000000, 0x3FF0000000000000, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), a27, a28, a29, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
  if (v28)
  {
    result = a26;
    *(v28 + 42) = a17;
    *(v28 + 43) = a18;
    *(v28 + 44) = a19;
    *(v28 + 45) = a20;
    *(v28 + 46) = a21;
    *(v28 + 47) = a22;
    *(v28 + 48) = a23;
    *(v28 + 49) = a24;
    *(v28 + 40) = a25;
    v28[41] = a26;
  }

  return result;
}

- (double)initWithTileIdentifier:(uint64_t)a3 center:(_OWORD *)a4 size:(uint64_t)a5 alpha:(uint64_t)a6 transform:(uint64_t)a7 zPosition:(uint64_t)a8 coordinateSystem:(double)a9 untransformedContentFrame:(double)a10 chromeInsets:(double)a11 contentPixelSize:(double)a12
{
  v22.receiver = a1;
  v22.super_class = PUUserTransformTileLayoutInfo;
  v18 = a4[1];
  v21[0] = *a4;
  v21[1] = v18;
  v21[2] = a4[2];
  v19 = objc_msgSendSuper2(&v22, sel_initWithTileIdentifier_center_size_alpha_transform_zPosition_coordinateSystem_, a3, v21);
  if (v19)
  {
    result = a26;
    *(v19 + 42) = a17;
    *(v19 + 43) = a18;
    *(v19 + 44) = a19;
    *(v19 + 45) = a20;
    *(v19 + 46) = a21;
    *(v19 + 47) = a22;
    *(v19 + 48) = a23;
    *(v19 + 49) = a24;
    *(v19 + 40) = a25;
    v19[41] = a26;
  }

  return result;
}

- (PUUserTransformTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9
{
  v9 = *&a7->c;
  v11[0] = *&a7->a;
  v11[1] = v9;
  v11[2] = *&a7->tx;
  return [(PUUserTransformTileLayoutInfo *)self initWithTileIdentifier:a3 center:v11 size:a9 alpha:a4.x transform:a4.y zPosition:a5.width coordinateSystem:a5.height untransformedContentFrame:a6 chromeInsets:a8 contentPixelSize:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E69C48A0], *(MEMORY[0x1E69C48A0] + 8), *(MEMORY[0x1E69C48A0] + 16), *(MEMORY[0x1E69C48A0] + 24), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

@end