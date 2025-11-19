@interface SBEmptyButtonView
- (id)initForCharacter:(int64_t)a3 style:(int64_t)a4;
@end

@implementation SBEmptyButtonView

- (id)initForCharacter:(int64_t)a3 style:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = SBEmptyButtonView;
  result = [(SBEmptyButtonView *)&v6 initWithFrame:a3, a4, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    *(result + 51) = a3;
  }

  return result;
}

@end