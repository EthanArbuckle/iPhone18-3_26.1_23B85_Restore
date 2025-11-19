@interface NSMutableDictionary(SwipeSelectionConvenience)
- (uint64_t)pu_containsIndexPath:()SwipeSelectionConvenience;
@end

@implementation NSMutableDictionary(SwipeSelectionConvenience)

- (uint64_t)pu_containsIndexPath:()SwipeSelectionConvenience
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "section")}];
  v6 = [a1 objectForKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 containsIndex:{objc_msgSend(v4, "item")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end