@interface SUCompletionCellConfiguration
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUCompletionCellConfiguration

- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if (a4)
  {
    return [MEMORY[0x1E69DC888] whiteColor];
  }

  if ((a4 & 2) != 0)
  {
    return [MEMORY[0x1E69DC888] grayColor];
  }

  return [MEMORY[0x1E69DC888] blackColor];
}

- (void)reloadLayoutInformation
{
  stringFrames = self->super._stringFrames;
  v3 = self->super.super._layoutSize.width + -10.0 + -10.0;
  stringFrames->origin = xmmword_1C2339E40;
  stringFrames->size.width = v3;
  stringFrames->size.height = 20.0;
}

- (void)reloadStrings
{
  v3 = [self->super.super._representedObject title];

  v4 = [v3 length];
  if (v4)
  {
    v4 = v3;
  }

  *self->super._strings = v4;
}

@end