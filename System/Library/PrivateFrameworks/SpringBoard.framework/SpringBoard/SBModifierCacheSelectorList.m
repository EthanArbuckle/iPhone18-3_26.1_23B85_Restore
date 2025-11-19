@interface SBModifierCacheSelectorList
- (SBModifierCacheSelectorList)initWithSelectors:(SEL *)a3 count:(int64_t)a4;
@end

@implementation SBModifierCacheSelectorList

- (SBModifierCacheSelectorList)initWithSelectors:(SEL *)a3 count:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SBModifierCacheSelectorList;
  result = [(SBModifierCacheSelectorList *)&v7 init];
  result->selCount = a4;
  result->sels = a3;
  return result;
}

@end