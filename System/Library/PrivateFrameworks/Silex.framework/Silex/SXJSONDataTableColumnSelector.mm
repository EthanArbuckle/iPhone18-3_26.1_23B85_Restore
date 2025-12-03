@interface SXJSONDataTableColumnSelector
- (unint64_t)weightForSelectorKey:(id)key;
@end

@implementation SXJSONDataTableColumnSelector

- (unint64_t)weightForSelectorKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"odd"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"even"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SXJSONDataTableColumnSelector;
    v5 = [(SXJSONDataTableSelector *)&v7 weightForSelectorKey:keyCopy];
  }

  return v5;
}

@end