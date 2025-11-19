@interface RTTUIAbbreviationViewContainer
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation RTTUIAbbreviationViewContainer

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v4 = [MEMORY[0x277D75678] activeInstance];
  [v4 frame];
  v6 = v5;

  if (v6 == 0.0)
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    v6 = v8;
  }

  v9 = v6;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

@end