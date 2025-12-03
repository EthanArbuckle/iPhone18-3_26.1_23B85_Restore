@interface SUCompletionCellConfiguration
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUCompletionCellConfiguration

- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if (modifiers)
  {
    return [MEMORY[0x1E69DC888] whiteColor];
  }

  if ((modifiers & 2) != 0)
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
  title = [self->super.super._representedObject title];

  v4 = [title length];
  if (v4)
  {
    v4 = title;
  }

  *self->super._strings = v4;
}

@end