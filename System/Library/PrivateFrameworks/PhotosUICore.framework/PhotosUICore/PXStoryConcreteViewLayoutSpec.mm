@interface PXStoryConcreteViewLayoutSpec
- (CGPoint)shareButtonExtraOffset;
- (CGSize)chromeButtonPadding;
- (CGSize)chromeButtonSize;
- (CGSize)infoPanelButtonOffset;
- (CGSize)playbackEndButtonPadding;
- (CGSize)playbackEndButtonSize;
- (CGSize)relatedNavigationButtonSize;
- (CGSize)relatedTitleSize;
- (CGSize)rightEdgeHighlightImageSize;
- (CGSize)scrubberRegularAssetSize;
- (CGSize)upNextCountDownSize;
- (PXStoryConcreteViewLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options storyConfigurationOptions:(unint64_t)configurationOptions customGeneralChromeTitleConfiguration:(id)configuration;
- (UIEdgeInsets)browseGridLayoutMargins;
- (UIEdgeInsets)infoPanelMargins;
- (UIEdgeInsets)infoPanelPadding;
- (UIEdgeInsets)scrubberFadeAreaInsets;
- (UIEdgeInsets)tapNavigationAreaInsets;
- (double)_calculatePredictedBrowseChromeTextHeight;
- (double)_predictedChromeTextBoxHeightWithAttributes:(id)attributes numberOfLines:(int64_t)lines;
- (id)chromeSongAttributedStringWithString:(id)string;
- (id)chromeSongStringWithTitle:(id)title artist:(id)artist;
@end

@implementation PXStoryConcreteViewLayoutSpec

- (CGSize)infoPanelButtonOffset
{
  width = self->_infoPanelButtonOffset.width;
  height = self->_infoPanelButtonOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)infoPanelPadding
{
  top = self->_infoPanelPadding.top;
  left = self->_infoPanelPadding.left;
  bottom = self->_infoPanelPadding.bottom;
  right = self->_infoPanelPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)infoPanelMargins
{
  top = self->_infoPanelMargins.top;
  left = self->_infoPanelMargins.left;
  bottom = self->_infoPanelMargins.bottom;
  right = self->_infoPanelMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)upNextCountDownSize
{
  width = self->_upNextCountDownSize.width;
  height = self->_upNextCountDownSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)relatedNavigationButtonSize
{
  width = self->_relatedNavigationButtonSize.width;
  height = self->_relatedNavigationButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)relatedTitleSize
{
  width = self->_relatedTitleSize.width;
  height = self->_relatedTitleSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)scrubberFadeAreaInsets
{
  top = self->_scrubberFadeAreaInsets.top;
  left = self->_scrubberFadeAreaInsets.left;
  bottom = self->_scrubberFadeAreaInsets.bottom;
  right = self->_scrubberFadeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)scrubberRegularAssetSize
{
  width = self->_scrubberRegularAssetSize.width;
  height = self->_scrubberRegularAssetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)rightEdgeHighlightImageSize
{
  width = self->_rightEdgeHighlightImageSize.width;
  height = self->_rightEdgeHighlightImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)browseGridLayoutMargins
{
  top = self->_browseGridLayoutMargins.top;
  left = self->_browseGridLayoutMargins.left;
  bottom = self->_browseGridLayoutMargins.bottom;
  right = self->_browseGridLayoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)playbackEndButtonPadding
{
  width = self->_playbackEndButtonPadding.width;
  height = self->_playbackEndButtonPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)playbackEndButtonSize
{
  width = self->_playbackEndButtonSize.width;
  height = self->_playbackEndButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)chromeButtonPadding
{
  width = self->_chromeButtonPadding.width;
  height = self->_chromeButtonPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)shareButtonExtraOffset
{
  x = self->_shareButtonExtraOffset.x;
  y = self->_shareButtonExtraOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)chromeButtonSize
{
  width = self->_chromeButtonSize.width;
  height = self->_chromeButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)tapNavigationAreaInsets
{
  top = self->_tapNavigationAreaInsets.top;
  left = self->_tapNavigationAreaInsets.left;
  bottom = self->_tapNavigationAreaInsets.bottom;
  right = self->_tapNavigationAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_predictedChromeTextBoxHeightWithAttributes:(id)attributes numberOfLines:(int64_t)lines
{
  v5 = MEMORY[0x1E696AAB0];
  attributesCopy = attributes;
  v7 = [[v5 alloc] initWithString:@"L" attributes:attributesCopy];

  [v7 px_sizeWithProposedWidth:lines maximumLines:1 drawingOptions:INFINITY];
  v9 = v8;

  return v9;
}

- (double)_calculatePredictedBrowseChromeTextHeight
{
  browseChromeTitleSpec = [(PXStoryConcreteViewLayoutSpec *)self browseChromeTitleSpec];
  chromeTitleAttributes = [(PXStoryConcreteViewLayoutSpec *)self chromeTitleAttributes];
  -[PXStoryConcreteViewLayoutSpec _predictedChromeTextBoxHeightWithAttributes:numberOfLines:](self, "_predictedChromeTextBoxHeightWithAttributes:numberOfLines:", chromeTitleAttributes, [browseChromeTitleSpec numberOfTitleLines]);
  v6 = v5;

  chromeSubtitleAttributes = [(PXStoryConcreteViewLayoutSpec *)self chromeSubtitleAttributes];
  -[PXStoryConcreteViewLayoutSpec _predictedChromeTextBoxHeightWithAttributes:numberOfLines:](self, "_predictedChromeTextBoxHeightWithAttributes:numberOfLines:", chromeSubtitleAttributes, [browseChromeTitleSpec numberOfSubtitleLines]);
  v9 = v8;

  v10 = v6 + v9;
  chromeButtonSpec = [(PXStoryConcreteViewLayoutSpec *)self chromeButtonSpec];
  [chromeButtonSpec defaultImageSize];
  v13 = v12;

  [(PXStoryConcreteViewLayoutSpec *)self distanceFromTopEdgeToTopButtonCenter];
  *&v14 = fmax(v14 - v13 * 0.5, v14 - v13 * 0.5 + v13 * 0.5 - v10 * 0.5);
  v15 = ceil(v10 + roundf(*&v14));

  return v15;
}

- (id)chromeSongAttributedStringWithString:(id)string
{
  stringCopy = string;
  chromeSongSymbolName = [(PXStoryConcreteViewLayoutSpec *)self chromeSongSymbolName];
  v6 = MEMORY[0x1E69DCAB8];
  chromeTitleMusicSystemImageConfiguration = [(PXStoryConcreteViewLayoutSpec *)self chromeTitleMusicSystemImageConfiguration];
  v8 = [v6 _systemImageNamed:chromeSongSymbolName withConfiguration:chromeTitleMusicSystemImageConfiguration];

  chromeSubtitleAttributes = [(PXStoryConcreteViewLayoutSpec *)self chromeSubtitleAttributes];
  v10 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v11 = [v8 imageWithRenderingMode:2];
  [v10 setImage:v11];

  v12 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  v13 = [v12 mutableCopy];

  [v13 addAttributes:chromeSubtitleAttributes range:{0, objc_msgSend(v13, "length")}];
  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:chromeSubtitleAttributes];
  [v13 appendAttributedString:v14];

  v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:chromeSubtitleAttributes];
  [v13 appendAttributedString:v15];

  return v13;
}

- (id)chromeSongStringWithTitle:(id)title artist:(id)artist
{
  artist;
  title;
  [(PXStoryConcreteViewLayoutSpec *)self chromeTitleLocalizedSongFormat];
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

- (PXStoryConcreteViewLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options storyConfigurationOptions:(unint64_t)configurationOptions customGeneralChromeTitleConfiguration:(id)configuration
{
  v16 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = PXStoryConcreteViewLayoutSpec;
  v11 = [(PXStoryConcreteViewLayoutSpec *)&v15 initWithExtendedTraitCollection:collectionCopy options:options];

  if (v11)
  {
    +[PXStorySettings sharedInstance];
    objc_claimAutoreleasedReturnValue();
    [collectionCopy userInterfaceIdiom];
    [(PXStoryConcreteViewLayoutSpec *)v11 layoutOrientation];
    [collectionCopy layoutSizeClass];
    LODWORD(v14) = [collectionCopy insideCollectionDetailsView];
    [collectionCopy contentSizeCategory];
    PXPreferredContentSizeCategoryIsAccessibility();
  }

  v12 = 0;

  return v12;
}

id __137__PXStoryConcreteViewLayoutSpec_initWithExtendedTraitCollection_options_storyConfigurationOptions_customGeneralChromeTitleConfiguration___block_invoke(void *a1, void *a2, double a3)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DB7D0];
  v6 = a2;
  v7 = a1;
  v8 = [v5 defaultParagraphStyle];
  v9 = [v8 mutableCopy];

  v10 = [v6 textAlignment];
  [v9 setAlignment:v10];
  [v9 setLineBreakMode:0];
  [v9 setLineHeightMultiple:a3];
  v15[0] = *MEMORY[0x1E69DB650];
  v11 = [MEMORY[0x1E69DC888] whiteColor];
  v16[0] = v11;
  v15[1] = *MEMORY[0x1E69DB688];
  v12 = [v9 copy];
  v15[2] = *MEMORY[0x1E69DB648];
  v16[1] = v12;
  v16[2] = v7;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  return v13;
}

id __137__PXStoryConcreteViewLayoutSpec_initWithExtendedTraitCollection_options_storyConfigurationOptions_customGeneralChromeTitleConfiguration___block_invoke_2(void *a1, void *a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 defaultParagraphStyle];
  v7 = [v6 mutableCopy];

  [v7 setAlignment:0];
  v8 = *MEMORY[0x1E69DB650];
  v14[0] = v4;
  v9 = *MEMORY[0x1E69DB688];
  v13[0] = v8;
  v13[1] = v9;
  v10 = [v7 copy];
  v13[2] = *MEMORY[0x1E69DB648];
  v14[1] = v10;
  v14[2] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

@end