@interface SUReviewCellConfiguration
+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4;
- (BOOL)getShadowColor:(id *)a3 offset:(CGSize *)a4 forLabelAtIndex:(unint64_t)a5 withModifiers:(unint64_t)a6;
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (id)fontForLabelAtIndex:(unint64_t)a3;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUReviewCellConfiguration

+ (double)rowHeightForContext:(id)a3 representedObject:(id)a4
{
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v7 = v6 + -8.0 + -8.0;
  v8 = [a4 humanReadableDescription];
  [a3 sizeForString:v8 font:objc_msgSend(MEMORY[0x1E69DB878] constrainedToSize:{"systemFontOfSize:", 13.0), v7, 1.79769313e308}];
  return v9 + 43.0 + 7.0;
}

- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if (a3 == 2)
  {
    return [MEMORY[0x1E69DC888] colorWithRed:2 green:a4 blue:0.392156863 alpha:{0.396078431, 0.4, 1.0}];
  }

  else
  {
    return [MEMORY[0x1E69DC888] blackColor];
  }
}

- (id)fontForLabelAtIndex:(unint64_t)a3
{
  switch(a3)
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

- (BOOL)getShadowColor:(id *)a3 offset:(CGSize *)a4 forLabelAtIndex:(unint64_t)a5 withModifiers:(unint64_t)a6
{
  if (a5 == 1)
  {
    *a3 = [MEMORY[0x1E69DC888] colorWithWhite:a3 alpha:{a4, 1, a6, 0.760784314, 1.0}];
    *a4 = xmmword_1C2339F90;
  }

  return a5 == 1;
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
  v3 = [self->super.super.super.super._representedObject title];

  v4 = [v3 length];
  if (v4)
  {
    v4 = v3;
  }

  *(self->super.super.super._strings + 1) = v4;
  v5 = [self->super.super.super.super._representedObject humanReadableDescription];

  v6 = [v5 length];
  if (v6)
  {
    v6 = v5;
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