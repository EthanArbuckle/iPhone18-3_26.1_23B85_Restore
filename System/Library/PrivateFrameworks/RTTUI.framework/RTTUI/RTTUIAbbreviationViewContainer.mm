@interface RTTUIAbbreviationViewContainer
- (CGSize)sizeThatFits:(CGSize)fits;
@end

@implementation RTTUIAbbreviationViewContainer

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  activeInstance = [MEMORY[0x277D75678] activeInstance];
  [activeInstance frame];
  v6 = v5;

  if (v6 == 0.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v6 = v8;
  }

  v9 = v6;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

@end