@interface TISKPopupVariantEvent
- (id)description;
@end

@implementation TISKPopupVariantEvent

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  input = [(TISKInputEvent *)self input];
  string = [input string];
  v5 = [v2 stringWithFormat:@"pu-%@", string];

  return v5;
}

@end