@interface SUTwoLineTrackCellConfiguration
+ (id)copyDefaultContext;
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (id)fontForLabelAtIndex:(unint64_t)index;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUTwoLineTrackCellConfiguration

+ (id)copyDefaultContext
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SUTwoLineTrackCellConfiguration;
  v2 = objc_msgSendSuper2(&v6, sel_copyDefaultContext);
  v3 = SUTableCellCopyImageProviderForSize(55.0, 55.0);
  [v2 setImageProvider:v3];

  v4 = -[SUImageDataProvider newImageFromImage:](v3, "newImageFromImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"PlaceholderNormal.png" inBundle:{objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class())}]);
  [v2 setPlaceholderImage:v4];

  return v2;
}

- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  if ((modifiers & 2) != 0)
  {
LABEL_8:
    v9 = MEMORY[0x1E69DC888];

    return [v9 grayColor];
  }

  if ((modifiers & 1) == 0)
  {
    if (index != 1)
    {
      if (index == 2)
      {
        v7 = MEMORY[0x1E69DC888];

        return [v7 blackColor];
      }

      else if ([objc_msgSend(self->super.super.super.super.super._representedObject "contentRating")])
      {

        return SUTableCellGetExplicitColor();
      }

      else
      {

        return SUTableCellGetCleanColor();
      }
    }

    goto LABEL_8;
  }

  if ([objc_msgSend(objc_msgSend(self->super.super.super.super.super._representedObject "defaultStoreOffer")])
  {
    if (index == 2)
    {

      return SUTableCellGetHighlightedTextColor();
    }

    else
    {

      return [(SUTwoLineTrackCellConfiguration *)self colorForLabelAtIndex:index withModifiers:modifiers & 0xFFFFFFFFFFFFFFFCLL];
    }
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];

    return [v10 whiteColor];
  }
}

- (id)fontForLabelAtIndex:(unint64_t)index
{
  if (index == 2)
  {
    v7 = MEMORY[0x1E69DB878];

    return [v7 boldSystemFontOfSize:14.0];
  }

  else if (index == 1)
  {
    v5 = MEMORY[0x1E69DB878];

    return [v5 systemFontOfSize:13.0];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = SUTwoLineTrackCellConfiguration;
    return [(SUMediaItemCellConfiguration *)&v8 fontForLabelAtIndex:?];
  }
}

- (void)reloadLayoutInformation
{
  v18.receiver = self;
  v18.super_class = SUTwoLineTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v18 reloadLayoutInformation];
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
      v11 = v5 + -3.0 + 10.0;
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
    v19.size.width = v14;
    v19.size.height = v15;
    v16 = self->super.super.super.super._imageFrames;
    v16[1].size.width = v14;
    v16[1].size.height = v15;
    v19.origin.x = v10 - v14;
    v19.origin.y = floor((p_layoutSize->height - v15) * 0.5);
    v16[1].origin.x = v19.origin.x;
    v16[1].origin.y = v19.origin.y;
    v13 = CGRectGetMinX(v19) + -5.0;
  }

  stringFrames = self->super.super.super.super._stringFrames;
  stringFrames[2].origin.x = v11;
  stringFrames[2].origin.y = 10.0;
  stringFrames[2].size.width = v13 - v11;
  stringFrames[2].size.height = 18.0;
  stringFrames[1].origin.x = v11 + 1.0;
  stringFrames[1].origin.y = 27.0;
  stringFrames[1].size.width = v13 - v11 + -1.0;
  stringFrames[1].size.height = 16.0;
  if (*self->super.super.super.super._strings)
  {
    v20.origin.x = v13 + stringFrames->origin.x - v10;
    v20.origin.y = stringFrames->origin.y + 30.0;
    stringFrames->origin.x = v20.origin.x;
    stringFrames->origin.y = v20.origin.y;
    v20.size.width = stringFrames->size.width;
    v20.size.height = stringFrames->size.height;
    self->super.super.super.super._stringFrames[1].size.width = CGRectGetMinX(v20) + -6.0 - self->super.super.super.super._stringFrames[1].origin.x;
  }
}

- (void)reloadImages
{
  v3.receiver = self;
  v3.super_class = SUTwoLineTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v3 reloadImages];
  if ([objc_msgSend(objc_msgSend(self->super.super.super.super.super._representedObject "defaultStoreOffer")])
  {

    *(self->super.super.super.super._selectedImages + 1) = 0;
  }
}

- (void)reloadStrings
{
  v7.receiver = self;
  v7.super_class = SUTwoLineTrackCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v7 reloadStrings];
  title = [self->super.super.super.super.super._representedObject title];

  v4 = [title length];
  if (v4)
  {
    v4 = title;
  }

  *(self->super.super.super.super._strings + 2) = v4;
  artistName = [self->super.super.super.super.super._representedObject artistName];

  v6 = [artistName length];
  if (v6)
  {
    v6 = artistName;
  }

  *(self->super.super.super.super._strings + 1) = v6;
}

@end