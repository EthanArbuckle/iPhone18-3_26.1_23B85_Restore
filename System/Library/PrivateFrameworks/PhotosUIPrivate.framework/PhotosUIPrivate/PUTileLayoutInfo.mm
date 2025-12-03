@interface PUTileLayoutInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isGeometryEqualToLayoutInfo:(id)info;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGPoint)parallaxOffset;
- (CGRect)contentsRect;
- (CGRect)frame;
- (CGSize)size;
- (NSIndexPath)indexPath;
- (NSString)dataSourceIdentifier;
- (NSString)tileKind;
- (PUTileLayoutInfo)init;
- (PUTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha cornerRadius:(double)radius cornerCurve:(id)curve cornerMask:(unint64_t)mask transform:(CGAffineTransform *)self0 zPosition:(double)self1 contentsRect:(CGRect)self2 coordinateSystem:(id)self3;
- (PUTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position contentsRect:(CGRect)rect coordinateSystem:(id)self0;
- (PUTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system;
- (PUTileLayoutInfo)layoutInfoWithAlpha:(double)alpha;
- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform;
- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system;
- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)center size:(CGSize)size transform:(CGAffineTransform *)transform;
- (PUTileLayoutInfo)layoutInfoWithCoordinateSystem:(id)system;
- (PUTileLayoutInfo)layoutInfoWithIndexPath:(id)path tileKind:(id)kind dataSourceIdentifier:(id)identifier;
- (PUTileLayoutInfo)layoutInfoWithZPosition:(double)position;
- (UIEdgeInsets)cropInsets;
- (UIEdgeInsets)expandedRectInsets;
- (UIEdgeInsets)hitTestOutset;
- (UIEdgeInsets)normalizedLegibilityInsets;
- (id)clone;
- (id)description;
- (id)initWithTileIdentifier:(void *)identifier center:(void *)center size:(void *)size alpha:(void *)alpha cornerRadius:(__int128 *)radius cornerCurve:(void *)curve cornerMask:(double)mask borderWidth:(double)self0 borderColor:(double)self1 transform:(double)self2 zPosition:(double)self3 contentsRect:(double)self4 hitTestOutset:(double)self5 coordinateSystem:(double)self6 cropInsets:(void *)self7 normalizedLegibilityInsets:(void *)self8;
- (id)layoutInfoByInterpolatingWithLayoutInfo:(id)info mixFactor:(double)factor coordinateSystem:(id)system;
- (uint64_t)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size alpha:(double)alpha cornerRadius:(double)radius cornerCurve:(double)curve cornerMask:(uint64_t)mask transform:(uint64_t)self0 zPosition:(uint64_t)self1 contentsRect:(uint64_t)self2 coordinateSystem:(_OWORD *)self3 cropInsets:(uint64_t)self4;
- (uint64_t)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size alpha:(double)alpha transform:(double)transform zPosition:(uint64_t)position contentsRect:(uint64_t)rect hitTestOutset:(_OWORD *)self0 coordinateSystem:(uint64_t)self1;
- (unint64_t)hash;
- (void)_setTransform:(CGAffineTransform *)transform;
@end

@implementation PUTileLayoutInfo

- (CGPoint)parallaxOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIEdgeInsets)expandedRectInsets
{
  top = self->_expandedRectInsets.top;
  left = self->_expandedRectInsets.left;
  bottom = self->_expandedRectInsets.bottom;
  right = self->_expandedRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)normalizedLegibilityInsets
{
  top = self->_normalizedLegibilityInsets.top;
  left = self->_normalizedLegibilityInsets.left;
  bottom = self->_normalizedLegibilityInsets.bottom;
  right = self->_normalizedLegibilityInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)cropInsets
{
  top = self->_cropInsets.top;
  left = self->_cropInsets.left;
  bottom = self->_cropInsets.bottom;
  right = self->_cropInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)hitTestOutset
{
  top = self->_hitTestOutset.top;
  left = self->_hitTestOutset.left;
  bottom = self->_hitTestOutset.bottom;
  right = self->_hitTestOutset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_transform.c = *&transform->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

- (CGAffineTransform)transform
{
  v3 = *&self[6].a;
  *&retstr->a = *&self[5].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].c;
  return self;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v23 = NSStringFromClass(v3);
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v5 = NSStringFromCGPoint(v27);
  [(PUTileLayoutInfo *)self size];
  v6 = NSStringFromCGSize(v28);
  [(PUTileLayoutInfo *)self alpha];
  v8 = v7;
  [(PUTileLayoutInfo *)self cornerRadius];
  v10 = v9;
  cornerCurve = [(PUTileLayoutInfo *)self cornerCurve];
  cornerMask = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self borderWidth];
  v14 = v13;
  borderColor = [(PUTileLayoutInfo *)self borderColor];
  [(PUTileLayoutInfo *)self transform];
  v16 = NSStringFromCGAffineTransform(&transform);
  [(PUTileLayoutInfo *)self zPosition];
  v18 = v17;
  [(PUTileLayoutInfo *)self contentsRect];
  v19 = NSStringFromCGRect(v29);
  [(PUTileLayoutInfo *)self hitTestOutset];
  v20 = NSStringFromUIEdgeInsets(v30);
  v21 = [v24 stringWithFormat:@"<%@: %p tileIdentifier: %@; center: %@; size: %@; alpha: %f; cornerRadius: %f, cornerCurve: %@, cornerMask: %lu, borderWidth:%f, borderColor:%@, transform: %@; zPosition: %f; contentsRect: %@ hitExtensionInsets: %@>", v23, self, tileIdentifier, v5, v6, v8, v10, cornerCurve, cornerMask, v14, borderColor, v16, v18, v19, v20];;

  return v21;
}

- (CGRect)frame
{
  [(PUTileLayoutInfo *)self size];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x1E695EFF8] - v3 * 0.5;
  v8 = *(MEMORY[0x1E695EFF8] + 8) - v5 * 0.5;
  [(PUTileLayoutInfo *)self transform];
  v20.origin.x = v7;
  v20.origin.y = v8;
  v20.size.width = v4;
  v20.size.height = v6;
  v21 = CGRectApplyAffineTransform(v20, &v19);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  [(PUTileLayoutInfo *)self center];
  v14 = x + v13;
  v16 = y + v15;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (id)layoutInfoByInterpolatingWithLayoutInfo:(id)info mixFactor:(double)factor coordinateSystem:(id)system
{
  infoCopy = info;
  systemCopy = system;
  [(PUTileLayoutInfo *)self center];
  v10 = v9;
  v12 = v11;
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  v89 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, systemCopy, v10, v12);
  v91 = v14;

  [infoCopy center];
  v16 = v15;
  v18 = v17;
  coordinateSystem2 = [infoCopy coordinateSystem];
  v83 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem2, systemCopy, v16, v18);
  v85 = v20;

  [(PUTileLayoutInfo *)self size];
  v22 = v21;
  v24 = v23;
  [infoCopy size];
  v26 = v25;
  v28 = v27;
  [(PUTileLayoutInfo *)self alpha];
  v30 = v29;
  [infoCopy alpha];
  v32 = v31;
  [(PUTileLayoutInfo *)self cornerRadius];
  v34 = v33;
  [infoCopy cornerRadius];
  v36 = v35;
  cornerCurve = [infoCopy cornerCurve];
  cornerMask = [infoCopy cornerMask];
  [(PUTileLayoutInfo *)self transform];
  if (infoCopy)
  {
    [infoCopy transform];
    v40 = v94;
    v39 = v95;
    v41 = v96;
  }

  else
  {
    v41 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
  }

  v87 = v32 * factor + (1.0 - factor) * v30;
  v88 = v36 * factor + (1.0 - factor) * v34;
  v81 = v28 * factor + (1.0 - factor) * v24;
  v82 = v26 * factor + (1.0 - factor) * v22;
  v42 = v83 * factor + (1.0 - factor) * v89;
  v43 = v85 * factor + (1.0 - factor) * v91;
  v92 = vmlaq_n_f64(vmulq_n_f64(v40, factor), v97, 1.0 - factor);
  v90 = vmlaq_n_f64(vmulq_n_f64(v39, factor), v98, 1.0 - factor);
  v86 = vmlaq_n_f64(vmulq_n_f64(v41, factor), v99, 1.0 - factor);
  [(PUTileLayoutInfo *)self zPosition];
  v45 = v44;
  [infoCopy zPosition];
  v84 = v46 * factor + (1.0 - factor) * v45;
  [(PUTileLayoutInfo *)self cropInsets];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [infoCopy cropInsets];
  v79 = v56 * factor + (1.0 - factor) * v50;
  v80 = v55 * factor + (1.0 - factor) * v48;
  v78 = v57 * factor + (1.0 - factor) * v52;
  v59 = v58 * factor + (1.0 - factor) * v54;
  [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  [infoCopy normalizedLegibilityInsets];
  v69 = v68 * factor + (1.0 - factor) * v61;
  v71 = v70 * factor + (1.0 - factor) * v63;
  v73 = v72 * factor + (1.0 - factor) * v65;
  v75 = v74 * factor + (1.0 - factor) * v67;
  clone = [(PUTileLayoutInfo *)self clone];
  [clone _setCenter:{v42, v43}];
  [clone _setSize:{v82, v81}];
  [clone _setAlpha:v87];
  [clone _setCornerRadius:v88];
  [clone _setCornerCurve:cornerCurve];
  [clone _setCornerMask:cornerMask];
  v97 = v92;
  v98 = v90;
  v99 = v86;
  [clone _setTransform:&v97];
  [clone _setZPosition:v84];
  [clone _setCoordinateSystem:systemCopy];
  [clone setCropInsets:{v80, v79, v78, v59}];
  [clone setNormalizedLegibilityInsets:{v69, v71, v73, v75}];

  return clone;
}

- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  systemCopy = system;
  clone = [(PUTileLayoutInfo *)self clone];
  [clone _setCenter:{x, y}];
  [clone _setSize:{width, height}];
  [clone _setAlpha:alpha];
  v18 = *&transform->c;
  v20[0] = *&transform->a;
  v20[1] = v18;
  v20[2] = *&transform->tx;
  [clone _setTransform:v20];
  [clone _setZPosition:position];
  [clone _setCoordinateSystem:systemCopy];

  return clone;
}

- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  clone = [(PUTileLayoutInfo *)self clone];
  [clone _setCenter:{x, y}];
  [clone _setSize:{width, height}];
  [clone _setAlpha:alpha];
  v13 = *&transform->c;
  v15[0] = *&transform->a;
  v15[1] = v13;
  v15[2] = *&transform->tx;
  [clone _setTransform:v15];

  return clone;
}

- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)center size:(CGSize)size transform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  clone = [(PUTileLayoutInfo *)self clone];
  [clone _setCenter:{x, y}];
  [clone _setSize:{width, height}];
  v11 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v11;
  v13[2] = *&transform->tx;
  [clone _setTransform:v13];

  return clone;
}

- (PUTileLayoutInfo)layoutInfoWithZPosition:(double)position
{
  clone = [(PUTileLayoutInfo *)self clone];
  [clone _setZPosition:position];

  return clone;
}

- (PUTileLayoutInfo)layoutInfoWithAlpha:(double)alpha
{
  clone = [(PUTileLayoutInfo *)self clone];
  [clone _setAlpha:alpha];

  return clone;
}

- (PUTileLayoutInfo)layoutInfoWithIndexPath:(id)path tileKind:(id)kind dataSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  kindCopy = kind;
  pathCopy = path;
  clone = [(PUTileLayoutInfo *)self clone];
  v12 = [[PUTileIdentifier alloc] initWithIndexPath:pathCopy tileKind:kindCopy dataSourceIdentifier:identifierCopy];

  [clone _setTileIdentifier:v12];

  return clone;
}

- (PUTileLayoutInfo)layoutInfoWithCoordinateSystem:(id)system
{
  systemCopy = system;
  clone = [(PUTileLayoutInfo *)self clone];
  [(PUTileLayoutInfo *)self center];
  v7 = v6;
  v9 = v8;
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  v11 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, systemCopy, v7, v9);
  v13 = v12;

  [clone _setCenter:{v11, v13}];
  [clone _setCoordinateSystem:systemCopy];

  return clone;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self size];
  v6 = v5;
  v8 = v7;
  [infoCopy size];
  if (v6 != v10 || v8 != v9)
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self alpha];
  v13 = v12;
  [infoCopy alpha];
  if (v13 != v14)
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self cornerRadius];
  v16 = v15;
  [infoCopy cornerRadius];
  if (v16 != v17)
  {
    goto LABEL_33;
  }

  cornerCurve = [(PUTileLayoutInfo *)self cornerCurve];
  cornerCurve2 = [infoCopy cornerCurve];
  v20 = cornerCurve2;
  if (cornerCurve == cornerCurve2)
  {
  }

  else
  {
    v21 = [cornerCurve isEqualToString:cornerCurve2];

    if ((v21 & 1) == 0)
    {
LABEL_33:
      v59 = 0;
      goto LABEL_34;
    }
  }

  cornerMask = [(PUTileLayoutInfo *)self cornerMask];
  if (cornerMask != [infoCopy cornerMask])
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self borderWidth];
  v24 = v23;
  [infoCopy borderWidth];
  if (v24 != v25)
  {
    goto LABEL_33;
  }

  borderColor = [(PUTileLayoutInfo *)self borderColor];
  borderColor2 = [infoCopy borderColor];
  v28 = borderColor2;
  if (borderColor == borderColor2)
  {
  }

  else
  {
    v29 = [borderColor isEqual:borderColor2];

    if ((v29 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  [(PUTileLayoutInfo *)self transform];
  [infoCopy transform];
  if (!CGAffineTransformEqualToTransform(&t1, &v73))
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self zPosition];
  v31 = v30;
  [infoCopy zPosition];
  if (v31 != v32)
  {
    goto LABEL_33;
  }

  coordinateSystem = [infoCopy coordinateSystem];
  coordinateSystem2 = [(PUTileLayoutInfo *)self coordinateSystem];
  v35 = PUCanConvertFromCoordinateSystemToCoordinateSystem(coordinateSystem, coordinateSystem2);

  if (!v35)
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self contentsRect];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [infoCopy contentsRect];
  v76.origin.x = v44;
  v76.origin.y = v45;
  v76.size.width = v46;
  v76.size.height = v47;
  v75.origin.x = v37;
  v75.origin.y = v39;
  v75.size.width = v41;
  v75.size.height = v43;
  if (!CGRectEqualToRect(v75, v76))
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self hitTestOutset];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  [infoCopy hitTestOutset];
  v59 = 0;
  if (v51 == v60 && v49 == v56 && v55 == v58 && v53 == v57)
  {
    [(PUTileLayoutInfo *)self expandedRectInsets];
    [infoCopy expandedRectInsets];
    if (!PXEdgeInsetsEqualToEdgeInsets())
    {
      goto LABEL_33;
    }

    [(PUTileLayoutInfo *)self cropInsets];
    [infoCopy cropInsets];
    if (!PXEdgeInsetsEqualToEdgeInsets())
    {
      goto LABEL_33;
    }

    [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
    [infoCopy normalizedLegibilityInsets];
    if (!PXEdgeInsetsEqualToEdgeInsets())
    {
      goto LABEL_33;
    }

    [infoCopy center];
    v62 = v61;
    v64 = v63;
    coordinateSystem3 = [infoCopy coordinateSystem];
    coordinateSystem4 = [(PUTileLayoutInfo *)self coordinateSystem];
    v67 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem3, coordinateSystem4, v62, v64);
    v69 = v68;

    [(PUTileLayoutInfo *)self center];
    v59 = v71 == v69 && v70 == v67;
  }

LABEL_34:

  return v59;
}

- (id)clone
{
  v3 = objc_alloc(objc_opt_class());
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v53 = v6;
  v54 = v5;
  [(PUTileLayoutInfo *)self size];
  v51 = v8;
  v52 = v7;
  [(PUTileLayoutInfo *)self alpha];
  v50 = v9;
  [(PUTileLayoutInfo *)self cornerRadius];
  v49 = v10;
  cornerCurve = [(PUTileLayoutInfo *)self cornerCurve];
  cornerMask = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self borderWidth];
  v48 = v13;
  borderColor = [(PUTileLayoutInfo *)self borderColor];
  [(PUTileLayoutInfo *)self transform];
  [(PUTileLayoutInfo *)self zPosition];
  v47 = v15;
  [(PUTileLayoutInfo *)self contentsRect];
  v45 = v17;
  v46 = v16;
  v43 = v19;
  v44 = v18;
  [(PUTileLayoutInfo *)self hitTestOutset];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUTileLayoutInfo *)self cropInsets];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
  v41 = [v3 initWithTileIdentifier:tileIdentifier center:cornerCurve size:cornerMask alpha:borderColor cornerRadius:v55 cornerCurve:coordinateSystem cornerMask:v54 borderWidth:v53 borderColor:v52 transform:v51 zPosition:v50 contentsRect:v49 hitTestOutset:v48 coordinateSystem:v47 cropInsets:v46 normalizedLegibilityInsets:{v45, v44, v43, v21, v23, v25, v27, v30, v32, v34, v36, v37, v38, v39, v40}];

  [(PUTileLayoutInfo *)self expandedRectInsets];
  [v41 setExpandedRectInsets:?];

  return v41;
}

- (NSIndexPath)indexPath
{
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  indexPath = [tileIdentifier indexPath];

  return indexPath;
}

- (NSString)tileKind
{
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  tileKind = [tileIdentifier tileKind];

  return tileKind;
}

- (NSString)dataSourceIdentifier
{
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  dataSourceIdentifier = [tileIdentifier dataSourceIdentifier];

  return dataSourceIdentifier;
}

- (unint64_t)hash
{
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  v3 = [tileIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUTileIdentifier *)self->_tileIdentifier isEqual:equalCopy[1]];

  return v5;
}

- (id)initWithTileIdentifier:(void *)identifier center:(void *)center size:(void *)size alpha:(void *)alpha cornerRadius:(__int128 *)radius cornerCurve:(void *)curve cornerMask:(double)mask borderWidth:(double)self0 borderColor:(double)self1 transform:(double)self2 zPosition:(double)self3 contentsRect:(double)self4 hitTestOutset:(double)self5 coordinateSystem:(double)self6 cropInsets:(void *)self7 normalizedLegibilityInsets:(void *)self8
{
  identifierCopy = identifier;
  centerCopy = center;
  alphaCopy = alpha;
  curveCopy = curve;
  v60.receiver = self;
  v60.super_class = PUTileLayoutInfo;
  v51 = objc_msgSendSuper2(&v60, sel_init);
  if (v51)
  {
    if (!identifierCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v51 file:@"PUTileLayoutInfo.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"tileIdentifier != nil"}];
    }

    if (!curveCopy)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v51 file:@"PUTileLayoutInfo.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"coordinateSystem != nil"}];
    }

    objc_storeStrong(v51 + 1, identifier);
    *(v51 + 10) = mask;
    *(v51 + 11) = width;
    *(v51 + 12) = color;
    *(v51 + 13) = transform;
    *(v51 + 2) = position;
    *(v51 + 3) = rect;
    v52 = [centerCopy copy];
    v53 = v51[4];
    v51[4] = v52;

    v51[7] = size;
    *(v51 + 5) = outset;
    objc_storeStrong(v51 + 6, alpha);
    v54 = *radius;
    v55 = radius[2];
    *(v51 + 18) = radius[1];
    *(v51 + 19) = v55;
    *(v51 + 17) = v54;
    *(v51 + 8) = system;
    v51[14] = insets;
    v51[15] = legibilityInsets;
    v51[16] = a19;
    v51[17] = a20;
    v51[18] = a21;
    v51[19] = a22;
    v51[20] = a23;
    v51[21] = a24;
    objc_storeStrong(v51 + 9, curve);
    v51[22] = a25;
    v51[23] = a26;
    v51[24] = a27;
    v51[25] = a28;
    v51[26] = a29;
    v51[27] = a30;
    v51[28] = a31;
    v51[29] = a32;
  }

  return v51;
}

- (uint64_t)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size alpha:(double)alpha cornerRadius:(double)radius cornerCurve:(double)curve cornerMask:(uint64_t)mask transform:(uint64_t)self0 zPosition:(uint64_t)self1 contentsRect:(uint64_t)self2 coordinateSystem:(_OWORD *)self3 cropInsets:(uint64_t)self4
{
  v21 = system[1];
  v23[0] = *system;
  v23[1] = v21;
  v23[2] = system[2];
  return [self initWithTileIdentifier:transform center:position size:rect alpha:0 cornerRadius:v23 cornerCurve:insets cornerMask:a2 borderWidth:identifier borderColor:center transform:size zPosition:alpha contentsRect:radius hitTestOutset:0.0 coordinateSystem:curve cropInsets:a16 normalizedLegibilityInsets:{a17, a18, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), a19, a20, a21, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

- (PUTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha cornerRadius:(double)radius cornerCurve:(id)curve cornerMask:(unint64_t)mask transform:(CGAffineTransform *)self0 zPosition:(double)self1 contentsRect:(CGRect)self2 coordinateSystem:(id)self3
{
  v13 = *&transform->c;
  v15[0] = *&transform->a;
  v15[1] = v13;
  v15[2] = *&transform->tx;
  return [(PUTileLayoutInfo *)self initWithTileIdentifier:identifier center:curve size:mask alpha:0 cornerRadius:v15 cornerCurve:system cornerMask:center.x borderWidth:center.y borderColor:size.width transform:size.height zPosition:alpha contentsRect:radius hitTestOutset:0.0 coordinateSystem:position cropInsets:*&rect.origin.x normalizedLegibilityInsets:*&rect.origin.y, *&rect.size.width, *&rect.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *MEMORY[0x1E69C48A0], *(MEMORY[0x1E69C48A0] + 8), *(MEMORY[0x1E69C48A0] + 16), *(MEMORY[0x1E69C48A0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
}

- (uint64_t)initWithTileIdentifier:(double)identifier center:(double)center size:(double)size alpha:(double)alpha transform:(double)transform zPosition:(uint64_t)position contentsRect:(uint64_t)rect hitTestOutset:(_OWORD *)self0 coordinateSystem:(uint64_t)self1
{
  v20 = outset[1];
  v22[0] = *outset;
  v22[1] = v20;
  v22[2] = outset[2];
  return [self initWithTileIdentifier:rect center:0 size:0 alpha:0 cornerRadius:v22 cornerCurve:system cornerMask:a2 borderWidth:identifier borderColor:center transform:size zPosition:alpha contentsRect:0.0 hitTestOutset:0.0 coordinateSystem:transform cropInsets:a15 normalizedLegibilityInsets:{a16, a17, a18, a19, a20, *MEMORY[0x1E69C48A0], *(MEMORY[0x1E69C48A0] + 8), *(MEMORY[0x1E69C48A0] + 16), *(MEMORY[0x1E69C48A0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

- (PUTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position contentsRect:(CGRect)rect coordinateSystem:(id)self0
{
  v10 = *&transform->c;
  v12[0] = *&transform->a;
  v12[1] = v10;
  v12[2] = *&transform->tx;
  return [(PUTileLayoutInfo *)self initWithTileIdentifier:identifier center:0 size:0 alpha:0 cornerRadius:v12 cornerCurve:system cornerMask:center.x borderWidth:center.y borderColor:size.width transform:size.height zPosition:alpha contentsRect:0.0 hitTestOutset:0.0 coordinateSystem:position cropInsets:*&rect.origin.x normalizedLegibilityInsets:*&rect.origin.y, *&rect.size.width, *&rect.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *MEMORY[0x1E69C48A0], *(MEMORY[0x1E69C48A0] + 8), *(MEMORY[0x1E69C48A0] + 16), *(MEMORY[0x1E69C48A0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
}

- (PUTileLayoutInfo)initWithTileIdentifier:(id)identifier center:(CGPoint)center size:(CGSize)size alpha:(double)alpha transform:(CGAffineTransform *)transform zPosition:(double)position coordinateSystem:(id)system
{
  v9 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v9;
  v11[2] = *&transform->tx;
  return [(PUTileLayoutInfo *)self initWithTileIdentifier:identifier center:v11 size:system alpha:center.x transform:center.y zPosition:size.width contentsRect:size.height hitTestOutset:alpha coordinateSystem:position, 0, 0, 0x3FF0000000000000, 0x3FF0000000000000, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
}

- (PUTileLayoutInfo)init
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(PUTileLayoutInfo *)self initWithTileIdentifier:0 center:v8 size:0 alpha:v2 transform:v3 zPosition:v4 coordinateSystem:v5, 0.0, 0.0];
}

@end