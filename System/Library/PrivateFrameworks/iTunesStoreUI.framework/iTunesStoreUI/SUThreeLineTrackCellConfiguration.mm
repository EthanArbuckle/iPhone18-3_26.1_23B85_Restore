@interface SUThreeLineTrackCellConfiguration
+ (id)copyDefaultContext;
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (id)fontForLabelAtIndex:(unint64_t)a3;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUThreeLineTrackCellConfiguration

+ (id)copyDefaultContext
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___SUThreeLineTrackCellConfiguration;
  v2 = objc_msgSendSuper2(&v6, sel_copyDefaultContext);
  v3 = SUTableCellCopyImageProviderForSize(55.0, 55.0);
  [v2 setImageProvider:v3];

  v4 = -[SUImageDataProvider newImageFromImage:](v3, "newImageFromImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"PlaceholderNormal.png" inBundle:{objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class())}]);
  [v2 setPlaceholderImage:v4];

  return v2;
}

- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if ((a4 & 2) != 0)
  {
LABEL_13:
    v9 = MEMORY[0x1E69DC888];

    return [v9 grayColor];
  }

  if (a4)
  {
    if ([objc_msgSend(objc_msgSend(self->super.super.super.super.super._representedObject "defaultStoreOffer")])
    {
      if (a3 == 3)
      {

        return SUTableCellGetHighlightedTextColor();
      }

      else
      {

        return [(SUThreeLineTrackCellConfiguration *)self colorForLabelAtIndex:a3 withModifiers:a4 & 0xFFFFFFFFFFFFFFFCLL];
      }
    }

    else
    {
      v10 = MEMORY[0x1E69DC888];

      return [v10 whiteColor];
    }
  }

  else
  {
    if (a3 == 3)
    {
      v7 = MEMORY[0x1E69DC888];

      return [v7 blackColor];
    }

    if (a3 - 1 <= 1)
    {
      goto LABEL_13;
    }

    if ([objc_msgSend(self->super.super.super.super.super._representedObject "contentRating")])
    {

      return SUTableCellGetExplicitColor();
    }

    else
    {

      return SUTableCellGetCleanColor();
    }
  }
}

- (id)fontForLabelAtIndex:(unint64_t)a3
{
  if (a3 - 1 >= 2)
  {
    if (a3 == 3)
    {
      v7 = MEMORY[0x1E69DB878];

      return [v7 boldSystemFontOfSize:14.0];
    }

    else
    {
      v9 = v3;
      v10 = v4;
      v8.receiver = self;
      v8.super_class = SUThreeLineTrackCellConfiguration;
      return [(SUMediaItemCellConfiguration *)&v8 fontForLabelAtIndex:?];
    }
  }

  else
  {
    v5 = MEMORY[0x1E69DB878];

    return [v5 systemFontOfSize:13.0];
  }
}

- (void)reloadImages
{
  v3.receiver = self;
  v3.super_class = SUThreeLineTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v3 reloadImages];
  if ([objc_msgSend(objc_msgSend(self->super.super.super.super.super._representedObject "defaultStoreOffer")])
  {

    *(self->super.super.super.super._selectedImages + 1) = 0;
  }
}

- (void)reloadLayoutInformation
{
  v23.receiver = self;
  v23.super_class = SUThreeLineTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v23 reloadLayoutInformation];
  [(SUMediaItemCellConfiguration *)self artworkSize];
  images = self->super.super.super.super._images;
  if (*images)
  {
    v5 = v3;
    [*images size];
    imageFrames = self->super.super.super.super._imageFrames;
    v8 = (v5 - v7) * 0.5;
    imageFrames->origin.x = floorf(v8);
    imageFrames->origin.y = 0.0;
    imageFrames->size.width = v7;
    imageFrames->size.height = 55.0;
    images = self->super.super.super.super._images;
    p_layoutSize = &self->super.super.super.super.super._layoutSize;
    v10 = self->super.super.super.super.super._layoutSize.width + -5.0;
    if (*images)
    {
      v11 = v5 + -2.0 + 10.0;
      goto LABEL_6;
    }
  }

  else
  {
    p_layoutSize = &self->super.super.super.super.super._layoutSize;
    v10 = self->super.super.super.super.super._layoutSize.width + -5.0;
  }

  v11 = 10.0;
LABEL_6:
  v12 = images[1];
  v13 = v10;
  if (v12)
  {
    [v12 size];
    v24.size.width = v14;
    v24.size.height = v15;
    v16 = self->super.super.super.super._imageFrames;
    v16[1].size.width = v14;
    v16[1].size.height = v15;
    v24.origin.x = v10 - v14;
    v24.origin.y = floor((p_layoutSize->height - v15) * 0.5);
    v16[1].origin.x = v24.origin.x;
    v16[1].origin.y = v24.origin.y;
    v13 = CGRectGetMinX(v24) + -5.0;
  }

  strings = self->super.super.super.super._strings;
  v18 = strings[1];
  if (strings[2])
  {
    if (v18)
    {
      stringFrames = self->super.super.super.super._stringFrames;
      stringFrames[3].origin.x = v11;
      stringFrames[3].origin.y = 18.0;
      stringFrames[3].size.width = v13 - v11;
      stringFrames[3].size.height = 18.0;
      stringFrames[2].origin.x = v11 + 1.0;
      stringFrames[2].origin.y = 2.0;
      stringFrames[2].size.width = v13 - v11 + -1.0;
      stringFrames[2].size.height = 16.0;
      stringFrames[1].origin.x = v11;
      stringFrames[1].origin.y = 36.0;
      stringFrames[1].size.width = v13 - v11;
      p_height = &stringFrames[1].size.height;
      v21 = 37.0;
      v22 = 1;
      goto LABEL_14;
    }
  }

  else if (v18)
  {
    stringFrames = self->super.super.super.super._stringFrames;
    stringFrames[3].origin.x = v11;
    stringFrames[3].origin.y = 27.0;
    stringFrames[3].size.width = v13 - v11;
    stringFrames[3].size.height = 18.0;
    stringFrames[1].origin.x = v11;
    stringFrames[1].origin.y = 10.0;
    stringFrames[1].size.width = v13 - v11;
    p_height = &stringFrames[1].size.height;
    v21 = 30.0;
    v22 = 3;
    goto LABEL_14;
  }

  stringFrames = self->super.super.super.super._stringFrames;
  stringFrames[3].origin.x = v11;
  stringFrames[3].origin.y = 27.0;
  stringFrames[3].size.width = v13 - v11;
  stringFrames[3].size.height = 18.0;
  stringFrames[2].origin.x = v11 + 1.0;
  stringFrames[2].origin.y = 10.0;
  stringFrames[2].size.width = v13 - v11 + -1.0;
  p_height = &stringFrames[2].size.height;
  v21 = 30.0;
  v22 = 3;
LABEL_14:
  *p_height = 0x4030000000000000;
  if (*strings)
  {
    v25.origin.x = v13 + stringFrames->origin.x - v10;
    v25.origin.y = v21 + stringFrames->origin.y;
    stringFrames->origin.x = v25.origin.x;
    stringFrames->origin.y = v25.origin.y;
    v25.size.width = stringFrames->size.width;
    v25.size.height = stringFrames->size.height;
    self->super.super.super.super._stringFrames[v22].size.width = CGRectGetMinX(v25) + -6.0 - self->super.super.super.super._stringFrames[v22].origin.x;
  }
}

- (void)reloadStrings
{
  v14.receiver = self;
  v14.super_class = SUThreeLineTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v14 reloadStrings];
  v3 = [self->super.super.super.super.super._representedObject artistName];
  v4 = [self->super.super.super.super.super._representedObject title];
  if ([self->super.super.super.super.super._representedObject itemType] == 1009)
  {
    v5 = [self->super.super.super.super.super._representedObject containerName];
    if (v5)
    {
      v3 = v5;
    }

    p_strings = &self->super.super.super.super._strings;

    v7 = [v3 length];
    if (v7)
    {
      v7 = v3;
    }

    (*p_strings)[2] = v7;

    v8 = [v4 length];
    if (v8)
    {
      v8 = v4;
    }

    (*p_strings)[3] = v8;
    v9 = [self->super.super.super.super.super._representedObject secondaryTitle];
  }

  else
  {
    p_strings = &self->super.super.super.super._strings;

    v10 = [v3 length];
    if (v10)
    {
      v10 = v3;
    }

    (*p_strings)[2] = v10;

    v11 = [v4 length];
    if (v11)
    {
      v11 = v4;
    }

    (*p_strings)[3] = v11;
    v9 = [self->super.super.super.super.super._representedObject collectionName];
  }

  v12 = v9;

  v13 = [v12 length];
  if (v13)
  {
    v13 = v12;
  }

  (*p_strings)[1] = v13;
}

@end