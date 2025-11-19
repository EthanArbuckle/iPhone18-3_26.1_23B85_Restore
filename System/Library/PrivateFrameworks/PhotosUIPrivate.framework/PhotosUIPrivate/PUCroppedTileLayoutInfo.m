@interface PUCroppedTileLayoutInfo
- (PUCroppedTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 contentsRect:(CGRect)a9 coordinateSystem:(id)a10;
- (id)clone;
- (id)description;
- (id)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 cropInsets:(double)a6 normalizedLegibilityInsets:(double)a7 alpha:(double)a8 cornerRadius:(double)a9 cornerCurve:(uint64_t)a10 cornerMask:(uint64_t)a11 transform:(uint64_t)a12 zPosition:(uint64_t)a13 contentsRect:(_OWORD *)a14 coordinateSystem:(uint64_t)a15;
@end

@implementation PUCroppedTileLayoutInfo

- (id)description
{
  v22 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v21 = NSStringFromClass(v3);
  v24 = [(PUTileLayoutInfo *)self indexPath];
  v20 = [v24 pu_shortDescription];
  v4 = [(PUTileLayoutInfo *)self tileKind];
  v5 = [(PUTileLayoutInfo *)self dataSourceIdentifier];
  [(PUTileLayoutInfo *)self center];
  v6 = NSStringFromCGPoint(v27);
  [(PUTileLayoutInfo *)self size];
  v7 = NSStringFromCGSize(v28);
  [(PUTileLayoutInfo *)self cropInsets];
  v8 = NSStringFromUIEdgeInsets(v29);
  [(PUTileLayoutInfo *)self alpha];
  v10 = v9;
  [(PUTileLayoutInfo *)self cornerRadius];
  v12 = v11;
  v13 = [(PUTileLayoutInfo *)self cornerCurve];
  v14 = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self transform];
  v15 = NSStringFromCGAffineTransform(&transform);
  [(PUTileLayoutInfo *)self zPosition];
  v17 = v16;
  [(PUTileLayoutInfo *)self contentsRect];
  v18 = NSStringFromCGRect(v30);
  v23 = [v22 stringWithFormat:@"<%@: %p indexPath: %@; tileKind: %@; dataSourceIdentifier: %@; center: %@; size: %@; cropInsets: %@; alpha: %f; cornerRadius: %f; cornerCurve: %@; cornerMask: %lu; transform: %@; zPosition: %f; contentsRect: %@>", v21, self, v20, v4, v5, v6, v7, v8, v10, v12, v13, v14, v15, v17, v18];;

  return v23;
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = PUCroppedTileLayoutInfo;
  v2 = [(PUTileLayoutInfo *)&v4 clone];

  return v2;
}

- (id)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 cropInsets:(double)a6 normalizedLegibilityInsets:(double)a7 alpha:(double)a8 cornerRadius:(double)a9 cornerCurve:(uint64_t)a10 cornerMask:(uint64_t)a11 transform:(uint64_t)a12 zPosition:(uint64_t)a13 contentsRect:(_OWORD *)a14 coordinateSystem:(uint64_t)a15
{
  v28.receiver = a1;
  v28.super_class = PUCroppedTileLayoutInfo;
  v25 = a14[1];
  v27[0] = *a14;
  v27[1] = v25;
  v27[2] = a14[2];
  return objc_msgSendSuper2(&v28, sel_initWithTileIdentifier_center_size_alpha_cornerRadius_cornerCurve_cornerMask_borderWidth_borderColor_transform_zPosition_contentsRect_hitTestOutset_coordinateSystem_cropInsets_normalizedLegibilityInsets_, a11, a12, a13, 0, v27, a15, a2, a3, a4, a5, a20, a21, 0.0, a22, a23, a24, a25, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *&a6, *&a7, *&a8, *&a9, a17, a18, a19);
}

- (PUCroppedTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 contentsRect:(CGRect)a9 coordinateSystem:(id)a10
{
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = *(MEMORY[0x1E69DDCE0] + 8);
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  v13 = *(MEMORY[0x1E69DDCE0] + 24);
  v14 = *&a7->c;
  v16[0] = *&a7->a;
  v16[1] = v14;
  v16[2] = *&a7->tx;
  return [(PUCroppedTileLayoutInfo *)self initWithTileIdentifier:a3 center:0 size:0 cropInsets:v16 normalizedLegibilityInsets:a10 alpha:a4.x cornerRadius:a4.y cornerCurve:a5.width cornerMask:a5.height transform:v10 zPosition:v11 contentsRect:*&v10 coordinateSystem:*&v11, v12, v13, *&a6, 0, *&a8, *&a9.origin.x, *&a9.origin.y, *&a9.size.width, *&a9.size.height];
}

@end