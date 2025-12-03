@interface PUCroppedTileLayoutInfo
- (PUCroppedTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position contentsRect:(CGRect)rect coordinateSystem:(id)self0;
- (id)clone;
- (id)description;
- (id)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size cropInsets:(double)insets normalizedLegibilityInsets:(double)legibilityInsets alpha:(double)alpha cornerRadius:(double)radius cornerCurve:(uint64_t)self0 cornerMask:(uint64_t)self1 transform:(uint64_t)self2 zPosition:(uint64_t)self3 contentsRect:(_OWORD *)self4 coordinateSystem:(uint64_t)self5;
@end

@implementation PUCroppedTileLayoutInfo

- (id)description
{
  v22 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v21 = NSStringFromClass(v3);
  indexPath = [(PUTileLayoutInfo *)self indexPath];
  pu_shortDescription = [indexPath pu_shortDescription];
  tileKind = [(PUTileLayoutInfo *)self tileKind];
  dataSourceIdentifier = [(PUTileLayoutInfo *)self dataSourceIdentifier];
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
  cornerCurve = [(PUTileLayoutInfo *)self cornerCurve];
  cornerMask = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self transform];
  v15 = NSStringFromCGAffineTransform(&transform);
  [(PUTileLayoutInfo *)self zPosition];
  v17 = v16;
  [(PUTileLayoutInfo *)self contentsRect];
  v18 = NSStringFromCGRect(v30);
  v23 = [v22 stringWithFormat:@"<%@: %p indexPath: %@; tileKind: %@; dataSourceIdentifier: %@; center: %@; size: %@; cropInsets: %@; alpha: %f; cornerRadius: %f; cornerCurve: %@; cornerMask: %lu; transform: %@; zPosition: %f; contentsRect: %@>", v21, self, pu_shortDescription, tileKind, dataSourceIdentifier, v6, v7, v8, v10, v12, cornerCurve, cornerMask, v15, v17, v18];;

  return v23;
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = PUCroppedTileLayoutInfo;
  clone = [(PUTileLayoutInfo *)&v4 clone];

  return clone;
}

- (id)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size cropInsets:(double)insets normalizedLegibilityInsets:(double)legibilityInsets alpha:(double)alpha cornerRadius:(double)radius cornerCurve:(uint64_t)self0 cornerMask:(uint64_t)self1 transform:(uint64_t)self2 zPosition:(uint64_t)self3 contentsRect:(_OWORD *)self4 coordinateSystem:(uint64_t)self5
{
  v28.receiver = self;
  v28.super_class = PUCroppedTileLayoutInfo;
  v25 = rect[1];
  v27[0] = *rect;
  v27[1] = v25;
  v27[2] = rect[2];
  return objc_msgSendSuper2(&v28, sel_initWithTileIdentifier_center_size_alpha_cornerRadius_cornerCurve_cornerMask_borderWidth_borderColor_transform_zPosition_contentsRect_hitTestOutset_coordinateSystem_cropInsets_normalizedLegibilityInsets_, mask, transform, position, 0, v27, system, a2, identifier, center, size, a20, a21, 0.0, a22, a23, a24, a25, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *&insets, *&legibilityInsets, *&alpha, *&radius, a17, a18, a19);
}

- (PUCroppedTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position contentsRect:(CGRect)rect coordinateSystem:(id)self0
{
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = *(MEMORY[0x1E69DDCE0] + 8);
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  v13 = *(MEMORY[0x1E69DDCE0] + 24);
  v14 = *&transform->c;
  v16[0] = *&transform->a;
  v16[1] = v14;
  v16[2] = *&transform->tx;
  return [(PUCroppedTileLayoutInfo *)self initWithTileIdentifier:identifier center:0 size:0 cropInsets:v16 normalizedLegibilityInsets:system alpha:center.x cornerRadius:center.y cornerCurve:size.width cornerMask:size.height transform:v10 zPosition:v11 contentsRect:*&v10 coordinateSystem:*&v11, v12, v13, *&alpha, 0, *&position, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height];
}

@end