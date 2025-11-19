@interface NSPredicate
@end

@implementation NSPredicate

uint64_t __67__NSPredicate_TAEventProtocol__predicateForTAEventsInDateInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_287F74A50])
  {
    v4 = *(a1 + 32);
    v5 = [v3 getDate];
    v6 = [v4 containsDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __74__NSPredicate_TAEventProtocol__predicateForTAEventsClass_andEventSubtype___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 conformsToProtocol:&unk_287F74A50] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v3, "getEventSubtype") == *(a1 + 40);

  return v5;
}

@end