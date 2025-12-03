@interface SUButtonCellConfiguration
+ (double)rowHeightForContext:(id)context representedObject:(id)object;
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (id)fontForLabelAtIndex:(unint64_t)index;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUButtonCellConfiguration

+ (double)rowHeightForContext:(id)context representedObject:(id)object
{
  itemType = [object itemType];
  result = 55.0;
  if (itemType == 1)
  {
    return 48.0;
  }

  return result;
}

- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if (modifiers)
  {
    return [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    return [MEMORY[0x1E69DC888] blackColor];
  }
}

- (id)fontForLabelAtIndex:(unint64_t)index
{
  itemType = [self->super.super.super.super._representedObject itemType];
  v4 = 17.0;
  if (itemType == 1)
  {
    v4 = 14.0;
  }

  v5 = MEMORY[0x1E69DB878];

  return [v5 boldSystemFontOfSize:v4];
}

- (void)reloadLayoutInformation
{
  p_layoutSize = &self->super.super.super.super._layoutSize;
  [self->super.super.super.super._context sizeForString:*self->super.super.super._strings font:-[SUButtonCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 0), self->super.super.super.super._layoutSize.width, self->super.super.super.super._layoutSize.height}];
  stringFrames = self->super.super.super._stringFrames;
  v6.f64[0] = v5;
  v6.f64[1] = v7;
  v8 = vsubq_f64(*p_layoutSize, v6);
  __asm { FMOV            V3.2D, #0.5 }

  stringFrames->origin = vrndmq_f64(vmulq_f64(v8, _Q3));
  stringFrames->size.width = v5;
  stringFrames->size.height = v7;
}

- (void)reloadStrings
{
  title = [self->super.super.super.super._representedObject title];

  v4 = [title length];
  if (v4)
  {
    v4 = title;
  }

  *self->super.super.super._strings = v4;
}

@end