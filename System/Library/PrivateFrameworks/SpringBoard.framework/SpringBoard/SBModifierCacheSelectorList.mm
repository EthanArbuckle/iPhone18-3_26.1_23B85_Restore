@interface SBModifierCacheSelectorList
- (SBModifierCacheSelectorList)initWithSelectors:(SEL *)selectors count:(int64_t)count;
@end

@implementation SBModifierCacheSelectorList

- (SBModifierCacheSelectorList)initWithSelectors:(SEL *)selectors count:(int64_t)count
{
  v7.receiver = self;
  v7.super_class = SBModifierCacheSelectorList;
  result = [(SBModifierCacheSelectorList *)&v7 init];
  result->selCount = count;
  result->sels = selectors;
  return result;
}

@end