@interface PUParallaxedTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)a3;
- (CGPoint)parallaxOffset;
- (PUParallaxedTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9;
- (PUParallaxedTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 parallaxOffset:(CGPoint)a9 coordinateSystem:(id)a10;
- (double)initWithTileIdentifier:(uint64_t)a3 center:(uint64_t)a4 size:(uint64_t)a5 alpha:(uint64_t)a6 cornerRadius:(_OWORD *)a7 cornerCurve:(uint64_t)a8 cornerMask:(double)a9 borderWidth:(double)a10 borderColor:(double)a11 transform:(double)a12 zPosition:(double)a13 parallaxOffset:(double)a14 contentsRect:(double)a15 coordinateSystem:(double)a16 cropInsets:(uint64_t)a17 normalizedLegibilityInsets:(double)a18;
- (id)clone;
- (id)description;
- (uint64_t)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 alpha:(double)a6 transform:(double)a7 zPosition:(double)a8 parallaxOffset:(double)a9 contentsRect:(uint64_t)a10 coordinateSystem:(uint64_t)a11;
@end

@implementation PUParallaxedTileLayoutInfo

- (CGPoint)parallaxOffset
{
  x = self->_parallaxOffset.x;
  y = self->_parallaxOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v28 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v27 = NSStringFromClass(v3);
  v26 = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v25 = NSStringFromCGPoint(v31);
  [(PUTileLayoutInfo *)self size];
  v23 = NSStringFromCGSize(v32);
  [(PUTileLayoutInfo *)self alpha];
  v5 = v4;
  [(PUTileLayoutInfo *)self cornerRadius];
  v7 = v6;
  v22 = [(PUTileLayoutInfo *)self cornerCurve];
  v24 = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self borderWidth];
  v9 = v8;
  v21 = [(PUTileLayoutInfo *)self borderColor];
  [(PUTileLayoutInfo *)self transform];
  v20 = NSStringFromCGAffineTransform(&transform);
  [(PUTileLayoutInfo *)self zPosition];
  v11 = v10;
  [(PUParallaxedTileLayoutInfo *)self parallaxOffset];
  v19 = NSStringFromCGPoint(v33);
  [(PUTileLayoutInfo *)self contentsRect];
  v12 = NSStringFromCGRect(v34);
  v13 = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUTileLayoutInfo *)self cropInsets];
  v14 = NSStringFromUIEdgeInsets(v35);
  [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
  v15 = NSStringFromUIEdgeInsets(v36);
  [(PUTileLayoutInfo *)self hitTestOutset];
  v16 = NSStringFromUIEdgeInsets(v37);
  v17 = [v28 stringWithFormat:@"<%@: %p tileIdentifier: %@; center: %@; size: %@; alpha: %f; cornerRadius: %f, cornerCurve: %@, cornerMask: %lu, borderWidth:%f, borderColor:%@, transform: %@; zPosition: %f; parallaxOffset: %@; contentsRect: %@; coordinateSystem: %@; cropInsets: %@; normalizedLegibilityInsets: %@; hitExtensionInsets: %@>", v27, self, v26, v25, v23, v5, v7, v22, v24, v9, v21, v20, v11, v19, v12, v13, v14, v15, v16];;

  return v17;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v49 = v6;
  v50 = v5;
  [(PUTileLayoutInfo *)self size];
  v47 = v8;
  v48 = v7;
  [(PUTileLayoutInfo *)self alpha];
  v46 = v9;
  [(PUTileLayoutInfo *)self cornerRadius];
  v45 = v10;
  v11 = [(PUTileLayoutInfo *)self cornerCurve];
  v12 = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self borderWidth];
  v44 = v13;
  v14 = [(PUTileLayoutInfo *)self borderColor];
  [(PUTileLayoutInfo *)self transform];
  [(PUTileLayoutInfo *)self zPosition];
  v43 = v15;
  [(PUParallaxedTileLayoutInfo *)self parallaxOffset];
  v41 = v17;
  v42 = v16;
  [(PUTileLayoutInfo *)self contentsRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUTileLayoutInfo *)self cropInsets];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
  v39 = [v3 initWithTileIdentifier:v4 center:v11 size:v12 alpha:v14 cornerRadius:v51 cornerCurve:v26 cornerMask:v50 borderWidth:v49 borderColor:v48 transform:v47 zPosition:v46 parallaxOffset:v45 contentsRect:v44 coordinateSystem:v43 cropInsets:v42 normalizedLegibilityInsets:{v41, v19, v21, v23, v25, v28, v30, v32, v34, v35, v36, v37, v38}];

  return v39;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUParallaxedTileLayoutInfo;
  if ([(PUTileLayoutInfo *)&v10 isGeometryEqualToLayoutInfo:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    p_parallaxOffset = &self->_parallaxOffset;
    [v4 parallaxOffset];
    v8 = p_parallaxOffset->y == v7 && p_parallaxOffset->x == v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)initWithTileIdentifier:(uint64_t)a3 center:(uint64_t)a4 size:(uint64_t)a5 alpha:(uint64_t)a6 cornerRadius:(_OWORD *)a7 cornerCurve:(uint64_t)a8 cornerMask:(double)a9 borderWidth:(double)a10 borderColor:(double)a11 transform:(double)a12 zPosition:(double)a13 parallaxOffset:(double)a14 contentsRect:(double)a15 coordinateSystem:(double)a16 cropInsets:(uint64_t)a17 normalizedLegibilityInsets:(double)a18
{
  v23.receiver = a1;
  v23.super_class = PUParallaxedTileLayoutInfo;
  v19 = a7[1];
  v22[0] = *a7;
  v22[1] = v19;
  v22[2] = a7[2];
  v20 = objc_msgSendSuper2(&v23, sel_initWithTileIdentifier_center_size_alpha_cornerRadius_cornerCurve_cornerMask_borderWidth_borderColor_transform_zPosition_contentsRect_hitTestOutset_coordinateSystem_cropInsets_normalizedLegibilityInsets_, a3, a4, a5, a6, v22, a19, a20, a21, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), a22, a23, a24, a25, a26, a27);
  if (v20)
  {
    result = a18;
    *(v20 + 40) = a17;
    v20[41] = a18;
  }

  return result;
}

- (uint64_t)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 alpha:(double)a6 transform:(double)a7 zPosition:(double)a8 parallaxOffset:(double)a9 contentsRect:(uint64_t)a10 coordinateSystem:(uint64_t)a11
{
  v20 = a12[1];
  v22[0] = *a12;
  v22[1] = v20;
  v22[2] = a12[2];
  return [a1 initWithTileIdentifier:a11 center:0 size:0 alpha:0 cornerRadius:v22 cornerCurve:a13 cornerMask:a2 borderWidth:a3 borderColor:a4 transform:a5 zPosition:a6 parallaxOffset:0.0 contentsRect:0.0 coordinateSystem:a7 cropInsets:*&a8 normalizedLegibilityInsets:{*&a9, a17, a18, a19, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

- (PUParallaxedTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 parallaxOffset:(CGPoint)a9 coordinateSystem:(id)a10
{
  v10 = *&a7->c;
  v12[0] = *&a7->a;
  v12[1] = v10;
  v12[2] = *&a7->tx;
  return [(PUParallaxedTileLayoutInfo *)self initWithTileIdentifier:a3 center:v12 size:a10 alpha:a4.x transform:a4.y zPosition:a5.width parallaxOffset:a5.height contentsRect:a6 coordinateSystem:a8, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 0, 0, 0x3FF0000000000000, 0x3FF0000000000000];
}

- (PUParallaxedTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9
{
  v9 = *&a7->c;
  v11[0] = *&a7->a;
  v11[1] = v9;
  v11[2] = *&a7->tx;
  return [(PUParallaxedTileLayoutInfo *)self initWithTileIdentifier:a3 center:v11 size:a9 alpha:a4.x transform:a4.y zPosition:a5.width parallaxOffset:a5.height coordinateSystem:a6, a8, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
}

@end