@interface SXJSONDataTableCellSelector
- (unint64_t)weightForSelectorKey:(id)a3;
@end

@implementation SXJSONDataTableCellSelector

- (unint64_t)weightForSelectorKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"evenRows"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"oddRows") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"evenColumns") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"oddColumns"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SXJSONDataTableCellSelector;
    v5 = [(SXJSONDataTableSelector *)&v7 weightForSelectorKey:v4];
  }

  return v5;
}

@end