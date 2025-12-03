@interface SXJSONDataTableCellSelector
- (unint64_t)weightForSelectorKey:(id)key;
@end

@implementation SXJSONDataTableCellSelector

- (unint64_t)weightForSelectorKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"evenRows"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"oddRows") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"evenColumns") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"oddColumns"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SXJSONDataTableCellSelector;
    v5 = [(SXJSONDataTableSelector *)&v7 weightForSelectorKey:keyCopy];
  }

  return v5;
}

@end