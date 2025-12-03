@interface SUMediaItemCellConfiguration
- (CGSize)artworkSize;
- (SUMediaItemCellConfiguration)initWithStringCount:(unint64_t)count imageCount:(unint64_t)imageCount;
- (UIEdgeInsets)_ratingBorderInsets;
- (double)alphaForImageAtIndex:(unint64_t)index fromAlpha:(double *)alpha withModifiers:(unint64_t)modifiers;
- (double)alphaForLabelAtIndex:(unint64_t)index fromAlpha:(double *)alpha withModifiers:(unint64_t)modifiers;
- (id)copyImageDataProvider;
- (id)fontForLabelAtIndex:(unint64_t)index;
- (int64_t)mediaIconType;
- (void)drawWithModifiers:(unint64_t)modifiers;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation SUMediaItemCellConfiguration

- (SUMediaItemCellConfiguration)initWithStringCount:(unint64_t)count imageCount:(unint64_t)imageCount
{
  v5.receiver = self;
  v5.super_class = SUMediaItemCellConfiguration;
  return [(SUArrayCellConfiguration *)&v5 initWithStringCount:count + 1 imageCount:imageCount + 2];
}

- (CGSize)artworkSize
{
  imageProvider = [self->super.super.super.super._context imageProvider];
  if (imageProvider)
  {
    v4 = imageProvider;
    [self->super.super.super.super._context artworkWidth];
    v6 = v5;
    [v4 finalSize];
    if (v6 > 0.00000011920929)
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (id)copyImageDataProvider
{
  v5.receiver = self;
  v5.super_class = SUMediaItemCellConfiguration;
  copyImageDataProvider = [(SUArtworkCellConfiguration *)&v5 copyImageDataProvider];
  [(SUMediaItemCellConfiguration *)self artworkSize];
  [copyImageDataProvider setFinalSize:?];
  return copyImageDataProvider;
}

- (int64_t)mediaIconType
{
  itemType = [self->super.super.super.super._representedObject itemType];
  result = 1;
  if (itemType != 1005 && itemType != 1011)
  {
    if (SUItemTypeIsVideoType(itemType))
    {
      return 2;
    }

    else
    {
      itemMediaKind = [self->super.super.super.super._representedObject itemMediaKind];
      if ([itemMediaKind isEqualToString:*MEMORY[0x1E69D4D00]])
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (double)alphaForLabelAtIndex:(unint64_t)index fromAlpha:(double *)alpha withModifiers:(unint64_t)modifiers
{
  v5 = (modifiers & 4) != 0 && index == 0;
  result = 0.0;
  if (!v5)
  {
    result = 1.0;
  }

  if (alpha)
  {
    *alpha = result;
  }

  return result;
}

- (double)alphaForImageAtIndex:(unint64_t)index fromAlpha:(double *)alpha withModifiers:(unint64_t)modifiers
{
  v5 = (modifiers & 4) != 0 && index == 1;
  result = 0.0;
  if (!v5)
  {
    result = 1.0;
  }

  if (alpha)
  {
    *alpha = result;
  }

  return result;
}

- (void)drawWithModifiers:(unint64_t)modifiers
{
  if ((modifiers & 4) == 0 && *self->super.super.super._strings)
  {
    [-[SUCellConfiguration colorForLabelAtIndex:withModifiers:](self colorForLabelAtIndex:0) withModifiers:"set"];
    stringFrames = self->super.super.super._stringFrames;
    [(SUMediaItemCellConfiguration *)self _ratingBorderInsets];
    v6 = v5 + stringFrames->origin.y;
    v9 = stringFrames->size.width - (v7 + v8);
    v11 = stringFrames->size.height - (v5 + v10);
    v12 = stringFrames->origin.x + v7;
    v13 = v6;
    v14 = v9;

    UIRectFrame(*&v12);
  }
}

- (id)fontForLabelAtIndex:(unint64_t)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E69DB878] boldSystemFontOfSize:7.0];
  }
}

- (void)reloadImages
{
  [(SUMediaItemCellConfiguration *)self artworkSize];
  v5 = v3 == *MEMORY[0x1E695F060] && v4 == *(MEMORY[0x1E695F060] + 8);
  if (v5 || (v6 = [objc_msgSend(self->super.super.super.super._representedObject "itemImageCollection")]) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(SUArtworkCellConfiguration *)self artworkImageForItemImage:v6];
  }

  p_images = &self->super.super.super._images;

  *self->super.super.super._images = v7;
  mediaIconType = [(SUMediaItemCellConfiguration *)self mediaIconType];
  if (mediaIconType && (v10 = mediaIconType, ([self->super.super.super.super._context hiddenMediaIconTypes] & mediaIconType) == 0))
  {
    (*p_images)[1] = SUTableCellGetMediaIcon(v10, 0);
    v11 = SUTableCellGetMediaIcon(v10, 1);
    p_images = &self->super.super.super._selectedImages;
  }

  else
  {
    v11 = 0;
    *(self->super.super.super._selectedImages + 1) = 0;
  }

  (*p_images)[1] = v11;
}

- (void)reloadLayoutInformation
{
  v2 = *self->super.super.super._strings;
  if (v2)
  {
    [self->super.super.super.super._context sizeForString:v2 font:-[SUMediaItemCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 0), 1.79769313e308, 10.0}];
    v5 = v4;
    v7 = v6;
    v8 = self->super.super.super.super._layoutSize.width + -5.0;
    [(SUMediaItemCellConfiguration *)self _ratingBorderInsets];
    stringFrames = self->super.super.super._stringFrames;
    stringFrames->origin.x = v8 - v5 + v10;
    stringFrames->origin.y = -v11;
    stringFrames->size.width = v5;
    stringFrames->size.height = v7;
  }
}

- (void)reloadStrings
{
  if ([(SUMediaItemCellConfiguration *)self showContentRating])
  {
    v3 = [objc_msgSend(self->super.super.super.super._representedObject "contentRating")];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 length];
  if (v4)
  {
    v4 = v3;
  }

  *self->super.super.super._strings = v4;
}

- (UIEdgeInsets)_ratingBorderInsets
{
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v3 = v2 == 2.0;
  v4 = -0.0;
  v5 = 0.0;
  if (!v3)
  {
    v4 = 0.0;
  }

  v6 = -3.0;
  if (v3)
  {
    v6 = -2.0;
  }

  else
  {
    v5 = -1.0;
  }

  v7 = -2.0;
  result.right = v7;
  result.bottom = v5;
  result.left = v6;
  result.top = v4;
  return result;
}

@end