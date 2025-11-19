@interface PUTileLayoutInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isGeometryEqualToLayoutInfo:(id)a3;
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
- (PUTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 cornerRadius:(double)a7 cornerCurve:(id)a8 cornerMask:(unint64_t)a9 transform:(CGAffineTransform *)a10 zPosition:(double)a11 contentsRect:(CGRect)a12 coordinateSystem:(id)a13;
- (PUTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 contentsRect:(CGRect)a9 coordinateSystem:(id)a10;
- (PUTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9;
- (PUTileLayoutInfo)layoutInfoWithAlpha:(double)a3;
- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)a3 size:(CGSize)a4 alpha:(double)a5 transform:(CGAffineTransform *)a6;
- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)a3 size:(CGSize)a4 alpha:(double)a5 transform:(CGAffineTransform *)a6 zPosition:(double)a7 coordinateSystem:(id)a8;
- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)a3 size:(CGSize)a4 transform:(CGAffineTransform *)a5;
- (PUTileLayoutInfo)layoutInfoWithCoordinateSystem:(id)a3;
- (PUTileLayoutInfo)layoutInfoWithIndexPath:(id)a3 tileKind:(id)a4 dataSourceIdentifier:(id)a5;
- (PUTileLayoutInfo)layoutInfoWithZPosition:(double)a3;
- (UIEdgeInsets)cropInsets;
- (UIEdgeInsets)expandedRectInsets;
- (UIEdgeInsets)hitTestOutset;
- (UIEdgeInsets)normalizedLegibilityInsets;
- (id)clone;
- (id)description;
- (id)initWithTileIdentifier:(void *)a3 center:(void *)a4 size:(void *)a5 alpha:(void *)a6 cornerRadius:(__int128 *)a7 cornerCurve:(void *)a8 cornerMask:(double)a9 borderWidth:(double)a10 borderColor:(double)a11 transform:(double)a12 zPosition:(double)a13 contentsRect:(double)a14 hitTestOutset:(double)a15 coordinateSystem:(double)a16 cropInsets:(void *)a17 normalizedLegibilityInsets:(void *)a18;
- (id)layoutInfoByInterpolatingWithLayoutInfo:(id)a3 mixFactor:(double)a4 coordinateSystem:(id)a5;
- (uint64_t)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 alpha:(double)a6 cornerRadius:(double)a7 cornerCurve:(double)a8 cornerMask:(uint64_t)a9 transform:(uint64_t)a10 zPosition:(uint64_t)a11 contentsRect:(uint64_t)a12 coordinateSystem:(_OWORD *)a13 cropInsets:(uint64_t)a14;
- (uint64_t)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 alpha:(double)a6 transform:(double)a7 zPosition:(uint64_t)a8 contentsRect:(uint64_t)a9 hitTestOutset:(_OWORD *)a10 coordinateSystem:(uint64_t)a11;
- (unint64_t)hash;
- (void)_setTransform:(CGAffineTransform *)a3;
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

- (void)_setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
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
  v4 = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v5 = NSStringFromCGPoint(v27);
  [(PUTileLayoutInfo *)self size];
  v6 = NSStringFromCGSize(v28);
  [(PUTileLayoutInfo *)self alpha];
  v8 = v7;
  [(PUTileLayoutInfo *)self cornerRadius];
  v10 = v9;
  v11 = [(PUTileLayoutInfo *)self cornerCurve];
  v12 = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self borderWidth];
  v14 = v13;
  v15 = [(PUTileLayoutInfo *)self borderColor];
  [(PUTileLayoutInfo *)self transform];
  v16 = NSStringFromCGAffineTransform(&transform);
  [(PUTileLayoutInfo *)self zPosition];
  v18 = v17;
  [(PUTileLayoutInfo *)self contentsRect];
  v19 = NSStringFromCGRect(v29);
  [(PUTileLayoutInfo *)self hitTestOutset];
  v20 = NSStringFromUIEdgeInsets(v30);
  v21 = [v24 stringWithFormat:@"<%@: %p tileIdentifier: %@; center: %@; size: %@; alpha: %f; cornerRadius: %f, cornerCurve: %@, cornerMask: %lu, borderWidth:%f, borderColor:%@, transform: %@; zPosition: %f; contentsRect: %@ hitExtensionInsets: %@>", v23, self, v4, v5, v6, v8, v10, v11, v12, v14, v15, v16, v18, v19, v20];;

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

- (id)layoutInfoByInterpolatingWithLayoutInfo:(id)a3 mixFactor:(double)a4 coordinateSystem:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(PUTileLayoutInfo *)self center];
  v10 = v9;
  v12 = v11;
  v13 = [(PUTileLayoutInfo *)self coordinateSystem];
  v89 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v13, v8, v10, v12);
  v91 = v14;

  [v7 center];
  v16 = v15;
  v18 = v17;
  v19 = [v7 coordinateSystem];
  v83 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v19, v8, v16, v18);
  v85 = v20;

  [(PUTileLayoutInfo *)self size];
  v22 = v21;
  v24 = v23;
  [v7 size];
  v26 = v25;
  v28 = v27;
  [(PUTileLayoutInfo *)self alpha];
  v30 = v29;
  [v7 alpha];
  v32 = v31;
  [(PUTileLayoutInfo *)self cornerRadius];
  v34 = v33;
  [v7 cornerRadius];
  v36 = v35;
  v37 = [v7 cornerCurve];
  v38 = [v7 cornerMask];
  [(PUTileLayoutInfo *)self transform];
  if (v7)
  {
    [v7 transform];
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

  v87 = v32 * a4 + (1.0 - a4) * v30;
  v88 = v36 * a4 + (1.0 - a4) * v34;
  v81 = v28 * a4 + (1.0 - a4) * v24;
  v82 = v26 * a4 + (1.0 - a4) * v22;
  v42 = v83 * a4 + (1.0 - a4) * v89;
  v43 = v85 * a4 + (1.0 - a4) * v91;
  v92 = vmlaq_n_f64(vmulq_n_f64(v40, a4), v97, 1.0 - a4);
  v90 = vmlaq_n_f64(vmulq_n_f64(v39, a4), v98, 1.0 - a4);
  v86 = vmlaq_n_f64(vmulq_n_f64(v41, a4), v99, 1.0 - a4);
  [(PUTileLayoutInfo *)self zPosition];
  v45 = v44;
  [v7 zPosition];
  v84 = v46 * a4 + (1.0 - a4) * v45;
  [(PUTileLayoutInfo *)self cropInsets];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [v7 cropInsets];
  v79 = v56 * a4 + (1.0 - a4) * v50;
  v80 = v55 * a4 + (1.0 - a4) * v48;
  v78 = v57 * a4 + (1.0 - a4) * v52;
  v59 = v58 * a4 + (1.0 - a4) * v54;
  [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  [v7 normalizedLegibilityInsets];
  v69 = v68 * a4 + (1.0 - a4) * v61;
  v71 = v70 * a4 + (1.0 - a4) * v63;
  v73 = v72 * a4 + (1.0 - a4) * v65;
  v75 = v74 * a4 + (1.0 - a4) * v67;
  v76 = [(PUTileLayoutInfo *)self clone];
  [v76 _setCenter:{v42, v43}];
  [v76 _setSize:{v82, v81}];
  [v76 _setAlpha:v87];
  [v76 _setCornerRadius:v88];
  [v76 _setCornerCurve:v37];
  [v76 _setCornerMask:v38];
  v97 = v92;
  v98 = v90;
  v99 = v86;
  [v76 _setTransform:&v97];
  [v76 _setZPosition:v84];
  [v76 _setCoordinateSystem:v8];
  [v76 setCropInsets:{v80, v79, v78, v59}];
  [v76 setNormalizedLegibilityInsets:{v69, v71, v73, v75}];

  return v76;
}

- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)a3 size:(CGSize)a4 alpha:(double)a5 transform:(CGAffineTransform *)a6 zPosition:(double)a7 coordinateSystem:(id)a8
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v16 = a8;
  v17 = [(PUTileLayoutInfo *)self clone];
  [v17 _setCenter:{x, y}];
  [v17 _setSize:{width, height}];
  [v17 _setAlpha:a5];
  v18 = *&a6->c;
  v20[0] = *&a6->a;
  v20[1] = v18;
  v20[2] = *&a6->tx;
  [v17 _setTransform:v20];
  [v17 _setZPosition:a7];
  [v17 _setCoordinateSystem:v16];

  return v17;
}

- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)a3 size:(CGSize)a4 alpha:(double)a5 transform:(CGAffineTransform *)a6
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v12 = [(PUTileLayoutInfo *)self clone];
  [v12 _setCenter:{x, y}];
  [v12 _setSize:{width, height}];
  [v12 _setAlpha:a5];
  v13 = *&a6->c;
  v15[0] = *&a6->a;
  v15[1] = v13;
  v15[2] = *&a6->tx;
  [v12 _setTransform:v15];

  return v12;
}

- (PUTileLayoutInfo)layoutInfoWithCenter:(CGPoint)a3 size:(CGSize)a4 transform:(CGAffineTransform *)a5
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v10 = [(PUTileLayoutInfo *)self clone];
  [v10 _setCenter:{x, y}];
  [v10 _setSize:{width, height}];
  v11 = *&a5->c;
  v13[0] = *&a5->a;
  v13[1] = v11;
  v13[2] = *&a5->tx;
  [v10 _setTransform:v13];

  return v10;
}

- (PUTileLayoutInfo)layoutInfoWithZPosition:(double)a3
{
  v4 = [(PUTileLayoutInfo *)self clone];
  [v4 _setZPosition:a3];

  return v4;
}

- (PUTileLayoutInfo)layoutInfoWithAlpha:(double)a3
{
  v4 = [(PUTileLayoutInfo *)self clone];
  [v4 _setAlpha:a3];

  return v4;
}

- (PUTileLayoutInfo)layoutInfoWithIndexPath:(id)a3 tileKind:(id)a4 dataSourceIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUTileLayoutInfo *)self clone];
  v12 = [[PUTileIdentifier alloc] initWithIndexPath:v10 tileKind:v9 dataSourceIdentifier:v8];

  [v11 _setTileIdentifier:v12];

  return v11;
}

- (PUTileLayoutInfo)layoutInfoWithCoordinateSystem:(id)a3
{
  v4 = a3;
  v5 = [(PUTileLayoutInfo *)self clone];
  [(PUTileLayoutInfo *)self center];
  v7 = v6;
  v9 = v8;
  v10 = [(PUTileLayoutInfo *)self coordinateSystem];
  v11 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v10, v4, v7, v9);
  v13 = v12;

  [v5 _setCenter:{v11, v13}];
  [v5 _setCoordinateSystem:v4];

  return v5;
}

- (BOOL)isGeometryEqualToLayoutInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self size];
  v6 = v5;
  v8 = v7;
  [v4 size];
  if (v6 != v10 || v8 != v9)
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self alpha];
  v13 = v12;
  [v4 alpha];
  if (v13 != v14)
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self cornerRadius];
  v16 = v15;
  [v4 cornerRadius];
  if (v16 != v17)
  {
    goto LABEL_33;
  }

  v18 = [(PUTileLayoutInfo *)self cornerCurve];
  v19 = [v4 cornerCurve];
  v20 = v19;
  if (v18 == v19)
  {
  }

  else
  {
    v21 = [v18 isEqualToString:v19];

    if ((v21 & 1) == 0)
    {
LABEL_33:
      v59 = 0;
      goto LABEL_34;
    }
  }

  v22 = [(PUTileLayoutInfo *)self cornerMask];
  if (v22 != [v4 cornerMask])
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self borderWidth];
  v24 = v23;
  [v4 borderWidth];
  if (v24 != v25)
  {
    goto LABEL_33;
  }

  v26 = [(PUTileLayoutInfo *)self borderColor];
  v27 = [v4 borderColor];
  v28 = v27;
  if (v26 == v27)
  {
  }

  else
  {
    v29 = [v26 isEqual:v27];

    if ((v29 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  [(PUTileLayoutInfo *)self transform];
  [v4 transform];
  if (!CGAffineTransformEqualToTransform(&t1, &v73))
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self zPosition];
  v31 = v30;
  [v4 zPosition];
  if (v31 != v32)
  {
    goto LABEL_33;
  }

  v33 = [v4 coordinateSystem];
  v34 = [(PUTileLayoutInfo *)self coordinateSystem];
  v35 = PUCanConvertFromCoordinateSystemToCoordinateSystem(v33, v34);

  if (!v35)
  {
    goto LABEL_33;
  }

  [(PUTileLayoutInfo *)self contentsRect];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [v4 contentsRect];
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
  [v4 hitTestOutset];
  v59 = 0;
  if (v51 == v60 && v49 == v56 && v55 == v58 && v53 == v57)
  {
    [(PUTileLayoutInfo *)self expandedRectInsets];
    [v4 expandedRectInsets];
    if (!PXEdgeInsetsEqualToEdgeInsets())
    {
      goto LABEL_33;
    }

    [(PUTileLayoutInfo *)self cropInsets];
    [v4 cropInsets];
    if (!PXEdgeInsetsEqualToEdgeInsets())
    {
      goto LABEL_33;
    }

    [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
    [v4 normalizedLegibilityInsets];
    if (!PXEdgeInsetsEqualToEdgeInsets())
    {
      goto LABEL_33;
    }

    [v4 center];
    v62 = v61;
    v64 = v63;
    v65 = [v4 coordinateSystem];
    v66 = [(PUTileLayoutInfo *)self coordinateSystem];
    v67 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v65, v66, v62, v64);
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
  v4 = [(PUTileLayoutInfo *)self tileIdentifier];
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
  v11 = [(PUTileLayoutInfo *)self cornerCurve];
  v12 = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self borderWidth];
  v48 = v13;
  v14 = [(PUTileLayoutInfo *)self borderColor];
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
  v28 = [(PUTileLayoutInfo *)self coordinateSystem];
  [(PUTileLayoutInfo *)self cropInsets];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [(PUTileLayoutInfo *)self normalizedLegibilityInsets];
  v41 = [v3 initWithTileIdentifier:v4 center:v11 size:v12 alpha:v14 cornerRadius:v55 cornerCurve:v28 cornerMask:v54 borderWidth:v53 borderColor:v52 transform:v51 zPosition:v50 contentsRect:v49 hitTestOutset:v48 coordinateSystem:v47 cropInsets:v46 normalizedLegibilityInsets:{v45, v44, v43, v21, v23, v25, v27, v30, v32, v34, v36, v37, v38, v39, v40}];

  [(PUTileLayoutInfo *)self expandedRectInsets];
  [v41 setExpandedRectInsets:?];

  return v41;
}

- (NSIndexPath)indexPath
{
  v2 = [(PUTileLayoutInfo *)self tileIdentifier];
  v3 = [v2 indexPath];

  return v3;
}

- (NSString)tileKind
{
  v2 = [(PUTileLayoutInfo *)self tileIdentifier];
  v3 = [v2 tileKind];

  return v3;
}

- (NSString)dataSourceIdentifier
{
  v2 = [(PUTileLayoutInfo *)self tileIdentifier];
  v3 = [v2 dataSourceIdentifier];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(PUTileLayoutInfo *)self tileIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUTileIdentifier *)self->_tileIdentifier isEqual:v4[1]];

  return v5;
}

- (id)initWithTileIdentifier:(void *)a3 center:(void *)a4 size:(void *)a5 alpha:(void *)a6 cornerRadius:(__int128 *)a7 cornerCurve:(void *)a8 cornerMask:(double)a9 borderWidth:(double)a10 borderColor:(double)a11 transform:(double)a12 zPosition:(double)a13 contentsRect:(double)a14 hitTestOutset:(double)a15 coordinateSystem:(double)a16 cropInsets:(void *)a17 normalizedLegibilityInsets:(void *)a18
{
  v47 = a3;
  v48 = a4;
  v49 = a6;
  v50 = a8;
  v60.receiver = a1;
  v60.super_class = PUTileLayoutInfo;
  v51 = objc_msgSendSuper2(&v60, sel_init);
  if (v51)
  {
    if (!v47)
    {
      v59 = [MEMORY[0x1E696AAA8] currentHandler];
      [v59 handleFailureInMethod:a2 object:v51 file:@"PUTileLayoutInfo.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"tileIdentifier != nil"}];
    }

    if (!v50)
    {
      v57 = [MEMORY[0x1E696AAA8] currentHandler];
      [v57 handleFailureInMethod:a2 object:v51 file:@"PUTileLayoutInfo.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"coordinateSystem != nil"}];
    }

    objc_storeStrong(v51 + 1, a3);
    *(v51 + 10) = a9;
    *(v51 + 11) = a10;
    *(v51 + 12) = a11;
    *(v51 + 13) = a12;
    *(v51 + 2) = a13;
    *(v51 + 3) = a14;
    v52 = [v48 copy];
    v53 = v51[4];
    v51[4] = v52;

    v51[7] = a5;
    *(v51 + 5) = a15;
    objc_storeStrong(v51 + 6, a6);
    v54 = *a7;
    v55 = a7[2];
    *(v51 + 18) = a7[1];
    *(v51 + 19) = v55;
    *(v51 + 17) = v54;
    *(v51 + 8) = a16;
    v51[14] = a17;
    v51[15] = a18;
    v51[16] = a19;
    v51[17] = a20;
    v51[18] = a21;
    v51[19] = a22;
    v51[20] = a23;
    v51[21] = a24;
    objc_storeStrong(v51 + 9, a8);
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

- (uint64_t)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 alpha:(double)a6 cornerRadius:(double)a7 cornerCurve:(double)a8 cornerMask:(uint64_t)a9 transform:(uint64_t)a10 zPosition:(uint64_t)a11 contentsRect:(uint64_t)a12 coordinateSystem:(_OWORD *)a13 cropInsets:(uint64_t)a14
{
  v21 = a13[1];
  v23[0] = *a13;
  v23[1] = v21;
  v23[2] = a13[2];
  return [a1 initWithTileIdentifier:a10 center:a11 size:a12 alpha:0 cornerRadius:v23 cornerCurve:a14 cornerMask:a2 borderWidth:a3 borderColor:a4 transform:a5 zPosition:a6 contentsRect:a7 hitTestOutset:0.0 coordinateSystem:a8 cropInsets:a16 normalizedLegibilityInsets:{a17, a18, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), a19, a20, a21, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

- (PUTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 cornerRadius:(double)a7 cornerCurve:(id)a8 cornerMask:(unint64_t)a9 transform:(CGAffineTransform *)a10 zPosition:(double)a11 contentsRect:(CGRect)a12 coordinateSystem:(id)a13
{
  v13 = *&a10->c;
  v15[0] = *&a10->a;
  v15[1] = v13;
  v15[2] = *&a10->tx;
  return [(PUTileLayoutInfo *)self initWithTileIdentifier:a3 center:a8 size:a9 alpha:0 cornerRadius:v15 cornerCurve:a13 cornerMask:a4.x borderWidth:a4.y borderColor:a5.width transform:a5.height zPosition:a6 contentsRect:a7 hitTestOutset:0.0 coordinateSystem:a11 cropInsets:*&a12.origin.x normalizedLegibilityInsets:*&a12.origin.y, *&a12.size.width, *&a12.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *MEMORY[0x1E69C48A0], *(MEMORY[0x1E69C48A0] + 8), *(MEMORY[0x1E69C48A0] + 16), *(MEMORY[0x1E69C48A0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
}

- (uint64_t)initWithTileIdentifier:(double)a3 center:(double)a4 size:(double)a5 alpha:(double)a6 transform:(double)a7 zPosition:(uint64_t)a8 contentsRect:(uint64_t)a9 hitTestOutset:(_OWORD *)a10 coordinateSystem:(uint64_t)a11
{
  v20 = a10[1];
  v22[0] = *a10;
  v22[1] = v20;
  v22[2] = a10[2];
  return [a1 initWithTileIdentifier:a9 center:0 size:0 alpha:0 cornerRadius:v22 cornerCurve:a11 cornerMask:a2 borderWidth:a3 borderColor:a4 transform:a5 zPosition:a6 contentsRect:0.0 hitTestOutset:0.0 coordinateSystem:a7 cropInsets:a15 normalizedLegibilityInsets:{a16, a17, a18, a19, a20, *MEMORY[0x1E69C48A0], *(MEMORY[0x1E69C48A0] + 8), *(MEMORY[0x1E69C48A0] + 16), *(MEMORY[0x1E69C48A0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

- (PUTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 contentsRect:(CGRect)a9 coordinateSystem:(id)a10
{
  v10 = *&a7->c;
  v12[0] = *&a7->a;
  v12[1] = v10;
  v12[2] = *&a7->tx;
  return [(PUTileLayoutInfo *)self initWithTileIdentifier:a3 center:0 size:0 alpha:0 cornerRadius:v12 cornerCurve:a10 cornerMask:a4.x borderWidth:a4.y borderColor:a5.width transform:a5.height zPosition:a6 contentsRect:0.0 hitTestOutset:0.0 coordinateSystem:a8 cropInsets:*&a9.origin.x normalizedLegibilityInsets:*&a9.origin.y, *&a9.size.width, *&a9.size.height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), *MEMORY[0x1E69C48A0], *(MEMORY[0x1E69C48A0] + 8), *(MEMORY[0x1E69C48A0] + 16), *(MEMORY[0x1E69C48A0] + 24), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
}

- (PUTileLayoutInfo)initWithTileIdentifier:(id)a3 center:(CGPoint)a4 size:(CGSize)a5 alpha:(double)a6 transform:(CGAffineTransform *)a7 zPosition:(double)a8 coordinateSystem:(id)a9
{
  v9 = *&a7->c;
  v11[0] = *&a7->a;
  v11[1] = v9;
  v11[2] = *&a7->tx;
  return [(PUTileLayoutInfo *)self initWithTileIdentifier:a3 center:v11 size:a9 alpha:a4.x transform:a4.y zPosition:a5.width contentsRect:a5.height hitTestOutset:a6 coordinateSystem:a8, 0, 0, 0x3FF0000000000000, 0x3FF0000000000000, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
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