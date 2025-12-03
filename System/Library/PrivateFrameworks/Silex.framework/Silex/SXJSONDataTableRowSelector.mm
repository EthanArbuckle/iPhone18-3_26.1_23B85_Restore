@interface SXJSONDataTableRowSelector
- (unint64_t)weightForSelectorKey:(id)key;
@end

@implementation SXJSONDataTableRowSelector

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
    v7.super_class = SXJSONDataTableRowSelector;
    v5 = [(SXJSONDataTableSelector *)&v7 weightForSelectorKey:keyCopy];
  }

  return v5;
}

@end