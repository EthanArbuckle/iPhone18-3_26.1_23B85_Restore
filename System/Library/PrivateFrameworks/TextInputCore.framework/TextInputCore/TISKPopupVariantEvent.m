@interface TISKPopupVariantEvent
- (id)description;
@end

@implementation TISKPopupVariantEvent

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TISKInputEvent *)self input];
  v4 = [v3 string];
  v5 = [v2 stringWithFormat:@"pu-%@", v4];

  return v5;
}

@end