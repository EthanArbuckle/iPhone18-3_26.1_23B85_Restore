@interface SUTallLinkCellConfiguration
+ (id)copyDefaultContext;
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (id)copyImageDataProvider;
- (id)fontForLabelAtIndex:(unint64_t)a3;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUTallLinkCellConfiguration

+ (id)copyDefaultContext
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___SUTallLinkCellConfiguration;
  v2 = objc_msgSendSuper2(&v6, sel_copyDefaultContext);
  v3 = SUTableCellCopyImageProviderForSize(88.0, 88.0);
  [v2 setImageProvider:v3];

  v4 = -[SUImageDataProvider newImageFromImage:](v3, "newImageFromImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"PlaceholderBig.png" inBundle:{objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class())}]);
  [v2 setPlaceholderImage:v4];

  return v2;
}

- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if (a4)
  {
    return [MEMORY[0x1E69DC888] whiteColor];
  }

  if ((a4 & 2) != 0)
  {
    v4 = MEMORY[0x1E69DC888];
  }

  else
  {
    v4 = MEMORY[0x1E69DC888];
    if (a3 == 4)
    {
      return [MEMORY[0x1E69DC888] blackColor];
    }
  }

  return [v4 grayColor];
}

- (id)copyImageDataProvider
{
  v5.receiver = self;
  v5.super_class = SUTallLinkCellConfiguration;
  v3 = [(SUMediaItemCellConfiguration *)&v5 copyImageDataProvider];
  if (SUItemTypeIsVideoType([self->super.super.super.super.super._representedObject itemType]))
  {
    [v3 setFillColor:{objc_msgSend(MEMORY[0x1E69DC888], "blackColor")}];
  }

  return v3;
}

- (id)fontForLabelAtIndex:(unint64_t)a3
{
  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v5 = MEMORY[0x1E69DB878];
      v6 = 15.0;

      return [v5 boldSystemFontOfSize:v6];
    }

    v5 = MEMORY[0x1E69DB878];
LABEL_11:
    v6 = 13.0;

    return [v5 boldSystemFontOfSize:v6];
  }

  v8 = [self->super.super.super.super.super._representedObject itemType];
  v5 = MEMORY[0x1E69DB878];
  if (v8 == 1009)
  {
    goto LABEL_11;
  }

  return [v5 systemFontOfSize:13.0];
}

- (void)reloadImages
{
  v6.receiver = self;
  v6.super_class = SUTallLinkCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v6 reloadImages];
  if (!*self->super.super.super.super._images)
  {
    *self->super.super.super.super._images = [self->super.super.super.super.super._context placeholderImage];
  }

  v3 = [self->super.super.super.super.super._representedObject reviewStatistics];
  if ([v3 numberOfUserRatings] < 1)
  {
    v5 = 0;
  }

  else
  {
    context = self->super.super.super.super.super._context;
    [v3 averageUserRating];
    v5 = [context ratingImageForRating:1 style:?];
  }

  *(self->super.super.super.super._images + 2) = v5;
}

- (void)reloadLayoutInformation
{
  v34.receiver = self;
  v34.super_class = SUTallLinkCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v34 reloadLayoutInformation];
  [(SUMediaItemCellConfiguration *)self artworkSize];
  imageFrames = self->super.super.super.super._imageFrames;
  imageFrames->origin.x = 0.0;
  imageFrames->origin.y = 0.0;
  imageFrames->size.width = v4;
  imageFrames->size.height = v5;
  images = self->super.super.super.super._images;
  v7 = v4 + -4.0 + 10.0;
  v8 = images[1];
  if (*images)
  {
    v9 = v7;
  }

  else
  {
    v9 = 10.0;
  }

  if (v8)
  {
    [v8 size];
    v35.size.width = v10;
    v35.size.height = v11;
    v12 = self->super.super.super.super._imageFrames;
    v12[1].size.width = v10;
    v12[1].size.height = v11;
    v35.origin.x = self->super.super.super.super.super._layoutSize.width - v10 + -5.0;
    v12[1].origin.x = v35.origin.x;
    v12[1].origin.y = 38.0;
    v35.origin.y = 38.0;
    MinX = CGRectGetMinX(v35);
  }

  else
  {
    MinX = self->super.super.super.super.super._layoutSize.width;
  }

  v14 = MinX + -5.0;
  v15 = MinX + -5.0 - v9;
  strings = self->super.super.super.super._strings;
  v17 = strings[2];
  if (v17)
  {
    [self->super.super.super.super.super._context sizeForString:v17 font:-[SUTallLinkCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 2), 1.79769313e308, 1.79769313e308}];
    v36.size.width = v18;
    v36.size.height = v19;
    v36.origin.x = v14 - v18;
    stringFrames = self->super.super.super.super._stringFrames;
    stringFrames[2].origin.x = v36.origin.x;
    stringFrames[2].size.width = v36.size.width;
    stringFrames[2].size.height = v19;
    v36.origin.y = stringFrames[2].origin.y;
    v21 = CGRectGetMinX(v36) + -10.0 - v9;
    strings = self->super.super.super.super._strings;
  }

  else
  {
    v21 = MinX + -5.0 - v9;
  }

  [self->super.super.super.super.super._context sizeForString:strings[4] font:-[SUTallLinkCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 4), v21, 34.0}];
  v23 = 24.0;
  if (v22 < 33.0)
  {
    v23 = 34.0;
  }

  v24 = 6.0;
  if (v22 < 33.0)
  {
    v24 = 15.0;
  }

  v25 = 63.0;
  if (v22 < 33.0)
  {
    v25 = 56.0;
  }

  v26 = 64.0;
  if (v22 < 33.0)
  {
    v26 = 57.0;
  }

  v27 = self->super.super.super.super._stringFrames;
  v27[4].origin.x = v9;
  v27[4].origin.y = v23;
  v27[4].size.width = v21;
  v27[4].size.height = v22;
  v27[1].origin.x = v9;
  v27[1].origin.y = v24;
  v27[1].size.width = v15;
  v27[1].size.height = 16.0;
  v27[3].origin.x = v9;
  v27[3].origin.y = v25;
  v27[3].size.width = v15;
  v27[3].size.height = 16.0;
  v28 = self->super.super.super.super._imageFrames;
  v28[2].origin.x = v9;
  v28[2].origin.y = v26;
  v27[2].origin.y = 35.0;
  v29 = *(self->super.super.super.super._images + 2);
  if (v29)
  {
    [v29 size];
    v28[2].size.width = v30;
    v28[2].size.height = v31;
    v32 = CGRectGetMaxX(self->super.super.super.super._imageFrames[2]) + 5.0;
    v33 = self->super.super.super.super._stringFrames;
    v33[3].origin.x = v32;
    v33[3].size.width = v14 - v32;
  }
}

- (void)reloadStrings
{
  v16.receiver = self;
  v16.super_class = SUTallLinkCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v16 reloadStrings];
  v3 = [self->super.super.super.super.super._representedObject title];

  v4 = [v3 length];
  if (v4)
  {
    v4 = v3;
  }

  *(self->super.super.super.super._strings + 4) = v4;
  v5 = [self->super.super.super.super.super._representedObject containerName];
  if (![v5 length])
  {
    v5 = [self->super.super.super.super.super._representedObject artistName];
  }

  v6 = [v5 length];
  if (v6)
  {
    v6 = v5;
  }

  *(self->super.super.super.super._strings + 1) = v6;
  if ([self->super.super.super.super.super._representedObject itemType] == 3000)
  {
    v7 = [objc_msgSend(self->super.super.super.super.super._representedObject "defaultStoreOffer")];
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

  *(self->super.super.super.super._strings + 2) = v8;
  v9 = [objc_msgSend(self->super.super.super.super.super._representedObject "reviewStatistics")];
  v10 = [self->super.super.super.super.super._representedObject secondaryTitle];

  v11 = [v10 length];
  if (v9 == 1)
  {
    if (!v11)
    {
      v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = @"ONE_REVIEW";
      goto LABEL_18;
    }
  }

  else if (v9)
  {
    if (!v11)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = [v15 initWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"REVIEW_COUNT", &stru_1F41B3660, 0), v9];
      goto LABEL_21;
    }
  }

  else if (!v11)
  {
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = @"NO_REVIEWS";
LABEL_18:
    v10 = [v12 localizedStringForKey:v13 value:&stru_1F41B3660 table:0];
  }

  v14 = v10;
LABEL_21:
  *(self->super.super.super.super._strings + 3) = v14;
}

@end