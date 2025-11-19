@interface NSArray
@end

@implementation NSArray

void __29__NSArray__WTColor__CGColors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:{objc_msgSend(v3, "CGColor")}];
  }
}

@end