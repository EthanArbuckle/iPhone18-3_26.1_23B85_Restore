@interface TSDShadow
+ (TSDShadow)shadowWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8;
+ (TSDShadow)shadowWithNSShadow:(id)a3;
+ (id)contactShadowWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 height:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9;
+ (id)curvedShadowWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9;
+ (id)defaultShadowPresets;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)mixableObjectClasses;
+ (id)p_defaultShadowEnabled:(BOOL)a3;
+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (CGImage)i_newEmptyImage;
- (CGPoint)offsetDelta;
- (CGRect)boundsForRep:(id)a3;
- (CGRect)boundsInNaturalSpaceForRep:(id)a3;
- (CGRect)shadowBoundsForRect:(CGRect)a3;
- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalAngle:(double)a4;
- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (NSShadow)NSShadow;
- (NSString)description;
- (NSString)typeDescription;
- (TSDShadow)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDShadow)shadowWithClampedValues;
- (id)i_initWithOpacity:(double)a3 color:(id)a4 angle:(double)a5 offset:(double)a6 radius:(double)a7 enabled:(BOOL)a8;
- (id)mixedBaseObjectWithObject:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)shadowByTransformingByTransform:(CGAffineTransform *)a3;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)applyToContext:(CGContext *)a3 viewScale:(double)a4 flipped:(BOOL)a5 extraOffset:(CGSize)a6;
- (void)i_setColor:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDShadow

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  if (TSD::ShadowArchive::ByteSizeLong(a3))
  {
    v8 = off_27A6CB890;
    v9 = off_27A6CB880;
    v10 = *(a3 + 14);
    if (v10 != 1)
    {
      v9 = off_27A6CB8B8;
    }

    if (v10 != 2)
    {
      v8 = v9;
    }

    v11 = objc_msgSend_instanceWithArchive_unarchiver_(*v8, v6, a3, v5);
  }

  else
  {
    v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  }

  v12 = v11;

  return v12;
}

- (TSDShadow)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDShadow(PersistenceAdditions) initWithArchive:unarchiver:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadowPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 48, 0, "expected inequality between %{public}s and %{public}s", "[self class]", "[TSDShadow class]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v28.receiver = self;
  v28.super_class = TSDShadow;
  v15 = [(TSDShadow *)&v28 init];
  if (v15)
  {
    v16 = TSPTSUColorCreateFromMessage();
    objc_msgSend_i_setColor_(v15, v17, v16);

    objc_msgSend_i_setAngle_(v15, v18, v19, *(a3 + 16));
    objc_msgSend_i_setOffset_(v15, v20, v21, *(a3 + 17));
    objc_msgSend_i_setRadius_(v15, v22, v23, *(a3 + 18));
    objc_msgSend_i_setOpacity_(v15, v24, v25, *(a3 + 19));
    objc_msgSend_i_setEnabled_(v15, v26, *(a3 + 60));
  }

  return v15;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v43 = a4;
  v8 = objc_msgSend_color(self, v6, v7);
  *(a3 + 4) |= 1u;
  if (!*(a3 + 3))
  {
    v9 = *(a3 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(a3 + 3) = MEMORY[0x277C9BAF0](v9);
  }

  TSPTSUColorCopyToMessage();

  objc_msgSend_angle(self, v10, v11);
  *&v12 = v12;
  *(a3 + 4) |= 0x40u;
  *(a3 + 16) = LODWORD(v12);
  objc_msgSend_offset(self, v13, v14);
  *&v15 = v15;
  *(a3 + 4) |= 0x80u;
  *(a3 + 17) = LODWORD(v15);
  v16 = MEMORY[0x277CCABB0];
  objc_msgSend_radius(self, v17, v18);
  v21 = objc_msgSend_numberWithInteger_(v16, v20, v19);
  v24 = objc_msgSend_intValue(v21, v22, v23);
  *(a3 + 4) |= 0x100u;
  *(a3 + 18) = v24;

  objc_msgSend_opacity(self, v25, v26);
  *&v27 = v27;
  *(a3 + 4) |= 0x200u;
  *(a3 + 19) = LODWORD(v27);
  isEnabled = objc_msgSend_isEnabled(self, v28, v29);
  *(a3 + 4) |= 0x20u;
  *(a3 + 60) = isEnabled;
  v33 = objc_msgSend_shadowType(self, v31, v32);
  *(a3 + 4) |= 0x10u;
  if (v33)
  {
    if (v33 == 2)
    {
      v35 = 1;
    }

    else if (v33 == 3)
    {
      v35 = 2;
    }

    else
    {
      v35 = 0;
    }

    *(a3 + 14) = v35;
  }

  else
  {
    *(a3 + 14) = 0;
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSDShadow(PersistenceAdditions) saveToArchive:archiver:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadowPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 82, 0, "Error, trying to archive an unknown shadow type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
  }
}

- (id)i_initWithOpacity:(double)a3 color:(id)a4 angle:(double)a5 offset:(double)a6 radius:(double)a7 enabled:(BOOL)a8
{
  v14 = a4;
  if (!v14)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDShadow i_initWithOpacity:color:angle:offset:radius:enabled:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadow.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 61, 0, "invalid nil value for '%{public}s'", "color");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v39.receiver = self;
  v39.super_class = TSDShadow;
  v22 = [(TSDShadow *)&v39 init];
  v25 = v22;
  if (v22)
  {
    objc_msgSend_clampOpacity_(v22, v23, v24, a3);
    v25->mOpacity = v26;
    v29 = objc_msgSend_copy(v14, v27, v28);
    mColor = v25->mColor;
    v25->mColor = v29;

    TSUNormalizeAngleInDegrees();
    v25->mAngle = v31;
    objc_msgSend_clampOffset_(v25, v32, v33, a6);
    v25->mOffset = v34;
    v25->mEnabled = a8;
    objc_msgSend_clampRadius_(v25, v35, v36, a7);
    v25->mRadius = v37;
  }

  return v25;
}

+ (id)p_defaultShadowEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [TSDDropShadow alloc];
  v7 = objc_msgSend_blackColor(MEMORY[0x277D81180], v5, v6);
  v9 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v4, v8, v7, v3, 315.0, 5.0, 1.0, 1.0);

  return v9;
}

+ (TSDShadow)shadowWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8
{
  v8 = a8;
  v13 = a7;
  v14 = [TSDDropShadow alloc];
  v16 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v14, v15, v13, v8, a3, a4, a5, a6);

  return v16;
}

+ (id)contactShadowWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 height:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9
{
  v9 = a9;
  v14 = a8;
  v15 = [TSDContactShadow alloc];
  v17 = objc_msgSend_initWithOffset_height_radius_opacity_color_enabled_(v15, v16, v14, v9, a4, a6, a5, a7);

  return v17;
}

+ (TSDShadow)shadowWithNSShadow:(id)a3
{
  v3 = a3;
  objc_msgSend_shadowOffset(v3, v4, v5);
  v8 = objc_msgSend_shadowColor(v3, v6, v7);
  v9 = v8;
  v12 = objc_msgSend_CGColor(v9, v10, v11);

  TSUAngleFromDelta();
  v14 = v13 * 57.2957795;
  TSUPointLength();
  v16 = v15;
  objc_msgSend_shadowBlurRadius(v3, v17, v18);
  v20 = v19;

  v22 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v21, v12);
  objc_msgSend_alphaComponent(v22, v23, v24);
  v26 = v25;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v12, 1.0);
  v29 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D81180], v28, CopyWithAlpha);
  v31 = objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(TSDShadow, v30, v29, 1, v14, v16, v20, v26);

  CGColorRelease(CopyWithAlpha);

  return v31;
}

+ (id)curvedShadowWithOffset:(double)a3 angle:(double)a4 radius:(double)a5 curve:(double)a6 opacity:(double)a7 color:(id)a8 enabled:(BOOL)a9
{
  v9 = a9;
  v15 = a8;
  v16 = [TSDCurvedShadow alloc];
  v18 = objc_msgSend_initWithOffset_angle_radius_curve_opacity_color_enabled_(v16, v17, v15, v9, a3, a4, a5, a6, a7);

  return v18;
}

- (TSDShadow)shadowWithClampedValues
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDShadow shadowWithClampedValues]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadow.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 138, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDShadow shadowWithClampedValues]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = TSUDynamicCast();

    if (v5)
    {
      objc_msgSend_angle(self, v6, v7);
      v9 = v8;
      objc_msgSend_angle(v5, v10, v11);
      if (v9 == v14 || vabdd_f64(v9, v14) < fabs(v14 * 0.000000999999997))
      {
        objc_msgSend_offset(self, v12, v13);
        v16 = v15;
        objc_msgSend_offset(v5, v17, v18);
        if (v16 == v21 || vabdd_f64(v16, v21) < fabs(v21 * 0.000000999999997))
        {
          objc_msgSend_radius(self, v19, v20);
          v23 = v22;
          objc_msgSend_radius(v5, v24, v25);
          if (v23 == v28 || vabdd_f64(v23, v28) < fabs(v28 * 0.000000999999997))
          {
            objc_msgSend_opacity(self, v26, v27);
            v30 = v29;
            objc_msgSend_opacity(v5, v31, v32);
            if (v30 == v35 || vabdd_f64(v30, v35) < fabs(v35 * 0.000000999999997))
            {
              isEnabled = objc_msgSend_isEnabled(self, v33, v34);
              if (isEnabled == objc_msgSend_isEnabled(v5, v37, v38))
              {
                v41 = objc_msgSend_color(self, v39, v40);
                v44 = objc_msgSend_color(v5, v42, v43);
                if (objc_msgSend_isEqual_(v41, v45, v44))
                {
                  v48 = objc_msgSend_shadowType(self, v46, v47);
                  v51 = objc_msgSend_shadowType(v5, v49, v50);

                  if (v48 == v51)
                  {
                    v52 = 1;
LABEL_18:

                    return v52;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }
    }

    v52 = 0;
    goto LABEL_18;
  }

  return 1;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = NSStringFromClass(v4);
  v16 = *&self->mAngle;
  mRadius = self->mRadius;
  mOpacity = self->mOpacity;
  mColor = self->mColor;
  if (self->mEnabled)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = objc_msgSend_typeDescription(self, v5, v6);
  v14 = objc_msgSend_stringWithFormat_(v3, v13, @"<%@ %p: angle=%g offset=%g radius=%g opacity=%g color=%p enabled=%@ type=%@>", v7, self, v16, *&mRadius, *&mOpacity, mColor, v11, v12);

  return v14;
}

- (NSString)typeDescription
{
  v3 = objc_msgSend_shadowType(self, a2, v2);
  if (v3 > 3)
  {
    return 0;
  }

  else
  {
    return &off_27A6CCA70[v3]->isa;
  }
}

- (void)i_setColor:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  mColor = self->mColor;
  self->mColor = v4;
}

- (CGPoint)offsetDelta
{
  objc_msgSend_offset(self, a2, v2);
  objc_msgSend_angle(self, v4, v5);
  TSUOriginRotate();
  v6 = 0.0;
  v7 = 0.0;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)applyToContext:(CGContext *)a3 viewScale:(double)a4 flipped:(BOOL)a5 extraOffset:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  if (objc_msgSend_isEnabled(self, a2, a3))
  {
    objc_msgSend_angle(self, v11, v12);
    v13 = sub_276649650(a3);
    v16 = TSDCGContextAssociatedScreenScale(a3);
    if (v13)
    {
      TSUMultiplySizeScalar();
      width = v17;
      height = v18;
      v16 = 1.0;
    }

    objc_msgSend_radius(self, v14, v15);
    v20 = v16 * (v19 * a4);
    objc_msgSend_offset(self, v21, v22);
    TSUOriginRotate();
    v42.width = width;
    v42.height = height;
    v23 = CGContextConvertSizeToDeviceSpace(a3, v42);
    v26 = objc_msgSend_color(self, v24, v25);
    v29 = objc_msgSend_CGColor(v26, v27, v28);
    objc_msgSend_opacity(self, v30, v31);
    v33 = v32;
    v36 = objc_msgSend_color(self, v34, v35);
    v39 = objc_msgSend_CGColor(v36, v37, v38);
    Alpha = CGColorGetAlpha(v39);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v29, v33 * Alpha);

    v43.width = v23.width + 0.0;
    v43.height = v23.height + 0.0;
    CGContextSetShadowWithColor(a3, v43, v20, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
  }
}

- (CGRect)boundsInNaturalSpaceForRep:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)boundsForRep:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGImage)i_newEmptyImage
{
  v2 = TSDBitmapContextCreate(3, 1.0, 1.0);
  Image = CGBitmapContextCreateImage(v2);
  CGContextRelease(v2);
  return Image;
}

- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_msgSend_isEnabled(self, a2, a4))
  {
    objc_msgSend_radius(self, v9, v10);
    v12 = -v11;
    objc_msgSend_radius(self, v13, v14);
    v16 = -v15;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectInset(v31, v12, v16);
    v17 = v32.origin.x;
    v18 = v32.origin.y;
    v19 = v32.size.width;
    v20 = v32.size.height;
    objc_msgSend_offsetDelta(self, v21, v22);
    TSUDeltaApplyAffineTransform();
    v24 = v23;
    v26 = v25;
    v33.origin.x = v17;
    v33.origin.y = v18;
    v33.size.width = v19;
    v33.size.height = v20;
    v37 = CGRectOffset(v33, v24, v26);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v35 = CGRectUnion(v34, v37);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)shadowBoundsForRect:(CGRect)a3
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v3;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  objc_msgSend_shadowBoundsForRect_additionalTransform_(self, a2, v8, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalAngle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGAffineTransformMakeRotation(&v14, a4 * 0.0174532925);
  objc_msgSend_shadowBoundsForRect_additionalTransform_(self, v9, &v14, x, y, width, height);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (id)defaultShadowPresets
{
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v6 = 0;
  v7 = &qword_276825B88;
  do
  {
    v9 = *v7;
    v8 = *(v7 + 1);
    v10 = *(v7 + 4);
    v11 = *(v7 + 3);
    v12 = *(v7 + 7);
    v13 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v3, v4, 0.0, 0.0, 0.0, 1.0);
    if (v6 > 1)
    {
      if (v6 > 3)
      {
        v20 = [TSDContactShadow alloc];
        v16 = objc_msgSend_initWithOffset_height_radius_opacity_color_enabled_(v20, v21, v13, 1, v8, v12, v10, v11);
      }

      else
      {
        v18 = [TSDCurvedShadow alloc];
        v16 = objc_msgSend_initWithOffset_angle_radius_curve_opacity_color_enabled_(v18, v19, v13, 1, v8, v9, v10, v12, v11);
      }
    }

    else
    {
      v14 = [TSDDropShadow alloc];
      v16 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v14, v15, v13, 1, v9, v8, v10, v11);
    }

    v22 = v16;
    objc_msgSend_addObject_(v5, v17, v16);

    ++v6;
    v7 += 8;
  }

  while (v6 != 6);

  return v5;
}

+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(unint64_t)a5
{
  v20 = a3;
  v7 = a4;
  if ((objc_msgSend_isEqual_(v20, v8, *MEMORY[0x277D80B80]) & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSDShadow bootstrapPresetsOfKind:inTheme:alternate:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadow.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 480, 0, "Attempt to bootstrap shadow presets for kind %@ in theme <%p>.", v20, v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_defaultShadowPresets(a1, v9, v10);
  objc_msgSend_setPresets_ofKind_(v7, v19, v18, v20);
}

+ (id)mixableObjectClasses
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 3);

  return v3;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDShadow mixingTypeWithObject:context:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadow.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 506, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 1;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDShadow mixedObjectWithFraction:ofObject:]", a3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadow.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 511, 0, "Implement me in subclass!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return self;
}

- (id)mixedBaseObjectWithObject:(id)a3
{
  v4 = a3;
  if (!objc_msgSend_isEnabled(self, v5, v6))
  {
    self = v4;
  }

  v7 = self;

  return self;
}

- (id)shadowByTransformingByTransform:(CGAffineTransform *)a3
{
  v4 = fmin(a3->a, a3->d);
  v5 = objc_msgSend_mutableCopy(self, a2, a3);
  objc_msgSend_radius(self, v6, v7);
  objc_msgSend_setRadius_(v5, v9, v10, floor(v4 * v8));
  objc_msgSend_offset(self, v11, v12);
  objc_msgSend_setOffset_(v5, v14, v15, floor(v4 * v13));

  return v5;
}

- (NSShadow)NSShadow
{
  if (objc_msgSend_isEnabled(self, a2, v2))
  {
    v4 = objc_alloc_init(MEMORY[0x277D74258]);
    objc_msgSend_angle(self, v5, v6);
    objc_msgSend_offset(self, v7, v8);
    TSUDeltaFromAngle();
    v11 = objc_msgSend_color(self, v9, v10);
    v14 = objc_msgSend_CGColor(v11, v12, v13);

    objc_msgSend_opacity(self, v15, v16);
    v18 = v17;
    Alpha = CGColorGetAlpha(v14);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v14, v18 * Alpha);
    if (!CopyWithAlpha)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDShadow NSShadow]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDShadow.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 545, 0, "invalid nil value for '%{public}s'", "color");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    v30 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v20, CopyWithAlpha);
    if (v30)
    {
      objc_msgSend_setShadowColor_(v4, v29, v30);
    }

    TSUMultiplyPointScalar();
    objc_msgSend_setShadowOffset_(v4, v31, v32);
    objc_msgSend_radius(self, v33, v34);
    objc_msgSend_setShadowBlurRadius_(v4, v35, v36);
    CGColorRelease(CopyWithAlpha);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end