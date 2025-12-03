@interface SULoadMoreMediaCellConfiguration
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (id)fontForLabelAtIndex:(unint64_t)index;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SULoadMoreMediaCellConfiguration

- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if (modifiers)
  {
    return [MEMORY[0x1E69DC888] whiteColor];
  }

  if ((modifiers & 2) != 0)
  {
    v4 = MEMORY[0x1E69DC888];
  }

  else
  {
    v4 = MEMORY[0x1E69DC888];
    if (index == 1)
    {
      return [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.321568627 blue:0.91372549 alpha:1.0];
    }
  }

  return [v4 grayColor];
}

- (id)fontForLabelAtIndex:(unint64_t)index
{
  if (!index)
  {
    return [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  }

  if (*self->super.super.super._strings)
  {
    v3 = 18.0;
  }

  else
  {
    v3 = 14.0;
  }

  return [MEMORY[0x1E69DB878] boldSystemFontOfSize:v3];
}

- (void)reloadLayoutInformation
{
  v3 = self->super.super.super.super._layoutSize.width + -5.0;
  previousCellHeight = self->_previousCellHeight;
  if (previousCellHeight >= 0.00000011920929)
  {
    v5 = previousCellHeight + 10.0 + -4.0;
  }

  else
  {
    v5 = 10.0;
  }

  v6 = *self->super.super.super._strings;
  if (*(self->super.super.super._strings + 1))
  {
    height = self->super.super.super.super._layoutSize.height;
    stringFrames = self->super.super.super._stringFrames;
    v9 = v3 - v5;
    stringFrames[1].origin.x = v5;
    if (!v6)
    {
      p_height = &stringFrames[1].size.height;
      stringFrames[1].origin.y = floor((height + -16.0) * 0.5);
      stringFrames[1].size.width = v9;
      goto LABEL_11;
    }

    v14.origin.y = floor((height + -35.0) * 0.5);
    stringFrames[1].origin.y = v14.origin.y;
    stringFrames[1].size.width = v9;
    stringFrames[1].size.height = 20.0;
    v14.size.height = 20.0;
    v14.origin.x = v5;
    v14.size.width = v9;
    MaxY = CGRectGetMaxY(v14);
    v11 = self->super.super.super._stringFrames;
    v11->origin.x = v5;
    v11->origin.y = MaxY + -1.0;
    v11->size.width = v9;
  }

  else
  {
    if (!v6)
    {
      return;
    }

    v11 = self->super.super.super._stringFrames;
    v12 = floor((self->super.super.super.super._layoutSize.height + -16.0) * 0.5);
    v11->origin.x = v5;
    v11->origin.y = v12;
    v11->size.width = v3 - v5;
  }

  p_height = &v11->size.height;
LABEL_11:
  *p_height = 0x4030000000000000;
}

- (void)reloadStrings
{
  title = [self->super.super.super.super._representedObject title];

  v4 = [title length];
  if (v4)
  {
    v4 = title;
  }

  *(self->super.super.super._strings + 1) = v4;
  if ([self->super.super.super.super._representedObject representedItemCount] < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SEARCH_TOTAL", &stru_1F41B3660, 0), objc_msgSend(self->super.super.super.super._representedObject, "representedItemCount")];
  }

  v6 = [v5 length];
  if (v6)
  {
    v6 = v5;
  }

  *self->super.super.super._strings = v6;
}

@end