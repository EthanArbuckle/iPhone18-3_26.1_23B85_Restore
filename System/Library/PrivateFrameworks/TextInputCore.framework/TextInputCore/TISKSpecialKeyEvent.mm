@interface TISKSpecialKeyEvent
- (id)description;
@end

@implementation TISKSpecialKeyEvent

- (id)description
{
  v3 = [(TISKInputEvent *)self input];
  v4 = [v3 string];
  if ([v4 isEqualToString:@"\n"])
  {
    v5 = @"NL";
  }

  else
  {
    v6 = [(TISKInputEvent *)self input];
    v5 = [v6 string];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"spl-%@", v5];

  return v7;
}

@end