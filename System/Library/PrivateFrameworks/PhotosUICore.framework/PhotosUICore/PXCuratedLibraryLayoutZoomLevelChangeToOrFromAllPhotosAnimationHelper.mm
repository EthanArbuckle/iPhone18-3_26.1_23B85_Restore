@interface PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper
- (PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper)initWithLayout:(id)layout;
- (double)animationDuration;
- (id)_snapshotForZoomLevel:(int64_t)level;
- (void)_adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos spriteIndexRange:(_PXGSpriteIndexRange)range appearing:(BOOL)appearing;
- (void)animation:(id)animation prepareWithRootLayout:(id)layout viewportShift:(CGPoint)shift;
@end

@implementation PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper

- (void)_adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos spriteIndexRange:(_PXGSpriteIndexRange)range appearing:(BOOL)appearing
{
  appearingCopy = appearing;
  length = range.length;
  if ([(_PXCuratedLibraryLayoutAssetsSnapshot *)self->_toSnapshot zoomLevel]== 4)
  {
    v12 = self->_toSnapshot;
    v11 = self->_fromSnapshot;
    if (appearingCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = self->_fromSnapshot;
    v13 = self->_toSnapshot;
    v11 = v13;
    if (!appearingCopy)
    {
LABEL_6:
      v14 = +[PXCuratedLibrarySettings sharedInstance];
      [v14 cornerRadiusForYears];
      [v14 cornerRadiusForMonths];
      if (length)
      {
        v15 = (length + 3) & 0x1FFFFFFFCLL;
        v16 = xmmword_1A535BC40;
        v17 = xmmword_1A5301350;
        v18 = vdupq_n_s64(length - 1);
        v19 = vdupq_n_s64(4uLL);
        stylesCopy = styles;
        do
        {
          v21 = vmovn_s64(vcgeq_u64(v18, v17));
          if (vuzp1_s16(v21, *v16.i8).u8[0])
          {
            stylesCopy->var0 = 0.0;
          }

          if (vuzp1_s16(v21, *&v16).i8[2])
          {
            stylesCopy[3].var4 = 0.0;
          }

          if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v18, *&v16))).i32[1])
          {
            stylesCopy[7].var1.var0.var0.var2 = 0.0;
            stylesCopy[10].var8 = 0.0;
          }

          v16 = vaddq_s64(v16, v19);
          v17 = vaddq_s64(v17, v19);
          stylesCopy = (stylesCopy + 640);
          v15 -= 4;
        }

        while (v15);
      }

      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      __131__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke(&v22, v12);
    }
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  __131__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke(&v22, v11);
}

void __131__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_3(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = *(a1 + 56) + 32 * a3;
  v7 = *(*(a1 + 64) + 40 * a3 + 1);
  if (v7 == 8)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
LABEL_3:
      [v8 spriteSnapshotForAssetWithIdentifier:v5];
    }
  }

  else if (v7 == 2 && (*(a1 + 152) & 1) != 0)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  v13 = *(v6 + 16);
  v14 = COERCE_FLOAT(HIDWORD(*(v6 + 24)));
  *&v15 = v11 * v14 + v9 * COERCE_FLOAT(*(v6 + 24));
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  *&v14 = v12 * v14 + v10 * *&v15;
  HIDWORD(v15) = LODWORD(v14);
  *(v6 + 24) = v15;
  v18 = *(v6 + 8);
  v19 = v16 + v11 * v18 + v9 * *v6;
  *v6 = v19;
  *(v6 + 8) = v17 + v12 * v18 + v10 * v19;
  *&v19 = *(a1 + 128);
  *(v6 + 16) = v13 + *&v19;
}

void __131__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_4(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 64) + 32 * a3;
  v8 = *(a1 + 72) + 160 * a3;
  v30.origin = *MEMORY[0x1E695F050];
  v30.size = *(MEMORY[0x1E695F050] + 16);
  v9 = *(v7 + 16);
  v29 = v9;
  v10 = *v8;
  v28 = *(v8 + 4);
  if (v5)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      [v11 spriteSnapshotForAssetWithIdentifier:v5];
    }
  }

  if (!CGRectIsNull(v30))
  {
    MidX = CGRectGetMidX(v30);
    MidY = CGRectGetMidY(v30);
    Width = CGRectGetWidth(v30);
    Height = CGRectGetHeight(v30);
    v26.f64[0] = Width;
    v26.f64[1] = Height;
    *v7 = MidX;
    *(v7 + 8) = MidY;
    *(v7 + 16) = v29;
    *(v7 + 24) = vcvt_f32_f64(v26);
    *v8 = v10;
    *(v8 + 4) = v28;
    PXGSpriteStyleUnionClippingRect();
  }

  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(v7 + 16);
  v17 = COERCE_FLOAT(HIDWORD(*(v7 + 24)));
  *&v18 = v14 * v17 + v12 * COERCE_FLOAT(*(v7 + 24));
  *&v17 = v15 * v17 + v13 * *&v18;
  HIDWORD(v18) = LODWORD(v17);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  *(v7 + 24) = v18;
  v21 = *(v7 + 8);
  v22 = v19 + v14 * v21 + v12 * *v7;
  *v7 = v22;
  *(v7 + 8) = v20 + v15 * v21 + v13 * v22;
  *&v22 = *(a1 + 136);
  *(v7 + 16) = v16 + *&v22;
  *v8 = 0;
  [*(a1 + 48) removeIndex:v6];
}

- (void)animation:(id)animation prepareWithRootLayout:(id)layout viewportShift:(CGPoint)shift
{
  y = shift.y;
  x = shift.x;
  animationCopy = animation;
  layoutCopy = layout;
  [(_PXCuratedLibraryLayoutAssetsSnapshot *)self->_fromSnapshot setOffset:x, y];
  v12 = layoutCopy;
  if (!v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper.m" lineNumber:110 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"rootLayout", v39}];
LABEL_13:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v40 = objc_opt_class();
    v39 = NSStringFromClass(v40);
    px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper.m" lineNumber:110 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"rootLayout", v39, px_descriptionForAssertionMessage}];

    goto LABEL_13;
  }

LABEL_3:
  v13 = [[_PXCuratedLibraryLayoutAssetsSnapshot alloc] initWithLayout:v12];
  toSnapshot = self->_toSnapshot;
  self->_toSnapshot = v13;

  v15 = [(PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper *)self _snapshotForZoomLevel:3];
  v16 = [(PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper *)self _snapshotForZoomLevel:4];
  v17 = v16;
  if (v15 && v16)
  {
    [v16 visibleRect];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __119__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper_animation_prepareWithRootLayout_viewportShift___block_invoke;
    aBlock[3] = &unk_1E773B620;
    v59 = v17;
    v60 = v19;
    v61 = v21;
    v62 = v23;
    v63 = v25;
    v26 = _Block_copy(aBlock);
    dominantAssetIdentifier = [v15 dominantAssetIdentifier];
    if (((*(v26 + 2))(v26, dominantAssetIdentifier) & 1) == 0)
    {
      [v15 visibleRect];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__127489;
      v56 = __Block_byref_object_dispose__127490;
      v57 = 0;
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x2020000000;
      v51[3] = 0;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __119__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper_animation_prepareWithRootLayout_viewportShift___block_invoke_2;
      v42[3] = &unk_1E773B648;
      v44 = v26;
      v36 = v15;
      v47 = v29;
      v48 = v31;
      v49 = v33;
      v50 = v35;
      v43 = v36;
      v45 = v51;
      v46 = &v52;
      [v36 enumerateAssetIdentifiersUsingBlock:v42];
      if (v53[5])
      {
        [v36 setDominantAssetIdentifier:?];
      }

      _Block_object_dispose(v51, 8);
      _Block_object_dispose(&v52, 8);
    }
  }
}

BOOL __119__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper_animation_prepareWithRootLayout_viewportShift___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 spriteSnapshotForAssetWithIdentifier:v3];
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  if (CGRectIsNull(*&v5))
  {
    v9 = 0;
  }

  else
  {
    v11.origin = 0u;
    v11.size = 0u;
    v9 = CGRectIntersectsRect(v11, *(a1 + 40));
  }

  return v9;
}

void __119__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper_animation_prepareWithRootLayout_viewportShift___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      [v4 spriteSnapshotForAssetWithIdentifier:v3];
      v6 = 0;
      v5 = 0;
      v8 = 0;
      v7 = 0;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v6 = 0;
      v5 = 0;
    }

    v9 = CGRectIntersection(*&v5, *(a1 + 64));
    if (!CGRectIsEmpty(v9))
    {
      PXSizeGetArea();
    }
  }
}

- (id)_snapshotForZoomLevel:(int64_t)level
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__127489;
  v12 = __Block_byref_object_dispose__127490;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper__snapshotForZoomLevel___block_invoke;
  v7[3] = &unk_1E773B5F8;
  v7[4] = &v8;
  v7[5] = level;
  v4 = _Block_copy(v7);
  v4[2](v4, self->_fromSnapshot);
  v4[2](v4, self->_toSnapshot);
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __95__PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper__snapshotForZoomLevel___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v6 = v4;
    v5 = [v4 zoomLevel] == *(a1 + 40);
    v4 = v6;
    if (v5)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v4 = v6;
    }
  }
}

- (double)animationDuration
{
  v2 = +[PXCuratedLibrarySettings sharedInstance];
  [v2 transitionToOrFromAllPhotosAnimationDuration];
  v4 = v3;

  return v4;
}

- (PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper;
  v5 = [(PXCuratedLibraryLayoutAnimationHelper *)&v9 initWithLayout:layoutCopy];
  if (v5)
  {
    v6 = [[_PXCuratedLibraryLayoutAssetsSnapshot alloc] initWithLayout:layoutCopy];
    fromSnapshot = v5->_fromSnapshot;
    v5->_fromSnapshot = v6;
  }

  return v5;
}

@end