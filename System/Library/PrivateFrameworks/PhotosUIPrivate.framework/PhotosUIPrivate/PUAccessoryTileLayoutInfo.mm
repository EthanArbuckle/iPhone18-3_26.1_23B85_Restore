@interface PUAccessoryTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)a3;
- (CGRect)untransformedContentFrame;
- (PUAccessoryTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9;
- (UIEdgeInsets)contentInsets;
- (double)initWithTileIdentifier:(uint64_t)a3 center:(_OWORD *)a4 size:(uint64_t)a5 alpha:(uint64_t)a6 transform:(uint64_t)a7 zPosition:(uint64_t)a8 coordinateSystem:(double)a9 untransformedContentFrame:(double)a10 contentInsets:(double)a11 minimumVisibleHeight:(double)a12;
- (id)clone;
@end

@implementation PUAccessoryTileLayoutInfo

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
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
  v35 = v6;
  v36 = v5;
  [(PUTileLayoutInfo *)self size];
  v33 = v8;
  v34 = v7;
  [(PUTileLayoutInfo *)self alpha];
  v32 = v9;
  [(PUTileLayoutInfo *)self transform];
  [(PUTileLayoutInfo *)self zPosition];
  v31 = v10;
  v11 = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUAccessoryTileLayoutInfo *)self untransformedContentFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(PUAccessoryTileLayoutInfo *)self contentInsets];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(PUAccessoryTileLayoutInfo *)self minimumVisibleHeight];
  v29 = [v3 initWithTileIdentifier:v4 center:v37 size:v11 alpha:v36 transform:v35 zPosition:v34 coordinateSystem:v33 untransformedContentFrame:v32 contentInsets:v31 minimumVisibleHeight:{v13, v15, v17, v19, v21, v23, v25, v27, v28}];

  return v29;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PUAccessoryTileLayoutInfo;
  if (-[PUTileLayoutInfo isGeometryEqualToLayoutInfo:](&v34, sel_isGeometryEqualToLayoutInfo_, v4) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (-[PUAccessoryTileLayoutInfo untransformedContentFrame](self, "untransformedContentFrame"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, [v4 untransformedContentFrame], v36.origin.x = v13, v36.origin.y = v14, v36.size.width = v15, v36.size.height = v16, v35.origin.x = v6, v35.origin.y = v8, v35.size.width = v10, v35.size.height = v12, CGRectEqualToRect(v35, v36)))
  {
    [(PUAccessoryTileLayoutInfo *)self contentInsets];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v4 contentInsets];
    v28 = 0;
    if (v20 == v29 && v18 == v25 && v24 == v27 && v22 == v26)
    {
      [(PUAccessoryTileLayoutInfo *)self minimumVisibleHeight];
      v31 = v30;
      [v4 minimumVisibleHeight];
      v28 = v31 == v32;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (double)initWithTileIdentifier:(uint64_t)a3 center:(_OWORD *)a4 size:(uint64_t)a5 alpha:(uint64_t)a6 transform:(uint64_t)a7 zPosition:(uint64_t)a8 coordinateSystem:(double)a9 untransformedContentFrame:(double)a10 contentInsets:(double)a11 minimumVisibleHeight:(double)a12
{
  v21.receiver = a1;
  v21.super_class = PUAccessoryTileLayoutInfo;
  v17 = a4[1];
  v20[0] = *a4;
  v20[1] = v17;
  v20[2] = a4[2];
  v18 = objc_msgSendSuper2(&v21, sel_initWithTileIdentifier_center_size_alpha_transform_zPosition_coordinateSystem_, a3, v20);
  if (v18)
  {
    result = a24;
    *(v18 + 41) = a17;
    *(v18 + 42) = a18;
    *(v18 + 43) = a19;
    *(v18 + 44) = a20;
    *(v18 + 45) = a21;
    *(v18 + 46) = a22;
    *(v18 + 47) = a23;
    v18[48] = a24;
    *(v18 + 40) = a25;
  }

  return result;
}

- (PUAccessoryTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9
{
  v9 = *&a7->c;
  v11[0] = *&a7->a;
  v11[1] = v9;
  v11[2] = *&a7->tx;
  return [(PUAccessoryTileLayoutInfo *)self initWithTileIdentifier:a3 center:v11 size:a9 alpha:a4.x transform:a4.y zPosition:a5.width coordinateSystem:a5.height untransformedContentFrame:a6 contentInsets:a8 minimumVisibleHeight:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), 0];
}

@end