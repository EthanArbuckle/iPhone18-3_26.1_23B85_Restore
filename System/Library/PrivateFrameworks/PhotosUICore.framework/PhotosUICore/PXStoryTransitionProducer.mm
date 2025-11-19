@interface PXStoryTransitionProducer
+ (BOOL)isSupportedTransitionWithKind:(char)a3 betweenSegmentWithClipComposition:(id *)a4 andSegmentWithClipComposition:(id *)a5;
+ (BOOL)isSupportedTransitionWithKind:(char)a3 fromSegmentIdentifier:(int64_t)a4 toSegmentIdentifier:(int64_t)a5 inTimeline:(id)a6;
+ (id)supportedTransitionKinds;
- (id)_panTransitionsForOrderOutSegment:(id)a3 orderInSegment:(id)a4 viewportSize:(CGSize)a5 transitionInfo:(id *)a6;
- (id)_wipeTransitionsForOrderOutSegment:(id)a3 orderInSegment:(id)a4 viewportSize:(CGSize)a5 dividerWidth:(double)a6 transitionInfo:(id *)a7;
- (id)transitionsWithConfiguration:(id)a3;
- (void)_recordFallbackToCutTransitionBetweenSegmentWithIdentifier:(int64_t)a3 andSegmentWithIdentifier:(int64_t)a4 reason:(id)a5;
@end

@implementation PXStoryTransitionProducer

- (id)_panTransitionsForOrderOutSegment:(id)a3 orderInSegment:(id)a4 viewportSize:(CGSize)a5 transitionInfo:(id *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a6->var1)
  {
    var0 = a6->var0;
    v11 = BYTE5(a6->var2.var3);
    v12 = a6->var1 & 0xFE;
    if (var0 == 5)
    {
      if (v11 == 1)
      {
        LOBYTE(v11) = 2;
      }

      else if (v11 == 2)
      {
        LOBYTE(v11) = 1;
      }
    }

    a6->var0 = var0;
    a6->var1 = v12;
    BYTE5(a6->var2.var3) = v11;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = *(&a6->var1 + 3);
  v24 = *&a6->var2.var2;
  if (BYTE5(a6->var2.var3) <= 1u && !BYTE5(a6->var2.var3))
  {
    PXAssertGetLog();
  }

  v14 = [PXStoryPanTransitionConfiguration alloc];
  *buf = v23;
  v22 = v24;
  v15 = [(PXStoryPanTransitionConfiguration *)v14 initWithDuration:buf];
  memset(v20, 0, sizeof(v20));
  v16 = [v8 clipLayouts];
  if ([v16 countByEnumeratingWithState:v20 objects:v25 count:16])
  {
    [**(&v20[0] + 1) contentSize];
    PXRectWithOriginAndSize();
  }

  v17 = [PXStoryTransitionFactory panTransitionWithConfiguration:v15];
  [v13 addObject:v17];

  v18 = [PXStoryPanTransitionConfiguration alloc];
  *buf = v23;
  v22 = v24;
  [(PXStoryPanTransitionConfiguration *)v18 initWithDuration:buf];
  PXPointSubtract();
}

- (id)_wipeTransitionsForOrderOutSegment:(id)a3 orderInSegment:(id)a4 viewportSize:(CGSize)a5 dividerWidth:(double)a6 transitionInfo:(id *)a7
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    [v8 segmentInfo];
  }

  if (v9)
  {
    [v9 segmentInfo];
  }

  PXAxisTransposed();
}

uint64_t __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke(uint64_t a1, char a2, int a3)
{
  if (!a3)
  {
    PXAssertGetLog();
  }

  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (a3 == 1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (a3 == 2)
  {
    return v3;
  }

  return v5;
}

void __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  v8 = a6;
  v9 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_4;
  v13[3] = &unk_1E77335C8;
  memcpy(v15, a5, sizeof(v15));
  v10 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = v10;
  v11 = *(a1 + 72);
  v19 = *(a1 + 80);
  v18 = v11;
  v14 = v8;
  v12 = v8;
  [v9 addClipLayout:v12 configurationBlock:v13];
}

void __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  v8 = a6;
  v9 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_6;
  v13[3] = &unk_1E77335C8;
  memcpy(v15, a5, sizeof(v15));
  v10 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = v10;
  v11 = *(a1 + 72);
  v19 = *(a1 + 80);
  v18 = v11;
  v14 = v8;
  v12 = v8;
  [v9 addClipLayout:v12 configurationBlock:v13];
}

uint64_t __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_35(uint64_t result, uint64_t a2, _OWORD *a3)
{
  v3 = *(result + 800);
  switch(v3)
  {
    case 2:
      PXRectWithSizeAlignedToRectEdges();
    case 1:
      PXRectWithSizeAlignedToRectEdgesWithPadding();
    case 0:
      *(a2 + 80) = *(result + 832) + *(result + 840);
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      *(a2 + 120) = 0;
      a3[6] = 0u;
      a3[7] = 0u;
      a3[4] = 0u;
      a3[5] = 0u;
      a3[2] = 0u;
      a3[3] = 0u;
      PXStoryRectOuterBounds();
  }

  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 16);
  *a3 = *MEMORY[0x1E695F058];
  a3[1] = v5;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

__n128 __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_33(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 800);
  if (v3 == 1)
  {
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    v4 = *(a1 + 824) + *(a1 + 856);
    *(a3 + 32) = *(a1 + 848) * 0.16667;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = v4;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
    PXStoryRectOuterBounds();
  }

  if (!v3)
  {
    PXRectWithSizeAlignedToRectEdges();
  }

  result = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 16);
  *a3 = *MEMORY[0x1E695F058];
  *(a3 + 16) = v6;
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

double __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_31(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 800);
  if (v3 == 1)
  {
    PXRectWithSizeAlignedToRectEdgesWithPadding();
  }

  if (v3)
  {
    PXRectWithSizeAlignedToRectEdges();
  }

  result = *(a1 + 824) + *(a1 + 840);
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 104) = result;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  return result;
}

__n128 __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_29(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 800);
  if (v3 == 1)
  {
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    v4 = *(a1 + 808) * 0.16667;
    *(a3 + 32) = *(a1 + 848) + *(a1 + 856);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = v4;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    PXStoryRectOuterBounds();
  }

  if (!v3)
  {
    PXRectWithSizeAlignedToRectEdges();
  }

  result = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 16);
  *a3 = *MEMORY[0x1E695F058];
  *(a3 + 16) = v6;
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

uint64_t __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_19(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v3 = *(result + 40);
  v4 = *(result + 88);
  v5 = v3 == 2;
  if (v3 == 2)
  {
    v6 = 64;
  }

  else
  {
    v6 = 72;
  }

  v7 = *(result + v6) + *(result + 80);
  if (v5)
  {
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    if (v4)
    {
      *(a3 + 56) = v7;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
    }

    else
    {
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 104) = v7;
      *(a3 + 112) = 0;
      *(a3 + 120) = 0;
    }
  }

  else
  {
    if (v4)
    {
      *(a3 + 32) = v7;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
    }

    else
    {
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 80) = v7;
    }

    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0;
  }

  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  v8 = *(result + 104);
  if (v8 == 1)
  {
    PXStoryRectOuterBounds();
  }

  if (v8 == 4)
  {
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 16);
    *a3 = *MEMORY[0x1E695F058];
    *(a3 + 16) = v10;
    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

__n128 __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  _ZF = v3 == 2;
  if (v3 == 2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  v6 = *(a1 + v5);
  v7 = *(a1 + 72);
  v8 = v6 * v7;
  v9 = v6 - v6 * v7;
  if (_ZF)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    v10 = 0uLL;
    v11 = 0uLL;
    *(a2 + 56) = v8;
  }

  else
  {
    *(a2 + 32) = v8;
    v10 = 0uLL;
    v11 = *&v9;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    v9 = 0.0;
  }

  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  *(a2 + 96) = 0;
  *(a2 + 104) = v9;
  *(a2 + 112) = v10;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a2 + 144) = vdupq_n_s64(0x3FF199999999999AuLL);
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 144) = result;
  return result;
}

void __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_15(uint64_t a1, CGRect *a2)
{
  if (*(a1 + 40) == 1)
  {
    PXStoryRectOuterBounds();
  }

  v2 = *(a1 + 800);
  v3 = v2 == 2;
  if (v2 == 2)
  {
    v4 = 824;
  }

  else
  {
    v4 = 832;
  }

  v5 = *(a1 + v4) + *(a1 + 840);
  v6 = -v5;
  if (v3)
  {
    v8 = 0.0;
    v7 = -v5;
  }

  else
  {
    v7 = 0.0;
    v8 = v6;
  }

  *a2 = CGRectOffset(*(a1 + 848), v7, v8);
}

void __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_12(uint64_t a1, CGRect *a2)
{
  if (*(a1 + 40) == 1)
  {
    PXStoryRectOuterBounds();
  }

  v2 = *(a1 + 816);
  v3 = v2 == 2;
  if (v2 == 2)
  {
    v4 = 856;
  }

  else
  {
    v4 = 864;
  }

  v5 = *(a1 + v4) + *(a1 + 872);
  v6 = -v5;
  if (v3)
  {
    v8 = 0.0;
    v7 = -v5;
  }

  else
  {
    v7 = 0.0;
    v8 = v6;
  }

  *a2 = CGRectOffset(*(a1 + 824), v7, v8);
}

uint64_t __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_10(uint64_t result, _OWORD *a2, uint64_t a3)
{
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  v3 = 64;
  if (*(result + 32) == 2)
  {
    v3 = 56;
    v4 = 0.0;
  }

  else
  {
    v4 = (*(result + 64) + *(result + 72)) * 0.5;
  }

  v5 = vdup_n_s32(*(result + 32) == 2);
  if (*(result + 32) == 2)
  {
    v6 = (*(result + v3) + *(result + 72)) * 0.5;
  }

  else
  {
    v6 = 0.0;
  }

  v7.i64[0] = v5.u32[0];
  v7.i64[1] = v5.u32[1];
  *&v8 = (*(result + v3) + *(result + 72)) * 0.5;
  v9 = vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL));
  *(a3 + 32) = vbicq_s8(v8, v9);
  *(a3 + 48) = v4;
  *(a3 + 56) = vandq_s8(v8, v9);
  *(a3 + 72) = v6;
  *(a3 + 80) = 0uLL;
  *(a3 + 96) = 0uLL;
  *(a3 + 112) = 0uLL;
  if (*(result + 88) == 1)
  {
    PXStoryRectOuterBounds();
  }

  return result;
}

uint64_t __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_8(uint64_t result, _OWORD *a2, _OWORD *a3)
{
  v3 = *(result + 48);
  if (v3 == 1)
  {
    v4 = result;
    (*(*(result + 32) + 16))();
    if (*(v4 + 808) == 2)
    {
      PXStoryRectOuterBounds();
    }

    PXStoryRectOuterBounds();
  }

  if (v3 == 4)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 16);
    *a3 = *MEMORY[0x1E695F058];
    a3[1] = v6;
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_6(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    if (*(result + 848) == 2)
    {
      PXStoryRectOuterBounds();
    }

    PXStoryRectOuterBounds();
  }

  return result;
}

uint64_t __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_4(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    if (*(result + 848) == 2)
    {
      PXStoryRectOuterBounds();
    }

    PXStoryRectOuterBounds();
  }

  return result;
}

uint64_t __120__PXStoryTransitionProducer__wipeTransitionsForOrderOutSegment_orderInSegment_viewportSize_dividerWidth_transitionInfo___block_invoke_2(uint64_t result, _OWORD *a2, _OWORD *a3)
{
  v3 = *(result + 48);
  if (v3 == 1)
  {
    v4 = result;
    (*(*(result + 32) + 16))();
    if (*(v4 + 808) == 2)
    {
      PXStoryRectOuterBounds();
    }

    PXStoryRectOuterBounds();
  }

  if (v3 == 4)
  {
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 16);
    *a3 = *MEMORY[0x1E695F058];
    a3[1] = v6;
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

- (void)_recordFallbackToCutTransitionBetweenSegmentWithIdentifier:(int64_t)a3 andSegmentWithIdentifier:(int64_t)a4 reason:(id)a5
{
  v8 = a5;
  v9 = [(PXStoryTransitionProducer *)self fallbackTransitionReasons];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld → %ld: %@", a3, a4, v8];

  v13 = [v12 arrayByAddingObject:v14];

  [(PXStoryTransitionProducer *)self setFallbackTransitionReasons:v13];
}

- (id)transitionsWithConfiguration:(id)a3
{
  v3 = a3;
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [v3 timeline];
  v5 = [v3 transitionModel];
  v6 = [v5 segmentTransitionInfo];
  v8 = v7;
  v53 = [v3 entityManager];
  v9 = [v3 source];
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  memset(v94, 0, sizeof(v94));
  v91 = 0u;
  v92 = 0u;
  if (v4)
  {
    [v4 infoForSegmentWithIdentifier:v6];
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    [v4 infoForSegmentWithIdentifier:v8];
    v10 = v94[0];
  }

  else
  {
    v10 = 0;
    v90 = 0;
    v88 = 0uLL;
    v89 = 0uLL;
    v86 = 0uLL;
    v87 = 0uLL;
    v84 = 0uLL;
    v85 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
  }

  v50 = v4;
  v76 = *(v94 + 1);
  v77[0] = *(&v94[1] + 1);
  *(v77 + 15) = *&v94[2];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [PXStoryTransitionProducerSegment alloc];
  v73 = v88;
  v74 = v89;
  v75 = v90;
  v69 = v84;
  v70 = v85;
  v71 = v86;
  v72 = v87;
  *&buf[32] = v80;
  v66 = v81;
  v67 = v82;
  v68 = v83;
  *buf = v78;
  *&buf[16] = v79;
  v13 = [(PXStoryTransitionProducerSegment *)v12 initWithSegmentInfo:buf];
  v14 = [PXStoryTransitionProducerSegment alloc];
  v73 = v99;
  v74 = v100;
  v75 = v101;
  v69 = v95;
  v70 = v96;
  v71 = v97;
  v72 = v98;
  *&buf[32] = v93;
  v66 = v94[0];
  v67 = v94[1];
  v68 = v94[2];
  *buf = v91;
  *&buf[16] = v92;
  v15 = [(PXStoryTransitionProducerSegment *)v14 initWithSegmentInfo:buf];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __58__PXStoryTransitionProducer_transitionsWithConfiguration___block_invoke;
  v60[3] = &unk_1E7733500;
  v16 = v9;
  v61 = v16;
  v52 = v13;
  v62 = v52;
  v51 = v15;
  v63 = v51;
  v17 = v11;
  v64 = v17;
  v48 = v5;
  [v5 enumerateClipIdentifiersUsingBlock:v60];
  v18 = [v3 timelineSpec];
  v19 = [v18 allowedTransitionKinds];
  if ([v19 count])
  {
    v20 = [v18 allowedTransitionKinds];
    v21 = [v20 containsIndex:1];

    v22 = v49;
    if (!v21)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v22 = v49;
  }

  if (![PXStoryTransitionProducer isSupportedTransitionWithKind:v10 fromSegmentIdentifier:v6 toSegmentIdentifier:v8 inTimeline:v50])
  {
    PXAssertGetLog();
  }

LABEL_10:
  if ([v17 count])
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [v17 componentsJoinedByString:{@", "}];
    v25 = [v23 stringWithFormat:@"Transition source failed to provide layouts for clips: %@. Falling back to cut.", v24];

    [(PXStoryTransitionProducer *)self _recordFallbackToCutTransitionBetweenSegmentWithIdentifier:v6 andSegmentWithIdentifier:v8 reason:v25];
    v26 = [v3 timelineSpec];
    v10 = [v26 fallbackTransitionKind];
  }

  [v18 viewportSize];
  v28 = v27;
  [v16 transitionViewport];
  v30 = v29;
  v32 = v31;
  [v18 nUpDividerWidth];
  if (v10 == 5)
  {
    buf[0] = 5;
    *&buf[1] = v76;
    *&buf[17] = v77[0];
    *&buf[32] = *(v77 + 15);
    v34 = [(PXStoryTransitionProducer *)self _panTransitionsForOrderOutSegment:v51 orderInSegment:v52 viewportSize:buf transitionInfo:v30, v32];
    goto LABEL_16;
  }

  if (v10 == 8)
  {
    buf[0] = 8;
    *&buf[1] = v76;
    *&buf[17] = v77[0];
    *&buf[32] = *(v77 + 15);
    v34 = [(PXStoryTransitionProducer *)self _wipeTransitionsForOrderOutSegment:v51 orderInSegment:v52 viewportSize:buf dividerWidth:v30 transitionInfo:v32, v33 * (v30 / v28)];
LABEL_16:
    v35 = v34;
    [v22 addObjectsFromArray:v34];
    goto LABEL_18;
  }

  v36 = [(PXStoryTransitionProducerSegment *)v51 clipLayouts];
  v37 = [v18 storyTransitionCurveType];
  buf[0] = v10;
  *&buf[1] = v76;
  *&buf[17] = v77[0];
  *&buf[32] = *(v77 + 15);
  v38 = [PXStoryTransitionFactory segmentTransitionWithInfo:buf event:2 clipLayouts:v36 storyTransitionCurveType:v37];
  [v22 addObject:v38];

  v35 = [(PXStoryTransitionProducerSegment *)v52 clipLayouts];
  v39 = [v18 storyTransitionCurveType];
  buf[0] = v10;
  *&buf[1] = v76;
  *&buf[17] = v77[0];
  *&buf[32] = *(v77 + 15);
  v40 = [PXStoryTransitionFactory segmentTransitionWithInfo:buf event:1 clipLayouts:v35 storyTransitionCurveType:v39];
  [v22 addObject:v40];

LABEL_18:
  buf[0] = v10;
  *&buf[1] = v76;
  *&buf[17] = v77[0];
  *&buf[32] = *(v77 + 15);
  v41 = [PXStoryTransitionFactory effectTransitionWithInfo:buf entityManager:v53];
  v42 = [v41 effect];
  v43 = [v41 auxiliaryEffect];
  if (v41)
  {
    [v16 didBeginTransitionWithEffect:v42 auxiliaryEffect:v43];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __58__PXStoryTransitionProducer_transitionsWithConfiguration___block_invoke_43;
    v58[3] = &unk_1E7733528;
    v44 = v16;
    v59 = v44;
    [v41 setEffectAlphaHandler:v58];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __58__PXStoryTransitionProducer_transitionsWithConfiguration___block_invoke_2;
    v54[3] = &unk_1E7747D28;
    v55 = v44;
    v56 = v42;
    v57 = v43;
    [v41 setCompletionHandler:v54];
    [v22 addObject:v41];
  }

  v45 = [v22 copy];

  return v45;
}

void __58__PXStoryTransitionProducer_transitionsWithConfiguration___block_invoke(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = [*(a1 + 32) layoutForClipWithIdentifier:a2];
  if (v8)
  {
    v9 = 48;
    if (a4 == 1)
    {
      v9 = 40;
    }

    v10 = *(a1 + v9);
    memcpy(v13, a3, sizeof(v13));
    [v10 addClipWithIdentifier:a2 layout:v8 info:v13];
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    [v11 addObject:v12];
  }
}

+ (BOOL)isSupportedTransitionWithKind:(char)a3 fromSegmentIdentifier:(int64_t)a4 toSegmentIdentifier:(int64_t)a5 inTimeline:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = v9;
  if (v8 >= 2)
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    if (v9)
    {
      [v9 infoForSegmentWithIdentifier:a4];
      v37 = 0;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      [v10 infoForSegmentWithIdentifier:a5];
      v12 = *(&v38 + 1);
      v13 = *(&v40 + 1);
      v14 = v40;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v36 = 0uLL;
      v35 = 0uLL;
      v34 = 0uLL;
      v33 = 0uLL;
      v32 = 0uLL;
      v31 = 0uLL;
      v30 = 0uLL;
      v29 = 0uLL;
      v28 = 0uLL;
      v27 = 0uLL;
      v26 = 0uLL;
      v25 = 0uLL;
      v14 = 0;
      v37 = 0;
    }

    v24 = v39;
    v17 = v26;
    v19 = 0;
    v20 = v12;
    v21 = v39;
    v22 = v14;
    v23 = v13;
    v16 = 0;
    v18 = 0;
    v11 = [PXStoryTransitionProducer isSupportedTransitionWithKind:v8 betweenSegmentWithClipComposition:&v20 andSegmentWithClipComposition:&v16];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void __112__PXStoryTransitionProducer_isSupportedTransitionWithKind_fromSegmentIdentifier_toSegmentIdentifier_inTimeline___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 1;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 timeRangeForSegmentWithIdentifier:a2];
  }

  PXAxisTransposed();
}

void __112__PXStoryTransitionProducer_isSupportedTransitionWithKind_fromSegmentIdentifier_toSegmentIdentifier_inTimeline___block_invoke(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  *&v3.a = *a2;
  *&v3.c = v2;
  *&v3.tx = a2[2];
  PXStoryRectOuterBounds();
}

uint64_t __112__PXStoryTransitionProducer_isSupportedTransitionWithKind_fromSegmentIdentifier_toSegmentIdentifier_inTimeline___block_invoke_3(uint64_t result, uint64_t a2, int a3, int a4, char *__src, _BYTE *a6)
{
  if (a2 >= 1)
  {
    v17 = v6;
    v18 = v7;
    v11 = result;
    v12 = 0;
    while (1)
    {
      if (v12 == *(v11 + 48))
      {
        memcpy(__dst, __src, sizeof(__dst));
        v13 = *(*(v11 + 40) + 8);
        if (*(v13 + 24) == 1)
        {
          v14 = (*(*(v11 + 32) + 16))(*(v11 + 56));
          v13 = *(*(v11 + 40) + 8);
        }

        else
        {
          v14 = 0;
        }

        *(v13 + 24) = v14;
        v15 = *(*(v11 + 40) + 8);
        if (*(v15 + 24) == 1)
        {
          result = (*(*(v11 + 32) + 16))(*(v11 + 56));
          v15 = *(*(v11 + 40) + 8);
        }

        else
        {
          result = 0;
        }

        *(v15 + 24) = result;
        if ((*(*(*(v11 + 40) + 8) + 24) & 1) == 0)
        {
          break;
        }
      }

      ++v12;
      __src += 768;
      if (a2 == v12)
      {
        return result;
      }
    }

    *a6 = 1;
  }

  return result;
}

+ (id)supportedTransitionKinds
{
  if (supportedTransitionKinds_onceToken != -1)
  {
    dispatch_once(&supportedTransitionKinds_onceToken, &__block_literal_global_66);
  }

  v3 = supportedTransitionKinds_indexSet;

  return v3;
}

void __53__PXStoryTransitionProducer_supportedTransitionKinds__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:1];
  [v2 addIndex:2];
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:8];
  [v2 addIndex:5];
  [v2 addIndex:6];
  [v2 addIndex:7];
  [v2 addIndex:9];
  v0 = [v2 copy];
  v1 = supportedTransitionKinds_indexSet;
  supportedTransitionKinds_indexSet = v0;
}

+ (BOOL)isSupportedTransitionWithKind:(char)a3 betweenSegmentWithClipComposition:(id *)a4 andSegmentWithClipComposition:(id *)a5
{
  v7 = a3;
  v8 = [a1 supportedTransitionKinds];
  v9 = [v8 containsIndex:v7];

  if (!v9)
  {
    return 0;
  }

  if (v7 == 8)
  {
    PXFloatApproximatelyEqualToFloat();
  }

  if (v7 == 2)
  {
    return a4->var0 < 2;
  }

  if ((v7 & 0xFFFFFFFE) != 6)
  {
    return 1;
  }

  if (a4->var0 != 1 || !a4->var1)
  {
    return 0;
  }

  return a5->var1 && a5->var0 == 1;
}

@end