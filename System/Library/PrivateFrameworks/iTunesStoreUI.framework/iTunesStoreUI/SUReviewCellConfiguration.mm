@interface SUReviewCellConfiguration
+ (double)rowHeightForContext:(id)context representedObject:(id)object;
- (BOOL)getShadowColor:(id *)color offset:(CGSize *)offset forLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (id)fontForLabelAtIndex:(unint64_t)index;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUReviewCellConfiguration

+ (double)rowHeightForContext:(id)context representedObject:(id)object
{
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v7 = v6 + -8.0 + -8.0;
  humanReadableDescription = [object humanReadableDescription];
  [context sizeForString:humanReadableDescription font:objc_msgSend(MEMORY[0x1E69DB878] constrainedToSize:{"systemFontOfSize:", 13.0), v7, 1.79769313e308}];
  return v9 + 43.0 + 7.0;
}

- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if (index == 2)
  {
    return [MEMORY[0x1E69DC888] colorWithRed:2 green:modifiers blue:0.392156863 alpha:{0.396078431, 0.4, 1.0}];
  }

  else
  {
    return [MEMORY[0x1E69DC888] blackColor];
  }
}

- (id)fontForLabelAtIndex:(unint64_t)index
{
  switch(index)
  {
    case 2uLL:
      v3 = MEMORY[0x1E69DB878];
      v4 = 14.0;
      return [v3 systemFontOfSize:v4];
    case 1uLL:
      return [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0];
    case 0uLL:
      v3 = MEMORY[0x1E69DB878];
      v4 = 13.0;
      return [v3 systemFontOfSize:v4];
  }

  return 0;
}

- (BOOL)getShadowColor:(id *)color offset:(CGSize *)offset forLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if (index == 1)
  {
    *color = [MEMORY[0x1E69DC888] colorWithWhite:color alpha:{offset, 1, modifiers, 0.760784314, 1.0}];
    *offset = xmmword_1C2339F90;
  }

  return index == 1;
}

- (void)reloadImages
{
  context = self->super.super.super.super._context;
  [objc_msgSend(self->super.super.super.super._representedObject "reviewStatistics")];
  *self->super.super.super._images = [context ratingImageForRating:0 style:?];
}

- (void)reloadLayoutInformation
{
  width = self->super.super.super.super._layoutSize.width;
  images = self->super.super.super._images;
  if (*images)
  {
    imageFrames = self->super.super.super._imageFrames;
    imageFrames->origin = xmmword_1C2339FA0;
    [*images size];
    imageFrames->size.width = v6;
    imageFrames->size.height = v7;
  }

  [self->super.super.super.super._context sizeForString:*self->super.super.super._strings font:-[SUReviewCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 0), width + -8.0 + -8.0, 1.79769313e308}];
  stringFrames = self->super.super.super._stringFrames;
  stringFrames->origin = xmmword_1C2339FB0;
  stringFrames->size.width = width + -8.0 + -8.0;
  stringFrames->size.height = v9;
  stringFrames[1].origin = xmmword_1C2339FC0;
  stringFrames[1].size.width = width + -8.0 + -8.0;
  *&stringFrames[1].size.height = xmmword_1C2339FD0;
  stringFrames[2].origin.y = 22.0;
  stringFrames[2].size.width = width + -8.0 + -80.0;
  stringFrames[2].size.height = 17.0;
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
  humanReadableDescription = [self->super.super.super.super._representedObject humanReadableDescription];

  v6 = [humanReadableDescription length];
  if (v6)
  {
    v6 = humanReadableDescription;
  }

  *self->super.super.super._strings = v6;
  v7 = [self->super.super.super.super._representedObject stringValueForProperty:@"user-name"];

  v8 = [v7 length];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v9 initWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"USER_NAME_FORMAT", &stru_1F41B3660, 0), v7];
  }

  *(self->super.super.super._strings + 2) = v8;
}

@end