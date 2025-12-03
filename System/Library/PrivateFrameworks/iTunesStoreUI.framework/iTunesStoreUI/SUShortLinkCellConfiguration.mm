@interface SUShortLinkCellConfiguration
+ (double)rowHeightForContext:(id)context representedObject:(id)object;
+ (id)copyDefaultContext;
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (id)copyImageDataProvider;
- (id)fontForLabelAtIndex:(unint64_t)index;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUShortLinkCellConfiguration

+ (id)copyDefaultContext
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SUShortLinkCellConfiguration;
  v2 = objc_msgSendSuper2(&v6, sel_copyDefaultContext);
  v3 = SUTableCellCopyImageProviderForSize(55.0, 55.0);
  [v2 setImageProvider:v3];

  v4 = -[SUImageDataProvider newImageFromImage:](v3, "newImageFromImage:", [MEMORY[0x1E69DCAB8] imageNamed:@"PlaceholderNormal.png" inBundle:{objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class())}]);
  [v2 setPlaceholderImage:v4];

  return v2;
}

+ (double)rowHeightForContext:(id)context representedObject:(id)object
{
  if ([object secondaryTitle] || objc_msgSend(object, "artistName"))
  {
    v6 = 1;
    if (context)
    {
      goto LABEL_4;
    }

    return 56.0;
  }

  v6 = [object containerName] != 0;
  if (!context)
  {
    return 56.0;
  }

LABEL_4:
  itemsHaveArtwork = [context itemsHaveArtwork];
  result = 45.0;
  if ((itemsHaveArtwork | v6))
  {
    return 56.0;
  }

  return result;
}

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
    if (index == 2)
    {
      return [MEMORY[0x1E69DC888] blackColor];
    }
  }

  return [v4 grayColor];
}

- (id)copyImageDataProvider
{
  v5.receiver = self;
  v5.super_class = SUShortLinkCellConfiguration;
  copyImageDataProvider = [(SUMediaItemCellConfiguration *)&v5 copyImageDataProvider];
  if (SUItemTypeIsVideoType([self->super.super.super.super.super._representedObject itemType]))
  {
    [copyImageDataProvider setFillColor:{objc_msgSend(MEMORY[0x1E69DC888], "blackColor")}];
  }

  return copyImageDataProvider;
}

- (id)fontForLabelAtIndex:(unint64_t)index
{
  if (index == 3)
  {
LABEL_4:
    v3 = MEMORY[0x1E69DB878];

    return [v3 systemFontOfSize:13.0];
  }

  if (index != 2)
  {
    if (index != 1)
    {
      return 0;
    }

    goto LABEL_4;
  }

  if ([self->super.super.super.super._strings[1] length] || objc_msgSend(self->super.super.super.super._strings[3], "length"))
  {
    v6 = MEMORY[0x1E69DB878];
    v7 = 14.0;
  }

  else
  {
    v6 = MEMORY[0x1E69DB878];
    v7 = 17.0;
  }

  return [v6 boldSystemFontOfSize:v7];
}

- (void)reloadLayoutInformation
{
  v23.receiver = self;
  v23.super_class = SUShortLinkCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v23 reloadLayoutInformation];
  [(SUMediaItemCellConfiguration *)self artworkSize];
  v4 = v3;
  v5 = *self->super.super.super.super._images;
  if (!v5)
  {
    p_layoutSize = &self->super.super.super.super.super._layoutSize;
    width = self->super.super.super.super.super._layoutSize.width;
    goto LABEL_5;
  }

  [v5 size];
  imageFrames = self->super.super.super.super._imageFrames;
  v8 = (v4 - v7) * 0.5;
  imageFrames->origin.x = floorf(v8);
  imageFrames->origin.y = 0.0;
  imageFrames->size.width = v7;
  imageFrames->size.height = 55.0;
  p_layoutSize = &self->super.super.super.super.super._layoutSize;
  width = self->super.super.super.super.super._layoutSize.width;
  if (!*self->super.super.super.super._images)
  {
LABEL_5:
    v11 = 10.0;
    if ([self->super.super.super.super.super._representedObject itemDisplayType] == 1)
    {
      goto LABEL_7;
    }
  }

  v11 = v4 + -2.0 + 10.0;
LABEL_7:
  v12 = *(self->super.super.super.super._images + 1);
  if (v12)
  {
    [v12 size];
    v24.size.width = v13;
    v24.size.height = v14;
    v15 = self->super.super.super.super._imageFrames;
    v15[1].size.width = v13;
    v15[1].size.height = v14;
    v24.origin.x = p_layoutSize->width - v13 + -5.0;
    v15[1].origin.x = v24.origin.x;
    v15[1].origin.y = 21.0;
    v24.origin.y = 21.0;
    width = CGRectGetMinX(v24);
  }

  v16 = width + -5.0;
  strings = self->super.super.super.super._strings;
  if (strings[3])
  {
    stringFrames = self->super.super.super.super._stringFrames;
    stringFrames[2].origin.x = v11;
    stringFrames[2].origin.y = 19.0;
    stringFrames[2].size.width = v16 - v11;
    stringFrames[2].size.height = 18.0;
    stringFrames[1].origin.x = v11;
    stringFrames[1].origin.y = 2.0;
    stringFrames[1].size.width = v16 - v11;
    stringFrames[1].size.height = 16.0;
    stringFrames[3].origin.x = v11;
    stringFrames[3].origin.y = 37.0;
    stringFrames[3].size.width = v16 - v11;
    stringFrames[3].size.height = 16.0;
  }

  else if (strings[1])
  {
    v19 = self->super.super.super.super._stringFrames;
    v19[2].origin.x = v11;
    v19[2].origin.y = 27.0;
    v19[2].size.width = v16 - v11;
    v19[2].size.height = 18.0;
    v19[1].origin.x = v11;
    v19[1].origin.y = 10.0;
    v19[1].size.width = v16 - v11;
    v19[1].size.height = 16.0;
  }

  else
  {
    itemsHaveArtwork = [self->super.super.super.super.super._context itemsHaveArtwork];
    v21 = self->super.super.super.super._stringFrames;
    v21[2].origin.x = v11;
    if (itemsHaveArtwork)
    {
      v22 = 0x4030000000000000;
    }

    else
    {
      v22 = 0x4028000000000000;
    }

    *&v21[2].origin.y = v22;
    v21[2].size.width = v16 - v11;
    v21[2].size.height = 20.0;
  }
}

- (void)reloadStrings
{
  v9.receiver = self;
  v9.super_class = SUShortLinkCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v9 reloadStrings];
  title = [self->super.super.super.super.super._representedObject title];

  v4 = [title length];
  if (v4)
  {
    v4 = title;
  }

  *(self->super.super.super.super._strings + 2) = v4;
  containerName = [self->super.super.super.super.super._representedObject containerName];
  if (![containerName length])
  {
    containerName = [self->super.super.super.super.super._representedObject artistName];
  }

  v6 = [containerName length];
  if (v6)
  {
    v6 = containerName;
  }

  *(self->super.super.super.super._strings + 1) = v6;
  secondaryTitle = [self->super.super.super.super.super._representedObject secondaryTitle];

  v8 = [secondaryTitle length];
  if (v8)
  {
    v8 = secondaryTitle;
  }

  *(self->super.super.super.super._strings + 3) = v8;
}

@end