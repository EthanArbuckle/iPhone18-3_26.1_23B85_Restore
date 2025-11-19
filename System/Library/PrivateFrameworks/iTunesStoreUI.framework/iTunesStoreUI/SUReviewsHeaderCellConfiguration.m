@interface SUReviewsHeaderCellConfiguration
- (BOOL)getShadowColor:(id *)a3 offset:(CGSize *)a4 forLabelAtIndex:(unint64_t)a5 withModifiers:(unint64_t)a6;
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (id)fontForLabelAtIndex:(unint64_t)a3;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUReviewsHeaderCellConfiguration

- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if (a3)
  {
    return [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    return [MEMORY[0x1E69DC888] colorWithRed:0 green:a4 blue:0.392156863 alpha:{0.396078431, 0.4, 1.0}];
  }
}

- (id)fontForLabelAtIndex:(unint64_t)a3
{
  if (a3 == 1)
  {
    return [MEMORY[0x1E69DB878] boldSystemFontOfSize:14.0];
  }

  if (a3)
  {
    return 0;
  }

  return [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
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
    imageFrames->origin = xmmword_1C2339FF0;
    [*images size];
    imageFrames->size.width = v6;
    imageFrames->size.height = v7;
  }

  stringFrames = self->super.super.super._stringFrames;
  stringFrames->origin = xmmword_1C233A000;
  stringFrames->size.width = width + -8.0 + -80.0;
  *&stringFrames->size.height = xmmword_1C233A010;
  stringFrames[1].origin.y = 6.0;
  stringFrames[1].size.width = width + -8.0 + -8.0;
  stringFrames[1].size.height = 17.0;
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
  v5 = [self->super.super.super.super._representedObject dateValueForProperty:@"last-review-date"];
  if (v5)
  {
    v6 = SUCopyDateStringForDate(v5, kCFDateFormatterLongStyle);
    if (v6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"LAST_REVIEW_DATE_FORMAT", &stru_1F41B3660, 0), v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 length];
  if (v8)
  {
    v8 = v7;
  }

  *self->super.super.super._strings = v8;
}

@end