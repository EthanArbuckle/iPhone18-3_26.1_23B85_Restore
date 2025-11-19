@interface SXJSONDataTableRowSelector
- (unint64_t)weightForSelectorKey:(id)a3;
@end

@implementation SXJSONDataTableRowSelector

- (unint64_t)weightForSelectorKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"odd"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"even"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SXJSONDataTableRowSelector;
    v5 = [(SXJSONDataTableSelector *)&v7 weightForSelectorKey:v4];
  }

  return v5;
}

@end