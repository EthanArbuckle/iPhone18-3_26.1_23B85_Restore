@interface TSDDropShadow
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGImage)newShadowImageForRep:(id)a3 withSize:(CGSize)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6;
- (CGRect)boundsForRep:(id)a3;
- (CGRect)boundsInNaturalSpaceForRep:(id)a3;
- (TSDDropShadow)initWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8;
- (TSDDropShadow)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDDropShadow)shadowWithClampedValues;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newShadowClampedForSwatches;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDDropShadow

- (TSDDropShadow)initWithAngle:(double)a3 offset:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8
{
  v9.receiver = self;
  v9.super_class = TSDDropShadow;
  return [(TSDShadow *)&v9 i_initWithOpacity:a7 color:a8 angle:a6 offset:a3 radius:a4 enabled:a5];
}

- (TSDDropShadow)shadowWithClampedValues
{
  v3 = objc_alloc(objc_opt_class());
  objc_msgSend_angle(self, v4, v5);
  v7 = v6;
  objc_msgSend_offset(self, v8, v9);
  v11 = v10;
  objc_msgSend_radius(self, v12, v13);
  v15 = v14;
  objc_msgSend_opacity(self, v16, v17);
  v19 = v18;
  v22 = objc_msgSend_color(self, v20, v21);
  isEnabled = objc_msgSend_isEnabled(self, v23, v24);
  v27 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v3, v26, v22, isEnabled, v7, v11, v15, v19);

  return v27;
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

  if (v5)
  {
    v8.receiver = self;
    v8.super_class = TSDDropShadow;
    v6 = [(TSDShadow *)&v8 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TSDDropShadow;
  return [(TSDShadow *)&v3 hash];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableDropShadow alloc];
  objc_msgSend_angle(self, v5, v6);
  v8 = v7;
  objc_msgSend_offset(self, v9, v10);
  v12 = v11;
  objc_msgSend_radius(self, v13, v14);
  v16 = v15;
  objc_msgSend_opacity(self, v17, v18);
  v20 = v19;
  v23 = objc_msgSend_color(self, v21, v22);
  isEnabled = objc_msgSend_isEnabled(self, v24, v25);
  v28 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v4, v27, v23, isEnabled, v8, v12, v16, v20);

  return v28;
}

- (id)newShadowClampedForSwatches
{
  objc_msgSend_radius(self, a2, v2);
  v5 = v4;
  objc_msgSend_offset(self, v6, v7);
  v9 = v5 + v8;
  objc_msgSend_radius(self, v10, v11);
  v13 = v12;
  objc_msgSend_offset(self, v14, v15);
  v17 = v16;
  if (v9 > 10.0)
  {
    v13 = v13 * (10.0 / v9);
    v17 = v16 * (10.0 / v9);
  }

  v18 = [TSDDropShadow alloc];
  objc_msgSend_angle(self, v19, v20);
  v22 = v21;
  objc_msgSend_opacity(self, v23, v24);
  v26 = v25;
  v29 = objc_msgSend_color(self, v27, v28);
  isEnabled = objc_msgSend_isEnabled(self, v30, v31);
  v34 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v18, v33, v29, isEnabled, v22, v17, v13, v26);

  return v34;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)a3
{
  v3 = objc_msgSend_styledLayout(a3, a2, a3);
  objc_msgSend_shadowedNaturalBoundsWithoutOffset(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)boundsForRep:(id)a3
{
  v3 = objc_msgSend_styledLayout(a3, a2, a3);
  objc_msgSend_shadowedNaturalBoundsWithoutOffset(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGImage)newShadowImageForRep:(id)a3 withSize:(CGSize)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  TSURoundedSize();
  v11 = v10;
  v13 = v12;
  TSURectWithSize();
  TSURoundedRect();
  Image = 0;
  if (v18 != 0.0)
  {
    v21 = v19;
    if (v19 != 0.0)
    {
      v22 = v16;
      v23 = v18;
      Image = 0;
      v24 = ceil(fmax(v11, v18));
      if (v24 > 0.0 && ceil(fmax(v13, v19)) > 0.0)
      {
        v25 = v17;
        v26 = objc_msgSend_color(self, v14, v15);
        v29 = objc_msgSend_CGColor(v26, v27, v28);

        v30 = TSDBitmapContextCreate(0xB, v23, v21);
        if (v30)
        {
          v33 = v30;
          v112 = a5;
          v34 = objc_msgSend_layout(v9, v31, v32);
          v37 = v34;
          v38 = v29;
          if (v34)
          {
            objc_msgSend_transformInRoot(v34, v35, v36);
          }

          else
          {
            v115 = 0u;
            v116 = 0u;
            v114 = 0u;
          }

          TSUTransformAngleInDegrees();
          sub_2766477E4(v33, v39);

          v42 = objc_msgSend_canvas(v9, v40, v41);
          isPrinting = objc_msgSend_isPrinting(v42, v43, v44);
          v48 = objc_msgSend_canvas(v9, v46, v47);
          isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v48, v49, v50);
          v54 = objc_msgSend_canvas(v9, v52, v53);
          objc_msgSend_contentsScale(v54, v55, v56);
          TSDSetCGContextInfo(v33, isPrinting, isDrawingIntoPDF, 1, 0, v57);

          objc_msgSend_radius(self, v58, v59);
          v61 = v60;
          CGContextTranslateCTM(v33, -v22, -v25);
          CGContextTranslateCTM(v33, -(v24 + 10.0), -0.0);
          if (v6)
          {
            v115 = 0u;
            v116 = 0u;
            v114 = 0u;
            v64 = objc_msgSend_layout(v9, v62, v63);
            v67 = objc_msgSend_geometry(v64, v65, v66);
            v70 = v67;
            if (v67)
            {
              objc_msgSend_transform(v67, v68, v69);
            }

            else
            {
              v115 = 0u;
              v116 = 0u;
              v114 = 0u;
            }

            TSUCrossPoints();
            if (v71 > 0.0)
            {
              transform.a = -1.0;
              transform.b = 0.0;
              transform.c = 0.0;
              transform.d = 1.0;
              transform.tx = v11;
              transform.ty = 0.0;
              CGContextConcatCTM(v33, &transform);
            }

            transform.b = 0.0;
            transform.c = 0.0;
            transform.a = 1.0;
            *&transform.d = xmmword_2768256B0;
            transform.ty = v13;
            CGContextConcatCTM(v33, &transform);
          }

          v117.height = 0.0;
          v117.width = v24 + 10.0;
          CGContextSetShadowWithColor(v33, v117, v61, v38);
          CGContextTranslateCTM(v33, v61, v61);
          if (objc_msgSend_canDrawShadowInOneStepWithChildren_(v9, v72, 1))
          {
            objc_msgSend_performSelector_withObject_(v9, v73, v112, v33);
          }

          else
          {
            objc_msgSend_naturalBounds(v9, v73, v74);
            TSURectWithSize();
            v76 = v75;
            v78 = v77;
            TSUShrinkSizeToFitInSize();
            if (v79 > 0.0 && v80 > 0.0)
            {
              v81 = v79 / v76;
              v82 = v80 / v78;
              v83 = CGLayerCreateWithContext(v33, *&v79, 0);
              Context = CGLayerGetContext(v83);
              v87 = objc_msgSend_layout(v9, v85, v86);
              v90 = v87;
              if (v87)
              {
                objc_msgSend_transformInRoot(v87, v88, v89);
              }

              else
              {
                v115 = 0u;
                v116 = 0u;
                v114 = 0u;
              }

              TSUTransformAngleInDegrees();
              sub_2766477E4(Context, v91);

              v94 = objc_msgSend_canvas(v9, v92, v93);
              v97 = objc_msgSend_isPrinting(v94, v95, v96);
              v100 = objc_msgSend_canvas(v9, v98, v99);
              v103 = objc_msgSend_isDrawingIntoPDF(v100, v101, v102);
              v106 = objc_msgSend_canvas(v9, v104, v105);
              objc_msgSend_contentsScale(v106, v107, v108);
              TSDSetCGContextInfo(Context, v97, v103, 0, 0, v109);

              CGContextScaleCTM(Context, v81, v82);
              objc_msgSend_performSelector_withObject_(v9, v110, v112, Context);
              TSDClearCGContextInfo(Context);
              TSURectWithSize();
              CGContextDrawLayerInRect(v33, v118, v83);
              CGLayerRelease(v83);
            }
          }

          Image = CGBitmapContextCreateImage(v33);
          TSDClearCGContextInfo(v33);
          CGContextRelease(v33);
        }

        else
        {
          Image = 0;
        }
      }
    }
  }

  return Image;
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
      objc_msgSend_radius(self, v11, v12);
      v14 = v13;
      objc_msgSend_radius(v6, v15, v16);
      if (v14 == v19 || vabdd_f64(v14, v19) < 0.00999999978)
      {
        v22 = objc_msgSend_color(self, v17, v18);
        v25 = objc_msgSend_color(v6, v23, v24);
        isAlmostEqualToColor = objc_msgSend_isAlmostEqualToColor_(v22, v26, v25);

        if (isAlmostEqualToColor)
        {
          v20 = 4;
        }

        else
        {
          v20 = 3;
        }
      }

      else
      {
        v20 = 3;
      }
    }

    else
    {
      v20 = 4;
    }
  }

  else
  {
    v20 = 2;
  }

  return v20;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = self;
  v7 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();

  objc_msgSend_opacity(v6, v9, v10);
  objc_msgSend_opacity(v8, v11, v12);
  if (objc_msgSend_isEnabled(v6, v13, v14) & 1) != 0 || (objc_msgSend_isEnabled(v8, v15, v16))
  {
    if ((objc_msgSend_isEnabled(v6, v15, v16) & 1) == 0 && v8)
    {
      v19 = v8;

      v6 = v19;
    }

    if ((objc_msgSend_isEnabled(v8, v17, v18) & 1) == 0)
    {
      v22 = v6;

      v8 = v22;
    }

    objc_msgSend_angle(v6, v20, v21);
    objc_msgSend_angle(v8, v23, v24);
    TSUMixAnglesInDegrees();
    v26 = v25;
    objc_msgSend_offset(v6, v27, v28);
    objc_msgSend_offset(v8, v29, v30);
    TSUMix();
    v32 = v31;
    objc_msgSend_radius(v6, v33, v34);
    objc_msgSend_radius(v8, v35, v36);
    TSUMix();
    v38 = round(v37);
    TSUMix();
    v40 = v39;
    v43 = objc_msgSend_color(v6, v41, v42);
    v46 = objc_msgSend_color(v8, v44, v45);
    isEqual = objc_msgSend_isEqual_(v43, v47, v46);

    v53 = objc_msgSend_color(v6, v49, v50);
    if ((isEqual & 1) == 0)
    {
      v54 = objc_msgSend_color(v8, v51, v52);
      v56 = objc_msgSend_blendedColorWithFraction_ofColor_(v53, v55, v54, a3);

      v53 = v56;
    }

    v57 = [TSDDropShadow alloc];
    v59 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v57, v58, v53, 1, v26, v32, v38, v40);
  }

  else
  {
    v6 = v6;
    v59 = v6;
  }

  return v59;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  if (TSD::ShadowArchive::ByteSizeLong(a3))
  {
    v8 = [TSDDropShadow alloc];
    v10 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, a3, v5);
  }

  else
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  }

  v11 = v10;

  return v11;
}

- (TSDDropShadow)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSDDropShadow;
  return [(TSDShadow *)&v5 initWithArchive:a3 unarchiver:a4];
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v4.receiver = self;
  v4.super_class = TSDDropShadow;
  [(TSDShadow *)&v4 saveToArchive:a3 archiver:a4];
}

@end