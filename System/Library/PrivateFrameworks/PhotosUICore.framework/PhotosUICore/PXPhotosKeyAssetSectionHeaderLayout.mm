@interface PXPhotosKeyAssetSectionHeaderLayout
- (CGRect)_bestCropRectForAspectRatio:(double)a3;
- (CGRect)titleBaseFrame;
- (CGSize)_keyAssetSize;
- (CGSize)bannerViewSize;
- (PXPhotosKeyAssetSectionHeaderLayout)initWithViewModel:(id)a3;
- (PXSimpleIndexPath)sectionIndexPath;
- (id)axSpriteIndexes;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)_invalidateAnimations;
- (void)_invalidateBannerView;
- (void)_invalidateContent;
- (void)_invalidateContentSize;
- (void)_invalidateFloatParameters;
- (void)_invalidateKeyAssetFetch;
- (void)_invalidateTitle;
- (void)_invalidateTitleMetrics;
- (void)_loadBannerIfNecessary;
- (void)_transitionToBannerView:(id)a3 version:(int64_t)a4;
- (void)_updateAnimations;
- (void)_updateBannerView;
- (void)_updateContent;
- (void)_updateContentSize;
- (void)_updateFloatParameters;
- (void)_updateKeyAssetFetch;
- (void)_updateTitle;
- (void)_updateTitleMetrics;
- (void)appearStateDidChange;
- (void)didUpdate;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosBannerProviderInvalidateLoadedBanner:(id)a3;
- (void)referenceSizeDidChange;
- (void)setBannerProvider:(id)a3;
- (void)setBannerView:(id)a3;
- (void)setBannerViewSize:(CGSize)a3;
- (void)setDataSource:(id)a3;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3;
- (void)setShouldHideBanner:(BOOL)a3;
- (void)setSpec:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAttributes:(id)a3;
- (void)setTitleBaseFrame:(CGRect)a3;
- (void)update;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXPhotosKeyAssetSectionHeaderLayout

- (CGSize)bannerViewSize
{
  width = self->_bannerViewSize.width;
  height = self->_bannerViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)titleBaseFrame
{
  x = self->_titleBaseFrame.origin.x;
  y = self->_titleBaseFrame.origin.y;
  width = self->_titleBaseFrame.size.width;
  height = self->_titleBaseFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[32].item;
  *&retstr->dataSourceIdentifier = *&self[32].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (id)axSpriteIndexes
{
  if ([(PXPhotosKeyAssetSectionHeaderLayout *)self localNumberOfSprites])
  {
    [MEMORY[0x1E696AC90] indexSetWithIndex:1];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v2 = ;

  return v2;
}

- (void)photosBannerProviderInvalidateLoadedBanner:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosKeyAssetSectionHeaderLayout *)self bannerProvider];

  if (v5 == v4)
  {
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateBannerRequest];

    [(PXPhotosKeyAssetSectionHeaderLayout *)self _loadBannerIfNecessary];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (BannerAppearanceAnimatorObservationContext != a5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:537 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateAnimations];
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v5 = [(PXPhotosKeyAssetSectionHeaderLayout *)self bannerView:*&a3];
  if (v5)
  {
    v6 = [off_1E77216C0 alloc];
    v7 = [(PXPhotosKeyAssetSectionHeaderLayout *)self bannerView];
    v8 = [v6 initWithContentView:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4
{
  if ([(PXDisplayAssetFetchResult *)self->_keyAssetFetch count:a3]< 1)
  {
    keyAssetFetch = 0;
  }

  else
  {
    keyAssetFetch = self->_keyAssetFetch;
  }

  return keyAssetFetch;
}

- (CGRect)_bestCropRectForAspectRatio:(double)a3
{
  v4 = [(PXDisplayAssetFetchResult *)self->_keyAssetFetch firstObject];
  [v4 bestCropRectForAspectRatioV2:2 verticalContentMode:1 cropMode:a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGSize)_keyAssetSize
{
  [(PXPhotosKeyAssetSectionHeaderLayout *)self contentSize];
  v4 = v3;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self contentSize];
  v6 = v5 + -2.0;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)_transitionToBannerView:(id)a3 version:(int64_t)a4
{
  v12 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:433 description:{@"%s must be called on the main thread", "-[PXPhotosKeyAssetSectionHeaderLayout _transitionToBannerView:version:]"}];
  }

  if (self->_desiredBannerRequestVersion == a4)
  {
    self->_currentBannerRequestVersion = a4;
    v7 = (v12 == 0) | [(PXPhotosKeyAssetSectionHeaderLayout *)self shouldHideBanner];
    isDisplayingBanner = self->_isDisplayingBanner;
    if (isDisplayingBanner || (v7 & 1) != 0)
    {
      if ((isDisplayingBanner & v7) != 1)
      {
LABEL_10:
        [(PXPhotosKeyAssetSectionHeaderLayout *)self setBannerView:v12];
        goto LABEL_11;
      }

      v10 = 0;
      v9 = &__block_literal_global_55;
    }

    else
    {
      v9 = &__block_literal_global_53;
      v10 = 1;
    }

    self->_isDisplayingBanner = v10;
    [(PXNumberAnimator *)self->_bannerAppearanceAnimator performChangesWithDuration:1 curve:v9 changes:0.2];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_loadBannerIfNecessary
{
  if (self->_currentBannerRequestVersion != self->_desiredBannerRequestVersion && [(PXPhotosKeyAssetSectionHeaderLayout *)self appearState]== 1)
  {
    v3 = [(PXPhotosKeyAssetSectionHeaderLayout *)self bannerProvider];
    if (v3)
    {
      objc_initWeak(&location, self);
      desiredBannerRequestVersion = self->_desiredBannerRequestVersion;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __61__PXPhotosKeyAssetSectionHeaderLayout__loadBannerIfNecessary__block_invoke;
      v5[3] = &unk_1E7741620;
      objc_copyWeak(v6, &location);
      v6[1] = desiredBannerRequestVersion;
      [v3 loadBannerView:v5];
      objc_destroyWeak(v6);
      objc_destroyWeak(&location);
    }

    else
    {
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _transitionToBannerView:0 version:self->_desiredBannerRequestVersion];
    }
  }
}

void __61__PXPhotosKeyAssetSectionHeaderLayout__loadBannerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionToBannerView:v3 version:*(a1 + 40)];
}

- (void)_updateFloatParameters
{
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _floatOffset];
  v4 = v3;
  v5 = -v3;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self contentSize];
  v7 = v6;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self contentSize];
  v9 = v8 + -2.0;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self titleBaseFrame];
  v11 = v10;
  v25 = v12;
  v14 = v13;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self contentSize];
  v16 = v15 - v14 + -10.0 - v4;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self safeAreaInsets];
  v18 = v17 + 10.0;
  if (v16 >= v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  [(PXPhotosKeyAssetSectionHeaderLayout *)self setShouldHideBanner:v16 != v19];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self bannerViewSize];
  v21 = v20;
  v23 = v22;
  v27.origin.x = 0.0;
  v27.origin.y = v5;
  v27.size.width = v7;
  v27.size.height = v9;
  MaxY = CGRectGetMaxY(v27);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __61__PXPhotosKeyAssetSectionHeaderLayout__updateFloatParameters__block_invoke;
  v26[3] = &__block_descriptor_128_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
  v26[4] = 0;
  *&v26[5] = v5;
  *&v26[6] = v7;
  *&v26[7] = v9;
  v26[8] = v11;
  *&v26[9] = v19;
  v26[10] = v25;
  *&v26[11] = v14;
  v26[12] = 0;
  *&v26[13] = MaxY - v23;
  v26[14] = v21;
  *&v26[15] = v23;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self modifySpritesInRange:0x300000000 state:v26];
}

float32x2_t __61__PXPhotosKeyAssetSectionHeaderLayout__updateFloatParameters__block_invoke(double *a1, uint64_t a2, float32x2_t *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v39.origin.x = v5;
  v39.origin.y = v6;
  v39.size.width = v7;
  v39.size.height = v8;
  MidX = CGRectGetMidX(v39);
  v40.origin.x = v5;
  v40.origin.y = v6;
  v40.size.width = v7;
  v40.size.height = v8;
  MidY = CGRectGetMidY(v40);
  v41.origin.x = v5;
  v41.origin.y = v6;
  v41.size.width = v7;
  v41.size.height = v8;
  Width = CGRectGetWidth(v41);
  v42.origin.x = v5;
  v42.origin.y = v6;
  v42.size.width = v7;
  v42.size.height = v8;
  Height = CGRectGetHeight(v42);
  v12.f64[0] = Width;
  v12.f64[1] = Height;
  *a3 = MidX;
  *&a3[1] = MidY;
  a3[2] = 0xBFF0000000000000;
  a3[3] = vcvt_f32_f64(v12);
  v13 = a1[8];
  v14 = a1[9];
  v15 = a1[10];
  v16 = a1[11];
  v17 = v13;
  v12.f64[0] = v14;
  v18 = v15;
  v19 = v16;
  v20 = CGRectGetMidX(*(&v12 - 8));
  v43.origin.x = v13;
  v43.origin.y = v14;
  v43.size.width = v15;
  v43.size.height = v16;
  v21 = CGRectGetMidY(v43);
  v44.origin.x = v13;
  v44.origin.y = v14;
  v44.size.width = v15;
  v44.size.height = v16;
  v37 = CGRectGetWidth(v44);
  v45.origin.x = v13;
  v45.origin.y = v14;
  v45.size.width = v15;
  v45.size.height = v16;
  v22 = CGRectGetHeight(v45);
  v23.f64[0] = v37;
  v23.f64[1] = v22;
  *&a3[4] = v20;
  *&a3[5] = v21;
  a3[6] = 0xBFF19999A0000000;
  a3[7] = vcvt_f32_f64(v23);
  v24 = a1[12];
  v25 = a1[13];
  v26 = a1[14];
  v27 = a1[15];
  v28 = v24;
  v23.f64[0] = v25;
  v29 = v26;
  v30 = v27;
  v31 = CGRectGetMidX(*(&v23 - 8));
  v46.origin.x = v24;
  v46.origin.y = v25;
  v46.size.width = v26;
  v46.size.height = v27;
  v32 = CGRectGetMidY(v46);
  v47.origin.x = v24;
  v47.origin.y = v25;
  v47.size.width = v26;
  v47.size.height = v27;
  v38 = CGRectGetWidth(v47);
  v48.origin.x = v24;
  v48.origin.y = v25;
  v48.size.width = v26;
  v48.size.height = v27;
  v33 = CGRectGetHeight(v48);
  v34.f64[0] = v38;
  v34.f64[1] = v33;
  result = vcvt_f32_f64(v34);
  *&a3[8] = v31;
  *&a3[9] = v32;
  a3[10] = 0;
  a3[11] = result;
  return result;
}

- (void)_invalidateFloatParameters
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x400;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x400) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout _invalidateFloatParameters]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:382 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 1024;
  if (!willPerformUpdate)
  {

    [(PXPhotosKeyAssetSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateAnimations
{
  [(PXNumberAnimator *)self->_bannerAppearanceAnimator presentationValue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PXPhotosKeyAssetSectionHeaderLayout__updateAnimations__block_invoke;
  v4[3] = &__block_descriptor_48_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
  *&v4[4] = 1.0 - v3;
  *&v4[5] = v3;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self modifySpritesInRange:0x300000000 state:v4];
}

float __56__PXPhotosKeyAssetSectionHeaderLayout__updateAnimations__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  *(a4 + 160) = v5;
  result = v4;
  *(a4 + 320) = result;
  return result;
}

- (void)_invalidateAnimations
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x800;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x800) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout _invalidateAnimations]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:368 description:{@"invalidating %lu after it already has been updated", 2048}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 2048;
  if (!willPerformUpdate)
  {

    [(PXPhotosKeyAssetSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContent
{
  if ([(PXPhotosKeyAssetSectionHeaderLayout *)self localNumberOfSprites]!= 3)
  {
    [(PXPhotosKeyAssetSectionHeaderLayout *)self applySpriteChangeDetails:0 countAfterChanges:3 initialState:&__block_literal_global_133383 modifyState:0];
  }

  [(PXPhotosKeyAssetSectionHeaderLayout *)self displayScale];
  v22 = v3;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _keyAssetSize];
  v5 = v4;
  v7 = v6;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _bestCropRectForAspectRatio:v4 / v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self titleBaseFrame];
  v17 = v16;
  v19 = v18;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self bannerViewSize];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __53__PXPhotosKeyAssetSectionHeaderLayout__updateContent__block_invoke_2;
  v23[3] = &unk_1E773BE08;
  v23[5] = v9;
  v23[6] = v11;
  v23[7] = v13;
  v23[8] = v15;
  *&v23[9] = v5;
  *&v23[10] = v7;
  v23[4] = self;
  v23[11] = v22;
  v23[12] = v17;
  v23[13] = v19;
  v23[14] = v20;
  v23[15] = v21;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self modifySpritesInRange:0x300000000 state:v23];
}

float32x2_t __53__PXPhotosKeyAssetSectionHeaderLayout__updateContent__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  *(a4 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 40)), *(a1 + 56));
  a5->i16[0] = 512;
  v5 = *(a1 + 88);
  a5[1] = vmul_n_f32(vcvt_f32_f64(*(a1 + 72)), v5);
  a5[4].i16[0] = *(*(a1 + 32) + 904);
  a5[5].i16[0] = 768;
  v6 = *(a1 + 88);
  a5[6] = vmul_n_f32(vcvt_f32_f64(*(a1 + 96)), v6);
  a5[9].i16[0] = *(*(a1 + 32) + 906);
  a5[10].i16[0] = 2561;
  v7 = *(a1 + 88);
  result = vmul_n_f32(vcvt_f32_f64(*(a1 + 112)), v7);
  a5[11] = result;
  a5[14].i16[0] = *(*(a1 + 32) + 908);
  return result;
}

void __53__PXPhotosKeyAssetSectionHeaderLayout__updateContent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (HIDWORD(a2) + a2);
  if (v3 > a2)
  {
    v4 = v3 - a2;
    v5 = *(off_1E7722048 + 6);
    v6 = *(off_1E7722048 + 7);
    v7 = 160 * a2;
    v8 = *(off_1E7722048 + 8);
    v9 = *(off_1E7722048 + 9);
    v10 = *(off_1E7722048 + 2);
    v11 = *(off_1E7722048 + 3);
    v12 = *(off_1E7722048 + 4);
    v13 = *(off_1E7722048 + 5);
    v14 = *off_1E7722048;
    v15 = *(off_1E7722048 + 1);
    do
    {
      v16 = (*(a3 + 24) + v7);
      v16[6] = v5;
      v16[7] = v6;
      v16[8] = v8;
      v16[9] = v9;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v12;
      v16[5] = v13;
      *v16 = v14;
      v16[1] = v15;
      v7 += 160;
      --v4;
    }

    while (v4);
  }
}

- (void)_invalidateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:328 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXPhotosKeyAssetSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)setBannerViewSize:(CGSize)a3
{
  if (self->_bannerViewSize.width != a3.width || self->_bannerViewSize.height != a3.height)
  {
    self->_bannerViewSize = a3;
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateContent];

    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateFloatParameters];
  }
}

- (void)_updateBannerView
{
  v4 = [(PXPhotosKeyAssetSectionHeaderLayout *)self bannerView];
  v3 = [(PXPhotosKeyAssetSectionHeaderLayout *)self spec];
  [v4 setSpec:v3];

  [(PXPhotosKeyAssetSectionHeaderLayout *)self referenceSize];
  [v4 sizeThatFits:?];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self setBannerViewSize:?];
}

- (void)_invalidateBannerView
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout _invalidateBannerView]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:304 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {

    [(PXPhotosKeyAssetSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTitleMetrics
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosKeyAssetSectionHeaderLayout *)self spec];
  v4 = [v3 headerTitleFont];
  [v4 lineHeight];
  v6 = v5;
  [v4 leading];
  v8 = v6 + v7;
  [v3 headerTitleLeadingSpacing];
  v10 = v9;
  [v3 headerTitleButtonAlignmentSpacing];
  v12 = v10 + v11;
  [(PXPhotosKeyAssetSectionHeaderLayout *)self referenceSize];
  v14 = v13 + v12 * -2.0;
  v15 = *MEMORY[0x1E69DB648];
  v25[0] = v4;
  v16 = *MEMORY[0x1E69DB650];
  v24[0] = v15;
  v24[1] = v16;
  v17 = [v3 headerTitleOverContentColor];
  v25[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

  [(PXPhotosKeyAssetSectionHeaderLayout *)self setTitleAttributes:v18];
  v19 = [(PXPhotosKeyAssetSectionHeaderLayout *)self title];
  [v19 boundingRectWithSize:35 options:v18 attributes:0 context:{v14, v8 * 1.1}];
  v21 = v20;
  v23 = v22;

  [(PXPhotosKeyAssetSectionHeaderLayout *)self setTitleBaseFrame:v12, 0.0, v21, v23];
}

- (void)_invalidateTitleMetrics
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout _invalidateTitleMetrics]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:277 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXPhotosKeyAssetSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTitle
{
  v3 = [(PXPhotosKeyAssetSectionHeaderLayout *)self viewModel];
  v8 = [v3 title];

  v4 = [(PXPhotosKeyAssetSectionHeaderLayout *)self dataSource];
  v5 = [v4 containerCollection];

  v6 = [v5 localizedTitle];
  if (v8)
  {
    v7 = v8;
  }

  else
  {
    v7 = v6;
  }

  [(PXPhotosKeyAssetSectionHeaderLayout *)self setTitle:v7];
}

- (void)_invalidateTitle
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout _invalidateTitle]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:265 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXPhotosKeyAssetSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentSize
{
  [(PXPhotosKeyAssetSectionHeaderLayout *)self referenceSize];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self referenceSize];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self referenceSize];

  [(PXPhotosKeyAssetSectionHeaderLayout *)self setContentSize:?];
}

- (void)_invalidateContentSize
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout _invalidateContentSize]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:254 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXPhotosKeyAssetSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateKeyAssetFetch
{
  v3 = [(PXDisplayAssetFetchResult *)self->_keyAssetFetch firstObject];
  v4 = [(PXPhotosKeyAssetSectionHeaderLayout *)self dataSource];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self sectionIndexPath];
  v5 = [v4 keyAssetsInSectionIndexPath:&v13];
  keyAssetFetch = self->_keyAssetFetch;
  self->_keyAssetFetch = v5;

  v7 = [(PXDisplayAssetFetchResult *)self->_keyAssetFetch firstObject];
  v8 = v3;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (v8)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {

LABEL_12:
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _bumpAssetVersion];
      goto LABEL_13;
    }

    v11 = [v7 isContentEqualTo:v8];
    v12 = v11;
    if (!v11)
    {
      v12 = [v9 isContentEqualTo:v7];
    }

    if (v12 != 2)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
}

- (void)_invalidateKeyAssetFetch
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout _invalidateKeyAssetFetch]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:241 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXPhotosKeyAssetSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)appearStateDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosKeyAssetSectionHeaderLayout;
  [(PXPhotosKeyAssetSectionHeaderLayout *)&v3 appearStateDidChange];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _loadBannerIfNecessary];
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosKeyAssetSectionHeaderLayout;
  [(PXPhotosKeyAssetSectionHeaderLayout *)&v3 visibleRectDidChange];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateFloatParameters];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosKeyAssetSectionHeaderLayout;
  [(PXPhotosKeyAssetSectionHeaderLayout *)&v3 referenceSizeDidChange];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateContentSize];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateTitleMetrics];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateBannerView];
  [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateFloatParameters];
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXPhotosKeyAssetSectionHeaderLayout;
  [(PXPhotosKeyAssetSectionHeaderLayout *)&v7 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout didUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXPhotosKeyAssetSectionHeaderLayout;
  [(PXPhotosKeyAssetSectionHeaderLayout *)&v7 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout willUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateKeyAssetFetch];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
        [v15 handleFailureInFunction:v16 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateContentSize];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v17 handleFailureInFunction:v18 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateTitle];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v19 handleFailureInFunction:v20 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateTitleMetrics];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v21 handleFailureInFunction:v22 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v8 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateBannerView];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v23 handleFailureInFunction:v24 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v9 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateContent];
      v9 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v9)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v25 handleFailureInFunction:v26 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:196 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v35.receiver = self;
  v35.super_class = PXPhotosKeyAssetSectionHeaderLayout;
  [(PXPhotosKeyAssetSectionHeaderLayout *)&v35 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  if (self->_postUpdateFlags.needsUpdate)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v27 handleFailureInFunction:v28 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 0;
    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = -1;
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v29 handleFailureInFunction:v30 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v11 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x400uLL;
    if ((v11 & 0x400) != 0)
    {
      p_postUpdateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateFloatParameters];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v31 handleFailureInFunction:v32 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v12 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x800uLL;
    if ((v12 & 0x800) != 0)
    {
      p_postUpdateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFF7FFLL;
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateAnimations];
      v12 = p_postUpdateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    p_updateFlags->updated = 0;
    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v12)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXPhotosKeyAssetSectionHeaderLayout update]"];
      [v33 handleFailureInFunction:v34 file:@"PXPhotosKeyAssetSectionHeaderLayout.m" lineNumber:205 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)setShouldHideBanner:(BOOL)a3
{
  if (self->_shouldHideBanner != a3)
  {
    self->_shouldHideBanner = a3;
    v5 = [(PXPhotosKeyAssetSectionHeaderLayout *)self bannerView];
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _transitionToBannerView:v5 version:self->_currentBannerRequestVersion];
  }
}

- (void)setBannerView:(id)a3
{
  v5 = a3;
  if (self->_bannerView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_bannerView, a3);
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateBannerView];
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _bumpBannerVersion];
    v5 = v6;
  }
}

- (void)setBannerProvider:(id)a3
{
  v5 = a3;
  if (self->_bannerProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_bannerProvider, a3);
    [(PXPhotosBannerProvider *)self->_bannerProvider setInvalidationDelegate:self];
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateBannerRequest];
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _loadBannerIfNecessary];
    v5 = v6;
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateTitleMetrics];
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateBannerView];
    v5 = v6;
  }
}

- (void)setTitleAttributes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_titleAttributes != v4)
  {
    v9 = v4;
    v6 = [(NSDictionary *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      titleAttributes = self->_titleAttributes;
      self->_titleAttributes = v7;

      [(PXPhotosKeyAssetSectionHeaderLayout *)self _bumpTitleVersion];
      v5 = v9;
    }
  }
}

- (void)setTitleBaseFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_titleBaseFrame = &self->_titleBaseFrame;
  if (!CGRectEqualToRect(a3, self->_titleBaseFrame))
  {
    p_titleBaseFrame->origin.x = x;
    p_titleBaseFrame->origin.y = y;
    p_titleBaseFrame->size.width = width;
    p_titleBaseFrame->size.height = height;
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateContent];

    [(PXPhotosKeyAssetSectionHeaderLayout *)self _updateFloatParameters];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  title = self->_title;
  if (title != v4)
  {
    v9 = v4;
    v6 = [(NSString *)title isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_title;
      self->_title = v7;

      [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateTitleMetrics];
      [(PXPhotosKeyAssetSectionHeaderLayout *)self _bumpTitleVersion];
      v4 = v9;
    }
  }
}

- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&self->_sectionIndexPath.dataSourceIdentifier, *&a3->dataSourceIdentifier), vceqq_s64(*&self->_sectionIndexPath.item, *&a3->item)))) & 1) == 0)
  {
    v3 = *&a3->item;
    *&self->_sectionIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
    *&self->_sectionIndexPath.item = v3;
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateKeyAssetFetch];
  }
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  if (self->_dataSource != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_dataSource, a3);
    [(PXPhotosKeyAssetSectionHeaderLayout *)self _invalidateKeyAssetFetch];
    v5 = v6;
  }
}

- (PXPhotosKeyAssetSectionHeaderLayout)initWithViewModel:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PXPhotosKeyAssetSectionHeaderLayout;
  v6 = [(PXPhotosKeyAssetSectionHeaderLayout *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    v8 = *(off_1E7722228 + 1);
    *&v7->_sectionIndexPath.dataSourceIdentifier = *off_1E7722228;
    *&v7->_sectionIndexPath.item = v8;
    v9 = [[off_1E77217D0 alloc] initWithValue:0.0];
    bannerAppearanceAnimator = v7->_bannerAppearanceAnimator;
    v7->_bannerAppearanceAnimator = v9;

    [(PXNumberAnimator *)v7->_bannerAppearanceAnimator registerChangeObserver:v7 context:BannerAppearanceAnimatorObservationContext];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 _invalidateKeyAssetFetch];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 _invalidateContentSize];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 _invalidateTitle];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 _invalidateTitleMetrics];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 _invalidateBannerView];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 _invalidateContent];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 _invalidateFloatParameters];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 _invalidateAnimations];
    [(PXPhotosKeyAssetSectionHeaderLayout *)v7 setContentSource:v7];
  }

  return v7;
}

@end