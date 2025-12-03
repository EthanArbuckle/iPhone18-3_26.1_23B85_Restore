@interface PXGAnimator
- (BOOL)hasCriticalAnimations;
- (PXGAnimator)init;
- (id)_animationByAnimationIndexForAnimations:(id)animations;
- (id)_dequeueSpriteDataStore;
- (unsigned)highFrameRateReason;
- (void)_returnForReuseSpriteDataStore:(id)store;
- (void)_stopAllAnimations;
- (void)computeAnimationStateForTime:(double)time inputSpriteDataStore:(id)store inputChangeDetails:(id)details inputLayout:(id)layout viewportShift:(CGPoint)shift animationPresentationSpriteDataStore:(id)dataStore animationTargetSpriteDataStore:(id)spriteDataStore animationChangeDetails:(id *)self0 animationLayout:(id *)self1;
- (void)dealloc;
- (void)retargetAnimationsAfterStartTime:(double)time newStartTime:(double)startTime;
- (void)setPreviousLayoutSnapshot:(id)snapshot;
- (void)setSpeed:(double)speed;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  activeGroupIndexes = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PXGAnimator_hasCriticalAnimations__block_invoke;
  v5[3] = &unk_2782AB740;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [activeGroupIndexes enumerateIndexesUsingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (unsigned)highFrameRateReason
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  activeGroupIndexes = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PXGAnimator_highFrameRateReason__block_invoke;
  v5[3] = &unk_2782AB740;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [activeGroupIndexes enumerateIndexesUsingBlock:v5];

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)_dequeueSpriteDataStore
{
  px_popFirst = [(NSMutableArray *)self->_reusableSnapshotSpriteDataStores px_popFirst];
  if (!px_popFirst)
  {
    px_popFirst = +[PXGSpriteDataStore newSpriteDataStore];
  }

  return px_popFirst;
}

- (void)setPreviousLayoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  previousLayoutSnapshot = self->_previousLayoutSnapshot;
  if (previousLayoutSnapshot != snapshotCopy)
  {
    v8 = snapshotCopy;
    if (previousLayoutSnapshot)
    {
      spriteDataStore = [(PXGLayoutSnapshot *)previousLayoutSnapshot spriteDataStore];
      [(PXGAnimator *)self _returnForReuseSpriteDataStore:spriteDataStore];

      [(PXGLayoutSnapshot *)self->_previousLayoutSnapshot releaseSpriteDataStore];
    }

    objc_storeStrong(&self->_previousLayoutSnapshot, snapshot);
    snapshotCopy = v8;
  }
}

- (void)_returnForReuseSpriteDataStore:(id)store
{
  storeCopy = store;
  if ([(NSMutableArray *)self->_reusableSnapshotSpriteDataStores containsObject:?])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAnimator.m" lineNumber:1066 description:{@"Invalid parameter not satisfying: %@", @"![_reusableSnapshotSpriteDataStores containsObject:spriteDataStore]"}];
  }

  [(NSMutableArray *)self->_reusableSnapshotSpriteDataStores addObject:storeCopy];
}

- (void)setSpeed:(double)speed
{
  if (speed <= 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGAnimator setSpeed:]"];
    [currentHandler handleFailureInFunction:v6 file:@"PXGAnimator.m" lineNumber:1049 description:{@"Invalid parameter not satisfying: %@", @"speed > 0"}];
  }

  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_speed = speed;
  }
}

- (void)_stopAllAnimations
{
  activeGroupIndexes = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__PXGAnimator__stopAllAnimations__block_invoke;
  v4[3] = &unk_2782ABC08;
  v4[4] = self;
  [activeGroupIndexes enumerateIndexesUsingBlock:v4];
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

- (void)retargetAnimationsAfterStartTime:(double)time newStartTime:(double)startTime
{
  v6 = time + -0.0001;
  activeGroupIndexes = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__PXGAnimator_retargetAnimationsAfterStartTime_newStartTime___block_invoke;
  v8[3] = &unk_2782AB718;
  v8[4] = self;
  *&v8[5] = v6;
  *&v8[6] = startTime;
  [activeGroupIndexes enumerateIndexesUsingBlock:v8];
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

- (void)computeAnimationStateForTime:(double)time inputSpriteDataStore:(id)store inputChangeDetails:(id)details inputLayout:(id)layout viewportShift:(CGPoint)shift animationPresentationSpriteDataStore:(id)dataStore animationTargetSpriteDataStore:(id)spriteDataStore animationChangeDetails:(id *)self0 animationLayout:(id *)self1
{
  y = shift.y;
  x = shift.x;
  v389 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  detailsCopy = details;
  layoutCopy = layout;
  dataStoreCopy = dataStore;
  spriteDataStoreCopy = spriteDataStore;
  selfCopy = self;
  ++self->_computeCount;
  v294 = layoutCopy;
  v295 = objc_alloc_init(MEMORY[0x277CBEB18]);
  animations = [layoutCopy animations];

  if (animations)
  {
    animations2 = [layoutCopy animations];
    [v295 addObjectsFromArray:animations2];
  }

  v384 = 0u;
  v383 = 0u;
  v382 = 0u;
  v381 = 0u;
  transitions = [layoutCopy transitions];
  v21 = [transitions countByEnumeratingWithState:&v381 objects:v388 count:16];
  if (v21)
  {
    v22 = *v382;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v382 != v22)
        {
          objc_enumerationMutation(transitions);
        }

        animations3 = [*(*(&v381 + 1) + 8 * i) animations];
        allObjects = [animations3 allObjects];
        [v295 addObjectsFromArray:allObjects];
      }

      v21 = [transitions countByEnumeratingWithState:&v381 objects:v388 count:16];
    }

    while (v21);
  }

  v293 = [(PXGAnimator *)selfCopy _animationByAnimationIndexForAnimations:v295];
  v283 = [v293 count];
  _dequeueSpriteDataStore = [(PXGAnimator *)selfCopy _dequeueSpriteDataStore];
  if (storeCopy)
  {
    [storeCopy sprites];
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
  [_dequeueSpriteDataStore setSprites:&v361];
  v26 = selfCopy->_previousLayoutSnapshot;
  [(PXGLayoutSnapshot *)v26 applyViewportShift:x, y];
  v27 = [[PXGLayoutSnapshot alloc] initWithLayout:v294 spriteDataStore:_dequeueSpriteDataStore];
  v375[0] = MEMORY[0x277D85DD0];
  v375[1] = 3221225472;
  v375[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke;
  v375[3] = &unk_2782AB498;
  v272 = v26;
  v376 = v272;
  v275 = v27;
  v377 = v275;
  [v295 enumerateObjectsUsingBlock:v375];
  isSkippingAnimations = selfCopy->_isSkippingAnimations;
  v29 = (v283 == 0) & ~[(PXGAnimator *)selfCopy isAnimating];
  selfCopy->_isSkippingAnimations = v29;
  if (v29 == 1)
  {
    kdebug_trace();
    if (storeCopy)
    {
      [storeCopy sprites];
      v361 = v372;
      v362 = v373;
      v363 = v374;
      [dataStoreCopy setSprites:&v361];
      [storeCopy sprites];
    }

    else
    {
      v374 = 0;
      v373 = 0u;
      v372 = 0u;
      v363 = 0;
      v362 = 0u;
      v361 = 0u;
      [dataStoreCopy setSprites:&v361];
      v369 = 0u;
      v370 = 0u;
      v371 = 0;
    }

    v361 = v369;
    v362 = v370;
    v363 = v371;
    [spriteDataStoreCopy setSprites:&v361];
    kdebug_trace();
    v34 = detailsCopy;
    *changeDetails = detailsCopy;
    v35 = v294;
    *animationLayout = v294;
    goto LABEL_176;
  }

  if (isSkippingAnimations)
  {
    v30 = selfCopy;
    kdebug_trace();

    v31 = [dataStoreCopy count];
    spriteCount = [v30[1] spriteCount];
    v33 = objc_alloc_init(PXGChangeDetails);
    if (v31 >= spriteCount)
    {
      [MEMORY[0x277D3CCC8] changeDetailsWithInsertedIndexRange:{0, v31 - spriteCount}];
    }

    else
    {
      [MEMORY[0x277D3CCC8] changeDetailsWithRemovedIndexRange:{0, spriteCount - v31}];
    }
    v36 = ;

    v387[0] = v36;
    changeDetailsWithNoIncrementalChanges = [MEMORY[0x277D3CCC8] changeDetailsWithNoIncrementalChanges];
    v387[1] = changeDetailsWithNoIncrementalChanges;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v387 count:2];
    [(PXGChangeDetails *)v33 configureWithNumberOfSpritesAfterChange:v31 changeDetails:v38];

    [v30[1] applySpriteChangeDetails:v33];
    v39 = dataStoreCopy;
    geometries = [dataStoreCopy geometries];
    v41 = dataStoreCopy;
    styles = [dataStoreCopy styles];
    for (j = [v30[1] spriteInfos]; v31; LODWORD(v31) = v31 - 1)
    {
      v44 = *geometries;
      *j = *geometries;
      *(j + 8) = v44 - v44;
      *(j + 16) = 0;
      v45 = *(geometries + 8);
      *(j + 20) = v45;
      *(j + 28) = v45 - v45;
      *(j + 36) = 0;
      *&v45 = *(geometries + 16);
      *(j + 40) = LODWORD(v45);
      *(j + 44) = *&v45 - *&v45;
      *(j + 48) = 0;
      *(j + 52) = vzip1_s32(*(geometries + 24), vsub_f32(*(geometries + 24), *(geometries + 24)));
      *(j + 60) = 0;
      LODWORD(v45) = *(geometries + 28);
      *(j + 64) = LODWORD(v45);
      *(j + 68) = *&v45 - *&v45;
      *(j + 72) = 0;
      LODWORD(v45) = *styles;
      *(j + 76) = *styles;
      *(j + 80) = *&v45 - *&v45;
      *(j + 84) = 0;
      LODWORD(v45) = *(styles + 56);
      *(j + 88) = LODWORD(v45);
      *(j + 92) = *&v45 - *&v45;
      *(j + 96) = 0;
      LODWORD(v45) = *(styles + 60);
      *(j + 100) = LODWORD(v45);
      *(j + 104) = *&v45 - *&v45;
      *(j + 108) = 0;
      LODWORD(v45) = *(styles + 64);
      *(j + 112) = LODWORD(v45);
      *(j + 116) = *&v45 - *&v45;
      *(j + 120) = 0;
      *(j + 124) = vzip1_s32(*(styles + 72), vsub_f32(*(styles + 72), *(styles + 72)));
      *(j + 132) = 0;
      LODWORD(v45) = *(styles + 76);
      *(j + 136) = LODWORD(v45);
      *(j + 140) = *&v45 - *&v45;
      *(j + 144) = 0;
      *(j + 148) = vzip1_s32(*(styles + 4), vsub_f32(*(styles + 4), *(styles + 4)));
      *(j + 156) = 0;
      LODWORD(v45) = *(styles + 8);
      *(j + 160) = LODWORD(v45);
      *(j + 164) = *&v45 - *&v45;
      *(j + 168) = 0;
      LODWORD(v45) = *(styles + 12);
      *(j + 172) = LODWORD(v45);
      *(j + 176) = *&v45 - *&v45;
      *(j + 180) = 0;
      LODWORD(v45) = *(styles + 16);
      *(j + 184) = LODWORD(v45);
      *(j + 188) = *&v45 - *&v45;
      *(j + 192) = 0;
      *(j + 196) = vzip1_s32(*(styles + 20), vsub_f32(*(styles + 20), *(styles + 20)));
      *(j + 204) = 0;
      LODWORD(v45) = *(styles + 24);
      *(j + 208) = LODWORD(v45);
      *(j + 212) = *&v45 - *&v45;
      *(j + 216) = 0;
      LODWORD(v45) = *(styles + 28);
      *(j + 220) = LODWORD(v45);
      *(j + 224) = *&v45 - *&v45;
      *(j + 228) = 0;
      LODWORD(v45) = *(styles + 32);
      *(j + 232) = LODWORD(v45);
      *(j + 236) = *&v45 - *&v45;
      *(j + 240) = 0;
      LODWORD(v45) = *(styles + 36);
      *(j + 244) = LODWORD(v45);
      *(j + 248) = *&v45 - *&v45;
      *(j + 252) = 0;
      LODWORD(v45) = *(styles + 40);
      *(j + 256) = LODWORD(v45);
      *(j + 260) = *&v45 - *&v45;
      *(j + 264) = 0;
      LODWORD(v45) = *(styles + 44);
      *(j + 268) = LODWORD(v45);
      *(j + 272) = *&v45 - *&v45;
      *(j + 276) = 0;
      LODWORD(v45) = *(styles + 48);
      *(j + 280) = LODWORD(v45);
      *(j + 284) = *&v45 - *&v45;
      *(j + 288) = 0;
      LODWORD(v45) = *(styles + 80);
      *(j + 292) = LODWORD(v45);
      *(j + 296) = *&v45 - *&v45;
      *(j + 300) = 0;
      geometries += 32;
      styles += 160;
      j += 307;
    }

    v46 = v30;
    kdebug_trace();
  }

  lastUpdateTime = selfCopy->_lastUpdateTime;
  if (lastUpdateTime > time)
  {
    if (lastUpdateTime + -0.1 <= time)
    {
      if (lastUpdateTime >= time)
      {
        time = selfCopy->_lastUpdateTime;
      }
    }

    else
    {
      [(PXGAnimator *)selfCopy _stopAllAnimations];
    }
  }

  v288 = selfCopy;
  kdebug_trace();

  [v294 removeAllAnimations];
  [v294 removeAllTransitions];
  if (v283)
  {
    [(PXGAnimationDataStore *)v288->_animationDataStore setMappedSpriteCount:0];
    -[PXGAnimationDataStore increaseMappedSpriteCountBy:usingAnimationIndex:](v288->_animationDataStore, "increaseMappedSpriteCountBy:usingAnimationIndex:", [v294 numberOfSprites], 0);
    animationIndexBySpriteIndex = [(PXGAnimationDataStore *)v288->_animationDataStore animationIndexBySpriteIndex];
    allKeys = [v293 allKeys];
    v50 = [allKeys sortedArrayUsingComparator:&__block_literal_global_17074];

    v368 = 0u;
    v367 = 0u;
    v366 = 0u;
    v365 = 0u;
    v51 = v50;
    v52 = [v51 countByEnumeratingWithState:&v365 objects:v386 count:16];
    if (v52)
    {
      v53 = *v366;
      v54 = animationIndexBySpriteIndex + 8;
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
          layout = [v57 layout];
          if (!layout)
          {

            goto LABEL_59;
          }

          integerValue = [v56 integerValue];
          if ([v57 scope] == 2)
          {
            localNumberOfSprites = [layout localNumberOfSprites];
          }

          else
          {
            localNumberOfSprites = [layout numberOfSprites];
          }

          v61 = [v294 convertSpriteIndexRange:localNumberOfSprites << 32 fromDescendantLayout:layout];
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
                *(v67 - 4) = integerValue;
              }

              if (vuzp1_s8(vuzp1_s16(v69, *&v66), *&v66).i8[1])
              {
                *(v67 - 3) = integerValue;
              }

              if (vuzp1_s8(vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_21AE2D350)))), *&v66).i8[2])
              {
                *(v67 - 2) = integerValue;
                *(v67 - 1) = integerValue;
              }

              v70 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_21AE2D340)));
              if (vuzp1_s8(*&v66, vuzp1_s16(v70, *&v66)).i32[1])
              {
                *v67 = integerValue;
              }

              if (vuzp1_s8(*&v66, vuzp1_s16(v70, *&v66)).i8[5])
              {
                v67[1] = integerValue;
              }

              if (vuzp1_s8(*&v66, vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_21AE2D330))))).i8[6])
              {
                v67[2] = integerValue;
                v67[3] = integerValue;
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
  v364 = detailsCopy;
  v358[0] = MEMORY[0x277D85DD0];
  v358[1] = 3221225472;
  v358[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_14;
  v358[3] = &unk_2782AB4E0;
  v360 = &v361;
  v359 = v364;
  v271 = MEMORY[0x21CEE40A0](v358);
  if (v283)
  {
    removedSpriteIndexes = [*(*(&v361 + 1) + 40) removedSpriteIndexes];
    insertedSpriteIndexes = [*(*(&v361 + 1) + 40) insertedSpriteIndexes];
    if ([removedSpriteIndexes count] && objc_msgSend(insertedSpriteIndexes, "count"))
    {
      allValues = [v293 allValues];
      v268 = PXFilter();

      if ([v268 count])
      {
        v72 = [removedSpriteIndexes count];
        v73 = malloc_type_realloc(0, 4 * v72, 0x42760281uLL);
        v74 = v73;
        if (v72)
        {
          memset(v73, 255, 4 * v72);
        }

        v296 = v74;
        v75 = dataStoreCopy;
        v76 = storeCopy;
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
              delegate = [v79 delegate];
              v81 = v75;
              geometries2 = [v75 geometries];
              v83 = v75;
              styles2 = [v75 styles];
              v85 = v75;
              infos = [v75 infos];
              v87 = v76;
              geometries3 = [v76 geometries];
              v89 = v76;
              styles3 = [v76 styles];
              v91 = v76;
              [delegate animation:v79 updateSpriteTransferMap:v296 forSpritesRemovedFromIndexes:removedSpriteIndexes presentedGeometries:geometries2 styles:styles2 infos:infos spritesInsertedToIndexes:insertedSpriteIndexes targetGeometries:geometries3 styles:styles3 infos:objc_msgSend(v76 rootLayout:{"infos"), v294}];
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
    v93 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteIndexesExpiringAtTime:time];
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
  animationIndexBySpriteIndex2 = [(PXGAnimationDataStore *)v92->_animationDataStore animationIndexBySpriteIndex];
  if (v283)
  {
    removedSpriteIndexes2 = [*(*(&v361 + 1) + 40) removedSpriteIndexes];
    if ([removedSpriteIndexes2 count])
    {
      v300[2]();
      v97 = [v349[5] replaceRemovalsWithMovesToEndForIndexes:removedSpriteIndexes2];
      v98 = HIDWORD(v97);
      if ([removedSpriteIndexes2 count] != HIDWORD(v97))
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:325 description:@"unexpected number of prolongated sprites"];
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
    animationIndexBySpriteIndex3 = [(PXGAnimationDataStore *)v288->_animationDataStore animationIndexBySpriteIndex];
    v341 = 0;
    v342 = &v341;
    v343 = 0x3032000000;
    v344 = __Block_byref_object_copy__17075;
    v345 = __Block_byref_object_dispose__17076;
    v346 = 0;
    modifiedSpriteIndexes = [*(*(&v361 + 1) + 40) modifiedSpriteIndexes];
    v333[0] = MEMORY[0x277D85DD0];
    v333[1] = 3221225472;
    v333[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_4;
    v333[3] = &unk_2782AB570;
    v101 = modifiedSpriteIndexes;
    v340 = animationIndexBySpriteIndex3;
    v334 = v101;
    v335 = v288;
    v336 = dataStoreCopy;
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
      currentHandler3 = HIDWORD(v102);
      if ([v342[5] count] != HIDWORD(v102))
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:415 description:@"unexpected number of prolongated sprites"];

        currentHandler3 = HIDWORD(v102);
      }

      v288->_numberOfProlongatedSprites += currentHandler3;
      if (v97 == -1)
      {
        LODWORD(v97) = v102;
      }

      else
      {
        if (v97 + v98 != v102)
        {
          v263 = currentHandler3;
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          v264 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%li, %li}", v97, v98];
          v263 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%li, %li}", v102, v263];
          [currentHandler3 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:420 description:{@"prolongated sprite ranges are disjoint %@ %@", v264, v263}];

          LODWORD(currentHandler3) = v263;
        }

        LODWORD(currentHandler3) = v98 + currentHandler3;
      }

      v331[0] = 0;
      v331[1] = v331;
      v331[2] = 0x2020000000;
      mappedSpriteCount = [(PXGAnimationDataStore *)v288->_animationDataStore mappedSpriteCount];
      [(PXGAnimationDataStore *)v288->_animationDataStore setMappedSpriteCount:(v97 + currentHandler3)];
      animationIndexBySpriteIndex4 = [(PXGAnimationDataStore *)v288->_animationDataStore animationIndexBySpriteIndex];
      v105 = v342[5];
      v330[0] = MEMORY[0x277D85DD0];
      v330[1] = 3221225472;
      v330[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_6;
      v330[3] = &unk_2782AB598;
      v330[5] = animationIndexBySpriteIndex4;
      v330[4] = v331;
      [v105 enumerateIndexesUsingBlock:v330];
      v292 = currentHandler3;
      animationIndexBySpriteIndex3 = animationIndexBySpriteIndex4;
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
    animationIndexBySpriteIndex3 = animationIndexBySpriteIndex2;
    v292 = 0;
    LODWORD(v97) = -1;
  }

  *changeDetails = v349[5];
  [(PXGAnimationDataStore *)v288->_animationDataStore applySpriteChangeDetails:v349[5]];
  [dataStoreCopy applyChangeDetails:v349[5]];
  [spriteDataStoreCopy applyChangeDetails:v349[5]];
  v106 = [dataStoreCopy count];
  if ([spriteDataStoreCopy count] != v106)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:441 description:{@"unexpected animation target sprite data store count %li (expected: %li)", objc_msgSend(spriteDataStoreCopy, "count"), v106}];
  }

  if ([(PXGAnimationDataStore *)v288->_animationDataStore spriteCount]!= v106)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:442 description:{@"unexpected animation data store sprite count %li (expected: %li)", -[PXGAnimationDataStore spriteCount](v288->_animationDataStore, "spriteCount"), v106}];
  }

  if (v283 && [(PXGAnimationDataStore *)v288->_animationDataStore mappedSpriteCount]!= v106)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:v288 file:@"PXGAnimator.m" lineNumber:444 description:{@"unexpected animation data store mapped sprite count %li (expected: %li)", -[PXGAnimationDataStore mappedSpriteCount](v288->_animationDataStore, "mappedSpriteCount"), v106}];
  }

  v107 = v288;
  kdebug_trace();

  v329[0] = MEMORY[0x277D85DD0];
  v329[1] = 3221225472;
  v329[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_7;
  v329[3] = &unk_2782AB5C0;
  *&v329[5] = time;
  v329[4] = v107;
  v108 = MEMORY[0x21CEE40A0](v329);
  v109 = objc_alloc_init(MEMORY[0x277CCAB58]);
  activeGroupIndexes = [(PXGAnimationDataStore *)v288->_animationDataStore activeGroupIndexes];
  v326[0] = MEMORY[0x277D85DD0];
  v326[1] = 3221225472;
  v326[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_8;
  v326[3] = &unk_2782AB5E8;
  v326[4] = v107;
  v111 = v108;
  v328 = v111;
  v302 = v109;
  v327 = v302;
  [activeGroupIndexes enumerateIndexesUsingBlock:v326];

  if (x != *MEMORY[0x277CBF348] || y != *(MEMORY[0x277CBF348] + 8))
  {
    v112 = v107;
    kdebug_trace();

    v113 = dataStoreCopy;
    geometries4 = [dataStoreCopy geometries];
    v115 = dataStoreCopy;
    styles4 = [dataStoreCopy styles];
    spriteInfos = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos];
    v118.f64[0] = x;
    v118.f64[1] = y;
    v119 = vcvt_f32_f64(v118);
    if (v106)
    {
      v120 = vcvtq_f64_f32(v119);
      v121 = (styles4 + 20);
      v122 = v106;
      do
      {
        *geometries4 = vaddq_f64(*geometries4, v120);
        geometries4 += 2;
        *&v123 = vadd_f32(*v121, v119);
        *(&v123 + 1) = vextq_s8(*v121->f32, *v121->f32, 8uLL).u64[0];
        *v121->f32 = v123;
        v121 += 20;
        *spriteInfos = *spriteInfos + v120.f64[0];
        *(spriteInfos + 20) = *(spriteInfos + 20) + v120.f64[1];
        *(spriteInfos + 196) = *(spriteInfos + 196) + v119.f32[0];
        *(spriteInfos + 208) = *(spriteInfos + 208) + v119.f32[1];
        spriteInfos += 307;
        --v122;
      }

      while (v122);
    }

    v297 = v119;
    v124 = v288->_numberOfProlongatedSprites;
    v125 = spriteDataStoreCopy;
    geometries5 = [spriteDataStoreCopy geometries];
    v127 = spriteDataStoreCopy;
    styles5 = [spriteDataStoreCopy styles];
    if (v124)
    {
      v129 = v106 - v124;
      v130 = (geometries5 + 32 * v129);
      v131 = vcvtq_f64_f32(v297);
      v132 = (styles5 + 160 * v129 + 20);
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

  v136 = [storeCopy count];
  v137 = spriteDataStoreCopy;
  entities = [spriteDataStoreCopy entities];
  v139 = storeCopy;
  memcpy(entities, [storeCopy entities], 4 * v136);
  v140 = spriteDataStoreCopy;
  geometries6 = [spriteDataStoreCopy geometries];
  v142 = storeCopy;
  v143 = v136;
  memcpy(geometries6, [storeCopy geometries], 32 * v136);
  v144 = spriteDataStoreCopy;
  styles6 = [spriteDataStoreCopy styles];
  v146 = storeCopy;
  memcpy(styles6, [storeCopy styles], 160 * v143);
  v147 = spriteDataStoreCopy;
  infos2 = [spriteDataStoreCopy infos];
  v149 = storeCopy;
  memcpy(infos2, [storeCopy infos], 40 * v143);
  v150 = v135;
  kdebug_trace();

  v151 = v150;
  kdebug_trace();

  [(PXGAnimationDataStore *)v288->_animationDataStore setMappedAnimationCount:0];
  [(PXGAnimationDataStore *)v288->_animationDataStore setMappedAnimationCount:2 * (v283 & 0x7FFF)];
  groupIndexByAnimationIndex = [(PXGAnimationDataStore *)v288->_animationDataStore groupIndexByAnimationIndex];
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
  timeCopy = time;
  obja = v294;
  v318 = obja;
  v319 = v151;
  v280 = v111;
  v320 = v280;
  v325 = groupIndexByAnimationIndex;
  [v293 enumerateKeysAndObjectsUsingBlock:v317];
  activeGroupIndexes2 = [(PXGAnimationDataStore *)v288->_animationDataStore activeGroupIndexes];
  if ([activeGroupIndexes2 count])
  {
    [v151[5] setCount:{objc_msgSend(activeGroupIndexes2, "lastIndex") + 1}];
  }

  v157 = v151;
  kdebug_trace();
  v298 = activeGroupIndexes2;

  groupInfos = [(PXGAnimationDataStore *)v288->_animationDataStore groupInfos];
  v159 = v157;
  kdebug_trace();

  if (v283)
  {
    [v159[5] removeAllIndexes];
    indexSetReferences = [v159[5] indexSetReferences];
    v160 = spriteDataStoreCopy;
    entities2 = [spriteDataStoreCopy entities];
    v162 = spriteDataStoreCopy;
    geometries7 = [spriteDataStoreCopy geometries];
    v163 = spriteDataStoreCopy;
    styles7 = [spriteDataStoreCopy styles];
    v164 = spriteDataStoreCopy;
    infos3 = [spriteDataStoreCopy infos];
    v165 = dataStoreCopy;
    entities3 = [dataStoreCopy entities];
    v166 = dataStoreCopy;
    geometries8 = [dataStoreCopy geometries];
    v168 = dataStoreCopy;
    styles8 = [dataStoreCopy styles];
    v170 = dataStoreCopy;
    infos4 = [dataStoreCopy infos];
    insertedSpriteIndexes2 = [v349[5] insertedSpriteIndexes];
    v312[0] = MEMORY[0x277D85DD0];
    v312[1] = 3221225472;
    v312[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_11;
    v312[3] = &__block_descriptor_120_e24_v32__0__NSRange_QQ_8_B24l;
    v312[4] = entities3;
    v312[5] = entities2;
    v312[6] = geometries8;
    v312[7] = geometries7;
    v312[8] = styles8;
    v312[9] = styles7;
    v312[10] = infos4;
    v312[11] = infos3;
    v312[12] = groupIndexByAnimationIndex;
    v312[13] = animationIndexBySpriteIndex3;
    v312[14] = indexSetReferences;
    [insertedSpriteIndexes2 enumerateRangesUsingBlock:v312];

    v311[0] = MEMORY[0x277D85DD0];
    v311[1] = 3221225472;
    v311[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_12;
    v311[3] = &unk_2782AB680;
    v311[6] = indexSetReferences;
    v311[7] = geometries8;
    v311[8] = styles8;
    v311[9] = infos4;
    v311[10] = geometries7;
    v311[11] = styles7;
    v311[12] = infos3;
    v311[4] = v159;
    v311[5] = groupInfos;
    [v298 enumerateIndexesUsingBlock:v311];
  }

  else
  {
    insertedSpriteIndexes3 = [v349[5] insertedSpriteIndexes];
    v313[0] = MEMORY[0x277D85DD0];
    v313[1] = 3221225472;
    v313[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_10;
    v313[3] = &unk_2782AB638;
    v314 = spriteDataStoreCopy;
    v315 = dataStoreCopy;
    v316 = v159;
    [insertedSpriteIndexes3 enumerateRangesUsingBlock:v313];
  }

  v174 = v159;
  kdebug_trace();

  if (v292)
  {
    v175 = v174;
    kdebug_trace();

    [v175[5] removeAllIndexes];
    indexSetReferences2 = [v175[5] indexSetReferences];
    spriteIndexAfterChangeBySpriteIndexBeforeChange = [v349[5] spriteIndexAfterChangeBySpriteIndexBeforeChange];
    inverse = [v349[5] inverse];
    v179 = inverse;
    spriteIndexAfterChangeBySpriteIndexBeforeChange2 = [inverse spriteIndexAfterChangeBySpriteIndexBeforeChange];

    if (!spriteIndexAfterChangeBySpriteIndexBeforeChange)
    {
      currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler7 handleFailureInMethod:a2 object:v175 file:@"PXGAnimator.m" lineNumber:823 description:@"missing forward sprite index map"];
    }

    if (!spriteIndexAfterChangeBySpriteIndexBeforeChange2)
    {
      currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler8 handleFailureInMethod:a2 object:v175 file:@"PXGAnimator.m" lineNumber:824 description:@"missing reverse sprite index map"];
    }

    v278 = v174;
    v181 = spriteIndexAfterChangeBySpriteIndexBeforeChange;
    v182 = v292;
    v183 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos]+ 307 * v97 + 306;
    v184 = animationIndexBySpriteIndex3;
    do
    {
      *v183 |= 1u;
      [*(indexSetReferences2 + 8 * *(groupIndexByAnimationIndex + 2 * *(v184 + 2 * v97))) addIndex:*(spriteIndexAfterChangeBySpriteIndexBeforeChange2 + 4 * v97)];
      LODWORD(v97) = v97 + 1;
      v183 += 307;
      --v182;
      v184 = animationIndexBySpriteIndex3;
    }

    while (v182);
    v306[0] = MEMORY[0x277D85DD0];
    v306[1] = 3221225472;
    v306[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_14;
    v306[3] = &unk_2782AB6D0;
    v308 = groupInfos;
    v309 = indexSetReferences2;
    v310 = v181;
    v307 = spriteDataStoreCopy;
    [v298 enumerateIndexesUsingBlock:v306];
    v185 = v175;
    kdebug_trace();

    v174 = v278;
  }

  if (v283)
  {
    v186 = v174;
    kdebug_trace();

    v187 = dataStoreCopy;
    geometries9 = [dataStoreCopy geometries];
    v189 = dataStoreCopy;
    styles9 = [dataStoreCopy styles];
    v191 = spriteDataStoreCopy;
    geometries10 = [spriteDataStoreCopy geometries];
    v193 = spriteDataStoreCopy;
    styles10 = [spriteDataStoreCopy styles];
    spriteInfos2 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos];
    v196 = animationIndexBySpriteIndex3;
    if (v106)
    {
      v197 = 0;
      do
      {
        if (*geometries10 == *spriteInfos2)
        {
          v198 = *(spriteInfos2 + 20);
          if (*(geometries10 + 8) == v198 && *(geometries10 + 16) == *(spriteInfos2 + 40))
          {
            v199 = *(geometries10 + 24);
            if (*&v199 == *(spriteInfos2 + 52) && *(&v199 + 1) == *(spriteInfos2 + 64) && *styles10 == *(spriteInfos2 + 76) && *(styles10 + 56) == *(spriteInfos2 + 88) && *(styles10 + 60) == *(spriteInfos2 + 100) && *(styles10 + 64) == *(spriteInfos2 + 112))
            {
              v200 = *(styles10 + 72);
              if (*&v200 == *(spriteInfos2 + 124) && *(&v200 + 1) == *(spriteInfos2 + 136))
              {
                v201 = *(styles10 + 4);
                if (*&v201 == *(spriteInfos2 + 148))
                {
                  if (*(&v201 + 1) == *(spriteInfos2 + 160) && *(&v201 + 2) == *(spriteInfos2 + 172) && *(&v201 + 3) == *(spriteInfos2 + 184) && (v202 = *(styles10 + 20), *&v202 == *(spriteInfos2 + 196)) && *(&v202 + 1) == *(spriteInfos2 + 208) && *(&v202 + 2) == *(spriteInfos2 + 220) && *(&v202 + 3) == *(spriteInfos2 + 232) && *(styles10 + 36) == *(spriteInfos2 + 244) && *(styles10 + 40) == *(spriteInfos2 + 256) && *(styles10 + 44) == *(spriteInfos2 + 268) && *(styles10 + 48) == *(spriteInfos2 + 280))
                  {
                    v196 = animationIndexBySpriteIndex3;
                    if (*(styles10 + 80) == *(spriteInfos2 + 292))
                    {
                      goto LABEL_157;
                    }
                  }

                  else
                  {
                    v196 = animationIndexBySpriteIndex3;
                  }
                }
              }
            }
          }
        }

        else
        {
          v198 = *(spriteInfos2 + 20);
        }

        v203 = (groupInfos + 76 * *(spriteInfos2 + 304));
        v204 = v203[6];
        v205 = v203[9];
        v206 = v203[10];
        *geometries9 = *spriteInfos2 + v205 * *(spriteInfos2 + 8) + (v206 * *(spriteInfos2 + 16)) + v204 * *(spriteInfos2 + 8);
        *(geometries9 + 8) = v198 + v205 * *(spriteInfos2 + 28) + (v206 * *(spriteInfos2 + 36)) + v204 * *(spriteInfos2 + 28);
        *(geometries9 + 16) = (((*(spriteInfos2 + 40) + (v205 * *(spriteInfos2 + 44))) + (v206 * *(spriteInfos2 + 48))) + (v204 * *(spriteInfos2 + 44)));
        *&v207 = ((*(spriteInfos2 + 52) + (v205 * *(spriteInfos2 + 56))) + (v206 * *(spriteInfos2 + 60))) + (v204 * *(spriteInfos2 + 56));
        *(geometries9 + 24) = v207;
        *(&v207 + 1) = ((*(spriteInfos2 + 64) + (v203[9] * *(spriteInfos2 + 68))) + (v203[10] * *(spriteInfos2 + 72))) + (v204 * *(spriteInfos2 + 68));
        *(geometries9 + 24) = v207;
        v208 = v203[9];
        v209 = v203[10];
        *styles9 = ((*(spriteInfos2 + 76) + (v208 * *(spriteInfos2 + 80))) + (v209 * *(spriteInfos2 + 84))) + (v204 * *(spriteInfos2 + 80));
        *(styles9 + 56) = ((*(spriteInfos2 + 88) + (v208 * *(spriteInfos2 + 92))) + (v209 * *(spriteInfos2 + 96))) + (v204 * *(spriteInfos2 + 92));
        *(styles9 + 60) = ((*(spriteInfos2 + 100) + (v208 * *(spriteInfos2 + 104))) + (v209 * *(spriteInfos2 + 108))) + (v204 * *(spriteInfos2 + 104));
        *(styles9 + 64) = ((*(spriteInfos2 + 112) + (v208 * *(spriteInfos2 + 116))) + (v209 * *(spriteInfos2 + 120))) + (v204 * *(spriteInfos2 + 116));
        *&v207 = ((*(spriteInfos2 + 124) + (v208 * *(spriteInfos2 + 128))) + (v209 * *(spriteInfos2 + 132))) + (v204 * *(spriteInfos2 + 128));
        *(styles9 + 72) = v207;
        *(&v207 + 1) = ((*(spriteInfos2 + 136) + (v203[9] * *(spriteInfos2 + 140))) + (v203[10] * *(spriteInfos2 + 144))) + (v204 * *(spriteInfos2 + 140));
        *(styles9 + 72) = v207;
        v210 = *(styles9 + 4);
        *&v210 = ((*(spriteInfos2 + 148) + (v203[9] * *(spriteInfos2 + 152))) + (v203[10] * *(spriteInfos2 + 156))) + (v204 * *(spriteInfos2 + 152));
        *(styles9 + 4) = v210;
        *(&v210 + 1) = ((*(spriteInfos2 + 160) + (v203[9] * *(spriteInfos2 + 164))) + (v203[10] * *(spriteInfos2 + 168))) + (v204 * *(spriteInfos2 + 164));
        *(styles9 + 4) = v210;
        *(&v210 + 2) = ((*(spriteInfos2 + 172) + (v203[9] * *(spriteInfos2 + 176))) + (v203[10] * *(spriteInfos2 + 180))) + (v204 * *(spriteInfos2 + 176));
        *(styles9 + 4) = v210;
        *(&v210 + 3) = ((*(spriteInfos2 + 184) + (v203[9] * *(spriteInfos2 + 188))) + (v203[10] * *(spriteInfos2 + 192))) + (v204 * *(spriteInfos2 + 188));
        *(styles9 + 4) = v210;
        v211 = *(styles9 + 20);
        *&v211 = ((*(spriteInfos2 + 196) + (v203[9] * *(spriteInfos2 + 200))) + (v203[10] * *(spriteInfos2 + 204))) + (v204 * *(spriteInfos2 + 200));
        *(styles9 + 20) = v211;
        *(&v211 + 1) = ((*(spriteInfos2 + 208) + (v203[9] * *(spriteInfos2 + 212))) + (v203[10] * *(spriteInfos2 + 216))) + (v204 * *(spriteInfos2 + 212));
        *(styles9 + 20) = v211;
        *(&v211 + 2) = ((*(spriteInfos2 + 220) + (v203[9] * *(spriteInfos2 + 224))) + (v203[10] * *(spriteInfos2 + 228))) + (v204 * *(spriteInfos2 + 224));
        *(styles9 + 20) = v211;
        *(&v211 + 3) = ((*(spriteInfos2 + 232) + (v203[9] * *(spriteInfos2 + 236))) + (v203[10] * *(spriteInfos2 + 240))) + (v204 * *(spriteInfos2 + 236));
        *(styles9 + 20) = v211;
        *(styles9 + 36) = ((*(spriteInfos2 + 244) + (v203[9] * *(spriteInfos2 + 248))) + (v203[10] * *(spriteInfos2 + 252))) + (v204 * *(spriteInfos2 + 248));
        *(styles9 + 40) = ((*(spriteInfos2 + 256) + (v203[9] * *(spriteInfos2 + 260))) + (v203[10] * *(spriteInfos2 + 264))) + (v204 * *(spriteInfos2 + 260));
        *(styles9 + 44) = ((*(spriteInfos2 + 268) + (v203[9] * *(spriteInfos2 + 272))) + (v203[10] * *(spriteInfos2 + 276))) + (v204 * *(spriteInfos2 + 272));
        *(styles9 + 48) = ((*(spriteInfos2 + 280) + (v203[9] * *(spriteInfos2 + 284))) + (v203[10] * *(spriteInfos2 + 288))) + (v204 * *(spriteInfos2 + 284));
        *(styles9 + 80) = ((*(spriteInfos2 + 292) + (v203[9] * *(spriteInfos2 + 296))) + (v203[10] * *(spriteInfos2 + 300))) + (v204 * *(spriteInfos2 + 296));
        v212 = *geometries9 - *geometries10;
        *spriteInfos2 = *geometries10;
        *(spriteInfos2 + 8) = v212;
        *(spriteInfos2 + 16) = 0;
        v213 = *(geometries9 + 8);
        v214 = *(geometries10 + 8);
        *(spriteInfos2 + 20) = v214;
        *(spriteInfos2 + 28) = v213 - v214;
        *(spriteInfos2 + 36) = 0;
        *&v213 = *(geometries9 + 16);
        *&v214 = *(geometries10 + 16);
        *(spriteInfos2 + 40) = LODWORD(v214);
        *(spriteInfos2 + 44) = *&v213 - *&v214;
        *(spriteInfos2 + 48) = 0;
        v215 = *(geometries10 + 24);
        *&v213 = COERCE_FLOAT(*(geometries9 + 24)) - *&v215;
        *(spriteInfos2 + 52) = v215;
        *(spriteInfos2 + 56) = LODWORD(v213);
        *(spriteInfos2 + 60) = 0;
        LODWORD(v215) = *(geometries10 + 28);
        *&v213 = *(geometries9 + 28) - *&v215;
        *(spriteInfos2 + 64) = v215;
        *(spriteInfos2 + 68) = LODWORD(v213);
        *(spriteInfos2 + 72) = 0;
        *&v213 = *styles9 - *styles10;
        *(spriteInfos2 + 76) = *styles10;
        *(spriteInfos2 + 80) = LODWORD(v213);
        *(spriteInfos2 + 84) = 0;
        LODWORD(v215) = *(styles10 + 56);
        *&v213 = *(styles9 + 56) - *&v215;
        *(spriteInfos2 + 88) = v215;
        *(spriteInfos2 + 92) = LODWORD(v213);
        *(spriteInfos2 + 96) = 0;
        LODWORD(v215) = *(styles10 + 60);
        *&v213 = *(styles9 + 60) - *&v215;
        *(spriteInfos2 + 100) = v215;
        *(spriteInfos2 + 104) = LODWORD(v213);
        *(spriteInfos2 + 108) = 0;
        LODWORD(v215) = *(styles10 + 64);
        *&v213 = *(styles9 + 64) - *&v215;
        *(spriteInfos2 + 112) = v215;
        *(spriteInfos2 + 116) = LODWORD(v213);
        *(spriteInfos2 + 120) = 0;
        LODWORD(v213) = *(styles10 + 4);
        *&v215 = *(styles9 + 4) - *&v213;
        *(spriteInfos2 + 148) = LODWORD(v213);
        *(spriteInfos2 + 152) = v215;
        *(spriteInfos2 + 156) = 0;
        v216 = *(styles9 + 72);
        v217 = *(styles10 + 72);
        *(spriteInfos2 + 124) = v217;
        *(spriteInfos2 + 128) = *&v216 - *&v217;
        *(spriteInfos2 + 132) = 0;
        LODWORD(v217) = *(styles10 + 76);
        *&v216 = *(styles9 + 76) - *&v217;
        *(spriteInfos2 + 136) = v217;
        *(spriteInfos2 + 140) = v216;
        *(spriteInfos2 + 144) = 0;
        LODWORD(v217) = *(styles10 + 8);
        *&v216 = *(styles9 + 8) - *&v217;
        *(spriteInfos2 + 160) = v217;
        *(spriteInfos2 + 164) = v216;
        *(spriteInfos2 + 168) = 0;
        LODWORD(v217) = *(styles10 + 12);
        *&v216 = *(styles9 + 12) - *&v217;
        *(spriteInfos2 + 172) = v217;
        *(spriteInfos2 + 176) = v216;
        *(spriteInfos2 + 180) = 0;
        LODWORD(v217) = *(styles10 + 16);
        *&v216 = *(styles9 + 16) - *&v217;
        *(spriteInfos2 + 184) = v217;
        *(spriteInfos2 + 188) = v216;
        *(spriteInfos2 + 192) = 0;
        LODWORD(v216) = *(styles10 + 20);
        *&v217 = *(styles9 + 20) - *&v216;
        *(spriteInfos2 + 196) = v216;
        *(spriteInfos2 + 200) = v217;
        *(spriteInfos2 + 204) = 0;
        LODWORD(v217) = *(styles10 + 24);
        *&v216 = *(styles9 + 24) - *&v217;
        *(spriteInfos2 + 208) = v217;
        *(spriteInfos2 + 212) = v216;
        *(spriteInfos2 + 216) = 0;
        LODWORD(v217) = *(styles10 + 28);
        *&v216 = *(styles9 + 28) - *&v217;
        *(spriteInfos2 + 220) = v217;
        *(spriteInfos2 + 224) = v216;
        *(spriteInfos2 + 228) = 0;
        LODWORD(v217) = *(styles10 + 32);
        *&v216 = *(styles9 + 32) - *&v217;
        *(spriteInfos2 + 232) = v217;
        *(spriteInfos2 + 236) = v216;
        *(spriteInfos2 + 240) = 0;
        LODWORD(v217) = *(styles10 + 36);
        *&v216 = *(styles9 + 36) - *&v217;
        *(spriteInfos2 + 244) = v217;
        *(spriteInfos2 + 248) = v216;
        *(spriteInfos2 + 252) = 0;
        LODWORD(v216) = *(styles9 + 40);
        LODWORD(v217) = *(styles10 + 40);
        *(spriteInfos2 + 256) = v217;
        *(spriteInfos2 + 260) = *&v216 - *&v217;
        *(spriteInfos2 + 264) = 0;
        LODWORD(v216) = *(styles9 + 44);
        LODWORD(v217) = *(styles10 + 44);
        *(spriteInfos2 + 268) = v217;
        *(spriteInfos2 + 272) = *&v216 - *&v217;
        *(spriteInfos2 + 276) = 0;
        LODWORD(v216) = *(styles9 + 48);
        LODWORD(v217) = *(styles10 + 48);
        *(spriteInfos2 + 280) = v217;
        *(spriteInfos2 + 284) = *&v216 - *&v217;
        *(spriteInfos2 + 288) = 0;
        LODWORD(v216) = *(styles9 + 80);
        LODWORD(v217) = *(styles10 + 80);
        *(spriteInfos2 + 292) = v217;
        *(spriteInfos2 + 296) = *&v216 - *&v217;
        *(spriteInfos2 + 300) = 0;
        *(spriteInfos2 + 304) = *(groupIndexByAnimationIndex + 2 * *(v196 + 2 * v197));
LABEL_157:
        ++v197;
        geometries9 += 32;
        styles9 += 160;
        geometries10 += 32;
        styles10 += 160;
        spriteInfos2 += 307;
      }

      while (v197 != v106);
    }

    v218 = v186;
    kdebug_trace();
  }

  v219 = v174;
  kdebug_trace();

  v220 = dataStoreCopy;
  geometries11 = [dataStoreCopy geometries];
  v222 = dataStoreCopy;
  styles11 = [dataStoreCopy styles];
  v224 = spriteDataStoreCopy;
  geometries12 = [spriteDataStoreCopy geometries];
  v226 = spriteDataStoreCopy;
  styles12 = [spriteDataStoreCopy styles];
  spriteInfos3 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos];
  if (v106)
  {
    v229 = v106;
    do
    {
      v230 = *geometries12;
      *spriteInfos3 = *geometries12;
      v231 = *(geometries12 + 8);
      *(spriteInfos3 + 20) = v231;
      v232 = *(geometries12 + 16);
      *(spriteInfos3 + 40) = v232;
      v233 = *(geometries12 + 24);
      *(spriteInfos3 + 52) = v233;
      *(spriteInfos3 + 64) = *(geometries12 + 28);
      *(spriteInfos3 + 76) = *styles12;
      *(spriteInfos3 + 88) = *(styles12 + 56);
      *(spriteInfos3 + 100) = *(styles12 + 60);
      *(spriteInfos3 + 112) = *(styles12 + 64);
      *(spriteInfos3 + 124) = *(styles12 + 72);
      *(spriteInfos3 + 136) = *(styles12 + 76);
      *(spriteInfos3 + 148) = *(styles12 + 4);
      *(spriteInfos3 + 160) = *(styles12 + 8);
      *(spriteInfos3 + 172) = *(styles12 + 12);
      *(spriteInfos3 + 184) = *(styles12 + 16);
      *(spriteInfos3 + 196) = *(styles12 + 20);
      *(spriteInfos3 + 208) = *(styles12 + 24);
      *(spriteInfos3 + 220) = *(styles12 + 28);
      *(spriteInfos3 + 232) = *(styles12 + 32);
      *(spriteInfos3 + 244) = *(styles12 + 36);
      *(spriteInfos3 + 256) = *(styles12 + 40);
      *(spriteInfos3 + 268) = *(styles12 + 44);
      *(spriteInfos3 + 280) = *(styles12 + 48);
      *(spriteInfos3 + 292) = *(styles12 + 80);
      v234 = groupInfos + 76 * *(spriteInfos3 + 304);
      v235 = *(v234 + 36);
      v236 = *(v234 + 40);
      v237 = *(spriteInfos3 + 8);
      v238 = v230 + v235 * v237;
      LODWORD(v230) = *(v234 + 24);
      *geometries11 = v238 + (v236 * *(spriteInfos3 + 16)) + *&v230 * v237;
      *(geometries11 + 8) = v231 + v235 * *(spriteInfos3 + 28) + (v236 * *(spriteInfos3 + 36)) + *&v230 * *(spriteInfos3 + 28);
      *(geometries11 + 16) = (((v232 + (v235 * *(spriteInfos3 + 44))) + (v236 * *(spriteInfos3 + 48))) + (*&v230 * *(spriteInfos3 + 44)));
      *&v233 = ((*&v233 + (v235 * *(spriteInfos3 + 56))) + (v236 * *(spriteInfos3 + 60))) + (*&v230 * *(spriteInfos3 + 56));
      *(geometries11 + 24) = v233;
      *(&v233 + 1) = ((*(spriteInfos3 + 64) + (*(v234 + 36) * *(spriteInfos3 + 68))) + (*(v234 + 40) * *(spriteInfos3 + 72))) + (*&v230 * *(spriteInfos3 + 68));
      *(geometries11 + 24) = v233;
      LODWORD(v231) = *(v234 + 36);
      v239 = *(v234 + 40);
      *styles11 = ((*(spriteInfos3 + 76) + (*&v231 * *(spriteInfos3 + 80))) + (v239 * *(spriteInfos3 + 84))) + (*&v230 * *(spriteInfos3 + 80));
      *(styles11 + 56) = ((*(spriteInfos3 + 88) + (*&v231 * *(spriteInfos3 + 92))) + (v239 * *(spriteInfos3 + 96))) + (*&v230 * *(spriteInfos3 + 92));
      *(styles11 + 60) = ((*(spriteInfos3 + 100) + (*&v231 * *(spriteInfos3 + 104))) + (v239 * *(spriteInfos3 + 108))) + (*&v230 * *(spriteInfos3 + 104));
      *(styles11 + 64) = ((*(spriteInfos3 + 112) + (*&v231 * *(spriteInfos3 + 116))) + (v239 * *(spriteInfos3 + 120))) + (*&v230 * *(spriteInfos3 + 116));
      *&v233 = ((*(spriteInfos3 + 124) + (*&v231 * *(spriteInfos3 + 128))) + (v239 * *(spriteInfos3 + 132))) + (*&v230 * *(spriteInfos3 + 128));
      *(styles11 + 72) = v233;
      *(&v233 + 1) = ((*(spriteInfos3 + 136) + (*(v234 + 36) * *(spriteInfos3 + 140))) + (*(v234 + 40) * *(spriteInfos3 + 144))) + (*&v230 * *(spriteInfos3 + 140));
      *(styles11 + 72) = v233;
      v240 = *(styles11 + 4);
      *&v240 = ((*(spriteInfos3 + 148) + (*(v234 + 36) * *(spriteInfos3 + 152))) + (*(v234 + 40) * *(spriteInfos3 + 156))) + (*&v230 * *(spriteInfos3 + 152));
      *(styles11 + 4) = v240;
      *(&v240 + 1) = ((*(spriteInfos3 + 160) + (*(v234 + 36) * *(spriteInfos3 + 164))) + (*(v234 + 40) * *(spriteInfos3 + 168))) + (*&v230 * *(spriteInfos3 + 164));
      *(styles11 + 4) = v240;
      *(&v240 + 2) = ((*(spriteInfos3 + 172) + (*(v234 + 36) * *(spriteInfos3 + 176))) + (*(v234 + 40) * *(spriteInfos3 + 180))) + (*&v230 * *(spriteInfos3 + 176));
      *(styles11 + 4) = v240;
      *(&v240 + 3) = ((*(spriteInfos3 + 184) + (*(v234 + 36) * *(spriteInfos3 + 188))) + (*(v234 + 40) * *(spriteInfos3 + 192))) + (*&v230 * *(spriteInfos3 + 188));
      *(styles11 + 4) = v240;
      v241 = *(styles11 + 20);
      *&v241 = ((*(spriteInfos3 + 196) + (*(v234 + 36) * *(spriteInfos3 + 200))) + (*(v234 + 40) * *(spriteInfos3 + 204))) + (*&v230 * *(spriteInfos3 + 200));
      *(styles11 + 20) = v241;
      *(&v241 + 1) = ((*(spriteInfos3 + 208) + (*(v234 + 36) * *(spriteInfos3 + 212))) + (*(v234 + 40) * *(spriteInfos3 + 216))) + (*&v230 * *(spriteInfos3 + 212));
      *(styles11 + 20) = v241;
      *(&v241 + 2) = ((*(spriteInfos3 + 220) + (*(v234 + 36) * *(spriteInfos3 + 224))) + (*(v234 + 40) * *(spriteInfos3 + 228))) + (*&v230 * *(spriteInfos3 + 224));
      *(styles11 + 20) = v241;
      *(&v241 + 3) = ((*(spriteInfos3 + 232) + (*(v234 + 36) * *(spriteInfos3 + 236))) + (*(v234 + 40) * *(spriteInfos3 + 240))) + (*&v230 * *(spriteInfos3 + 236));
      *(styles11 + 20) = v241;
      *(styles11 + 36) = ((*(spriteInfos3 + 244) + (*(v234 + 36) * *(spriteInfos3 + 248))) + (*(v234 + 40) * *(spriteInfos3 + 252))) + (*&v230 * *(spriteInfos3 + 248));
      *(styles11 + 40) = ((*(spriteInfos3 + 256) + (*(v234 + 36) * *(spriteInfos3 + 260))) + (*(v234 + 40) * *(spriteInfos3 + 264))) + (*&v230 * *(spriteInfos3 + 260));
      *(styles11 + 44) = ((*(spriteInfos3 + 268) + (*(v234 + 36) * *(spriteInfos3 + 272))) + (*(v234 + 40) * *(spriteInfos3 + 276))) + (*&v230 * *(spriteInfos3 + 272));
      *(styles11 + 48) = ((*(spriteInfos3 + 280) + (*(v234 + 36) * *(spriteInfos3 + 284))) + (*(v234 + 40) * *(spriteInfos3 + 288))) + (*&v230 * *(spriteInfos3 + 284));
      *(styles11 + 80) = ((*(spriteInfos3 + 292) + (*(v234 + 36) * *(spriteInfos3 + 296))) + (*(v234 + 40) * *(spriteInfos3 + 300))) + (*&v230 * *(spriteInfos3 + 296));
      *(styles11 + 52) = *(styles12 + 52);
      v242 = *(styles12 + 96);
      v243 = *(styles12 + 112);
      v244 = *(styles12 + 144);
      *(styles11 + 128) = *(styles12 + 128);
      *(styles11 + 144) = v244;
      *(styles11 + 96) = v242;
      *(styles11 + 112) = v243;
      *(styles11 + 68) = *(styles12 + 68);
      LOBYTE(v234) = *(styles12 + 70);
      geometries12 += 32;
      styles12 += 160;
      *(styles11 + 70) = v234;
      spriteInfos3 += 307;
      geometries11 += 32;
      styles11 += 160;
      --v229;
    }

    while (v229);
  }

  v245 = dataStoreCopy;
  entities4 = [dataStoreCopy entities];
  v247 = spriteDataStoreCopy;
  memcpy(entities4, [spriteDataStoreCopy entities], 4 * v106);
  v248 = dataStoreCopy;
  infos5 = [dataStoreCopy infos];
  v250 = spriteDataStoreCopy;
  memcpy(infos5, [spriteDataStoreCopy infos], 40 * v106);
  v251 = v219;
  kdebug_trace();

  if ([v302 count])
  {
    spriteInfos4 = [(PXGAnimationDataStore *)v288->_animationDataStore spriteInfos];
    v305[0] = MEMORY[0x277D85DD0];
    v305[1] = 3221225472;
    v305[2] = __217__PXGAnimator_computeAnimationStateForTime_inputSpriteDataStore_inputChangeDetails_inputLayout_viewportShift_animationPresentationSpriteDataStore_animationTargetSpriteDataStore_animationChangeDetails_animationLayout___block_invoke_16;
    v305[3] = &unk_2782ABC08;
    v305[4] = v251;
    [v302 enumerateIndexesUsingBlock:v305];
    if (v106)
    {
      v253 = (spriteInfos4 + 304);
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

  activeGroupIndexes3 = [(PXGAnimationDataStore *)v288->_animationDataStore activeGroupIndexes];
  if ([activeGroupIndexes3 count])
  {
    v255 = 1;
  }

  else
  {
    v255 = v288->_numberOfProlongatedSprites != 0;
  }

  [v251 setAnimating:v255];

  [v251[2] setInputLayout:obja];
  *animationLayout = v251[2];

  _Block_object_dispose(&v348, 8);
  _Block_object_dispose(&v361, 8);

LABEL_176:
  [v295 enumerateObjectsUsingBlock:&__block_literal_global_52];
  [(PXGAnimator *)selfCopy setPreviousLayoutSnapshot:v275];
  selfCopy->_lastUpdateTime = time;
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

- (id)_animationByAnimationIndexForAnimations:(id)animations
{
  animationsCopy = animations;
  v4 = [animationsCopy count];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__PXGAnimator__animationByAnimationIndexForAnimations___block_invoke;
  v12 = &unk_2782AB470;
  v13 = v5;
  v14 = v4;
  v6 = v5;
  [animationsCopy enumerateObjectsUsingBlock:&v9];

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
  activeGroupIndexes = [(PXGAnimationDataStore *)self->_animationDataStore activeGroupIndexes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__PXGAnimator_dealloc__block_invoke;
  v5[3] = &unk_2782ABC08;
  v5[4] = self;
  [activeGroupIndexes enumerateIndexesUsingBlock:v5];

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