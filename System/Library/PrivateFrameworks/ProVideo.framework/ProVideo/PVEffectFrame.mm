@interface PVEffectFrame
+ (id)frameWithEffect:(id)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeTextFrames:(BOOL)a7 minimumHitSize:(double)a8 hitSizeThreshold:(double)a9 viewSize:(CGSize)a10 viewOrigin:(int)a11;
- (CGPoint)center;
- (CGPoint)midpoint;
- (CGRect)objectBounds;
- (CGRect)outputROI;
- (CGRect)viewSpaceObjectBounds;
- (CGSize)effectSize;
- (CGSize)viewSize;
- (PVCGPointQuad)cornerPoints;
- (PVEffectFrame)initWithEffect:(id)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeTextFrames:(BOOL)a7 minimumHitSize:(double)a8 hitSizeThreshold:(double)a9 viewSize:(CGSize)a10 viewOrigin:(int)a11;
- (__n128)setTransform:(__int128 *)a3;
- (__n128)setTransformInfo:(__int128 *)a3;
- (__n128)transform;
- (__n128)transformInfo;
- (id)description;
- (void)dealloc;
- (void)setCornerPoints:(PVCGPointQuad *)a3;
- (void)setExpandedHitAreaPath:(CGPath *)a3;
- (void)setHitAreaPath:(CGPath *)a3;
- (void)setTime:(id *)a3;
@end

@implementation PVEffectFrame

- (void)dealloc
{
  CGPathRelease(self->_hitAreaPath);
  CGPathRelease(self->_expandedHitAreaPath);
  v3.receiver = self;
  v3.super_class = PVEffectFrame;
  [(PVEffectFrame *)&v3 dealloc];
}

+ (id)frameWithEffect:(id)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeTextFrames:(BOOL)a7 minimumHitSize:(double)a8 hitSizeThreshold:(double)a9 viewSize:(CGSize)a10 viewOrigin:(int)a11
{
  v11 = *&a11;
  height = a10.height;
  width = a10.width;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v21 = a3;
  v22 = [a1 alloc];
  v25 = *a4;
  v23 = [v22 initWithEffect:v21 atTime:&v25 forcePosterFrame:v18 includeDropShadow:v17 includeTextFrames:v16 minimumHitSize:v11 hitSizeThreshold:a8 viewSize:a9 viewOrigin:{width, height}];

  return v23;
}

- (PVEffectFrame)initWithEffect:(id)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeTextFrames:(BOOL)a7 minimumHitSize:(double)a8 hitSizeThreshold:(double)a9 viewSize:(CGSize)a10 viewOrigin:(int)a11
{
  v11 = *&a11;
  width = a10.width;
  height = a10.height;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v19 = a3;
  v86.receiver = self;
  v86.super_class = PVEffectFrame;
  v20 = [(PVEffectFrame *)&v86 init];
  v21 = v20;
  if (v20)
  {
    v22 = *&a4->var0;
    *(v20 + 17) = a4->var3;
    *(v20 + 120) = v22;
    v20[8] = v16;
    *(v20 + 3) = [v19 origin];
    [v19 outputSize];
    *(v21 + 9) = v23;
    *(v21 + 10) = v24;
    *(v21 + 4) = v11;
    v25 = height;
    *(v21 + 11) = width;
    *(v21 + 12) = height;
    if (v19)
    {
      v78 = *&a4->var0;
      *&v79 = a4->var3;
      [v19 cornersAtTime:&v78 forcePosterFrame:v16 includeDropShadow:v15 scale:v11 viewSize:1.0 viewOrigin:{1.0, width, height}];
      v25 = height;
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
    }

    v26 = v90;
    *(v21 + 13) = v89;
    *(v21 + 14) = v26;
    v27 = v92;
    *(v21 + 15) = v91;
    *(v21 + 16) = v27;
    v89 = 0uLL;
    v90 = 0u;
    v78 = *&a4->var0;
    *&v79 = a4->var3;
    [v19 convertPointToView:&v89 atTime:&v78 forcePosterFrame:v16 includeTransformAnimation:1 includePlayableAspectScale:1 viewSize:v11 viewOrigin:{width, v25}];
    *(v21 + 13) = v28;
    *(v21 + 14) = v29;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v89 = *&a4->var0;
    *&v90 = a4->var3;
    v30 = [v19 transformAtTime:&v89 forcePosterFrame:v16 viewSize:v11 viewOrigin:{width, height}];
    v31 = v30;
    if (v30)
    {
      [v30 SIMDDouble4x4];
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
    }

    v32 = +[PVHostApplicationDelegateHandler sharedInstance];
    v33 = [v32 wantsToIncludeCoordinateSystemTranslationInEffectViewTransform];
    if (v11 == 1 && (v33 & 1) == 0)
    {
      v34.f64[0] = width;
      v34.f64[1] = height;
      __asm { FMOV            V1.2D, #0.5 }

      v93 = v82;
      v94 = v83;
      v95 = v84;
      *&STACK[0x500] = v85;
      v89 = v78;
      v90 = v79;
      v91 = v80;
      v92 = v81;
      v87 = vmulq_f64(v34, _Q1);
      v88 = 0u;
      pv_simd_matrix_translate(&v89, &v87, &v70);
      v82 = v74;
      v83 = v75;
      v84 = v76;
      v85 = v77;
      v78 = v70;
      v79 = v71;
      v80 = v72;
      v81 = v73;
    }

    v40 = v82;
    v41 = v83;
    *(v21 + 21) = v82;
    *(v21 + 22) = v41;
    v42 = v84;
    v43 = v85;
    *(v21 + 23) = v84;
    *(v21 + 24) = v43;
    v44 = v78;
    v45 = v79;
    *(v21 + 17) = v78;
    *(v21 + 18) = v45;
    v46 = v80;
    v47 = v81;
    *(v21 + 19) = v80;
    *(v21 + 20) = v47;
    v48.f64[0] = width;
    v48.f64[1] = height;
    v93 = v40;
    v94 = v41;
    v95 = v42;
    *&STACK[0x500] = v43;
    v89 = v44;
    v90 = v45;
    v91 = v46;
    v92 = v47;
    [v19 outputROI];
    *(v21 + 18) = v49;
    *(v21 + 19) = v50;
    *(v21 + 20) = v51;
    *(v21 + 21) = v52;
    v89 = 0u;
    v90 = 0u;
    v70 = *&a4->var0;
    *&v71 = a4->var3;
    if ([v19 bounds:&v89 atTime:&v70 forcePosterFrame:v16 includeDropShadow:v15 includeMasks:1])
    {
      v53 = v90;
      *(v21 + 11) = v89;
      *(v21 + 12) = v53;
    }

    *(v21 + 6) = a8;
    *(v21 + 7) = a9;
    v70 = *&a4->var0;
    *&v71 = a4->var3;
    v54 = [v19 hitAreaPointsAtTime:&v70 forcePosterFrame:v16 includeDropShadow:v15 scale:v11 viewSize:1.0 viewOrigin:{1.0, width, height}];
    v55 = *(v21 + 3);
    *(v21 + 3) = v54;

    v70 = *&a4->var0;
    *&v71 = a4->var3;
    *(v21 + 4) = [v19 createPathsForHitTestingAtTime:&v70 forcePosterFrame:v16 scale:1 adjustForMinimumSize:v11 minimumSize:v21 + 40 sizeThreshold:1.0 viewSize:1.0 viewOrigin:a8 outExpandedPath:{a9, width, height}];
    if (v14)
    {
      v70 = *&a4->var0;
      *&v71 = a4->var3;
      v56 = [v19 textTransformsAtTime:&v70 forcePosterFrame:v16 viewSize:v11 viewOrigin:{width, height}];
      v70 = *&a4->var0;
      *&v71 = a4->var3;
      v57 = [v19 textEditingBoundsAtTime:&v70 forcePosterFrame:v16 useParagraphBounds:1 includeDropShadow:0 includeMasks:1];
      v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v56, "count")}];
      var18[0] = MEMORY[0x277D85DD0];
      var18[1] = *"";
      var18[2] = __144__PVEffectFrame_initWithEffect_atTime_forcePosterFrame_includeDropShadow_includeTextFrames_minimumHitSize_hitSizeThreshold_viewSize_viewOrigin___block_invoke;
      var18[3] = &unk_279AA5A78;
      vars8 = v19;
      v68 = v32;
      v69 = v58;
      v59 = v57;
      v60 = v56;
      [v60 enumerateObjectsUsingBlock:var18];
      v61 = *(v21 + 8);
      *(v21 + 8) = v69;
      v62 = v69;
    }
  }

  return v21;
}

void __144__PVEffectFrame_initWithEffect_atTime_forcePosterFrame_includeDropShadow_includeTextFrames_minimumHitSize_hitSizeThreshold_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, float64x2_t a10, __int128 a11, float64x2_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, float64x2_t a37, __int128 a38, CGPoint a39, CGPoint a40, CGPoint a41, CGPoint a42, __int128 a43, float64x2_t a44, __int128 a45, float64x2_t a46)
{
  v48 = [PVEffectFrame alloc];
  v49 = *(a1 + 32);
  v50 = *(a1 + 132);
  v51 = *(a1 + 133);
  v52 = *(a1 + 72);
  v53 = *(a1 + 80);
  v54 = *(a1 + 128);
  a39 = *(a1 + 104);
  a40.x = *(a1 + 120);
  v55 = [(PVEffectFrame *)v48 initWithEffect:v49 atTime:&a39 forcePosterFrame:v50 includeDropShadow:v51 includeTextFrames:0 minimumHitSize:v54 hitSizeThreshold:v52 viewSize:v53 viewOrigin:*(a1 + 88), *(a1 + 96)];
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v56 = *(a1 + 32);
  if (v56)
  {
    v57 = *(a1 + 133);
    v58 = *(a1 + 132);
    v59 = *(a1 + 128);
    a39 = *(a1 + 104);
    a40.x = *(a1 + 120);
    [v56 textCornersAtTime:&a39 index:a3 forcePosterFrame:v58 includeDropShadow:v57 scale:v59 viewSize:1.0 viewOrigin:{1.0, *(a1 + 88), *(a1 + 96)}];
  }

  if (*(a1 + 128) == 1)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
  }

  a39 = v80;
  a40 = v81;
  a41 = v82;
  a42 = v83;
  [(PVEffectFrame *)v55 setCornerPoints:&a39];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  c = 0;
  d = 0;
  a = 0u;
  b = 0;
  v60 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v61 = v60;
  if (v60)
  {
    [v60 SIMDDouble4x4];
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    c = 0;
    d = 0;
    a = 0u;
    b = 0;
  }

  if (([*(a1 + 48) wantsToIncludeCoordinateSystemTranslationInEffectViewTransform] & 1) == 0 && *(a1 + 128) == 1)
  {
    __asm { FMOV            V1.2D, #0.5 }

    v67 = vmulq_f64(*(a1 + 88), _Q1);
    a43 = v76;
    a44 = v77;
    a45 = v78;
    a46 = v79;
    a39 = a;
    a40 = b;
    a41 = c;
    a42 = d;
    a37 = v67;
    a38 = 0u;
    pv_simd_matrix_translate(&a39, &a37, &var30);
    v76 = a9;
    v77 = a10;
    v78 = a11;
    v79 = a12;
    a = var30.a;
    b = var30.b;
    c = var30.c;
    d = var30.d;
  }

  a43 = v76;
  a44 = v77;
  a45 = v78;
  a46 = v79;
  a39 = a;
  a40 = b;
  a41 = c;
  a42 = d;
  [(PVEffectFrame *)v55 setTransform:&a39];
  a43 = xmmword_260342820;
  a44 = qword_260342830;
  a45 = xmmword_260342840;
  a46 = qword_260342850;
  a39 = pv_transform_info_identity;
  a40 = *algn_2603427F0;
  a41 = xmmword_260342800;
  a42 = qword_260342810;
  v68 = *(a1 + 88);
  var30.a = a;
  var30.b = b;
  var30.c = c;
  var30.d = d;
  pv_transform_info_make(&var30, &a39, v68);
  var30.a = a39;
  var30.b = a40;
  var30.c = a41;
  var30.d = a42;
  [(PVEffectFrame *)v55 setTransformInfo:&var30];
  v69 = [*(a1 + 56) objectAtIndexedSubscript:a3];
  [v69 CGRectValue];
  [(PVEffectFrame *)v55 setObjectBounds:?];

  if (v55)
  {
    [(PVEffectFrame *)v55 cornerPoints];
  }

  else
  {
    memset(&var30, 0, sizeof(var30));
  }

  v70 = PVCGPointQuad_to_NSArray(&var30);
  [(PVEffectFrame *)v55 setHitAreaPoints:v70];

  [*(a1 + 64) addObject:v55];
}

- (CGRect)viewSpaceObjectBounds
{
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  [(PVEffectFrame *)self objectBounds];
  PVCGPointQuad_from_CGRect(v54, &v49);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  [(PVEffectFrame *)self transform];
  v33 = 0;
  v34 = &v33;
  v35 = 0x6010000000;
  v36 = &unk_260C3B1FE;
  v37 = *PVCGPointQuadZero;
  v38 = *&PVCGPointQuadZero[16];
  v39 = *&PVCGPointQuadZero[32];
  v40 = *&PVCGPointQuadZero[48];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = *"";
  v22 = __38__PVEffectFrame_viewSpaceObjectBounds__block_invoke;
  v23 = &unk_279AA5AA0;
  v26 = v43;
  v27 = v44;
  v24 = v41;
  v25 = v42;
  v30 = v47;
  v31 = v48;
  v28 = v45;
  v29 = v46;
  v32 = &v33;
  v20.a = v49;
  v20.b = v50;
  v20.c = v51;
  v20.d = v52;
  v3 = v21;
  v4 = 0;
  do
  {
    v53 = v20;
    point_at_index = PVCGPointQuad_get_point_at_index(&v53, v4);
    (v22)(v3, v4, point_at_index);
    v4 = (v4 + 1);
  }

  while (v4 != 4);

  v6 = *(v34 + 3);
  v53.a = *(v34 + 2);
  v53.b = v6;
  v7 = *(v34 + 5);
  v53.c = *(v34 + 4);
  v53.d = v7;
  pv_bounding_CGRect(&v53);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  _Block_object_dispose(&v33, 8);
  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

CGFloat *__38__PVEffectFrame_viewSpaceObjectBounds__block_invoke(uint64_t a1, int a2, __n128 a3, double a4)
{
  a3.n128_f64[1] = a4;
  v6 = *(a1 + 112);
  v12[4] = *(a1 + 96);
  v12[5] = v6;
  v7 = *(a1 + 144);
  v12[6] = *(a1 + 128);
  v12[7] = v7;
  v8 = *(a1 + 48);
  v12[0] = *(a1 + 32);
  v12[1] = v8;
  v9 = *(a1 + 80);
  v12[2] = *(a1 + 64);
  v12[3] = v9;
  v11[0] = a3;
  v11[1] = 0u;
  pv_simd_matrix_transform_vector(v12, v11, v13);
  return PVCGPointQuad_set_point_at_index((*(*(a1 + 160) + 8) + 32), v13[0], a2);
}

- (CGPoint)midpoint
{
  [(PVEffectFrame *)self cornerPoints];
  quad_center = pv_CGPoint_get_quad_center(&v4);
  result.y = v3;
  result.x = quad_center;
  return result;
}

- (void)setHitAreaPath:(CGPath *)a3
{
  CGPathRetain(a3);
  CGPathRelease(self->_hitAreaPath);
  self->_hitAreaPath = a3;
}

- (void)setExpandedHitAreaPath:(CGPath *)a3
{
  CGPathRetain(a3);
  CGPathRelease(self->_expandedHitAreaPath);
  self->_expandedHitAreaPath = a3;
}

- (id)description
{
  v25 = MEMORY[0x277CCACA8];
  v28.receiver = self;
  v28.super_class = PVEffectFrame;
  v24 = [(PVEffectFrame *)&v28 description];
  [(PVEffectFrame *)self time];
  v23 = CMTimeCopyDescription(0, &time);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[PVEffectFrame forcePosterFrame](self, "forcePosterFrame")}];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(PVEffectFrame *)self effectOrigin];
  if (v5 >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v22 = [v4 stringWithUTF8String:PVCoordinateSystemOriginNames[v6]];
  [(PVEffectFrame *)self effectSize];
  v21 = NSStringFromCGSize(v30);
  [(PVEffectFrame *)self center];
  v7 = NSStringFromCGPoint(v31);
  v8 = MEMORY[0x277CCACA8];
  v9 = [(PVEffectFrame *)self viewOrigin];
  if (v9 >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v20 = [v8 stringWithUTF8String:PVCoordinateSystemOriginNames[v10]];
  [(PVEffectFrame *)self viewSize];
  v19 = NSStringFromCGSize(v32);
  [(PVEffectFrame *)self cornerPoints];
  v11 = NSStringFromPVCGPointQuad(&time, 3);
  [(PVEffectFrame *)self objectBounds];
  v18 = NSStringFromCGRect(v33);
  v12 = [(PVEffectFrame *)self hitAreaPoints];
  [(PVEffectFrame *)self transform];
  v13 = NSStringFromSIMDDouble4x4(&time.value, 4);
  v14 = MEMORY[0x277CCABB0];
  v15 = [(PVEffectFrame *)self textFrames];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  v26 = [v25 stringWithFormat:@"%@\ntime: %@\nforcePosterFrame: %@\neffectOrigin: %@\neffectSize: %@\n\ncenter: %@\n\nviewOrigin: %@\nviewSize: %@\n\ncornerPoints:\n%@\n\nobjectBounds: %@\n\nhitAreaPoints: %@\n\ntransform:\n%@\n\ntextFrames (count): %@", v24, v23, v3, v22, v21, v7, v20, v19, v11, v18, v12, v13, v16];

  return v26;
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

- (CGSize)effectSize
{
  width = self->_effectSize.width;
  height = self->_effectSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PVCGPointQuad)cornerPoints
{
  c = self[3].c;
  retstr->a = self[3].b;
  retstr->b = c;
  a = self[4].a;
  retstr->c = self[3].d;
  retstr->d = a;
  return self;
}

- (void)setCornerPoints:(PVCGPointQuad *)a3
{
  a = a3->a;
  b = a3->b;
  d = a3->d;
  self->_cornerPoints.c = a3->c;
  self->_cornerPoints.d = d;
  self->_cornerPoints.a = a;
  self->_cornerPoints.b = b;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)outputROI
{
  x = self->_outputROI.origin.x;
  y = self->_outputROI.origin.y;
  width = self->_outputROI.size.width;
  height = self->_outputROI.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)objectBounds
{
  x = self->_objectBounds.origin.x;
  y = self->_objectBounds.origin.y;
  width = self->_objectBounds.size.width;
  height = self->_objectBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)transform
{
  v2 = *(a1 + 352);
  *(a2 + 64) = *(a1 + 336);
  *(a2 + 80) = v2;
  v3 = *(a1 + 384);
  *(a2 + 96) = *(a1 + 368);
  *(a2 + 112) = v3;
  v4 = *(a1 + 288);
  *a2 = *(a1 + 272);
  *(a2 + 16) = v4;
  result = *(a1 + 304);
  v6 = *(a1 + 320);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setTransform:(__int128 *)a3
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a1 + 304) = a3[2];
  *(a1 + 320) = v5;
  *(a1 + 272) = v3;
  *(a1 + 288) = v4;
  result = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a1 + 368) = a3[6];
  *(a1 + 384) = v8;
  *(a1 + 336) = result;
  *(a1 + 352) = v7;
  return result;
}

- (__n128)transformInfo
{
  v2 = *(a1 + 480);
  *(a2 + 64) = *(a1 + 464);
  *(a2 + 80) = v2;
  v3 = *(a1 + 512);
  *(a2 + 96) = *(a1 + 496);
  *(a2 + 112) = v3;
  v4 = *(a1 + 416);
  *a2 = *(a1 + 400);
  *(a2 + 16) = v4;
  result = *(a1 + 432);
  v6 = *(a1 + 448);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setTransformInfo:(__int128 *)a3
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a1 + 432) = a3[2];
  *(a1 + 448) = v5;
  *(a1 + 400) = v3;
  *(a1 + 416) = v4;
  result = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a1 + 496) = a3[6];
  *(a1 + 512) = v8;
  *(a1 + 464) = result;
  *(a1 + 480) = v7;
  return result;
}

@end