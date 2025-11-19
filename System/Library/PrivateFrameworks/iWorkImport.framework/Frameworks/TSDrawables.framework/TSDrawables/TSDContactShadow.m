@interface TSDContactShadow
+ (id)contactShadowWithOffset:(double)a3 height:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGImage)newShadowImageForRep:(id)a3 withSize:(CGSize)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6;
- (CGImage)newShadowImageFromContext:(CGContext *)a3 withSize:(CGSize)a4 bounds:(CGRect)a5 unflipped:(BOOL)a6;
- (CGRect)boundsForRep:(id)a3;
- (CGRect)boundsInNaturalSpaceForRep:(id)a3;
- (CGRect)shadowBoundsForRect:(CGRect)a3 additionalTransform:(CGAffineTransform *)a4;
- (TSDContactShadow)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSDContactShadow)initWithOffset:(double)a3 height:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8;
- (TSDContactShadow)shadowWithClampedValues;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newShadowClampedForSwatches;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSDContactShadow

+ (id)contactShadowWithOffset:(double)a3 height:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8
{
  v8 = a8;
  v14 = a7;
  v15 = [a1 alloc];
  v17 = objc_msgSend_initWithOffset_height_radius_opacity_color_enabled_(v15, v16, v14, v8, a3, a4, a5, a6);

  return v17;
}

- (TSDContactShadow)initWithOffset:(double)a3 height:(double)a4 radius:(double)a5 opacity:(double)a6 color:(id)a7 enabled:(BOOL)a8
{
  v8 = a8;
  v15 = a7;
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDContactShadow initWithOffset:height:radius:opacity:color:enabled:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContactShadow.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 46, 0, "invalid nil value for '%{public}s'", "color");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v26.receiver = self;
  v26.super_class = TSDContactShadow;
  v23 = [(TSDShadow *)&v26 i_initWithOpacity:v15 color:v8 angle:a6 offset:0.0 radius:a3 enabled:a5];
  v24 = v23;
  if (v23)
  {
    v23[7] = a4;
  }

  return v24;
}

- (TSDContactShadow)shadowWithClampedValues
{
  v3 = objc_alloc(objc_opt_class());
  objc_msgSend_offset(self, v4, v5);
  v7 = v6;
  objc_msgSend_height(self, v8, v9);
  v11 = v10;
  objc_msgSend_radius(self, v12, v13);
  v15 = v14;
  objc_msgSend_opacity(self, v16, v17);
  v19 = v18;
  v22 = objc_msgSend_color(self, v20, v21);
  isEnabled = objc_msgSend_isEnabled(self, v23, v24);
  v27 = objc_msgSend_initWithOffset_height_radius_opacity_color_enabled_(v3, v26, v22, isEnabled, v7, v11, v15, v19);

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

  if (v5 && (v15.receiver = self, v15.super_class = TSDContactShadow, [(TSDShadow *)&v15 isEqual:v5]))
  {
    objc_msgSend_height(self, v6, v7);
    v9 = v8;
    objc_msgSend_height(v5, v10, v11);
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
  v3.super_class = TSDContactShadow;
  return [(TSDShadow *)&v3 hash];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSDMutableContactShadow alloc];
  objc_msgSend_offset(self, v5, v6);
  v8 = v7;
  objc_msgSend_height(self, v9, v10);
  v12 = v11;
  objc_msgSend_radius(self, v13, v14);
  v16 = v15;
  objc_msgSend_opacity(self, v17, v18);
  v20 = v19;
  v23 = objc_msgSend_color(self, v21, v22);
  isEnabled = objc_msgSend_isEnabled(self, v24, v25);
  v28 = objc_msgSend_initWithOffset_height_radius_opacity_color_enabled_(v4, v27, v23, isEnabled, v8, v12, v16, v20);

  return v28;
}

- (id)newShadowClampedForSwatches
{
  objc_msgSend_offset(self, a2, v2);
  TSUClamp();
  v5 = v4;
  objc_msgSend_radius(self, v6, v7);
  TSUClamp();
  v9 = v8;
  objc_msgSend_height(self, v10, v11);
  TSUClamp();
  v13 = v12;
  v14 = [TSDContactShadow alloc];
  objc_msgSend_opacity(self, v15, v16);
  v18 = v17;
  v21 = objc_msgSend_color(self, v19, v20);
  isEnabled = objc_msgSend_isEnabled(self, v22, v23);
  v26 = objc_msgSend_initWithOffset_height_radius_opacity_color_enabled_(v14, v25, v21, isEnabled, v5, v13, v9, v18);

  return v26;
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
    *&v34.a = *&a4->a;
    *&v34.c = v10;
    *&v34.tx = *&a4->tx;
    CGAffineTransformInvert(&v35, &v34);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v37 = CGRectApplyAffineTransform(v36, &v35);
    v11 = v37.origin.x;
    v12 = v37.origin.y;
    v13 = v37.size.width;
    v14 = v37.size.height;
    CGRectGetMidX(v37);
    v33 = height;
    v38.origin.x = v11;
    v38.origin.y = v12;
    v38.size.width = v13;
    v38.size.height = v14;
    CGRectGetMaxY(v38);
    v32 = width;
    v39.origin.x = v11;
    v39.origin.y = v12;
    v39.size.width = v13;
    v39.size.height = v14;
    CGRectGetWidth(v39);
    TSURectWithCenterAndSize();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    objc_msgSend_offset(self, v23, v24);
    v26 = v25;
    v40.origin.x = v16;
    v40.origin.y = v18;
    v40.size.width = v20;
    v40.size.height = v22;
    v41 = CGRectOffset(v40, 0.0, v26);
    v42 = CGRectInset(v41, -120.0, 0.0);
    v27 = *&a4->c;
    *&v35.a = *&a4->a;
    *&v35.c = v27;
    *&v35.tx = *&a4->tx;
    v46 = CGRectApplyAffineTransform(v42, &v35);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = v32;
    v43.size.height = v33;
    v44 = CGRectUnion(v43, v46);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
  }

  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)boundsInNaturalSpaceForRep:(id)a3
{
  v3 = objc_msgSend_styledLayout(a3, a2, a3);
  objc_msgSend_alignmentFrameInRoot(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v7;
  v12.size.height = v9;
  result = CGRectInset(v12, -120.0, 0.0);
  v10 = result.size.height + -75.0;
  v11 = 150.0;
  result.size.height = v11;
  result.origin.y = v10;
  return result;
}

- (CGRect)boundsForRep:(id)a3
{
  v3 = objc_msgSend_styledLayout(a3, a2, a3);
  objc_msgSend_alignmentFrameInRoot(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  result = CGRectInset(v16, -120.0, 0.0);
  v14 = result.origin.y + result.size.height + -75.0;
  v15 = 150.0;
  result.size.height = v15;
  result.origin.y = v14;
  return result;
}

- (CGImage)newShadowImageForRep:(id)a3 withSize:(CGSize)a4 drawSelector:(SEL)a5 unflipped:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v14 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v12, v13);
  shouldRenderContactShadow = objc_msgSend_shouldRenderContactShadow(v14, v15, v16);

  if (shouldRenderContactShadow)
  {
    objc_msgSend_boundsForRep_(self, v18, v11);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = TSDBitmapContextCreate(3, v24, 150.0);
    v31 = objc_msgSend_canvas(v11, v29, v30);
    isPrinting = objc_msgSend_isPrinting(v31, v32, v33);
    v37 = objc_msgSend_canvas(v11, v35, v36);
    isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v37, v38, v39);
    v43 = objc_msgSend_canvas(v11, v41, v42);
    objc_msgSend_contentsScale(v43, v44, v45);
    TSDSetCGContextInfo(v28, isPrinting, isDrawingIntoPDF, 1, 0, v46);

    v49 = objc_msgSend_layout(v11, v47, v48);
    v52 = v49;
    if (v49)
    {
      objc_msgSend_transformInRoot(v49, v50, v51);
    }

    else
    {
      memset(&v65, 0, sizeof(v65));
    }

    TSUTransformAngleInDegrees();
    sub_2766477E4(v28, v54);

    CGContextTranslateCTM(v28, -v21, -v23);
    CGContextTranslateCTM(v28, 0.0, v27 * 0.5);
    memset(&v65, 0, sizeof(v65));
    v57 = objc_msgSend_styledLayout(v11, v55, v56);
    v60 = v57;
    if (v57)
    {
      objc_msgSend_transformInRoot(v57, v58, v59);
    }

    else
    {
      memset(&v65, 0, sizeof(v65));
    }

    v64 = v65;
    CGContextConcatCTM(v28, &v64);
    objc_msgSend_performSelector_withObject_(v11, v61, a5, v28);
    v53 = objc_msgSend_newShadowImageFromContext_withSize_bounds_unflipped_(self, v62, v28, v6, width, height, v21, v23, v25, v27);
    CGContextRelease(v28);
  }

  else
  {
    v53 = objc_msgSend_i_newEmptyImage(self, v18, v19);
  }

  return v53;
}

- (CGImage)newShadowImageFromContext:(CGContext *)a3 withSize:(CGSize)a4 bounds:(CGRect)a5 unflipped:(BOOL)a6
{
  height = a4.height;
  width = a4.width;
  v215[4] = *MEMORY[0x277D85DE8];
  v10 = a5.size.height * 0.5;
  objc_msgSend_radius(self, a2, a3, a6, a4.width, a4.height, a5.origin.x, a5.origin.y, a5.size.width);
  v12 = v11;
  objc_msgSend_radius(self, v13, v14);
  v16 = v15;
  objc_msgSend_height(self, v17, v18);
  v20 = v19;
  image = CGBitmapContextCreateImage(a3);
  v22 = objc_msgSend_imageWithCGImage_(MEMORY[0x277CBF758], v21, image);
  v25 = objc_msgSend_color(self, v23, v24);
  objc_msgSend_getRGBAComponents_(v25, v26, v215);

  v28 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v27, @"CIAffineTransform");
  v29 = *MEMORY[0x277CBFAF0];
  v207 = v22;
  objc_msgSend_setValue_forKey_(v28, v30, v22, *MEMORY[0x277CBFAF0]);
  objc_msgSend_offset(self, v31, v32);
  TSUClamp();
  memset(&v214, 0, sizeof(v214));
  CGAffineTransformMakeTranslation(&v214, 0.0, -v33 - height * 0.5);
  v213 = v214;
  v35 = objc_msgSend_valueWithCGAffineTransform_(MEMORY[0x277CCAE60], v34, &v213);
  objc_msgSend_setValue_forKey_(v28, v36, v35, @"inputTransform");

  v38 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v37, @"CIColorMatrix");
  v39 = *MEMORY[0x277CBFB50];
  v206 = v28;
  v41 = objc_msgSend_valueForKey_(v28, v40, *MEMORY[0x277CBFB50]);
  objc_msgSend_setValue_forKey_(v38, v42, v41, v29);

  v45 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v43, v44, 0.0, 0.0, 0.0, 0.0);
  objc_msgSend_setValue_forKey_(v38, v46, v45, @"inputRVector");

  v49 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v47, v48, 0.0, 0.0, 0.0, 0.0);
  objc_msgSend_setValue_forKey_(v38, v50, v49, @"inputGVector");

  v53 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v51, v52, 0.0, 0.0, 0.0, 0.0);
  objc_msgSend_setValue_forKey_(v38, v54, v53, @"inputBVector");

  v55 = MEMORY[0x277CBF788];
  v56 = v215[3];
  v196 = self;
  objc_msgSend_opacity(self, v57, v58);
  v62 = objc_msgSend_vectorWithX_Y_Z_W_(v55, v60, v61, 0.0, 0.0, 0.0, v56 * v59);
  objc_msgSend_setValue_forKey_(v38, v63, v62, @"inputAVector");

  v66 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v64, v65, v215[0], v215[1], v215[2], 0.0);
  objc_msgSend_setValue_forKey_(v38, v67, v66, @"inputBiasVector");

  v69 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v68, @"CICrop");
  v71 = objc_msgSend_valueForKey_(v38, v70, v39);
  objc_msgSend_setValue_forKey_(v69, v72, v71, v29);

  v75 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v73, v74, 0.0, v10 + -20.0, width, 20.0);
  objc_msgSend_setValue_forKey_(v69, v76, v75, @"inputRectangle");

  v78 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v77, @"CICrop");
  v204 = v38;
  v80 = objc_msgSend_valueForKey_(v38, v79, v39);
  objc_msgSend_setValue_forKey_(v78, v81, v80, v29);

  v84 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v82, v83, 0.0, v10 + -70.0, width, 70.0);
  v208 = v78;
  objc_msgSend_setValue_forKey_(v78, v85, v84, @"inputRectangle");

  v203 = v69;
  v87 = objc_msgSend_valueForKey_(v69, v86, v39);
  objc_msgSend_extent(v87, v88, v89);
  v202 = v87;
  if (v92 <= 1.0)
  {
    v101 = MEMORY[0x277CBF758];
    v93 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277CBF730], v90, v91, 0.0, 0.0, 0.0, 0.0);
    objc_msgSend_imageWithColor_(v101, v102, v93);
  }

  else
  {
    v93 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v90, @"CIGaussianBlur");
    objc_msgSend_setValue_forKey_(v93, v94, v87, v29);
    *&v95 = fmin(v12 / 3.0, 55.0);
    v98 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v96, v97, v95);
    objc_msgSend_setValue_forKey_(v93, v99, v98, @"inputRadius");

    objc_msgSend_valueForKey_(v93, v100, v39);
  }
  v103 = ;

  v105 = objc_msgSend_valueForKey_(v208, v104, v39);
  objc_msgSend_extent(v105, v106, v107);
  v200 = v105;
  if (v110 <= 1.0)
  {
    v119 = MEMORY[0x277CBF758];
    v111 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277CBF730], v108, v109, 0.0, 0.0, 0.0, 0.0);
    objc_msgSend_imageWithColor_(v119, v120, v111);
  }

  else
  {
    v111 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v108, @"CIGaussianBlur");
    objc_msgSend_setValue_forKey_(v111, v112, v105, v29);
    *&v113 = fmin(v16, 55.0);
    v116 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v114, v115, v113);
    objc_msgSend_setValue_forKey_(v111, v117, v116, @"inputRadius");

    objc_msgSend_valueForKey_(v111, v118, v39);
  }
  v121 = ;

  memset(&v213, 0, sizeof(v213));
  CGAffineTransformMakeTranslation(&v213, 0.0, v10);
  v211 = v213;
  CGAffineTransformScale(&v212, &v211, 1.0, v20);
  v213 = v212;
  v211 = v212;
  CGAffineTransformTranslate(&v212, &v211, 0.0, 10.0 - v10);
  v213 = v212;
  v123 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v122, @"CIAffineTransform");
  v201 = v103;
  objc_msgSend_setValue_forKey_(v123, v124, v103, v29);
  v212 = v213;
  v126 = objc_msgSend_valueWithCGAffineTransform_(MEMORY[0x277CCAE60], v125, &v212);
  objc_msgSend_setValue_forKey_(v123, v127, v126, @"inputTransform");

  memset(&v212, 0, sizeof(v212));
  CGAffineTransformMakeTranslation(&v212, 0.0, v10);
  v210 = v212;
  CGAffineTransformScale(&v211, &v210, 1.0, v20);
  v212 = v211;
  v210 = v211;
  CGAffineTransformTranslate(&v211, &v210, 0.0, 35.0 - v10);
  v212 = v211;
  v129 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v128, @"CIAffineTransform");
  v199 = v121;
  objc_msgSend_setValue_forKey_(v129, v130, v121, v29);
  v211 = v212;
  v132 = objc_msgSend_valueWithCGAffineTransform_(MEMORY[0x277CCAE60], v131, &v211);
  objc_msgSend_setValue_forKey_(v129, v133, v132, @"inputTransform");

  v135 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v134, @"CIColorMatrix");
  objc_msgSend_setDefaults(v135, v136, v137);
  v197 = v129;
  v139 = objc_msgSend_valueForKey_(v129, v138, v39);
  objc_msgSend_setValue_forKey_(v135, v140, v139, v29);

  v143 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v141, v142, 0.0, 0.0, 0.0, 0.5);
  objc_msgSend_setValue_forKey_(v135, v144, v143, @"inputAVector");

  v146 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v145, @"CISourceOverCompositing");
  v198 = v123;
  v148 = objc_msgSend_valueForKey_(v123, v147, v39);
  objc_msgSend_setValue_forKey_(v146, v149, v148, v29);

  v151 = objc_msgSend_valueForKey_(v135, v150, v39);
  objc_msgSend_setValue_forKey_(v146, v152, v151, @"inputBackgroundImage");

  v154 = objc_msgSend_valueForKey_(v146, v153, v39);
  v156 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v155, @"CIAffineClamp");
  v157 = *(MEMORY[0x277CBF2C0] + 16);
  *&v211.a = *MEMORY[0x277CBF2C0];
  *&v211.c = v157;
  *&v211.tx = *(MEMORY[0x277CBF2C0] + 32);
  v159 = objc_msgSend_valueWithCGAffineTransform_(MEMORY[0x277CCAE60], v158, &v211);
  objc_msgSend_setValue_forKey_(v156, v160, v159, @"inputTransform");

  objc_msgSend_setValue_forKey_(v156, v161, v154, v29);
  v163 = objc_msgSend_valueForKey_(v156, v162, v39);

  v166 = objc_msgSend_imageByCroppingToRect_(v163, v164, v165, 0.0, 0.0, width, height);

  memset(&v211, 0, sizeof(v211));
  CGAffineTransformMakeScale(&v211, 1.0, -1.0);
  v209 = v211;
  CGAffineTransformTranslate(&v210, &v209, 0.0, height);
  v211 = v210;
  v168 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], v167, @"CIAffineTransform");
  objc_msgSend_setValue_forKey_(v168, v169, v166, v29);
  v210 = v211;
  v171 = objc_msgSend_valueWithCGAffineTransform_(MEMORY[0x277CCAE60], v170, &v210);
  objc_msgSend_setValue_forKey_(v168, v172, v171, @"inputTransform");

  v173 = objc_autoreleasePoolPush();
  v175 = objc_msgSend_contextWithOptions_(MEMORY[0x277CBF740], v174, 0);
  objc_msgSend_outputImageMaximumSize(v175, v176, v177);
  if (width >= v180 || height >= v179)
  {
    v186 = MEMORY[0x277D81150];
    v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, "[TSDContactShadow newShadowImageFromContext:withSize:bounds:unflipped:]");
    v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v188, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDContactShadow.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v186, v190, v187, v189, 396, 0, "Cannot render contact shadow, the size is too large for the CIContext to render. Returning empty image instead");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v191, v192);
    CGImage_fromRect = objc_msgSend_i_newEmptyImage(v196, v193, v194);
  }

  else
  {
    v181 = objc_msgSend_valueForKey_(v168, v178, v39);

    objc_msgSend_extent(v181, v182, v183);
    CGImage_fromRect = objc_msgSend_createCGImage_fromRect_(v175, v184, v181);
    v166 = v181;
  }

  objc_autoreleasePoolPop(v173);
  CGImageRelease(image);

  return CGImage_fromRect;
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
      objc_msgSend_height(self, v11, v12);
      v14 = v13;
      objc_msgSend_height(v6, v15, v16);
      if ((v14 == v19 || vabdd_f64(v14, v19) < 0.00999999978) && ((objc_msgSend_perspective(self, v17, v18), v21 = v20, objc_msgSend_perspective(v6, v22, v23), v21 == v26) || vabdd_f64(v21, v26) < 0.00999999978) && ((objc_msgSend_offset(self, v24, v25), v28 = v27, objc_msgSend_offset(v6, v29, v30), v28 == v33) || vabdd_f64(v28, v33) < 0.00999999978))
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
    objc_msgSend_height(v6, v23, v24);
    objc_msgSend_height(v8, v25, v26);
    TSUMix();
    v28 = v27;
    objc_msgSend_radius(v6, v29, v30);
    objc_msgSend_radius(v8, v31, v32);
    TSUMix();
    v34 = v33;
    objc_msgSend_opacity(v6, v35, v36);
    objc_msgSend_opacity(v8, v37, v38);
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

    v57 = [TSDContactShadow alloc];
    v59 = objc_msgSend_initWithOffset_height_radius_opacity_color_enabled_(v57, v58, v53, 1, v22, v28, v34, v40);
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
    v8 = [TSDContactShadow alloc];
    v10 = objc_msgSend_initWithArchive_unarchiver_(v8, v9, a3, v5);
  }

  else
  {
    v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  }

  v11 = v10;

  return v11;
}

- (TSDContactShadow)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSDContactShadow;
  result = [(TSDShadow *)&v7 initWithArchive:a3 unarchiver:a4];
  if (result)
  {
    v6 = *(a3 + 5);
    if (!v6)
    {
      v6 = &TSD::_ContactShadowArchive_default_instance_;
    }

    result->mHeight = *(v6 + 7);
  }

  return result;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = TSDContactShadow;
  [(TSDShadow *)&v10 saveToArchive:a3 archiver:v6];
  *(a3 + 4) |= 4u;
  v7 = *(a3 + 5);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::ContactShadowArchive>(v8);
    *(a3 + 5) = v7;
  }

  mHeight = self->mHeight;
  *(v7 + 16) |= 2u;
  *(v7 + 28) = mHeight;
}

@end