@interface PUParallaxedTileLayoutInfo
- (BOOL)isGeometryEqualToLayoutInfo:(id)info;
- (CGPoint)parallaxOffset;
- (PUParallaxedTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system;
- (PUParallaxedTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position parallaxOffset:(CGPoint)offset coordinateSystem:(id)self0;
- (double)initWithTileIdentifier:(uint64_t)identifier center:(uint64_t)center size:(uint64_t)size alpha:(uint64_t)alpha cornerRadius:(_OWORD *)radius cornerCurve:(uint64_t)curve cornerMask:(double)mask borderWidth:(double)self0 borderColor:(double)self1 transform:(double)self2 zPosition:(double)self3 parallaxOffset:(double)self4 contentsRect:(double)self5 coordinateSystem:(double)self6 cropInsets:(uint64_t)self7 normalizedLegibilityInsets:(double)self8;
- (id)clone;
- (id)description;
- (uint64_t)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size alpha:(double)alpha transform:(double)transform zPosition:(double)position parallaxOffset:(double)offset contentsRect:(uint64_t)self0 coordinateSystem:(uint64_t)self1;
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
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v25 = NSStringFromCGPoint(v31);
  [(PUTileLayoutInfo *)self size];
  v23 = NSStringFromCGSize(v32);
  [(PUTileLayoutInfo *)self alpha];
  v5 = v4;
  [(PUTileLayoutInfo *)self cornerRadius];
  v7 = v6;
  cornerCurve = [(PUTileLayoutInfo *)self cornerCurve];
  cornerMask = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self borderWidth];
  v9 = v8;
  borderColor = [(PUTileLayoutInfo *)self borderColor];
  [(PUTileLayoutInfo *)self transform];
  v20 = NSStringFromCGAffineTransform(&transform);
  [(PUTileLayoutInfo *)self zPosition];
  v11 = v10;
  [(PUParallaxedTileLayoutInfo *)self parallaxOffset];
  v19 = NSStringFromCGPoint(v33);
  [(PUTileLayoutInfo *)self contentsRect];
  v12 = NSStringFromCGRect(v34);
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUTileLayoutInfo *)self cropInsets];
  v14 = NSStringFromUIEdgeInsets(v35);
  [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
  v15 = NSStringFromUIEdgeInsets(v36);
  [(PUTileLayoutInfo *)self hitTestOutset];
  v16 = NSStringFromUIEdgeInsets(v37);
  v17 = [v28 stringWithFormat:@"<%@: %p tileIdentifier: %@; center: %@; size: %@; alpha: %f; cornerRadius: %f, cornerCurve: %@, cornerMask: %lu, borderWidth:%f, borderColor:%@, transform: %@; zPosition: %f; parallaxOffset: %@; contentsRect: %@; coordinateSystem: %@; cropInsets: %@; normalizedLegibilityInsets: %@; hitExtensionInsets: %@>", v27, self, tileIdentifier, v25, v23, v5, v7, cornerCurve, cornerMask, v9, borderColor, v20, v11, v19, v12, coordinateSystem, v14, v15, v16];;

  return v17;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
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
  cornerCurve = [(PUTileLayoutInfo *)self cornerCurve];
  cornerMask = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self borderWidth];
  v44 = v13;
  borderColor = [(PUTileLayoutInfo *)self borderColor];
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
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUTileLayoutInfo *)self cropInsets];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
  v39 = [v3 initWithTileIdentifier:tileIdentifier center:cornerCurve size:cornerMask alpha:borderColor cornerRadius:v51 cornerCurve:coordinateSystem cornerMask:v50 borderWidth:v49 borderColor:v48 transform:v47 zPosition:v46 parallaxOffset:v45 contentsRect:v44 coordinateSystem:v43 cropInsets:v42 normalizedLegibilityInsets:{v41, v19, v21, v23, v25, v28, v30, v32, v34, v35, v36, v37, v38}];

  return v39;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = PUParallaxedTileLayoutInfo;
  if ([(PUTileLayoutInfo *)&v10 isGeometryEqualToLayoutInfo:infoCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    p_parallaxOffset = &self->_parallaxOffset;
    [infoCopy parallaxOffset];
    v8 = p_parallaxOffset->y == v7 && p_parallaxOffset->x == v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)initWithTileIdentifier:(uint64_t)identifier center:(uint64_t)center size:(uint64_t)size alpha:(uint64_t)alpha cornerRadius:(_OWORD *)radius cornerCurve:(uint64_t)curve cornerMask:(double)mask borderWidth:(double)self0 borderColor:(double)self1 transform:(double)self2 zPosition:(double)self3 parallaxOffset:(double)self4 contentsRect:(double)self5 coordinateSystem:(double)self6 cropInsets:(uint64_t)self7 normalizedLegibilityInsets:(double)self8
{
  v23.receiver = self;
  v23.super_class = PUParallaxedTileLayoutInfo;
  v19 = radius[1];
  v22[0] = *radius;
  v22[1] = v19;
  v22[2] = radius[2];
  v20 = objc_msgSendSuper2(&v23, sel_initWithTileIdentifier_center_size_alpha_cornerRadius_cornerCurve_cornerMask_borderWidth_borderColor_transform_zPosition_contentsRect_hitTestOutset_coordinateSystem_cropInsets_normalizedLegibilityInsets_, identifier, center, size, alpha, v22, a19, a20, a21, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), a22, a23, a24, a25, a26, a27);
  if (v20)
  {
    result = legibilityInsets;
    *(v20 + 40) = insets;
    v20[41] = legibilityInsets;
  }

  return result;
}

- (uint64_t)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size alpha:(double)alpha transform:(double)transform zPosition:(double)position parallaxOffset:(double)offset contentsRect:(uint64_t)self0 coordinateSystem:(uint64_t)self1
{
  v20 = a12[1];
  v22[0] = *a12;
  v22[1] = v20;
  v22[2] = a12[2];
  return [self initWithTileIdentifier:system center:0 size:0 alpha:0 cornerRadius:v22 cornerCurve:a13 cornerMask:a2 borderWidth:identifier borderColor:center transform:size zPosition:alpha parallaxOffset:0.0 contentsRect:0.0 coordinateSystem:transform cropInsets:*&position normalizedLegibilityInsets:{*&offset, a17, a18, a19, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

- (PUParallaxedTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position parallaxOffset:(CGPoint)offset coordinateSystem:(id)self0
{
  v10 = *&transform->c;
  v12[0] = *&transform->a;
  v12[1] = v10;
  v12[2] = *&transform->tx;
  return [(PUParallaxedTileLayoutInfo *)self initWithTileIdentifier:identifier center:v12 size:system alpha:center.x transform:center.y zPosition:size.width parallaxOffset:size.height contentsRect:alpha coordinateSystem:position, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 0, 0, 0x3FF0000000000000, 0x3FF0000000000000];
}

- (PUParallaxedTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system
{
  v9 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v9;
  v11[2] = *&transform->tx;
  return [(PUParallaxedTileLayoutInfo *)self initWithTileIdentifier:identifier center:v11 size:system alpha:center.x transform:center.y zPosition:size.width parallaxOffset:size.height coordinateSystem:alpha, position, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
}

@end