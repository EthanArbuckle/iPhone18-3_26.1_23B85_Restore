@interface SBEmptyButtonView
- (id)initForCharacter:(int64_t)character style:(int64_t)style;
@end

@implementation SBEmptyButtonView

- (id)initForCharacter:(int64_t)character style:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = SBEmptyButtonView;
  result = [(SBEmptyButtonView *)&v6 initWithFrame:character, style, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    *(result + 51) = character;
  }

  return result;
}

@end