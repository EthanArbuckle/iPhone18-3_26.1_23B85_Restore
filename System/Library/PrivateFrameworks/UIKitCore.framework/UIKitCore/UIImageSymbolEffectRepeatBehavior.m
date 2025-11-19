@interface UIImageSymbolEffectRepeatBehavior
@end

@implementation UIImageSymbolEffectRepeatBehavior

void __59___UIImageSymbolEffectRepeatBehavior_defaultRepeatBehavior__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _repeatBehaviorWithRepeats:0.0];
  v2 = _MergedGlobals_1_22;
  _MergedGlobals_1_22 = v1;
}

void __62___UIImageSymbolEffectRepeatBehavior_indefiniteRepeatBehavior__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _repeatBehaviorWithRepeats:INFINITY];
  v2 = qword_1ED499420;
  qword_1ED499420 = v1;
}

@end