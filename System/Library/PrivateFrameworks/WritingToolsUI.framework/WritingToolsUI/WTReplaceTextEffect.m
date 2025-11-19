@interface WTReplaceTextEffect
@end

@implementation WTReplaceTextEffect

void __35___WTReplaceTextEffect_invalidate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rootLayer];
  [v2 removeFromSuperlayer];

  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = [*(a1 + 32) completion];

    if (v3)
    {
      v4 = [*(a1 + 32) completion];
      v4[2]();
    }
  }
}

void __41___WTReplaceTextEffect_updateEffectWith___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 candidateRects];
  if ([v7 count])
  {
    v6 = [*(a1 + 32) isDestination];

    if (v6)
    {
      [*(a1 + 32) setHighlightsCandidateRects:1];
      *a4 = 1;
    }
  }

  else
  {
  }
}

void __41___WTReplaceTextEffect_updateEffectWith___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) effectView];
  v2 = [*(a1 + 32) identifier];
  v3 = [v4 removeEffect:v2 animated:{objc_msgSend(*(a1 + 32), "animateRemovalWhenDone")}];
}

@end