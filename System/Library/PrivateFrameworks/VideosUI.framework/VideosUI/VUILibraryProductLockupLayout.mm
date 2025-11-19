@interface VUILibraryProductLockupLayout
- (CGSize)coverArtImageSize;
- (VUILibraryProductLockupLayout)initWithLayoutType:(int64_t)a3 entityType:(id)a4;
- (double)buttonModuleTopMarginForWindowWidth:(double)a3;
- (double)contentDescriptionBottomMarginForWindowWidth:(double)a3;
- (double)contentDescriptionTopMarginForWindowWidth:(double)a3;
- (double)coverArtImageRightMarginForWindowWidth:(double)a3;
- (double)subtitleTopMarginForWindowWidth:(double)a3;
- (id)contentDescriptionFontForSizeClass:(int64_t)a3;
- (id)descriptionTextLayoutForTraitCollection:(id)a3 isExpanded:(BOOL)a4;
- (id)subtitleTextLayoutForWindowWidth:(double)a3;
- (int)contentDescriptionNumberOfLinesForTraitCollection:(id)a3;
- (int64_t)downloadButtonPosition;
- (void)configLayout;
@end

@implementation VUILibraryProductLockupLayout

- (VUILibraryProductLockupLayout)initWithLayoutType:(int64_t)a3 entityType:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VUILibraryProductLockupLayout;
  v8 = [(VUILibraryProductLockupLayout *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_entityType, a4);
  }

  [(VUILibraryProductLockupLayout *)v9 configLayout];

  return v9;
}

- (void)configLayout
{
  v3 = objc_alloc_init(VUITextLayout);
  playLabelTextLayout = self->_playLabelTextLayout;
  self->_playLabelTextLayout = v3;

  [(VUITextLayout *)self->_playLabelTextLayout setTextStyle:21];
  [(VUITextLayout *)self->_playLabelTextLayout setFontWeight:0];
  v5 = self->_playLabelTextLayout;
  v6 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v5 setColor:v6];

  v7 = self->_playLabelTextLayout;

  [(VUITextLayout *)v7 setNumberOfLines:1];
}

- (CGSize)coverArtImageSize
{
  entityType = self->_entityType;
  v4 = +[VUIMediaEntityType movie];
  v5 = v4;
  if (entityType == v4)
  {

    goto LABEL_5;
  }

  v6 = self->_entityType;
  v7 = +[VUIMediaEntityType movieRental];

  if (v6 == v7)
  {
LABEL_5:
    [VUIUtilities imageSizeWithAspectRatio:0.666666667 scaleToSize:150.0, *(MEMORY[0x1E695F060] + 8)];
    goto LABEL_6;
  }

  v8 = 150.0;
  v9 = 225.0;
LABEL_6:
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)coverArtImageRightMarginForWindowWidth:(double)a3
{
  v3 = [(VUILibraryProductLockupLayout *)self layoutTypeForWindowWidth:a3];
  result = 30.0;
  if (!v3)
  {
    return 16.0;
  }

  return result;
}

- (double)subtitleTopMarginForWindowWidth:(double)a3
{
  v3 = [(VUILibraryProductLockupLayout *)self layoutTypeForWindowWidth:a3];
  result = 26.0;
  if (!v3)
  {
    return 16.0;
  }

  return result;
}

- (double)contentDescriptionTopMarginForWindowWidth:(double)a3
{
  v3 = [(VUILibraryProductLockupLayout *)self layoutTypeForWindowWidth:a3];
  result = 24.0;
  if (!v3)
  {
    return 28.0;
  }

  return result;
}

- (double)contentDescriptionBottomMarginForWindowWidth:(double)a3
{
  v3 = [(VUILibraryProductLockupLayout *)self layoutTypeForWindowWidth:a3];
  result = 24.0;
  if (!v3)
  {
    return 20.0;
  }

  return result;
}

- (double)buttonModuleTopMarginForWindowWidth:(double)a3
{
  v3 = [(VUILibraryProductLockupLayout *)self layoutTypeForWindowWidth:a3];
  result = 16.0;
  if (!v3)
  {
    return 20.0;
  }

  return result;
}

- (int64_t)downloadButtonPosition
{
  if (self->_type == 1)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (id)subtitleTextLayoutForWindowWidth:(double)a3
{
  if (!self->_subtitleTextLayout)
  {
    v5 = objc_alloc_init(VUITextLayout);
    subtitleTextLayout = self->_subtitleTextLayout;
    self->_subtitleTextLayout = v5;

    v7 = self->_subtitleTextLayout;
    v8 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(VUITextLayout *)v7 setColor:v8];

    [(VUITextLayout *)self->_subtitleTextLayout setNumberOfLines:1];
  }

  if ([(VUILibraryProductLockupLayout *)self layoutTypeForWindowWidth:a3]== 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 15;
  }

  [(VUITextLayout *)self->_subtitleTextLayout setTextStyle:v9];
  [(VUITextLayout *)self->_subtitleTextLayout setFontWeight:10];
  v10 = self->_subtitleTextLayout;

  return v10;
}

- (id)descriptionTextLayoutForTraitCollection:(id)a3 isExpanded:(BOOL)a4
{
  v6 = a3;
  descriptionTextLayout = self->_descriptionTextLayout;
  if (!descriptionTextLayout)
  {
    v9 = objc_alloc_init(VUITextLayout);
    v10 = self->_descriptionTextLayout;
    self->_descriptionTextLayout = v9;

    [(VUITextLayout *)self->_descriptionTextLayout setAlignment:4];
    v11 = self->_descriptionTextLayout;
    v12 = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUITextLayout *)v11 setSeeMoreTextColor:v12];

    descriptionTextLayout = self->_descriptionTextLayout;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = [(VUILibraryProductLockupLayout *)self contentDescriptionNumberOfLinesForTraitCollection:v6];
    goto LABEL_6;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 0;
LABEL_6:
  [(VUITextLayout *)descriptionTextLayout setNumberOfLines:v8];
  v13 = self->_descriptionTextLayout;
  v14 = v13;

  return v13;
}

- (int)contentDescriptionNumberOfLinesForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [MEMORY[0x1E69DF6D0] vuiContentSizeCategoryFor:v6];
  if ([MEMORY[0x1E69DF678] contentSizeCategoryIsAccessibility:v7])
  {
    v8 = 5;
  }

  else
  {
    v9 = [v4 userInterfaceIdiom];
    v10 = [v4 horizontalSizeClass];
    v8 = 4;
    if (v9 && (v9 != 1 || v10 != 1))
    {
      if (self->_type)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }
    }
  }

  return v8;
}

- (id)contentDescriptionFontForSizeClass:(int64_t)a3
{
  if (self->_type)
  {
    v3 = MEMORY[0x1E69DB878];
  }

  else
  {
    v3 = MEMORY[0x1E69DB878];
    if ((a3 - 3) <= 2)
    {
      v4 = 20;
      goto LABEL_6;
    }
  }

  v4 = 21;
LABEL_6:
  v5 = [v3 vui_fontFromTextStyle:v4 fontWeight:0 fontSize:0 fontWidth:0 symbolicTraits:0.0];

  return v5;
}

@end