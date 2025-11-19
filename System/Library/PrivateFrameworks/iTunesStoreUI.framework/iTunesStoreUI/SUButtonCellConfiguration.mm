@interface SUButtonCellConfiguration
+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4;
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (id)fontForLabelAtIndex:(unint64_t)a3;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUButtonCellConfiguration

+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4
{
  v4 = [a4 itemType];
  result = 55.0;
  if (v4 == 1)
  {
    return 48.0;
  }

  return result;
}

- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if (a4)
  {
    return [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    return [MEMORY[0x1E69DC888] blackColor];
  }
}

- (id)fontForLabelAtIndex:(unint64_t)a3
{
  v3 = [self->super.super.super.super._representedObject itemType];
  v4 = 17.0;
  if (v3 == 1)
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
  v3 = [self->super.super.super.super._representedObject title];

  v4 = [v3 length];
  if (v4)
  {
    v4 = v3;
  }

  *self->super.super.super._strings = v4;
}

@end