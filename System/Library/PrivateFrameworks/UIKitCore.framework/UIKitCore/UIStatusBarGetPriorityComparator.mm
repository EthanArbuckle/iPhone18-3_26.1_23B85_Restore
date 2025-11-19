@interface UIStatusBarGetPriorityComparator
@end

@implementation UIStatusBarGetPriorityComparator

void ___UIStatusBarGetPriorityComparator_block_invoke()
{
  v0 = _UIStatusBarGetPriorityComparator_priorityComparator;
  _UIStatusBarGetPriorityComparator_priorityComparator = &__block_literal_global_3_10;
}

uint64_t ___UIStatusBarGetPriorityComparator_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 priority];
  if (v6 <= [v5 priority])
  {
    v8 = [v4 priority];
    v7 = v8 < [v5 priority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end