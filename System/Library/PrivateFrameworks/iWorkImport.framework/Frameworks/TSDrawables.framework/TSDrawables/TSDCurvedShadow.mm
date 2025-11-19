@interface TSDCurvedShadow
+ (id)curvedShadowWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGImage)newShadowImageForRep:(id)a3 withSize:(CGSize)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6;
- (CGRect)boundsForRep:(id)a3;
- (CGRect)boundsInNaturalSpaceForRep:(id)a3;
- (CGRect)expandedBoundsForRect:(CGRect)a3;
- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (TSDCurvedShadow)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDCurvedShadow)initWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9;
- (TSDCurvedShadow)shadowWithClampedValues;
- (id)description;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newShadowClampedForSwatches;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDCurvedShadow

+ (id)curvedShadowWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9
{
  v9 = a9;
  v16 = a8;
  v17 = [a1 alloc];
  v19 = objc_msgSend_initWithOffset_angle_radius_curve_opacity_color_enabled_(v17, v18, v16, v9, a3, a4, a5, a6, a7);

  return v19;
}

- (TSDCurvedShadow)initWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9
{
  v9 = a9;
  v17 = a8;
  if (!v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSDCurvedShadow initWithOffset:angle:radius:curve:opacity:color:enabled:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCurvedShadow.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 51, 0, "invalid nil value for '%{public}s'", "color");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  v28.receiver = self;
  v28.super_class = TSDCurvedShadow;
  v25 = [(TSDShadow *)&v28 i_initWithOpacity:v17 color:v9 angle:a7 offset:a4 radius:a3 enabled:a5];
  v26 = v25;
  if (v25)
  {
    v25[7] = a6;
  }

  return v26;
}

- (TSDCurvedShadow)shadowWithClampedValues
{
  v3 = objc_alloc(objc_opt_class());
  objc_msgSend_offset(self, v4, v5);
  v7 = v6;
  objc_msgSend_angle(self, v8, v9);
  v11 = v10;
  objc_msgSend_radius(self, v12, v13);
  v15 = v14;
  objc_msgSend_curve(self, v16, v17);
  v19 = v18;
  objc_msgSend_opacity(self, v20, v21);
  v23 = v22;
  v26 = objc_msgSend_color(self, v24, v25);
  isEnabled = objc_msgSend_isEnabled(self, v27, v28);
  v31 = objc_msgSend_initWithOffset_angle_radius_curve_opacity_color_enabled_(v3, v30, v26, isEnabled, v7, v11, v15, v19, v23);

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_angle(self, v6, v7);
  v9 = v8;
  objc_msgSend_offset(self, v10, v11);
  v13 = v12;
  objc_msgSend_radius(self, v14, v15);
  v17 = v16;
  objc_msgSend_opacity(self, v18, v19);
  v21 = v20;
  v24 = objc_msgSend_color(self, v22, v23);
  isEnabled = objc_msgSend_isEnabled(self, v25, v26);
  v28 = @"NO";
  if (isEnabled)
  {
    v28 = @"YES";
  }

  v29 = v28;
  objc_msgSend_curve(self, v30, v31);
  v33 = v32;
  v36 = objc_msgSend_typeDescription(self, v34, v35);
  v38 = objc_msgSend_stringWithFormat_(v3, v37, @"<%@ %p: angle=%g offset=%g radius=%g opacity=%g color=%p enabled=%@  curve=%f type=%@>", v5, self, v9, v13, v17, v21, v24, v29, v33, v36);

  return v38;
}

- (CGRect)expandedBoundsForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_msgSend_paddingForCurveWithSize_(self, a2, v3, a3.size.width, a3.size.height);
  v10 = v9;
  objc_msgSend_paddingForBlur(self, v11, v12);
  v14 = -v13;
  v15 = -v13 - v10;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;

  return CGRectInset(*&v16, v14, v15);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableCurvedShadow alloc];
  objc_msgSend_offset(self, v5, v6);
  v8 = v7;
  objc_msgSend_angle(self, v9, v10);
  v12 = v11;
  objc_msgSend_radius(self, v13, v14);
  v16 = v15;
  objc_msgSend_curve(self, v17, v18);
  v20 = v19;
  objc_msgSend_opacity(self, v21, v22);
  v24 = v23;
  v27 = objc_msgSend_color(self, v25, v26);
  isEnabled = objc_msgSend_isEnabled(self, v28, v29);
  v32 = objc_msgSend_initWithOffset_angle_radius_curve_opacity_color_enabled_(v4, v31, v27, isEnabled, v8, v12, v16, v20, v24);

  return v32;
}

- (id)newShadowClampedForSwatches
{
  objc_msgSend_curve(self, a2, v2);
  TSUClamp();
  v5 = v4;
  objc_msgSend_offset(self, v6, v7);
  TSUClamp();
  v9 = v8;
  v10 = [TSDCurvedShadow alloc];
  objc_msgSend_angle(self, v11, v12);
  v14 = v13;
  objc_msgSend_radius(self, v15, v16);
  v18 = v17;
  objc_msgSend_opacity(self, v19, v20);
  v22 = v21;
  v25 = objc_msgSend_color(self, v23, v24);
  isEnabled = objc_msgSend_isEnabled(self, v26, v27);
  v30 = objc_msgSend_initWithOffset_angle_radius_curve_opacity_color_enabled_(v10, v29, v25, isEnabled, v9, v14, v18, v5, v22);

  return v30;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && (v15.receiver = self, v15.super_class = TSDCurvedShadow, [(TSDShadow *)&v15 isEqual:v5]))
  {
    objc_msgSend_curve(self, v6, v7);
    v9 = v8;
    objc_msgSend_curve(v5, v10, v11);
    v13 = v9 == v12 || vabdd_f64(v9, v12) < fabs(v12 * 0.000000999999997);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TSDCurvedShadow;
  return [(TSDShadow *)&v3 hash];
}

- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_msgSend_isEnabled(self, a2, a4))
  {
    v10 = *&a4->c;
    *&v35.a = *&a4->a;
    *&v35.c = v10;
    *&v35.tx = *&a4->tx;
    CGAffineTransformInvert(&v36, &v35);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectApplyAffineTransform(v37, &v36);
    objc_msgSend_expandedBoundsForRect_(self, v11, v12, v38.origin.x, v38.origin.y, v38.size.width, v38.size.height);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    objc_msgSend_offsetDelta(self, v21, v22);
    r1 = height;
    v24 = v23;
    objc_msgSend_offsetDelta(self, v25, v26);
    v28 = v27;
    v39.origin.x = v14;
    v39.origin.y = v16;
    v39.size.width = v18;
    v39.size.height = v20;
    v40 = CGRectOffset(v39, v24, v28);
    v29 = *&a4->c;
    *&v36.a = *&a4->a;
    *&v36.c = v29;
    *&v36.tx = *&a4->tx;
    v44 = CGRectApplyAffineTransform(v40, &v36);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = r1;
    v42 = CGRectUnion(v41, v44);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)a3
{
  v4 = objc_msgSend_styledLayout(a3, a2, a3);
  v7 = objc_msgSend_geometryInRoot(v4, v5, v6);
  objc_msgSend_frame(v7, v8, v9);
  TSURectWithSize();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  objc_msgSend_expandedBoundsForRect_(self, v18, v19, v11, v13, v15, v17);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)boundsForRep:(id)a3
{
  v4 = objc_msgSend_styledLayout(a3, a2, a3);
  v7 = objc_msgSend_geometryInRoot(v4, v5, v6);
  objc_msgSend_frame(v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  objc_msgSend_expandedBoundsForRect_(self, v18, v19, v11, v13, v15, v17);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGImage)newShadowImageForRep:(id)a3 withSize:(CGSize)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6
{
  v7 = objc_msgSend_color(self, a2, a3, a5, a6, a4.width, a4.height);
  v10 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v8, v9);
  if (objc_msgSend_shouldRenderCurvedShadow(v10, v11, v12))
  {
    objc_msgSend_opacity(self, v13, v14);
    if (v17 != 0.0)
    {
      objc_msgSend_alphaComponent(v7, v15, v16);
    }
  }

  v20 = objc_msgSend_i_newEmptyImage(self, v18, v19);
  return v20;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (v6 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    if (objc_msgSend_isEnabled(self, v7, v8) && objc_msgSend_isEnabled(v6, v9, v10))
    {
      objc_msgSend_curve(self, v11, v12);
      v14 = v13;
      objc_msgSend_curve(v6, v15, v16);
      if ((v14 == v19 || vabdd_f64(v14, v19) < 0.00999999978) && ((objc_msgSend_angle(self, v17, v18), v21 = v20, objc_msgSend_angle(v6, v22, v23), v21 == v26) || vabdd_f64(v21, v26) < 0.00999999978) && ((objc_msgSend_offset(self, v24, v25), v28 = v27, objc_msgSend_offset(v6, v29, v30), v28 == v33) || vabdd_f64(v28, v33) < 0.00999999978))
      {
        objc_msgSend_radius(self, v31, v32);
        v37 = v36;
        objc_msgSend_radius(v6, v38, v39);
        if (vabdd_f64(v37, v40) < 0.00999999978 || v37 == v40)
        {
          v34 = 4;
        }

        else
        {
          v34 = 3;
        }
      }

      else
      {
        v34 = 3;
      }
    }

    else
    {
      v34 = 4;
    }
  }

  else
  {
    v34 = 2;
  }

  return v34;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = self;
  v7 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (objc_msgSend_isEnabled(v6, v9, v10) & 1) != 0 || (objc_msgSend_isEnabled(v8, v11, v12))
  {
    if ((objc_msgSend_isEnabled(v6, v11, v12) & 1) == 0 && v8)
    {
      v15 = v8;

      v6 = v15;
    }

    if ((objc_msgSend_isEnabled(v8, v13, v14) & 1) == 0)
    {
      v18 = v6;

      v8 = v18;
    }

    objc_msgSend_offset(v6, v16, v17);
    objc_msgSend_offset(v8, v19, v20);
    TSUMix();
    v22 = v21;
    objc_msgSend_angle(v6, v23, v24);
    objc_msgSend_angle(v8, v25, v26);
    TSUMix();
    v28 = v27;
    objc_msgSend_radius(v6, v29, v30);
    objc_msgSend_radius(v8, v31, v32);
    TSUMix();
    v34 = v33;
    objc_msgSend_curve(v6, v35, v36);
    objc_msgSend_curve(v8, v37, v38);
    TSUMix();
    v40 = v39;
    objc_msgSend_opacity(v6, v41, v42);
    objc_msgSend_opacity(v8, v43, v44);
    TSUMix();
    v46 = v45;
    v49 = objc_msgSend_color(v6, v47, v48);
    v52 = objc_msgSend_color(v8, v50, v51);
    isEqual = objc_msgSend_isEqual_(v49, v53, v52);

    v59 = objc_msgSend_color(v6, v55, v56);
    if ((isEqual & 1) == 0)
    {
      v60 = objc_msgSend_color(v8, v57, v58);
      v62 = objc_msgSend_blendedColorWithFraction_ofColor_(v59, v61, v60, a3);

      v59 = v62;
    }

    v63 = [TSDCurvedShadow alloc];
    v65 = objc_msgSend_initWithOffset_angle_radius_curve_opacity_color_enabled_(v63, v64, v59, 1, v22, v28, v34, v40, v46);
  }

  else
  {
    v6 = v6;
    v65 = v6;
  }

  return v65;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  if (TSD::ShadowArchive::ByteSizeLong(a3))
  {
    v8 = [TSDCurvedShadow alloc];
    v10 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, a3, v5);
  }

  else
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  }

  v11 = v10;

  return v11;
}

- (TSDCurvedShadow)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v11.receiver = self;
  v11.super_class = TSDCurvedShadow;
  v5 = [(TSDShadow *)&v11 initWithArchive:a3 unarchiver:a4];
  v8 = v5;
  if (v5)
  {
    v9 = *(a3 + 6);
    if (!v9)
    {
      v9 = &TSD::_CurvedShadowArchive_default_instance_;
    }

    objc_msgSend_i_setCurve_(v5, v6, v7, *(v9 + 6));
  }

  return v8;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TSDCurvedShadow;
  [(TSDShadow *)&v12 saveToArchive:a3 archiver:v6];
  *(a3 + 4) |= 8u;
  v9 = *(a3 + 6);
  if (!v9)
  {
    v10 = *(a3 + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::CurvedShadowArchive>(v10);
    *(a3 + 6) = v9;
  }

  objc_msgSend_curve(self, v7, v8);
  *&v11 = v11;
  *(v9 + 16) |= 1u;
  *(v9 + 24) = LODWORD(v11);
}

@end