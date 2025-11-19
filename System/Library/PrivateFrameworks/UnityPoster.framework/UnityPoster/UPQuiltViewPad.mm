@interface UPQuiltViewPad
- (UPQuiltViewPad)initWithFrame:(CGRect)a3 identifier:(id)a4;
- (double)getOffsetForDeviceInterfaceOrientation:(double *)a1;
- (double)originTranslationValueForLandscapeMode;
- (double)originTranslationValueForPortraitMode;
- (double)scaleValueForLandscapeMode;
- (id)setupLayerForIdentifier:(void *)a1;
- (void)setIdentifier:(id)a3;
- (void)updateQuiltsWithIdentifier:(id)a3 deviceInterfaceOrientation:(int64_t)a4 unlockProgress:(double)a5;
@end

@implementation UPQuiltViewPad

- (UPQuiltViewPad)initWithFrame:(CGRect)a3 identifier:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = UPQuiltViewPad;
  v10 = [(UPQuiltViewPad *)&v19 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v10->_originalFrame.origin.x = x;
    v10->_originalFrame.origin.y = y;
    v10->_originalFrame.size.width = width;
    v10->_originalFrame.size.height = height;
    v13 = [v9 copy];
    identifier = v11->_identifier;
    v11->_identifier = v13;

    v11->_widthRatioToHero = width / 834.0;
    v11->_heightRatioToHero = height / 1194.0;
    v15 = [(UPQuiltViewPad *)v11 setupLayerForIdentifier:?];
    quiltImageLayer = v11->_quiltImageLayer;
    v11->_quiltImageLayer = v15;

    v17 = [(UPQuiltViewPad *)v11 layer];
    [v17 addSublayer:v11->_quiltImageLayer];

    v18 = [(UPQuiltViewPad *)v11 layer];
    [v18 setNeedsDisplay];
  }

  return v11;
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_identifier isEqualToString:?]|| !self->_quiltImageLayer)
  {
    [(UPQuiltViewPad *)v4 setIdentifier:&self->super.super.super.super.isa];
  }
}

uint64_t __42__UPQuiltViewPad_setupLayerForIdentifier___block_invoke()
{
  _MergedGlobals = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:@"UnityPoster"];

  return MEMORY[0x2821F96F8]();
}

id __42__UPQuiltViewPad_setupLayerForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  *a2 |= 4uLL;
  v2 = MEMORY[0x277D755B8];
  v3 = [*(a1 + 32) stringByAppendingString:@"_ipad"];
  v4 = [v2 imageNamed:v3];

  return v4;
}

- (id)setupLayerForIdentifier:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if (qword_28081C728 != -1)
    {
      dispatch_once(&qword_28081C728, &__block_literal_global_0);
    }

    v4 = _MergedGlobals;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__UPQuiltViewPad_setupLayerForIdentifier___block_invoke_2;
    v12[3] = &unk_279E05D60;
    v13 = v3;
    v5 = [v4 imageForKey:v13 generatingIfNecessaryWithBlock:v12];
    v6 = [v5 CGImage];
    v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [v5 size];
    v9 = v8;
    [v5 size];
    [v7 setFrame:{0.0, 0.0, v9, v10}];
    [v7 setContents:v6];
    [a1 setClipsToBounds:0];
    [v7 setMasksToBounds:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)getOffsetForDeviceInterfaceOrientation:(double *)a1
{
  if (!a1)
  {
    return 0.0;
  }

  if ((a2 - 2) > 2)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = dbl_27067CE30[a2 - 2];
  }

  v3 = a1[70];
  v4 = a1[71];
  v5 = a1[72];
  v6 = a1[73];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&v31.a = *MEMORY[0x277CBF2C0];
  *&v31.c = v7;
  *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v30.a = *&v31.a;
  *&v30.c = v7;
  *&v30.tx = *&v31.tx;
  v8 = CGAffineTransformTranslate(&v31, &v30, v3 * 0.5 * v5, v4 * 0.5 * v6);
  v16 = OUTLINED_FUNCTION_3(v8, v9, v10, v11, v12, v13, v14, v15, *&v31.a);
  CGAffineTransformRotate(v17, v16, v2);
  OUTLINED_FUNCTION_2();
  *&v31.a = v18;
  OUTLINED_FUNCTION_1();
  CGAffineTransformScale(v20, v19, v21, v22);
  OUTLINED_FUNCTION_2();
  *&v31.a = v23;
  OUTLINED_FUNCTION_1();
  CGAffineTransformTranslate(v25, v24, v26, v27);
  v31 = v30;
  v32.size.width = v3 * v5;
  v32.size.height = v4 * v6;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  *&v28 = CGRectApplyAffineTransform(v32, &v30);
  return UPSubtractPoints(0.0, 0.0, v28);
}

- (double)originTranslationValueForPortraitMode
{
  if (a1)
  {
    if (MGGetSInt32Answer() > 0x1C)
    {
      goto LABEL_9;
    }

    v2 = -0.282;
    OUTLINED_FUNCTION_5();
    if ((v3 & 0x200018) != 0)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_4();
    if (!v4)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5();
    if ((v5 & 0x4800) != 0)
    {
      v2 = -0.276;
    }

    else
    {
LABEL_9:
      v2 = -0.276;
    }

LABEL_10:
    [a1 timeRect];
    [a1 timeRect];
    return v2 * a1[72] * 3414.0;
  }

  return 0.0;
}

- (double)scaleValueForLandscapeMode
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = MGGetSInt32Answer();
  if (v1 > 0x1C || ((1 << v1) & 0x100000C0) == 0)
  {
    return 0.4;
  }

  else
  {
    return 0.45;
  }
}

- (double)originTranslationValueForLandscapeMode
{
  if (!a1)
  {
    return 0.0;
  }

  if (MGGetSInt32Answer() > 0x1C)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_5();
  if ((v2 & 0x200018) != 0)
  {
    v4 = 0.1262;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4();
  if (v3)
  {
    OUTLINED_FUNCTION_5();
    if ((v5 & 0x4800) != 0)
    {
      v4 = 0.1054;
      goto LABEL_10;
    }

LABEL_9:
    v4 = 0.1326;
    goto LABEL_10;
  }

  v4 = 0.15112;
LABEL_10:
  [a1 timeRect];
  v7 = v6;
  [a1 timeRect];
  v9 = -(v4 * a1[72] * 3414.0 - (v7 + v8 * 0.5));
  [a1 landscapeWidgetRect];
  return v9;
}

- (void)updateQuiltsWithIdentifier:(id)a3 deviceInterfaceOrientation:(int64_t)a4 unlockProgress:(double)a5
{
  v8 = a3;
  if (![(NSString *)self->_identifier isEqualToString:v8])
  {
    [(UPQuiltViewPad *)self setIdentifier:v8];
  }

  v9 = a5 * -0.2 + 1.0;
  if ((a4 - 3) >= 2)
  {
    v10 = a5 * -0.2 + 1.0;
  }

  else
  {
    v10 = a5 * -0.1 + 1.0;
  }

  v11 = [(UPQuiltViewPad *)self getOffsetForDeviceInterfaceOrientation:a4];
  v13 = v12;
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v170.a = *MEMORY[0x277CBF2C0];
  *&v170.c = v14;
  *&v170.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v169.a = *&v170.a;
  *&v169.c = v14;
  *&v169.tx = *&v170.tx;
  CGAffineTransformScale(&v170, &v169, v9, v10);
  if (a4 == 2)
  {
    [(UPQuiltViewPad *)self originTranslationValueForPortraitMode];
    OUTLINED_FUNCTION_1();
    CGAffineTransformTranslate(v27, v26, v28, v29);
    OUTLINED_FUNCTION_2();
    *&v170.a = v30;
    v149 = v30;
    v160 = v31;
    OUTLINED_FUNCTION_1();
    v36 = CGAffineTransformTranslate(v33, v32, v34, v35);
    OUTLINED_FUNCTION_0(v36, v37, v38, v39, v40, v41, v42, v43, v149, *(&v149 + 1), v160, *(&v160 + 1), v165, v168, *&v169.a, *&v169.b, *&v169.c, *&v169.d, *&v169.tx);
    v52 = OUTLINED_FUNCTION_3(v44, v45, v46, v47, v48, v49, v50, v51, v150);
    CGAffineTransformRotate(v53, v52, v54);
    goto LABEL_15;
  }

  if (a4 != 3)
  {
    if (a4 == 4)
    {
      v15 = [(UPQuiltViewPad *)self originTranslationValueForLandscapeMode];
      v17 = v16;
      v18 = MGGetSInt32Answer();
      if (v18 <= 0x1C)
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_4();
      }

      v113 = OUTLINED_FUNCTION_3(v18, v19, v20, v21, v22, v23, v24, v25, *&v170.a);
      v115 = CGAffineTransformTranslate(v114, v113, v15, v17);
      v170 = v169;
      v159 = *&v169.b;
      v163 = *&v169.c;
      v167 = *&v169.tx;
      v123 = OUTLINED_FUNCTION_3(v115, v116, v117, v118, v119, v120, v121, v122, *&v169.a);
      v126 = CGAffineTransformTranslate(v124, v123, v11, v125);
      OUTLINED_FUNCTION_0(v126, v127, v128, v129, v130, v131, v132, v133, v155, v159, v163, *(&v163 + 1), v167, *(&v167 + 1), *&v169.a, *&v169.b, *&v169.c, *&v169.d, *&v169.tx);
      v142 = OUTLINED_FUNCTION_3(v134, v135, v136, v137, v138, v139, v140, v141, v156);
      CGAffineTransformRotate(v143, v142, v144);
      OUTLINED_FUNCTION_2();
      *&v170.a = v78;
      goto LABEL_18;
    }

    [(UPQuiltViewPad *)self originTranslationValueForPortraitMode];
    v151 = *&v170.a;
    v161 = *&v170.c;
    OUTLINED_FUNCTION_1();
    v59 = CGAffineTransformTranslate(v56, v55, v57, v58);
    OUTLINED_FUNCTION_0(v59, v60, v61, v62, v63, v64, v65, v66, v151, *(&v151 + 1), v161, *(&v161 + 1), v165, v168, *&v169.a, *&v169.b, *&v169.c, *&v169.d, *&v169.tx);
    v75 = OUTLINED_FUNCTION_3(v67, v68, v69, v70, v71, v72, v73, v74, v152);
    CGAffineTransformTranslate(v76, v75, v11, v13);
LABEL_15:
    OUTLINED_FUNCTION_2();
    *&v170.a = v78;
    goto LABEL_18;
  }

  [(UPQuiltViewPad *)self originTranslationValueForLandscapeMode];
  if (MGGetSInt32Answer() <= 0x1C)
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_1();
  v83 = CGAffineTransformTranslate(v80, v79, v81, v82);
  v170 = v169;
  v158 = *&v169.b;
  v162 = *&v169.c;
  v166 = *&v169.tx;
  v91 = OUTLINED_FUNCTION_3(v83, v84, v85, v86, v87, v88, v89, v90, *&v169.a);
  v94 = CGAffineTransformTranslate(v92, v91, v93, v13);
  OUTLINED_FUNCTION_0(v94, v95, v96, v97, v98, v99, v100, v101, v153, v158, v162, *(&v162 + 1), v166, *(&v166 + 1), *&v169.a, *&v169.b, *&v169.c, *&v169.d, *&v169.tx);
  v110 = OUTLINED_FUNCTION_3(v102, v103, v104, v105, v106, v107, v108, v109, v154);
  CGAffineTransformRotate(v111, v110, v112);
  OUTLINED_FUNCTION_2();
  *&v170.a = v78;
LABEL_18:
  v157 = v78;
  v164 = v77;
  OUTLINED_FUNCTION_1();
  CGAffineTransformScale(v146, v145, v147, v148);
  v170 = v169;
  [(UPQuiltViewPad *)self setTransform:&v169, v157, v164];
}

- (void)setIdentifier:(id *)a3 .cold.1(void *a1, void **a2, id *a3)
{
  v6 = [a1 copy];
  v7 = *a2;
  *a2 = v6;

  v8 = [(UPQuiltViewPad *)a3 setupLayerForIdentifier:a1];
  v9 = [a3[67] superlayer];

  v10 = [a3 layer];
  v11 = v10;
  if (v9)
  {
    [v10 replaceSublayer:a3[67] with:v8];
  }

  else
  {
    [v10 addSublayer:v8];
  }

  v12 = a3[67];
  a3[67] = v8;
}

@end