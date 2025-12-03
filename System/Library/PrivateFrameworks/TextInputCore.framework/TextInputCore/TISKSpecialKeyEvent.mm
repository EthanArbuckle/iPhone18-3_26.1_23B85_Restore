@interface TISKSpecialKeyEvent
- (id)description;
@end

@implementation TISKSpecialKeyEvent

- (id)description
{
  input = [(TISKInputEvent *)self input];
  string = [input string];
  if ([string isEqualToString:@"\n"])
  {
    string2 = @"NL";
  }

  else
  {
    input2 = [(TISKInputEvent *)self input];
    string2 = [input2 string];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"spl-%@", string2];

  return v7;
}

@end