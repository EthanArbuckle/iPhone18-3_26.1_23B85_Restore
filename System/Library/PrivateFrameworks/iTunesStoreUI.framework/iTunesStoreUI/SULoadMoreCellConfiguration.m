@interface SULoadMoreCellConfiguration
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SULoadMoreCellConfiguration

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
  p_layoutSize = &self->super.super.super.super._layoutSize;
  v4 = self->super.super.super.super._layoutSize.width + -10.0 + -10.0;
  [self->super.super.super.super._context sizeForString:*self->super.super.super._strings font:-[SULoadMoreCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 0), v4, 20.0}];
  stringFrames = self->super.super.super._stringFrames;
  v8 = floor((p_layoutSize->height - v7) * 0.5);
  stringFrames->origin.x = floor((v4 - v5) * 0.5) + 10.0;
  stringFrames->origin.y = v8;
  stringFrames->size.width = v5;
  stringFrames->size.height = v7;
}

- (void)reloadStrings
{
  v3 = [self->super.super.super.super._representedObject title];

  v4 = [v3 length];
  if (v4)
  {
    v4 = v3;
  }

  *self->super.super.super._strings = v4;
}

@end