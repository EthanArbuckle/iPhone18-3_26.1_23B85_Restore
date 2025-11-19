@interface WTReplaceRemainderTextEffect
@end

@implementation WTReplaceRemainderTextEffect

void __50___WTReplaceRemainderTextEffect_updateEffectWith___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) effectView];
  v2 = [*(a1 + 32) identifier];
  v3 = [v4 removeEffect:v2 animated:{objc_msgSend(*(a1 + 32), "animateRemovalWhenDone")}];
}

@end