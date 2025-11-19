@interface PXGAnimator
- (BOOL)hasCriticalAnimations;
- (PXGAnimator)init;
- (id)_animationByAnimationIndexForAnimations:(id)a3;
- (id)_dequeueSpriteDataStore;
- (unsigned)highFrameRateReason;
- (void)_returnForReuseSpriteDataStore:(id)a3;
- (void)_stopAllAnimations;
- (void)computeAnimationStateForTime:(double)a3 inputSpriteDataStore:(id)a4 inputChangeDetails:(id)a5 inputLayout:(id)a6 viewportShift:(CGPoint)a7 animationPresentationSpriteDataStore:(id)a8 animationTargetSpriteDataStore:(id)a9 animationChangeDetails:(id *)a10 animationLayout:(id *)a11;
- (void)dealloc;
- (void)retargetAnimationsAfterStartTime:(double)a3 newStartTime:(double)a4;
- (void)setPreviousLayoutSnapshot:(id)a3;
- (void)setSpeed:(double)a3;
@end

@implementation PXGAnimator

- (PXGAnimator)init
{
  v12.receiver = self;
  v12.super_class = PXGAnimator;
  v2 = [(PXGAnimator *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXGAnimationDataStore);
    animationDataStore = v2->_animationDataStore;
    v2->_animationDataStore = v3;

    v5 = [[PXGAnimatorLayout alloc] initWithAnimator:v2];
    animatorLayout = v2->_animatorLayout;
    v2->_animatorLayout = v5;

    v7 = objc_alloc_init(PXGIndexSetArray);
    spriteIndexesByGroupIndex = v2->_spriteIndexesByGroupIndex;
    v2->_spriteIndexesByGroupIndex = v7;

    v2->_speed = 1.0;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    reusableSnapshotSpriteDataStores = v2->_reusableSnapshotSpriteDataStores;
    v2->_reusableSnapshotSpriteDataStores = v9;
  }

  return v2;
}

- (BOOL)hasCriticalAnimations
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PXGAnimator_hasCriticalAnimations__block_invoke;
  v5[3] = &unk_2782AB740;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 enumerateIndexesUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (unsigned)highFrameRateReason
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PXGAnimator_highFrameRateReason__block_invoke;
  v5[3] = &unk_2782AB740;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 enumerateIndexesUsingBlock:v5];

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (id)_dequeueSpriteDataStore
{
  v2 = [(NSMutableArray *)self->_reusableSnapshotSpriteDataStores px_popFirst];
  if (!v2)
  {
    v2 = +[PXGSpriteDataStore newSpriteDataStore];
  }

  return v2;
}

- (void)setPreviousLayoutSnapshot:(id)a3
{
  v5 = a3;
  previousLayoutSnapshot = self->_previousLayoutSnapshot;
  if (previousLayoutSnapshot != v5)
  {
    v8 = v5;
    if (previousLayoutSnapshot)
    {
      v7 = [(PXGLayoutSnapshot *)previousLayoutSnapshot spriteDataStore];
      [(PXGAnimator *)self _returnForReuseSpriteDataStore:v7];

      [(PXGLayoutSnapshot *)self->_previousLayoutSnapshot releaseSpriteDataStore];
    }

    objc_storeStrong(&self->_previousLayoutSnapshot, a3);
    v5 = v8;
  }
}

- (void)_returnForReuseSpriteDataStore:(id)a3
{
  v6 = a3;
  if ([(NSMutableArray *)self->_reusableSnapshotSpriteDataStores containsObject:?])
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXGAnimator.m" lineNumber:1066 description:{@"Invalid parameter not satisfying: %@", @"![_reusableSnapshotSpriteDataStores containsObject:spriteDataStore]"}];
  }

  [(NSMutableArray *)self->_reusableSnapshotSpriteDataStores addObject:v6];
}

- (void)setSpeed:(double)a3
{
  if (a3 <= 0.0)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGAnimator setSpeed:]"];
    [v5 handleFailureInFunction:v6 file:@"PXGAnimator.m" lineNumber:1049 description:{@"Invalid parameter not satisfying: %@", @"speed > 0"}];
  }

  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_speed = a3;
  }
}

- (void)_stopAllAnimations
{
  v3 = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__PXGAnimator__stopAllAnimations__block_invoke;
  v4[3] = &unk_2782ABC08;
  v4[4] = self;
  [v3 enumerateIndexesUsingBlock:v4];
}

uint64_t __33__PXGAnimator__stopAllAnimations__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 8) groupInfos];
  v4 = result + 76 * a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  return result;
}

void __34__PXGAnimator_highFrameRateReason__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *([*(*(a1 + 32) + 8) groupInfos] + 76 * a2 + 44);
  if ([v5 highFrameRateReason])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v5 highFrameRateReason];
    *a3 = 1;
  }
}

void __36__PXGAnimator_hasCriticalAnimations__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(objc_msgSend(*(*(a1 + 32) + 8) "groupInfos") + 76 * a2 + 44)];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)retargetAnimationsAfterStartTime:(double)a3 newStartTime:(double)a4
{
  v6 = a3 + -0.0001;
  v7 = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__PXGAnimator_retargetAnimationsAfterStartTime_newStartTime___block_invoke;
  v8[3] = &unk_2782AB718;
  v8[4] = self;
  *&v8[5] = v6;
  *&v8[6] = a4;
  [v7 enumerateIndexesUsingBlock:v8];
}

double __61__PXGAnimator_retargetAnimationsAfterStartTime_newStartTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) groupInfos] + 76 * a2;
  result = *(v3 + 8);
  if (*(v3 + 16) - result >= *(a1 + 40))
  {
    result = result + *(a1 + 48);
    *(v3 + 16) = result;
  }

  return result;
}

- (void)computeAnimationStateForTime:(double)a3 inputSpriteDataStore:(id)a4 inputChangeDetails:(id)a5 inputLayout:(id)a6 viewportShift:(CGPoint)a7 animationPresentationSpriteDataStore:(id)a8 animationTargetSpriteDataStore:(id)a9 animationChangeDetails:(id *)a10 animationLayout:(id *)a11
{
  y = a7.y;
  x = a7.x;
  v389 = *MEMORY[0x277D85DE8];
  v284 = a4;
  v281 = a5;
  v17 = a6;
  v286 = a8;
  v287 = a9;
  v285 = self;
  ++self->_computeCount;
  v294 = v17;
  v295 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = [v17 animations];

  if (v18)
  {
    v19 = [v17 animations];
    [v295 addObjectsFromArray:v19];
  }

  v384 = 0u;
  v383 = 0u;
  v382 = 0u;
  v381 = 0u;
  v20 = [v17 transitions];
  v21 = [v20 countByEnumeratingWithState:&v381 objects:v388 count:16];
  if (v21)
  {
    v22 = *v382;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v382 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = [*(*(&v381 + 1) + 8 * i) animations];
        v25 = [v24 allObjects];
        [v295 addObjectsFromArray:v25];
      }

      v21 = [v20 countByEnumeratingWithState:&v381 objects:v388 count:16];
    }

    while (v21);
  }

  v293 = [(PXGAnimator *)v285 _animationByAnimationIndexForAnimations:v295];
  v283 = [v293 count];
  v282 = [(PXGAnimator *)v285 _dequeueSpriteDataStore];
  if (v284)
  {
    [v284 sprites];
  }

  else
  {
    v380 = 0;
    v379 = 0u;
    v378 = 0u;
  }

  v361 = v378;
  v362 = v379;
  v363 = v380;
  [v282 setSprites:&v361];
  v26 = v285->_previousLayoutSnapshot;
  [(PXGLayoutSnapshot *)v26 applyViewportShift:x, y];
  v27 = [[PXGLayoutSnapshot alloc] initWithLayout:v294 spriteDataStore:v282];
  v375[0] = MEMORY[0x277D85DD0];
  v375[1] = 3221225472;
  v375[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke;
  v375[3] = &unk_2782AB498;
  v272 = v26;
  v376 = v272;
  v275 = v27;
  v377 = v275;
  [v295 enumerateObjectsUsingBlock:v375];
  isSkippingAnimations = v285->_isSkippingAnimations;
  v29 = (v283 == 0) & ~[(PXGAnimator *)v285 isAnimating];
  v285->_isSkippingAnimations = v29;
  if (v29 == 1)
  {
    kdebug_trace();
    if (v284)
    {
      [v284 sprites];
      v361 = v372;
      v362 = v373;
      v363 = v374;
      [v286 setSprites:&v361];
      [v284 sprites];
    }

    else
    {
      v374 = 0;
      v373 = 0u;
      v372 = 0u;
      v363 = 0;
      v362 = 0u;
      v361 = 0u;
      [v286 setSprites:&v361];
      v369 = 0u;
      v370 = 0u;
      v371 = 0;
    }

    v361 = v369;
    v362 = v370;
    v363 = v371;
    [v287 setSprites:&v361];
    kdebug_trace();
    v34 = v281;
    *a10 = v281;
    v35 = v294;
    *a11 = v294;
    goto LABEL_176;
  }

  if (isSkippingAnimations)
  {
    v30 = v285;
    kdebug_trace();

    v31 = [v286 count];
    v32 = [v30[1] spriteCount];
    v33 = objc_alloc_init(PXGChangeDetails);
    if (v31 >= v32)
    {
      [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, v31 - v32}];
    }

    else
    {
      [MEMORY[0x277D3CCC8] changeDetailsWithRemovedIndexRange:{0, v32 - v31}];
    }
    v36 = ;

    v387[0] = v36;
    v37 = [MEMORY[0x277D3CCC8] changeDetailsWithNoIncrementalChanges];
    v387[1] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v387 count:2];
    [(PXGChangeDetails *)v33 configureWithNumberOfSpritesAfterChange:v31 changeDetails:v38];

    [v30[1] applySpriteChangeDetails:v33];
    v39 = v286;
    v40 = [v286 geometries];
    v41 = v286;
    v42 = [v286 styles];
    for (j = [v30[1] spriteInfos]; v31; LODWORD(v31) = v31 - 1)
    {
      v44 = *v40;
      *j = *v40;
      *(j + 8) = v44 - v44;
      *(j + 16) = 0;
      v45 = *(v40 + 8);
      *(j + 20) = v45;
      *(j + 28) = v45 - v45;
      *(j + 36) = 0;
      *&v45 = *(v40 + 16);
      *(j + 40) = LODWORD(v45);
      *(j + 44) = *&v45 - *&v45;
      *(j + 48) = 0;
      *(j + 52) = vzip1_s32(*(v40 + 24), vsub_f32(*(v40 + 24), *(v40 + 24)));
      *(j + 60) = 0;
      LODWORD(v45) = *(v40 + 28);
      *(j + 64) = LODWORD(v45);
      *(j + 68) = *&v45 - *&v45;
      *(j + 72) = 0;
      LODWORD(v45) = *v42;
      *(j + 76) = *v42;
      *(j + 80) = *&v45 - *&v45;
      *(j + 84) = 0;
      LODWORD(v45) = *(v42 + 56);
      *(j + 88) = LODWORD(v45);
      *(j + 92) = *&v45 - *&v45;
      *(j + 96) = 0;
      LODWORD(v45) = *(v42 + 60);
      *(j + 100) = LODWORD(v45);
      *(j + 104) = *&v45 - *&v45;
      *(j + 108) = 0;
      LODWORD(v45) = *(v42 + 64);
      *(j + 112) = LODWORD(v45);
      *(j + 116) = *&v45 - *&v45;
      *(j + 120) = 0;
      *(j + 124) = vzip1_s32(*(v42 + 72), vsub_f32(*(v42 + 72), *(v42 + 72)));
      *(j + 132) = 0;
      LODWORD(v45) = *(v42 + 76);
      *(j + 136) = LODWORD(v45);
      *(j + 140) = *&v45 - *&v45;
      *(j + 144) = 0;
      *(j + 148) = vzip1_s32(*(v42 + 4), vsub_f32(*(v42 + 4), *(v42 + 4)));
      *(j + 156) = 0;
      LODWORD(v45) = *(v42 + 8);
      *(j + 160) = LODWORD(v45);
      *(j + 164) = *&v45 - *&v45;
      *(j + 168) = 0;
      LODWORD(v45) = *(v42 + 12);
      *(j + 172) = LODWORD(v45);
      *(j + 176) = *&v45 - *&v45;
      *(j + 180) = 0;
      LODWORD(v45) = *(v42 + 16);
      *(j + 184) = LODWORD(v45);
      *(j + 188) = *&v45 - *&v45;
      *(j + 192) = 0;
      *(j + 196) = vzip1_s32(*(v42 + 20), vsub_f32(*(v42 + 20), *(v42 + 20)));
      *(j + 204) = 0;
      LODWORD(v45) = *(v42 + 24);
      *(j + 208) = LODWORD(v45);
      *(j + 212) = *&v45 - *&v45;
      *(j + 216) = 0;
      LODWORD(v45) = *(v42 + 28);
      *(j + 220) = LODWORD(v45);
      *(j + 224) = *&v45 - *&v45;
      *(j + 228) = 0;
      LODWORD(v45) = *(v42 + 32);
      *(j + 232) = LODWORD(v45);
      *(j + 236) = *&v45 - *&v45;
      *(j + 240) = 0;
      LODWORD(v45) = *(v42 + 36);
      *(j + 244) = LODWORD(v45);
      *(j + 248) = *&v45 - *&v45;
      *(j + 252) = 0;
      LODWORD(v45) = *(v42 + 40);
      *(j + 256) = LODWORD(v45);
      *(j + 260) = *&v45 - *&v45;
      *(j + 264) = 0;
      LODWORD(v45) = *(v42 + 44);
      *(j + 268) = LODWORD(v45);
      *(j + 272) = *&v45 - *&v45;
      *(j + 276) = 0;
      LODWORD(v45) = *(v42 + 48);
      *(j + 280) = LODWORD(v45);
      *(j + 284) = *&v45 - *&v45;
      *(j + 288) = 0;
      LODWORD(v45) = *(v42 + 80);
      *(j + 292) = LODWORD(v45);
      *(j + 296) = *&v45 - *&v45;
      *(j + 300) = 0;
      v40 += 32;
      v42 += 160;
      j += 307;
    }

    v46 = v30;
    kdebug_trace();
  }

  lastUpdateTime = v285->_lastUpdateTime;
  if (lastUpdateTime > a3)
  {
    if (lastUpdateTime + -0.1 <= a3)
    {
      if (lastUpdateTime >= a3)
      {
        a3 = v285->_lastUpdateTime;
      }
    }

    else
    {
      [(PXGAnimator *)v285 _stopAllAnimations];
    }
  }

  v288 = v285;
  kdebug_trace();

  [v294 removeAllAnimations];
  [v294 removeAllTransitions];
  if (v283)
  {
    [(PXGAnimationDataStore *)v288->_animationDataStore setMappedSpriteCount:0];
    -[PXGAnimationDataStore increaseMappedSpriteCountBy:usingAnimationIndex:](v288->_animationDataStore, "increaseMappedSpriteCountBy:usingAnimationIndex:", [v294 numberOfSprites], 0);
    v48 = [(PXGAnimationDataStore *)v288->_animationDataStore animationIndexBySpriteIndex];
    v49 = [v293 allKeys];
    v50 = [v49 sortedArrayUsingComparator:&__block_literal_global_17074];

    v368 = 0u;
    v367 = 0u;
    v366 = 0u;
    v365 = 0u;
    v51 = v50;
    v52 = [v51 countByEnumeratingWithState:&v365 objects:v386 count:16];
    if (v52)
    {
      v53 = *v366;
      v54 = v48 + 8;
      while (2)
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v366 != v53)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v365 + 1) + 8 * k);
          v57 = [v293 objectForKeyedSubscript:v56];
          v58 = [v57 layout];
          if (!v58)
          {

            goto LABEL_59;
          }

          v59 = [v56 integerValue];
          if ([v57 scope] == 2)
          {
            v60 = [v58 localNumberOfSprites];
          }

          else
          {
            v60 = [v58 numberOfSprites];
          }

          v61 = [v294 convertSpriteIndexRange:v60 << 32 fromDescendantLayout:v58];
          v62 = (HIDWORD(v61) + v61);
          if (v62 > v61)
          {
            v63 = 0;
            v64 = v62 - v61;
            v65 = (v64 + 7) & 0xFFFFFFFFFFFFFFF8;
            v66 = vdupq_n_s64(v64 - 1);
            v67 = (v54 + 2 * v61);
            do
            {
              v68 = vdupq_n_s64(v63);
              v69 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_21AE2D360)));
              if (vuzp1_s8(vuzp1_s16(v69, *v66.i8), *v66.i8).u8[0])
              {
                *(v67 - 4) = v59;
              }

              if (vuzp1_s8(vuzp1_s16(v69, *&v66), *&v66).i8[1])
              {
                *(v67 - 3) = v59;
              }

              if (vuzp1_s8(vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_21AE2D350)))), *&v66).i8[2])
              {
                *(v67 - 2) = v59;
                *(v67 - 1) = v59;
              }

              v70 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_21AE2D340)));
              if (vuzp1_s8(*&v66, vuzp1_s16(v70, *&v66)).i32[1])
              {
                *v67 = v59;
              }

              if (vuzp1_s8(*&v66, vuzp1_s16(v70, *&v66)).i8[5])
              {
                v67[1] = v59;
              }

              if (vuzp1_s8(*&v66, vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_21AE2D330))))).i8[6])
              {
                v67[2] = v59;
                v67[3] = v59;
              }

              v63 += 8;
              v67 += 8;
            }

            while (v65 != v63);
          }
        }

        v52 = [v51 countByEnumeratingWithState:&v365 objects:v386 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
  }

  *&v361 = 0;
  *(&v361 + 1) = &v361;
  *&v362 = 0x3032000000;
  *(&v362 + 1) = __Block_byref_object_copy__17075;
  v363 = __Block_byref_object_dispose__17076;
  v364 = v281;
  v358[0] = MEMORY[0x277D85DD0];
  v358[1] = 3221225472;
  v358[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_14;
  v358[3] = &unk_2782AB4E0;
  v360 = &v361;
  v359 = v364;
  v271 = MEMORY[0x21CEE40A0](v358);
  if (v283)
  {
    v301 = [*(*(&v361 + 1) + 40) removedSpriteIndexes];
    v299 = [*(*(&v361 + 1) + 40) insertedSpriteIndexes];
    if ([v301 count] && objc_msgSend(v299, "count"))
    {
      v71 = [v293 allValues];
      v268 = PXFilter();

      if ([v268 count])
      {
        v72 = [v301 count];
        v73 = malloc_type_realloc(0, 4 * v72, 0x42760281uLL);
        v74 = v73;
        if (v72)
        {
          memset(v73, 255, 4 * v72);
        }

        v296 = v74;
        v75 = v286;
        v76 = v284;
        v354 = 0u;
        v355 = 0u;
        v356 = 0u;
        v357 = 0u;
        obj = v268;
        v77 = [obj countByEnumeratingWithState:&v354 objects:v385 count:16];
        if (v77)
        {
          v291 = *v355;
          do
          {
            v303 = v77;
            for (m = 0; m != v303; ++m)
            {
              if (*v355 != v291)
              {
                objc_enumerationMutation(obj);
              }

              v79 = *(*(&v354 + 1) + 8 * m);
              v80 = [v79 delegate];
              v81 = v75;
              v82 = [v75 geometries];
              v83 = v75;
              v84 = [v75 styles];
              v85 = v75;
              v86 = [v75 infos];
              v87 = v76;
              v88 = [v76 geometries];
              v89 = v76;
              v90 = [v76 styles];
              v91 = v76;
              [v80 animation:v79 updateSpriteTransferMap:v296 forSpritesRemovedFromIndexes:v301 presentedGeometries:v82 styles:v84 infos:v86 spritesInsertedToIndexes:v299 targetGeometries:v88 styles:v90 infos:objc_msgSend(v76 rootLayout:{"infos"), v294}];
            }

            v77 = [obj countByEnumeratingWithState:&v354 objects:v385 count:16];
          }

          while (v77);
        }

        v271[2]();
        [*(*(&v361 + 1) + 40) applySpriteTransferMap:v296];
        free(v296);
      }
    }
  }

  v348 = 0;
  v349 = &v348;
  v350 = 0x3032000000;
  v351 = __Block_byref_object_copy__17075;
  v352 = __Block_byref_object_dispose__17076;
  v353 = *(*(&v361 + 1) + 40);
  v347[0] = MEMORY[0x277D85DD0];
  v347[1] = 3221225472;
  v347[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_3;
  v347[3] = &unk_2782AB528;
  v347[4] = &v348;
  v347[5] = &v361;
  v300 = MEMORY[0x21CEE40A0](v347);
  v92 = v288;
  if (v288->_numberOfProlongatedSprites)
  {
    v300[2]();
    [v349[5] increaseNumberOfSpritesBy:v288->_numberOfProlongatedSprites];
    v93 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteIndexesExpiringAtTime:a3];
    if ([v93 count])
    {
      [v349[5] removeSpritesAtIndexes:v93];
      v288->_numberOfProlongatedSprites -= [v93 count];
    }

    v92 = v288;
    numberOfProlongatedSprites = v288->_numberOfProlongatedSprites;
  }

  else
  {
    numberOfProlongatedSprites = 0;
  }

  [(PXGAnimationDataStore *)v92->_animationDataStore increaseMappedSpriteCountBy:numberOfProlongatedSprites usingAnimationIndex:0];
  v95 = [(PXGAnimationDataStore *)v92->_animationDataStore animationIndexBySpriteIndex];
  if (v283)
  {
    v96 = [*(*(&v361 + 1) + 40) removedSpriteIndexes];
    if ([v96 count])
    {
      v300[2]();
      v97 = [v349[5] replaceRemovalsWithMovesToEndForIndexes:v96];
      v98 = HIDWORD(v97);
      if ([v96 count] != HIDWORD(v97))
      {
        v261 = [MEMORY[0x277CCA890] currentHandler];
        [v261 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:325 description:@"unexpected number of prolongated sprites"];
      }

      v99 = v288;
      v288->_numberOfProlongatedSprites += HIDWORD(v97);
    }

    else
    {
      v98 = 0;
      LODWORD(v97) = -1;
      v99 = v288;
    }

    [(PXGAnimationDataStore *)v99->_animationDataStore increaseMappedSpriteCountBy:v98 usingAnimationIndex:0];
    v304 = [(PXGAnimationDataStore *)v288->_animationDataStore animationIndexBySpriteIndex];
    v341 = 0;
    v342 = &v341;
    v343 = 0x3032000000;
    v344 = __Block_byref_object_copy__17075;
    v345 = __Block_byref_object_dispose__17076;
    v346 = 0;
    v100 = [*(*(&v361 + 1) + 40) modifiedSpriteIndexes];
    v333[0] = MEMORY[0x277D85DD0];
    v333[1] = 3221225472;
    v333[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_4;
    v333[3] = &unk_2782AB570;
    v101 = v100;
    v340 = v304;
    v334 = v101;
    v335 = v288;
    v336 = v286;
    v338 = &v348;
    v337 = v294;
    v339 = &v341;
    [v293 enumerateKeysAndObjectsUsingBlock:v333];
    [(PXGSpriteDataStore *)v288->_doubleSidedSpriteDataStore setCount:0];
    [(PXGSpriteDataStore *)v288->_oldAnimationPresentationSpriteDataStore setCount:0];
    if ([v342[5] count])
    {
      v300[2]();
      v102 = [v349[5] splitIndexesIntoMovesToEndAndReinsertions:v342[5]];
      v103 = HIDWORD(v102);
      if ([v342[5] count] != HIDWORD(v102))
      {
        v262 = [MEMORY[0x277CCA890] currentHandler];
        [v262 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:415 description:@"unexpected number of prolongated sprites"];

        v103 = HIDWORD(v102);
      }

      v288->_numberOfProlongatedSprites += v103;
      if (v97 == -1)
      {
        LODWORD(v97) = v102;
      }

      else
      {
        if (v97 + v98 != v102)
        {
          v263 = v103;
          v103 = [MEMORY[0x277CCA890] currentHandler];
          v264 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%li, %li}", v97, v98];
          v265 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%li, %li}", v102, v263];
          [v103 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:420 description:{@"prolongated sprite ranges are disjoint %@ %@", v264, v265}];

          LODWORD(v103) = v263;
        }

        LODWORD(v103) = v98 + v103;
      }

      v331[0] = 0;
      v331[1] = v331;
      v331[2] = 0x2020000000;
      v332 = [(PXGAnimationDataStore *)v288->_animationDataStore mappedSpriteCount];
      [(PXGAnimationDataStore *)v288->_animationDataStore setMappedSpriteCount:(v97 + v103)];
      v104 = [(PXGAnimationDataStore *)v288->_animationDataStore animationIndexBySpriteIndex];
      v105 = v342[5];
      v330[0] = MEMORY[0x277D85DD0];
      v330[1] = 3221225472;
      v330[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_6;
      v330[3] = &unk_2782AB598;
      v330[5] = v104;
      v330[4] = v331;
      [v105 enumerateIndexesUsingBlock:v330];
      v292 = v103;
      v304 = v104;
      _Block_object_dispose(v331, 8);
    }

    else
    {
      v292 = v98;
    }

    _Block_object_dispose(&v341, 8);
  }

  else
  {
    v304 = v95;
    v292 = 0;
    LODWORD(v97) = -1;
  }

  *a10 = v349[5];
  [(PXGAnimationDataStore *)v288->_animationDataStore applySpriteChangeDetails:v349[5]];
  [v286 applyChangeDetails:v349[5]];
  [v287 applyChangeDetails:v349[5]];
  v106 = [v286 count];
  if ([v287 count] != v106)
  {
    v256 = [MEMORY[0x277CCA890] currentHandler];
    [v256 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:441 description:{@"unexpected animation target sprite data store count %li (expected: %li)", objc_msgSend(v287, "count"), v106}];
  }

  if ([(PXGAnimationDataStore *)v288->_animationDataStore spriteCount]!= v106)
  {
    v257 = [MEMORY[0x277CCA890] currentHandler];
    [v257 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:442 description:{@"unexpected animation data store sprite count %li (expected: %li)", -[PXGAnimationDataStore spriteCount](v288->_animationDataStore, "spriteCount"), v106}];
  }

  if (v283 && [(PXGAnimationDataStore *)v288->_animationDataStore mappedSpriteCount]!= v106)
  {
    v258 = [MEMORY[0x277CCA890] currentHandler];
    [v258 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:444 description:{@"unexpected animation data store mapped sprite count %li (expected: %li)", -[PXGAnimationDataStore mappedSpriteCount](v288->_animationDataStore, "mappedSpriteCount"), v106}];
  }

  v107 = v288;
  kdebug_trace();

  v329[0] = MEMORY[0x277D85DD0];
  v329[1] = 3221225472;
  v329[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_7;
  v329[3] = &unk_2782AB5C0;
  *&v329[5] = a3;
  v329[4] = v107;
  v108 = MEMORY[0x21CEE40A0](v329);
  v109 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v110 = [(PXGAnimationDataStore *)v288->_animationDataStore activeGroupIndexes];
  v326[0] = MEMORY[0x277D85DD0];
  v326[1] = 3221225472;
  v326[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_8;
  v326[3] = &unk_2782AB5E8;
  v326[4] = v107;
  v111 = v108;
  v328 = v111;
  v302 = v109;
  v327 = v302;
  [v110 enumerateIndexesUsingBlock:v326];

  if (x != *MEMORY[0x277CBF348] || y != *(MEMORY[0x277CBF348] + 8))
  {
    v112 = v107;
    kdebug_trace();

    v113 = v286;
    v114 = [v286 geometries];
    v115 = v286;
    v116 = [v286 styles];
    v117 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos];
    v118.f64[0] = x;
    v118.f64[1] = y;
    v119 = vcvt_f32_f64(v118);
    if (v106)
    {
      v120 = vcvtq_f64_f32(v119);
      v121 = (v116 + 20);
      v122 = v106;
      do
      {
        *v114 = vaddq_f64(*v114, v120);
        v114 += 2;
        *&v123 = vadd_f32(*v121, v119);
        *(&v123 + 1) = vextq_s8(*v121->f32, *v121->f32, 8uLL).u64[0];
        *v121->f32 = v123;
        v121 += 20;
        *v117 = *v117 + v120.f64[0];
        *(v117 + 20) = *(v117 + 20) + v120.f64[1];
        *(v117 + 196) = *(v117 + 196) + v119.f32[0];
        *(v117 + 208) = *(v117 + 208) + v119.f32[1];
        v117 += 307;
        --v122;
      }

      while (v122);
    }

    v297 = v119;
    v124 = v288->_numberOfProlongatedSprites;
    v125 = v287;
    v126 = [v287 geometries];
    v127 = v287;
    v128 = [v287 styles];
    if (v124)
    {
      v129 = v106 - v124;
      v130 = (v126 + 32 * v129);
      v131 = vcvtq_f64_f32(v297);
      v132 = (v128 + 160 * v129 + 20);
      do
      {
        *v130 = vaddq_f64(*v130, v131);
        v130 += 2;
        *&v133 = vadd_f32(*v132, v297);
        *(&v133 + 1) = vextq_s8(*v132->f32, *v132->f32, 8uLL).u64[0];
        *v132->f32 = v133;
        v132 += 20;
        --v124;
      }

      while (v124);
    }

    v134 = v112;
    kdebug_trace();
  }

  v135 = v107;
  kdebug_trace();

  v136 = [v284 count];
  v137 = v287;
  v138 = [v287 entities];
  v139 = v284;
  memcpy(v138, [v284 entities], 4 * v136);
  v140 = v287;
  v141 = [v287 geometries];
  v142 = v284;
  v143 = v136;
  memcpy(v141, [v284 geometries], 32 * v136);
  v144 = v287;
  v145 = [v287 styles];
  v146 = v284;
  memcpy(v145, [v284 styles], 160 * v143);
  v147 = v287;
  v148 = [v287 infos];
  v149 = v284;
  memcpy(v148, [v284 infos], 40 * v143);
  v150 = v135;
  kdebug_trace();

  v151 = v150;
  kdebug_trace();

  [(PXGAnimationDataStore *)v288->_animationDataStore setMappedAnimationCount:0];
  [(PXGAnimationDataStore *)v288->_animationDataStore setMappedAnimationCount:2 * (v283 & 0x7FFF)];
  v152 = [(PXGAnimationDataStore *)v288->_animationDataStore groupIndexByAnimationIndex];
  [v151 speed];
  v154 = v153;
  UIAnimationDragCoefficient();
  v317[0] = MEMORY[0x277D85DD0];
  v317[1] = 3221225472;
  v317[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_9;
  v317[3] = &unk_2782AB610;
  v321 = x;
  v322 = y;
  v323 = v154 * v155;
  v324 = a3;
  obja = v294;
  v318 = obja;
  v319 = v151;
  v280 = v111;
  v320 = v280;
  v325 = v152;
  [v293 enumerateKeysAndObjectsUsingBlock:v317];
  v156 = [(PXGAnimationDataStore *)v288->_animationDataStore activeGroupIndexes];
  if ([v156 count])
  {
    [v151[5] setCount:{objc_msgSend(v156, "lastIndex") + 1}];
  }

  v157 = v151;
  kdebug_trace();
  v298 = v156;

  v158 = [(PXGAnimationDataStore *)v288->_animationDataStore groupInfos];
  v159 = v157;
  kdebug_trace();

  if (v283)
  {
    [v159[5] removeAllIndexes];
    v277 = [v159[5] indexSetReferences];
    v160 = v287;
    v161 = [v287 entities];
    v162 = v287;
    v274 = [v287 geometries];
    v163 = v287;
    v269 = [v287 styles];
    v164 = v287;
    v267 = [v287 infos];
    v165 = v286;
    v266 = [v286 entities];
    v166 = v286;
    v167 = [v286 geometries];
    v168 = v286;
    v169 = [v286 styles];
    v170 = v286;
    v171 = [v286 infos];
    v172 = [v349[5] insertedSpriteIndexes];
    v312[0] = MEMORY[0x277D85DD0];
    v312[1] = 3221225472;
    v312[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_11;
    v312[3] = &__block_descriptor_120_e24_v32__0__NSRange_QQ_8_B24l;
    v312[4] = v266;
    v312[5] = v161;
    v312[6] = v167;
    v312[7] = v274;
    v312[8] = v169;
    v312[9] = v269;
    v312[10] = v171;
    v312[11] = v267;
    v312[12] = v152;
    v312[13] = v304;
    v312[14] = v277;
    [v172 enumerateRangesUsingBlock:v312];

    v311[0] = MEMORY[0x277D85DD0];
    v311[1] = 3221225472;
    v311[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_12;
    v311[3] = &unk_2782AB680;
    v311[6] = v277;
    v311[7] = v167;
    v311[8] = v169;
    v311[9] = v171;
    v311[10] = v274;
    v311[11] = v269;
    v311[12] = v267;
    v311[4] = v159;
    v311[5] = v158;
    [v298 enumerateIndexesUsingBlock:v311];
  }

  else
  {
    v173 = [v349[5] insertedSpriteIndexes];
    v313[0] = MEMORY[0x277D85DD0];
    v313[1] = 3221225472;
    v313[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_10;
    v313[3] = &unk_2782AB638;
    v314 = v287;
    v315 = v286;
    v316 = v159;
    [v173 enumerateRangesUsingBlock:v313];
  }

  v174 = v159;
  kdebug_trace();

  if (v292)
  {
    v175 = v174;
    kdebug_trace();

    [v175[5] removeAllIndexes];
    v176 = [v175[5] indexSetReferences];
    v177 = [v349[5] spriteIndexAfterChangeBySpriteIndexBeforeChange];
    v178 = [v349[5] inverse];
    v179 = v178;
    v180 = [v178 spriteIndexAfterChangeBySpriteIndexBeforeChange];

    if (!v177)
    {
      v259 = [MEMORY[0x277CCA890] currentHandler];
      [v259 handleFailureInMethod:a2 object:v175 file:@"PXGAnimator.m" lineNumber:823 description:@"missing forward sprite index map"];
    }

    if (!v180)
    {
      v260 = [MEMORY[0x277CCA890] currentHandler];
      [v260 handleFailureInMethod:a2 object:v175 file:@"PXGAnimator.m" lineNumber:824 description:@"missing reverse sprite index map"];
    }

    v278 = v174;
    v181 = v177;
    v182 = v292;
    v183 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos]+ 307 * v97 + 306;
    v184 = v304;
    do
    {
      *v183 |= 1u;
      [*(v176 + 8 * *(v152 + 2 * *(v184 + 2 * v97))) addIndex:*(v180 + 4 * v97)];
      LODWORD(v97) = v97 + 1;
      v183 += 307;
      --v182;
      v184 = v304;
    }

    while (v182);
    v306[0] = MEMORY[0x277D85DD0];
    v306[1] = 3221225472;
    v306[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_14;
    v306[3] = &unk_2782AB6D0;
    v308 = v158;
    v309 = v176;
    v310 = v181;
    v307 = v287;
    [v298 enumerateIndexesUsingBlock:v306];
    v185 = v175;
    kdebug_trace();

    v174 = v278;
  }

  if (v283)
  {
    v186 = v174;
    kdebug_trace();

    v187 = v286;
    v188 = [v286 geometries];
    v189 = v286;
    v190 = [v286 styles];
    v191 = v287;
    v192 = [v287 geometries];
    v193 = v287;
    v194 = [v287 styles];
    v195 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos];
    v196 = v304;
    if (v106)
    {
      v197 = 0;
      do
      {
        if (*v192 == *v195)
        {
          v198 = *(v195 + 20);
          if (*(v192 + 8) == v198 && *(v192 + 16) == *(v195 + 40))
          {
            v199 = *(v192 + 24);
            if (*&v199 == *(v195 + 52) && *(&v199 + 1) == *(v195 + 64) && *v194 == *(v195 + 76) && *(v194 + 56) == *(v195 + 88) && *(v194 + 60) == *(v195 + 100) && *(v194 + 64) == *(v195 + 112))
            {
              v200 = *(v194 + 72);
              if (*&v200 == *(v195 + 124) && *(&v200 + 1) == *(v195 + 136))
              {
                v201 = *(v194 + 4);
                if (*&v201 == *(v195 + 148))
                {
                  if (*(&v201 + 1) == *(v195 + 160) && *(&v201 + 2) == *(v195 + 172) && *(&v201 + 3) == *(v195 + 184) && (v202 = *(v194 + 20), *&v202 == *(v195 + 196)) && *(&v202 + 1) == *(v195 + 208) && *(&v202 + 2) == *(v195 + 220) && *(&v202 + 3) == *(v195 + 232) && *(v194 + 36) == *(v195 + 244) && *(v194 + 40) == *(v195 + 256) && *(v194 + 44) == *(v195 + 268) && *(v194 + 48) == *(v195 + 280))
                  {
                    v196 = v304;
                    if (*(v194 + 80) == *(v195 + 292))
                    {
                      goto LABEL_157;
                    }
                  }

                  else
                  {
                    v196 = v304;
                  }
                }
              }
            }
          }
        }

        else
        {
          v198 = *(v195 + 20);
        }

        v203 = (v158 + 76 * *(v195 + 304));
        v204 = v203[6];
        v205 = v203[9];
        v206 = v203[10];
        *v188 = *v195 + v205 * *(v195 + 8) + (v206 * *(v195 + 16)) + v204 * *(v195 + 8);
        *(v188 + 8) = v198 + v205 * *(v195 + 28) + (v206 * *(v195 + 36)) + v204 * *(v195 + 28);
        *(v188 + 16) = (((*(v195 + 40) + (v205 * *(v195 + 44))) + (v206 * *(v195 + 48))) + (v204 * *(v195 + 44)));
        *&v207 = ((*(v195 + 52) + (v205 * *(v195 + 56))) + (v206 * *(v195 + 60))) + (v204 * *(v195 + 56));
        *(v188 + 24) = v207;
        *(&v207 + 1) = ((*(v195 + 64) + (v203[9] * *(v195 + 68))) + (v203[10] * *(v195 + 72))) + (v204 * *(v195 + 68));
        *(v188 + 24) = v207;
        v208 = v203[9];
        v209 = v203[10];
        *v190 = ((*(v195 + 76) + (v208 * *(v195 + 80))) + (v209 * *(v195 + 84))) + (v204 * *(v195 + 80));
        *(v190 + 56) = ((*(v195 + 88) + (v208 * *(v195 + 92))) + (v209 * *(v195 + 96))) + (v204 * *(v195 + 92));
        *(v190 + 60) = ((*(v195 + 100) + (v208 * *(v195 + 104))) + (v209 * *(v195 + 108))) + (v204 * *(v195 + 104));
        *(v190 + 64) = ((*(v195 + 112) + (v208 * *(v195 + 116))) + (v209 * *(v195 + 120))) + (v204 * *(v195 + 116));
        *&v207 = ((*(v195 + 124) + (v208 * *(v195 + 128))) + (v209 * *(v195 + 132))) + (v204 * *(v195 + 128));
        *(v190 + 72) = v207;
        *(&v207 + 1) = ((*(v195 + 136) + (v203[9] * *(v195 + 140))) + (v203[10] * *(v195 + 144))) + (v204 * *(v195 + 140));
        *(v190 + 72) = v207;
        v210 = *(v190 + 4);
        *&v210 = ((*(v195 + 148) + (v203[9] * *(v195 + 152))) + (v203[10] * *(v195 + 156))) + (v204 * *(v195 + 152));
        *(v190 + 4) = v210;
        *(&v210 + 1) = ((*(v195 + 160) + (v203[9] * *(v195 + 164))) + (v203[10] * *(v195 + 168))) + (v204 * *(v195 + 164));
        *(v190 + 4) = v210;
        *(&v210 + 2) = ((*(v195 + 172) + (v203[9] * *(v195 + 176))) + (v203[10] * *(v195 + 180))) + (v204 * *(v195 + 176));
        *(v190 + 4) = v210;
        *(&v210 + 3) = ((*(v195 + 184) + (v203[9] * *(v195 + 188))) + (v203[10] * *(v195 + 192))) + (v204 * *(v195 + 188));
        *(v190 + 4) = v210;
        v211 = *(v190 + 20);
        *&v211 = ((*(v195 + 196) + (v203[9] * *(v195 + 200))) + (v203[10] * *(v195 + 204))) + (v204 * *(v195 + 200));
        *(v190 + 20) = v211;
        *(&v211 + 1) = ((*(v195 + 208) + (v203[9] * *(v195 + 212))) + (v203[10] * *(v195 + 216))) + (v204 * *(v195 + 212));
        *(v190 + 20) = v211;
        *(&v211 + 2) = ((*(v195 + 220) + (v203[9] * *(v195 + 224))) + (v203[10] * *(v195 + 228))) + (v204 * *(v195 + 224));
        *(v190 + 20) = v211;
        *(&v211 + 3) = ((*(v195 + 232) + (v203[9] * *(v195 + 236))) + (v203[10] * *(v195 + 240))) + (v204 * *(v195 + 236));
        *(v190 + 20) = v211;
        *(v190 + 36) = ((*(v195 + 244) + (v203[9] * *(v195 + 248))) + (v203[10] * *(v195 + 252))) + (v204 * *(v195 + 248));
        *(v190 + 40) = ((*(v195 + 256) + (v203[9] * *(v195 + 260))) + (v203[10] * *(v195 + 264))) + (v204 * *(v195 + 260));
        *(v190 + 44) = ((*(v195 + 268) + (v203[9] * *(v195 + 272))) + (v203[10] * *(v195 + 276))) + (v204 * *(v195 + 272));
        *(v190 + 48) = ((*(v195 + 280) + (v203[9] * *(v195 + 284))) + (v203[10] * *(v195 + 288))) + (v204 * *(v195 + 284));
        *(v190 + 80) = ((*(v195 + 292) + (v203[9] * *(v195 + 296))) + (v203[10] * *(v195 + 300))) + (v204 * *(v195 + 296));
        v212 = *v188 - *v192;
        *v195 = *v192;
        *(v195 + 8) = v212;
        *(v195 + 16) = 0;
        v213 = *(v188 + 8);
        v214 = *(v192 + 8);
        *(v195 + 20) = v214;
        *(v195 + 28) = v213 - v214;
        *(v195 + 36) = 0;
        *&v213 = *(v188 + 16);
        *&v214 = *(v192 + 16);
        *(v195 + 40) = LODWORD(v214);
        *(v195 + 44) = *&v213 - *&v214;
        *(v195 + 48) = 0;
        v215 = *(v192 + 24);
        *&v213 = COERCE_FLOAT(*(v188 + 24)) - *&v215;
        *(v195 + 52) = v215;
        *(v195 + 56) = LODWORD(v213);
        *(v195 + 60) = 0;
        LODWORD(v215) = *(v192 + 28);
        *&v213 = *(v188 + 28) - *&v215;
        *(v195 + 64) = v215;
        *(v195 + 68) = LODWORD(v213);
        *(v195 + 72) = 0;
        *&v213 = *v190 - *v194;
        *(v195 + 76) = *v194;
        *(v195 + 80) = LODWORD(v213);
        *(v195 + 84) = 0;
        LODWORD(v215) = *(v194 + 56);
        *&v213 = *(v190 + 56) - *&v215;
        *(v195 + 88) = v215;
        *(v195 + 92) = LODWORD(v213);
        *(v195 + 96) = 0;
        LODWORD(v215) = *(v194 + 60);
        *&v213 = *(v190 + 60) - *&v215;
        *(v195 + 100) = v215;
        *(v195 + 104) = LODWORD(v213);
        *(v195 + 108) = 0;
        LODWORD(v215) = *(v194 + 64);
        *&v213 = *(v190 + 64) - *&v215;
        *(v195 + 112) = v215;
        *(v195 + 116) = LODWORD(v213);
        *(v195 + 120) = 0;
        LODWORD(v213) = *(v194 + 4);
        *&v215 = *(v190 + 4) - *&v213;
        *(v195 + 148) = LODWORD(v213);
        *(v195 + 152) = v215;
        *(v195 + 156) = 0;
        v216 = *(v190 + 72);
        v217 = *(v194 + 72);
        *(v195 + 124) = v217;
        *(v195 + 128) = *&v216 - *&v217;
        *(v195 + 132) = 0;
        LODWORD(v217) = *(v194 + 76);
        *&v216 = *(v190 + 76) - *&v217;
        *(v195 + 136) = v217;
        *(v195 + 140) = v216;
        *(v195 + 144) = 0;
        LODWORD(v217) = *(v194 + 8);
        *&v216 = *(v190 + 8) - *&v217;
        *(v195 + 160) = v217;
        *(v195 + 164) = v216;
        *(v195 + 168) = 0;
        LODWORD(v217) = *(v194 + 12);
        *&v216 = *(v190 + 12) - *&v217;
        *(v195 + 172) = v217;
        *(v195 + 176) = v216;
        *(v195 + 180) = 0;
        LODWORD(v217) = *(v194 + 16);
        *&v216 = *(v190 + 16) - *&v217;
        *(v195 + 184) = v217;
        *(v195 + 188) = v216;
        *(v195 + 192) = 0;
        LODWORD(v216) = *(v194 + 20);
        *&v217 = *(v190 + 20) - *&v216;
        *(v195 + 196) = v216;
        *(v195 + 200) = v217;
        *(v195 + 204) = 0;
        LODWORD(v217) = *(v194 + 24);
        *&v216 = *(v190 + 24) - *&v217;
        *(v195 + 208) = v217;
        *(v195 + 212) = v216;
        *(v195 + 216) = 0;
        LODWORD(v217) = *(v194 + 28);
        *&v216 = *(v190 + 28) - *&v217;
        *(v195 + 220) = v217;
        *(v195 + 224) = v216;
        *(v195 + 228) = 0;
        LODWORD(v217) = *(v194 + 32);
        *&v216 = *(v190 + 32) - *&v217;
        *(v195 + 232) = v217;
        *(v195 + 236) = v216;
        *(v195 + 240) = 0;
        LODWORD(v217) = *(v194 + 36);
        *&v216 = *(v190 + 36) - *&v217;
        *(v195 + 244) = v217;
        *(v195 + 248) = v216;
        *(v195 + 252) = 0;
        LODWORD(v216) = *(v190 + 40);
        LODWORD(v217) = *(v194 + 40);
        *(v195 + 256) = v217;
        *(v195 + 260) = *&v216 - *&v217;
        *(v195 + 264) = 0;
        LODWORD(v216) = *(v190 + 44);
        LODWORD(v217) = *(v194 + 44);
        *(v195 + 268) = v217;
        *(v195 + 272) = *&v216 - *&v217;
        *(v195 + 276) = 0;
        LODWORD(v216) = *(v190 + 48);
        LODWORD(v217) = *(v194 + 48);
        *(v195 + 280) = v217;
        *(v195 + 284) = *&v216 - *&v217;
        *(v195 + 288) = 0;
        LODWORD(v216) = *(v190 + 80);
        LODWORD(v217) = *(v194 + 80);
        *(v195 + 292) = v217;
        *(v195 + 296) = *&v216 - *&v217;
        *(v195 + 300) = 0;
        *(v195 + 304) = *(v152 + 2 * *(v196 + 2 * v197));
LABEL_157:
        ++v197;
        v188 += 32;
        v190 += 160;
        v192 += 32;
        v194 += 160;
        v195 += 307;
      }

      while (v197 != v106);
    }

    v218 = v186;
    kdebug_trace();
  }

  v219 = v174;
  kdebug_trace();

  v220 = v286;
  v221 = [v286 geometries];
  v222 = v286;
  v223 = [v286 styles];
  v224 = v287;
  v225 = [v287 geometries];
  v226 = v287;
  v227 = [v287 styles];
  v228 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos];
  if (v106)
  {
    v229 = v106;
    do
    {
      v230 = *v225;
      *v228 = *v225;
      v231 = *(v225 + 8);
      *(v228 + 20) = v231;
      v232 = *(v225 + 16);
      *(v228 + 40) = v232;
      v233 = *(v225 + 24);
      *(v228 + 52) = v233;
      *(v228 + 64) = *(v225 + 28);
      *(v228 + 76) = *v227;
      *(v228 + 88) = *(v227 + 56);
      *(v228 + 100) = *(v227 + 60);
      *(v228 + 112) = *(v227 + 64);
      *(v228 + 124) = *(v227 + 72);
      *(v228 + 136) = *(v227 + 76);
      *(v228 + 148) = *(v227 + 4);
      *(v228 + 160) = *(v227 + 8);
      *(v228 + 172) = *(v227 + 12);
      *(v228 + 184) = *(v227 + 16);
      *(v228 + 196) = *(v227 + 20);
      *(v228 + 208) = *(v227 + 24);
      *(v228 + 220) = *(v227 + 28);
      *(v228 + 232) = *(v227 + 32);
      *(v228 + 244) = *(v227 + 36);
      *(v228 + 256) = *(v227 + 40);
      *(v228 + 268) = *(v227 + 44);
      *(v228 + 280) = *(v227 + 48);
      *(v228 + 292) = *(v227 + 80);
      v234 = v158 + 76 * *(v228 + 304);
      v235 = *(v234 + 36);
      v236 = *(v234 + 40);
      v237 = *(v228 + 8);
      v238 = v230 + v235 * v237;
      LODWORD(v230) = *(v234 + 24);
      *v221 = v238 + (v236 * *(v228 + 16)) + *&v230 * v237;
      *(v221 + 8) = v231 + v235 * *(v228 + 28) + (v236 * *(v228 + 36)) + *&v230 * *(v228 + 28);
      *(v221 + 16) = (((v232 + (v235 * *(v228 + 44))) + (v236 * *(v228 + 48))) + (*&v230 * *(v228 + 44)));
      *&v233 = ((*&v233 + (v235 * *(v228 + 56))) + (v236 * *(v228 + 60))) + (*&v230 * *(v228 + 56));
      *(v221 + 24) = v233;
      *(&v233 + 1) = ((*(v228 + 64) + (*(v234 + 36) * *(v228 + 68))) + (*(v234 + 40) * *(v228 + 72))) + (*&v230 * *(v228 + 68));
      *(v221 + 24) = v233;
      LODWORD(v231) = *(v234 + 36);
      v239 = *(v234 + 40);
      *v223 = ((*(v228 + 76) + (*&v231 * *(v228 + 80))) + (v239 * *(v228 + 84))) + (*&v230 * *(v228 + 80));
      *(v223 + 56) = ((*(v228 + 88) + (*&v231 * *(v228 + 92))) + (v239 * *(v228 + 96))) + (*&v230 * *(v228 + 92));
      *(v223 + 60) = ((*(v228 + 100) + (*&v231 * *(v228 + 104))) + (v239 * *(v228 + 108))) + (*&v230 * *(v228 + 104));
      *(v223 + 64) = ((*(v228 + 112) + (*&v231 * *(v228 + 116))) + (v239 * *(v228 + 120))) + (*&v230 * *(v228 + 116));
      *&v233 = ((*(v228 + 124) + (*&v231 * *(v228 + 128))) + (v239 * *(v228 + 132))) + (*&v230 * *(v228 + 128));
      *(v223 + 72) = v233;
      *(&v233 + 1) = ((*(v228 + 136) + (*(v234 + 36) * *(v228 + 140))) + (*(v234 + 40) * *(v228 + 144))) + (*&v230 * *(v228 + 140));
      *(v223 + 72) = v233;
      v240 = *(v223 + 4);
      *&v240 = ((*(v228 + 148) + (*(v234 + 36) * *(v228 + 152))) + (*(v234 + 40) * *(v228 + 156))) + (*&v230 * *(v228 + 152));
      *(v223 + 4) = v240;
      *(&v240 + 1) = ((*(v228 + 160) + (*(v234 + 36) * *(v228 + 164))) + (*(v234 + 40) * *(v228 + 168))) + (*&v230 * *(v228 + 164));
      *(v223 + 4) = v240;
      *(&v240 + 2) = ((*(v228 + 172) + (*(v234 + 36) * *(v228 + 176))) + (*(v234 + 40) * *(v228 + 180))) + (*&v230 * *(v228 + 176));
      *(v223 + 4) = v240;
      *(&v240 + 3) = ((*(v228 + 184) + (*(v234 + 36) * *(v228 + 188))) + (*(v234 + 40) * *(v228 + 192))) + (*&v230 * *(v228 + 188));
      *(v223 + 4) = v240;
      v241 = *(v223 + 20);
      *&v241 = ((*(v228 + 196) + (*(v234 + 36) * *(v228 + 200))) + (*(v234 + 40) * *(v228 + 204))) + (*&v230 * *(v228 + 200));
      *(v223 + 20) = v241;
      *(&v241 + 1) = ((*(v228 + 208) + (*(v234 + 36) * *(v228 + 212))) + (*(v234 + 40) * *(v228 + 216))) + (*&v230 * *(v228 + 212));
      *(v223 + 20) = v241;
      *(&v241 + 2) = ((*(v228 + 220) + (*(v234 + 36) * *(v228 + 224))) + (*(v234 + 40) * *(v228 + 228))) + (*&v230 * *(v228 + 224));
      *(v223 + 20) = v241;
      *(&v241 + 3) = ((*(v228 + 232) + (*(v234 + 36) * *(v228 + 236))) + (*(v234 + 40) * *(v228 + 240))) + (*&v230 * *(v228 + 236));
      *(v223 + 20) = v241;
      *(v223 + 36) = ((*(v228 + 244) + (*(v234 + 36) * *(v228 + 248))) + (*(v234 + 40) * *(v228 + 252))) + (*&v230 * *(v228 + 248));
      *(v223 + 40) = ((*(v228 + 256) + (*(v234 + 36) * *(v228 + 260))) + (*(v234 + 40) * *(v228 + 264))) + (*&v230 * *(v228 + 260));
      *(v223 + 44) = ((*(v228 + 268) + (*(v234 + 36) * *(v228 + 272))) + (*(v234 + 40) * *(v228 + 276))) + (*&v230 * *(v228 + 272));
      *(v223 + 48) = ((*(v228 + 280) + (*(v234 + 36) * *(v228 + 284))) + (*(v234 + 40) * *(v228 + 288))) + (*&v230 * *(v228 + 284));
      *(v223 + 80) = ((*(v228 + 292) + (*(v234 + 36) * *(v228 + 296))) + (*(v234 + 40) * *(v228 + 300))) + (*&v230 * *(v228 + 296));
      *(v223 + 52) = *(v227 + 52);
      v242 = *(v227 + 96);
      v243 = *(v227 + 112);
      v244 = *(v227 + 144);
      *(v223 + 128) = *(v227 + 128);
      *(v223 + 144) = v244;
      *(v223 + 96) = v242;
      *(v223 + 112) = v243;
      *(v223 + 68) = *(v227 + 68);
      LOBYTE(v234) = *(v227 + 70);
      v225 += 32;
      v227 += 160;
      *(v223 + 70) = v234;
      v228 += 307;
      v221 += 32;
      v223 += 160;
      --v229;
    }

    while (v229);
  }

  v245 = v286;
  v246 = [v286 entities];
  v247 = v287;
  memcpy(v246, [v287 entities], 4 * v106);
  v248 = v286;
  v249 = [v286 infos];
  v250 = v287;
  memcpy(v249, [v287 infos], 40 * v106);
  v251 = v219;
  kdebug_trace();

  if ([v302 count])
  {
    v252 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos];
    v305[0] = MEMORY[0x277D85DD0];
    v305[1] = 3221225472;
    v305[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_16;
    v305[3] = &unk_2782ABC08;
    v305[4] = v251;
    [v302 enumerateIndexesUsingBlock:v305];
    if (v106)
    {
      v253 = (v252 + 304);
      do
      {
        if ([v302 containsIndex:*v253])
        {
          *v253 = 0;
        }

        v253 = (v253 + 307);
        --v106;
      }

      while (v106);
    }

    [(PXGAnimationDataStore *)v288->_animationDataStore checkInGroupAtIndexes:v302];
  }

  v254 = [(PXGAnimationDataStore *)v288->_animationDataStore activeGroupIndexes];
  if ([v254 count])
  {
    v255 = 1;
  }

  else
  {
    v255 = v288->_numberOfProlongatedSprites != 0;
  }

  [v251 setAnimating:v255];

  [v251[2] setInputLayout:obja];
  *a11 = v251[2];

  _Block_object_dispose(&v348, 8);
  _Block_object_dispose(&v361, 8);

LABEL_176:
  [v295 enumerateObjectsUsingBlock:&__block_literal_global_52];
  [(PXGAnimator *)v285 setPreviousLayoutSnapshot:v275];
  v285->_lastUpdateTime = a3;
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setFromSnapshot:v3];
  [v4 setToSnapshot:*(a1 + 40)];
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3 == v2)
  {
    v4 = [v3 copy];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3 == *(*(v2 + 8) + 40))
  {
    v4 = [v3 copy];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 isDoubleSided])
  {
    v7 = [v5 integerValue];
    v8 = *(a1 + 32);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_5;
    v48[3] = &__block_descriptor_48_e12_B24__0Q8_B16l;
    v48[4] = *(a1 + 80);
    v48[5] = v7;
    v9 = [v8 indexesPassingTest:v48];
    v10 = *(*(a1 + 40) + 48);
    if (!v10)
    {
      v11 = +[PXGSpriteDataStore newSpriteDataStore];
      v12 = *(a1 + 40);
      v13 = *(v12 + 48);
      *(v12 + 48) = v11;

      v10 = *(*(a1 + 40) + 48);
    }

    if (![v10 count])
    {
      v14 = *(a1 + 48);
      if (v14)
      {
        [v14 sprites];
      }

      else
      {
        v47 = 0;
        v45 = 0u;
        v46 = 0u;
      }

      v15 = *(*(a1 + 40) + 48);
      v42 = v45;
      v43 = v46;
      v44 = v47;
      [v15 setSprites:&v42];
      [*(*(a1 + 40) + 48) applyChangeDetails:*(*(*(a1 + 64) + 8) + 40)];
    }

    v16 = [v6 delegate];
    v17 = [v16 animation:v6 doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:v9 rootLayout:*(a1 + 56) presentedGeometries:objc_msgSend(*(*(a1 + 40) + 48) styles:"geometries") infos:{objc_msgSend(*(*(a1 + 40) + 48), "styles"), objc_msgSend(*(*(a1 + 40) + 48), "infos")}];

    v18 = [v17 px_intersectionWithIndexSet:v9];

    if ([v18 count])
    {
      v19 = *(*(*(a1 + 72) + 8) + 40);
      if (!v19)
      {
        v20 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v21 = *(*(a1 + 72) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        v19 = *(*(*(a1 + 72) + 8) + 40);
      }

      [v19 addIndexes:v18];
    }
  }

  if ([v6 supportsPresentationAdjustment])
  {
    v23 = *(*(a1 + 40) + 56);
    if (!v23)
    {
      v24 = +[PXGSpriteDataStore newSpriteDataStore];
      v25 = *(a1 + 40);
      v26 = *(v25 + 56);
      *(v25 + 56) = v24;

      v23 = *(*(a1 + 40) + 56);
    }

    if (![v23 count])
    {
      v27 = *(a1 + 48);
      if (v27)
      {
        [v27 sprites];
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
      }

      v28 = *(*(a1 + 40) + 56);
      v42 = v39;
      v43 = v40;
      v44 = v41;
      [v28 setSprites:{&v42, v39, v40, v41}];
    }

    v29 = [*(a1 + 48) count];
    v30 = [v6 delegate];
    [v30 animation:v6 adjustPresentedGeometries:objc_msgSend(*(a1 + 48) styles:"geometries") infos:objc_msgSend(*(a1 + 48) count:{"styles"), objc_msgSend(*(a1 + 48), "infos"), v29}];

    v31 = [*(*(a1 + 40) + 56) geometries];
    v32 = [*(*(a1 + 40) + 56) styles];
    v33 = [*(a1 + 48) geometries];
    v34 = [*(a1 + 48) styles];
    for (i = [*(*(a1 + 40) + 8) spriteInfos]; v29; LODWORD(v29) = v29 - 1)
    {
      *i = *v33 - *v31 + *i;
      *(i + 20) = *(v33 + 8) - *(v31 + 8) + *(i + 20);
      v36 = *(v31 + 16);
      v37 = *(v33 + 16);
      *(i + 40) = (v37 - v36) + *(i + 40);
      *(i + 52) = (COERCE_FLOAT(*(v33 + 24)) - COERCE_FLOAT(*(v31 + 24))) + *(i + 52);
      *(i + 64) = (*(v33 + 28) - *(v31 + 28)) + *(i + 64);
      *(i + 76) = (*v34 - *v32) + *(i + 76);
      *(i + 88) = (*(v34 + 56) - *(v32 + 56)) + *(i + 88);
      *(i + 100) = (*(v34 + 60) - *(v32 + 60)) + *(i + 100);
      *(i + 112) = (*(v34 + 64) - *(v32 + 64)) + *(i + 112);
      *(i + 124) = (COERCE_FLOAT(*(v34 + 72)) - COERCE_FLOAT(*(v32 + 72))) + *(i + 124);
      *(i + 136) = (*(v34 + 76) - *(v32 + 76)) + *(i + 136);
      *(i + 148) = (*(v34 + 4) - *(v32 + 4)) + *(i + 148);
      *(i + 160) = (*(v34 + 8) - *(v32 + 8)) + *(i + 160);
      *(i + 172) = (*(v34 + 12) - *(v32 + 12)) + *(i + 172);
      *(i + 184) = (*(v34 + 16) - *(v32 + 16)) + *(i + 184);
      *(i + 196) = (*(v34 + 20) - *(v32 + 20)) + *(i + 196);
      *(i + 208) = (*(v34 + 24) - *(v32 + 24)) + *(i + 208);
      *(i + 220) = (*(v34 + 28) - *(v32 + 28)) + *(i + 220);
      *(i + 232) = (*(v34 + 32) - *(v32 + 32)) + *(i + 232);
      *(i + 244) = (*(v34 + 36) - *(v32 + 36)) + *(i + 244);
      *(i + 256) = (*(v34 + 40) - *(v32 + 40)) + *(i + 256);
      *(i + 268) = (*(v34 + 44) - *(v32 + 44)) + *(i + 268);
      *(i + 280) = (*(v34 + 48) - *(v32 + 48)) + *(i + 280);
      v38 = *(v34 + 80) - *(v32 + 80);
      v33 += 32;
      v34 += 160;
      *(i + 292) = v38 + *(i + 292);
      i += 307;
      v31 += 32;
      v32 += 160;
    }
  }
}

uint64_t __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_7(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  v4 = *(a2 + 52);
  v5 = v4;
  if (!v4)
  {
    v11 = *(a1 + 40) - *(a2 + 16);
    goto LABEL_18;
  }

  v6 = [v4 isIntercative];
  v7 = [v5 animatingTowardsFinalState];
  if (!v6)
  {
    if (v7)
    {
      v11 = *(a1 + 40) - *(a2 + 16);
      if (v11 < 0.0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = [v5 animatingTowardsInitialState];
      v10 = *(a2 + 16);
      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = *(a2 + 8);
      v17 = v16 - (v10 - *(a1 + 40));
      v11 = -v17;
      if (v17 < v16)
      {
        goto LABEL_16;
      }
    }

    [v5 invalidate];
    goto LABEL_16;
  }

  if (v7)
  {
    [v5 setIsIntercative:0];
    v8 = *(a2 + 8);
    [v5 fractionCompleted];
    v10 = *(a1 + 40) + v8 * (1.0 - v9);
    *(a2 + 16) = v10;
LABEL_14:
    v11 = *(a1 + 40) - v10;
    goto LABEL_16;
  }

  if ([v5 animatingTowardsInitialState])
  {
    [v5 setIsIntercative:0];
    v12 = *(a2 + 8);
    [v5 fractionCompleted];
    v14 = *(a1 + 40) + v12 * v13;
    *(a2 + 16) = v14;
    v11 = -(*(a2 + 8) - (v14 - *(a1 + 40)));
  }

  else
  {
    v18 = *(a2 + 8);
    [v5 fractionCompleted];
    v11 = -(v18 * (1.0 - v19));
  }

LABEL_16:
  if ([v5 invalid])
  {

    *(a2 + 52) = 0;
    *(a2 + 60) = [v5 completionBlock];
  }

LABEL_18:
  if (v11 >= 0.0 || (v20 = *(a2 + 8), v20 <= 0.0))
  {
    v22 = 0;
  }

  else
  {
    v21 = *a2;
    v22 = 1;
    if (*a2 > 1)
    {
      if (v21 == 2)
      {
        v42 = v11 + v20;
        PXGDampedSpringGroupParametersPrepareForTime((a2 + 28), v42);
      }

      else if (v21 == 3)
      {
        v28 = *(a2 + 44);
        v29 = [v28 springAnimation];
        [v28 springAnimationInitialProgress];
        v31 = v30;
        [v29 beginTime];
        if (v32 > 0.0)
        {
          [v29 beginTime];
          v34 = v33;
          [v29 duration];
          v36 = *(a1 + 40) - (v34 + v35);
          v37 = [*(a1 + 32) preferredFramesPerSecond];
          v38 = 0.0;
          if (v37 >= 2)
          {
            v38 = 1.0 / v37;
          }

          v39 = (v36 + v38) / *(a2 + 8) + 1.0;
          [v28 springAnimationProgressMultiplier];
          v31 = v40 * v39;
        }

        if (v31 > 0.0 && ([v28 springAnimationProgressMultiplier], v31 <= *&v41))
        {
          *&v41 = v31;
          [v29 _solveForInput:v41];
          *(a2 + 24) = 1.0 - v43;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      if (v21)
      {
        if (v21 != 1)
        {
          goto LABEL_28;
        }

        v23 = v11 / v20 + 1.0;
        if (v23 >= 0.5)
        {
          v24 = (v23 * -2.0 + 4.0) * v23 + -1.0;
        }

        else
        {
          v24 = (v23 + v23) * v23;
        }

        v25 = v24;
        v26 = 1.0 - v25;
      }

      else
      {
        v26 = -v11 / v20;
      }

      *(a2 + 24) = v26;
    }
  }

LABEL_28:
  if (v5)
  {
    v22 = v22 | [v5 invalid] ^ 1;
  }

  return v22;
}

uint64_t __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_8(void *a1, uint64_t a2)
{
  [*(a1[4] + 8) groupInfos];
  result = (*(a1[6] + 16))();
  if ((result & 1) == 0)
  {
    v5 = a1[5];

    return [v5 addIndex:a2];
  }

  return result;
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 delegate];
  [v7 animation:v5 prepareWithRootLayout:*(a1 + 32) viewportShift:{*(a1 + 56), *(a1 + 64)}];

  [v5 effectiveDuration];
  v9 = v8 / *(a1 + 72);
  *&v21 = [v5 curve];
  *(&v21 + 1) = v9;
  v23 = COERCE_UNSIGNED_INT64(v9 + *(a1 + 80));
  *v25 = 0;
  *&v25[8] = 0;
  v10 = v5;
  *&v25[12] = v10;
  *&v25[20] = [v10 transition];
  *&v25[28] = 0;
  if ([v10 curve] == 2)
  {
    [v10 dampingRatio];
    v12 = v11;
    [v10 duration];
    v14 = v13 / *(a1 + 72);
    v15 = [v10 numberOfOscillations];
    if (v12 >= 1.0)
    {
      if (v14 == 0.0)
      {
        v18 = 3.4028e38;
        goto LABEL_7;
      }

      v17 = 9.23503685 / v14;
    }

    else
    {
      v16 = sqrtf(1.0 - (v12 * v12));
      v17 = -(atanf(v16 / v12) - v15 * 6.28318531) / (v14 * v16);
    }

    v18 = v17;
LABEL_7:
    *(&v23 + 3) = v18;
    *v25 = v12;
  }

  v19 = [*(*(a1 + 40) + 8) checkOutGroup];
  (*(*(a1 + 48) + 16))();
  v20 = ([*(*(a1 + 40) + 8) groupInfos] + 76 * v19);
  *v20 = v22;
  *(v20 + 60) = 0uLL;
  v20[2] = *v25;
  v20[3] = *&v25[16];
  v20[1] = v24;
  *(*(a1 + 88) + 2 * v6) = v19;
}

float __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) entities];
  v7 = [*(a1 + 32) geometries];
  v8 = [*(a1 + 32) styles];
  v9 = [*(a1 + 40) entities];
  v10 = [*(a1 + 40) geometries];
  v11 = [*(a1 + 40) styles];
  v12 = [*(*(a1 + 48) + 8) spriteInfos];
  if (a3)
  {
    v14 = 0;
    v15 = v12 + 307 * a2;
    v16 = v11 + 160 * a2;
    v17 = v8 + 160 * a2;
    do
    {
      v18 = v7 + 32 * a2 + 8 * v14;
      *(v9 + 4 * a2 + v14) = *(v6 + 4 * a2 + v14);
      v19 = *(v18 + 16);
      v20 = v10 + 32 * a2 + 8 * v14;
      *v20 = *v18;
      *(v20 + 16) = v19;
      v21 = *(v17 + 80);
      v23 = *(v17 + 32);
      v22 = *(v17 + 48);
      *(v16 + 64) = *(v17 + 64);
      *(v16 + 80) = v21;
      *(v16 + 32) = v23;
      *(v16 + 48) = v22;
      v24 = *(v17 + 144);
      v26 = *(v17 + 96);
      v25 = *(v17 + 112);
      *(v16 + 128) = *(v17 + 128);
      *(v16 + 144) = v24;
      *(v16 + 96) = v26;
      *(v16 + 112) = v25;
      v27 = *(v17 + 16);
      *v16 = *v17;
      *(v16 + 16) = v27;
      *&v27 = *(v20 + 8);
      *&v25 = *v18;
      *&v26 = *(v18 + 8);
      v28 = *v20 - *v18;
      *(v15 + 16) = 0;
      *v15 = v25;
      *(v15 + 8) = v28;
      *(v15 + 20) = v26;
      v29 = *&v27 - *&v26;
      *(v15 + 36) = 0;
      *&v27 = *(v20 + 16);
      *(v15 + 28) = v29;
      *&v29 = *(v18 + 16);
      *(v15 + 48) = 0;
      *(v15 + 40) = LODWORD(v29);
      *(v15 + 44) = *&v27 - *&v29;
      *&v27 = *(v18 + 24);
      *&v29 = COERCE_FLOAT(*(v20 + 24)) - *&v27;
      *(v15 + 60) = 0;
      *(v15 + 52) = v27;
      *(v15 + 56) = LODWORD(v29);
      LODWORD(v29) = *(v20 + 28);
      *&v27 = *v16 - *v17;
      v30 = *(v16 + 60);
      v31 = *(v18 + 28);
      v32 = *(v17 + 56);
      v33 = *(v17 + 60);
      *&v26 = *(v16 + 56) - v32;
      *(v15 + 76) = *v17;
      *(v15 + 80) = v27;
      *(v15 + 88) = v32;
      *(v15 + 92) = v26;
      *(v15 + 72) = 0;
      *(v15 + 84) = 0;
      *(v15 + 96) = 0;
      *(v15 + 100) = v33;
      *(v15 + 104) = v30 - v33;
      *(v15 + 108) = 0;
      LODWORD(v25) = *(v17 + 64);
      *&v27 = *(v16 + 64) - *&v25;
      *(v15 + 112) = v25;
      *(v15 + 116) = v27;
      *(v15 + 120) = 0;
      *(v15 + 64) = v31;
      *(v15 + 68) = *&v29 - v31;
      LODWORD(v29) = *(v17 + 4);
      *&v27 = *(v16 + 4) - *&v29;
      *(v15 + 156) = 0;
      *(v15 + 148) = LODWORD(v29);
      *(v15 + 152) = v27;
      v34 = *(v16 + 72);
      *&v27 = *(v17 + 72);
      *(v15 + 132) = 0;
      *(v15 + 124) = v27;
      *(v15 + 128) = *&v34 - *&v27;
      LODWORD(v27) = *(v16 + 80);
      LODWORD(v26) = *(v17 + 76);
      LODWORD(v25) = *(v17 + 80);
      *&v34 = *(v16 + 76) - *&v26;
      *(v15 + 136) = v26;
      *(v15 + 140) = v34;
      *(v15 + 144) = 0;
      LODWORD(v26) = *(v17 + 8);
      *&v34 = *(v16 + 8) - *&v26;
      *(v15 + 160) = v26;
      *(v15 + 164) = v34;
      *(v15 + 168) = 0;
      LODWORD(v26) = *(v17 + 12);
      *&v34 = *(v16 + 12) - *&v26;
      *(v15 + 172) = v26;
      *(v15 + 176) = v34;
      *(v15 + 180) = 0;
      LODWORD(v26) = *(v17 + 16);
      *&v34 = *(v16 + 16) - *&v26;
      *(v15 + 184) = v26;
      *(v15 + 188) = v34;
      *(v15 + 192) = 0;
      LODWORD(v34) = *(v17 + 20);
      *&v26 = *(v16 + 20) - *&v34;
      *(v15 + 196) = v34;
      *(v15 + 200) = v26;
      *(v15 + 204) = 0;
      LODWORD(v26) = *(v17 + 24);
      *&v34 = *(v16 + 24) - *&v26;
      *(v15 + 208) = v26;
      *(v15 + 212) = v34;
      *(v15 + 216) = 0;
      LODWORD(v26) = *(v17 + 28);
      *&v34 = *(v16 + 28) - *&v26;
      *(v15 + 220) = v26;
      *(v15 + 224) = v34;
      *(v15 + 228) = 0;
      LODWORD(v26) = *(v17 + 32);
      *&v34 = *(v16 + 32) - *&v26;
      *(v15 + 232) = v26;
      *(v15 + 236) = v34;
      *(v15 + 240) = 0;
      LODWORD(v26) = *(v17 + 36);
      *&v34 = *(v16 + 36) - *&v26;
      *(v15 + 244) = v26;
      *(v15 + 248) = v34;
      *(v15 + 252) = 0;
      LODWORD(v26) = *(v17 + 40);
      *&v34 = *(v16 + 40) - *&v26;
      *(v15 + 256) = v26;
      *(v15 + 260) = v34;
      *(v15 + 264) = 0;
      LODWORD(v26) = *(v17 + 44);
      *&v34 = *(v16 + 44) - *&v26;
      *(v15 + 268) = v26;
      *(v15 + 272) = v34;
      *(v15 + 276) = 0;
      LODWORD(v34) = *(v16 + 48);
      LODWORD(v26) = *(v17 + 48);
      *(v15 + 280) = v26;
      result = *&v34 - *&v26;
      *(v15 + 288) = 0;
      *(v15 + 292) = v25;
      *(v15 + 296) = *&v27 - *&v25;
      v14 += 4;
      *(v15 + 284) = result;
      *(v15 + 300) = 0;
      *(v15 + 304) = 0;
      v16 += 160;
      v17 += 160;
      v15 += 307;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_11(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    do
    {
      *(v4[4] + 4 * a2) = *(v4[5] + 4 * a2);
      v6 = (v4[6] + 32 * a2);
      v7 = (v4[7] + 32 * a2);
      v8 = v7[1];
      *v6 = *v7;
      v6[1] = v8;
      v9 = (v4[8] + 160 * a2);
      v10 = (v4[9] + 160 * a2);
      v11 = v10[5];
      v13 = v10[2];
      v12 = v10[3];
      v9[4] = v10[4];
      v9[5] = v11;
      v9[2] = v13;
      v9[3] = v12;
      v14 = v10[9];
      v16 = v10[6];
      v15 = v10[7];
      v9[8] = v10[8];
      v9[9] = v14;
      v9[6] = v16;
      v9[7] = v15;
      v17 = v10[1];
      *v9 = *v10;
      v9[1] = v17;
      v18 = v4[10] + 40 * a2;
      v19 = v4[11] + 40 * a2;
      v20 = *v19;
      v21 = *(v19 + 16);
      *(v18 + 32) = *(v19 + 32);
      *v18 = v20;
      *(v18 + 16) = v21;
      result = [*(v4[14] + 8 * *(v4[12] + 2 * *(v4[13] + 2 * a2++))) addIndex:?];
      --v3;
    }

    while (v3);
  }

  return result;
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 40) + 76 * a2 + 44);
  v5 = [v4 delegate];
  v6 = *(*(a1 + 48) + 8 * a2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_13;
  v9[3] = &unk_2782ABFB8;
  v13 = *(a1 + 56);
  v10 = v5;
  v11 = v4;
  v14 = *(a1 + 72);
  v15 = *(a1 + 88);
  v12 = *(a1 + 32);
  v16 = a2;
  v7 = v4;
  v8 = v5;
  [v6 enumerateRangesUsingBlock:v9];
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_14(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 40) + 76 * a2 + 44);
  v5 = [v4 delegate];
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 48) + 8 * a2);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_15;
  v11[3] = &unk_2782AB6A8;
  v12 = *(a1 + 32);
  v13 = v5;
  v14 = v4;
  v8 = v4;
  v9 = v5;
  v10 = v7;
  PXGSpriteIndexesEnumerateRangesForPositions(v6, v10, v11);
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_16(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 8) groupInfos] + 76 * a2;
  v4 = *(v2 + 44);
  [v4 noteDidComplete];

  *(v2 + 52) = 0;
  *(v2 + 44) = 0;
  [v4 setDelegate:0];
  v3 = *(v2 + 60);
  if (v3)
  {
    v3[2](*(v2 + 60));
    *(v2 + 60) = 0;
  }
}

void __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFromSnapshot:0];
  [v2 setToSnapshot:0];
}

uint64_t __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_15(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2 & 0xFFFFFFFF00000000 | a3;
  v5 = a2;
  v6 = [*(a1 + 32) geometries] + 32 * a2;
  v7 = [*(a1 + 32) styles] + 160 * v5;
  v8 = [*(a1 + 32) infos] + 40 * v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);

  return [v9 animation:v10 adjustGeometries:v6 styles:v7 infos:v8 forSpriteDisappearingFromRootIndexRange:v4];
}

float __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 56) + 32 * a2;
  v7 = *(a1 + 64) + 160 * a2;
  [*(a1 + 32) animation:*(a1 + 40) adjustGeometries:v6 styles:v7 infos:*(a1 + 72) + 40 * a2 forSpriteAppearingIntoRootIndexRange:a2 | (a3 << 32)];
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = [*(*(a1 + 48) + 8) spriteInfos];
  if (v3)
  {
    v12 = v10 + 307 * a2;
    v13 = v9 + 160 * a2;
    v14 = v8 + 32 * a2;
    do
    {
      v15 = *(v6 + 8);
      v16 = *(v14 + 8);
      v17 = *v6 - *v14;
      *v12 = *v14;
      *(v12 + 8) = v17;
      *(v12 + 16) = 0;
      *(v12 + 20) = v16;
      *(v12 + 28) = v15 - v16;
      *(v12 + 36) = 0;
      *&v17 = *(v6 + 16);
      *&v15 = *(v14 + 16);
      *(v12 + 40) = LODWORD(v15);
      *(v12 + 44) = *&v17 - *&v15;
      *(v12 + 48) = 0;
      v18 = *(v14 + 24);
      *&v17 = COERCE_FLOAT(*(v6 + 24)) - *&v18;
      *(v12 + 52) = v18;
      *(v12 + 56) = LODWORD(v17);
      *(v12 + 60) = 0;
      LODWORD(v18) = *(v14 + 28);
      *&v17 = *(v6 + 28) - *&v18;
      *(v12 + 64) = v18;
      *(v12 + 68) = LODWORD(v17);
      *(v12 + 72) = 0;
      *&v17 = *v7 - *v13;
      *(v12 + 76) = *v13;
      *(v12 + 80) = LODWORD(v17);
      *(v12 + 84) = 0;
      LODWORD(v18) = *(v7 + 60);
      v19 = *(v13 + 56);
      LODWORD(v16) = *(v13 + 60);
      *&v17 = *(v7 + 56) - v19;
      *(v12 + 88) = v19;
      *(v12 + 92) = LODWORD(v17);
      *(v12 + 96) = 0;
      *(v12 + 100) = LODWORD(v16);
      *(v12 + 104) = *&v18 - *&v16;
      *(v12 + 108) = 0;
      LODWORD(v18) = *(v13 + 64);
      *&v17 = *(v7 + 64) - *&v18;
      *(v12 + 112) = v18;
      *(v12 + 116) = LODWORD(v17);
      *(v12 + 120) = 0;
      LODWORD(v17) = *(v13 + 4);
      *&v18 = *(v7 + 4) - *&v17;
      *(v12 + 148) = LODWORD(v17);
      *(v12 + 152) = v18;
      *(v12 + 156) = 0;
      v20 = *(v7 + 72);
      v21 = *(v13 + 72);
      *(v12 + 124) = v21;
      *(v12 + 128) = *&v20 - *&v21;
      *(v12 + 132) = 0;
      LODWORD(v21) = *(v7 + 80);
      LODWORD(v16) = *(v13 + 76);
      v22 = *(v13 + 80);
      *&v20 = *(v7 + 76) - *&v16;
      *(v12 + 136) = LODWORD(v16);
      *(v12 + 140) = v20;
      *(v12 + 144) = 0;
      LODWORD(v16) = *(v13 + 8);
      *&v20 = *(v7 + 8) - *&v16;
      *(v12 + 160) = LODWORD(v16);
      *(v12 + 164) = v20;
      *(v12 + 168) = 0;
      LODWORD(v16) = *(v13 + 12);
      *&v20 = *(v7 + 12) - *&v16;
      *(v12 + 172) = LODWORD(v16);
      *(v12 + 176) = v20;
      *(v12 + 180) = 0;
      LODWORD(v16) = *(v13 + 16);
      *&v20 = *(v7 + 16) - *&v16;
      *(v12 + 184) = LODWORD(v16);
      *(v12 + 188) = v20;
      *(v12 + 192) = 0;
      LODWORD(v20) = *(v13 + 20);
      *&v16 = *(v7 + 20) - *&v20;
      *(v12 + 196) = v20;
      *(v12 + 200) = LODWORD(v16);
      *(v12 + 204) = 0;
      LODWORD(v16) = *(v13 + 24);
      *&v20 = *(v7 + 24) - *&v16;
      *(v12 + 208) = LODWORD(v16);
      *(v12 + 212) = v20;
      *(v12 + 216) = 0;
      LODWORD(v16) = *(v13 + 28);
      *&v20 = *(v7 + 28) - *&v16;
      *(v12 + 220) = LODWORD(v16);
      *(v12 + 224) = v20;
      *(v12 + 228) = 0;
      LODWORD(v16) = *(v13 + 32);
      *&v20 = *(v7 + 32) - *&v16;
      *(v12 + 232) = LODWORD(v16);
      *(v12 + 236) = v20;
      *(v12 + 240) = 0;
      LODWORD(v16) = *(v13 + 36);
      *&v20 = *(v7 + 36) - *&v16;
      *(v12 + 244) = LODWORD(v16);
      *(v12 + 248) = v20;
      *(v12 + 252) = 0;
      LODWORD(v20) = *(v7 + 40);
      LODWORD(v16) = *(v13 + 40);
      *(v12 + 256) = LODWORD(v16);
      *(v12 + 260) = *&v20 - *&v16;
      *(v12 + 264) = 0;
      LODWORD(v20) = *(v7 + 44);
      LODWORD(v16) = *(v13 + 44);
      *(v12 + 268) = LODWORD(v16);
      *(v12 + 272) = *&v20 - *&v16;
      *(v12 + 276) = 0;
      LODWORD(v20) = *(v7 + 48);
      LODWORD(v16) = *(v13 + 48);
      *(v12 + 280) = LODWORD(v16);
      *(v12 + 284) = *&v20 - *&v16;
      *(v12 + 288) = 0;
      *(v12 + 292) = v22;
      result = *&v21 - v22;
      *(v12 + 296) = *&v21 - v22;
      *(v12 + 300) = 0;
      v6 += 32;
      v7 += 160;
      *(v12 + 304) = *(a1 + 104);
      v12 += 307;
      v14 += 32;
      v13 += 160;
      --v3;
    }

    while (v3);
  }

  return result;
}

- (id)_animationByAnimationIndexForAnimations:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__PXGAnimator__animationByAnimationIndexForAnimations___block_invoke;
  v12 = &unk_2782AB470;
  v13 = v5;
  v14 = v4;
  v6 = v5;
  [v3 enumerateObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

void __55__PXGAnimator__animationByAnimationIndexForAnimations___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 scope])
  {
    a3 += *(a1 + 40);
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

- (void)dealloc
{
  v3 = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__PXGAnimator_dealloc__block_invoke;
  v5[3] = &unk_2782ABC08;
  v5[4] = self;
  [v3 enumerateIndexesUsingBlock:v5];

  [(PXGSpriteDataStore *)self->_doubleSidedSpriteDataStore recycle];
  [(PXGSpriteDataStore *)self->_oldAnimationPresentationSpriteDataStore recycle];
  v4.receiver = self;
  v4.super_class = PXGAnimator;
  [(PXGAnimator *)&v4 dealloc];
}

void __22__PXGAnimator_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 8) groupInfos] + 76 * a2;

  *(v2 + 52) = 0;
  *(v2 + 44) = 0;
}

@end