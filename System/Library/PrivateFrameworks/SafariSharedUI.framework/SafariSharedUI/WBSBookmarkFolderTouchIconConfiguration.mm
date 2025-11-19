@interface WBSBookmarkFolderTouchIconConfiguration
- (CGSize)shadowOffset;
- (id)initFor2x2Layout;
- (id)initFor2x2LayoutWithOuterMarginScaleFactor:(double)a3;
- (id)initFor3x3Layout;
- (id)initForTabGroup;
- (void)_commonWBSBookmarkFolderIconConfigurationInit;
@end

@implementation WBSBookmarkFolderTouchIconConfiguration

- (id)initFor3x3Layout
{
  v8.receiver = self;
  v8.super_class = WBSBookmarkFolderTouchIconConfiguration;
  v2 = [(WBSBookmarkFolderTouchIconConfiguration *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_maximumNumberOfThumbnailsPerRow = vdupq_n_s64(3uLL);
    v4 = [MEMORY[0x1E69C8880] is2024FavoritesEnabled];
    v5 = 0.24;
    if (v4)
    {
      v5 = 0.25;
    }

    v3[5] = v5;
    v3[6] = 0.1;
    [v3 _commonWBSBookmarkFolderIconConfigurationInit];
    v6 = v3;
  }

  return v3;
}

- (id)initFor2x2Layout
{
  v6.receiver = self;
  v6.super_class = WBSBookmarkFolderTouchIconConfiguration;
  v2 = [(WBSBookmarkFolderTouchIconConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 1) = vdupq_n_s64(2uLL);
    *(v2 + 40) = xmmword_1C6A84E00;
    [v2 _commonWBSBookmarkFolderIconConfigurationInit];
    v4 = v3;
  }

  return v3;
}

- (id)initFor2x2LayoutWithOuterMarginScaleFactor:(double)a3
{
  v4 = [(WBSBookmarkFolderTouchIconConfiguration *)self initFor2x2Layout];
  v5 = v4;
  if (v4)
  {
    v4[6] = a3;
    [v4 _commonWBSBookmarkFolderIconConfigurationInit];
    v6 = v5;
  }

  return v5;
}

- (id)initForTabGroup
{
  v2 = [(WBSBookmarkFolderTouchIconConfiguration *)self initFor2x2Layout];
  v3 = v2;
  if (v2)
  {
    v2[8] = 1;
    v4 = tertiaryGroupedBackgroundColor();
    v5 = v3[9];
    v3[9] = v4;

    v6 = tertiaryGroupedBackgroundColor();
    v7 = v3[10];
    v3[10] = v6;

    v8 = v3;
  }

  return v3;
}

- (void)_commonWBSBookmarkFolderIconConfigurationInit
{
  maximumNumberOfThumbnailsPerRow = self->_maximumNumberOfThumbnailsPerRow;
  thumbnailIconScaleFactor = self->_thumbnailIconScaleFactor;
  v4 = self->_thumbnailIconOuterMarginScaleFactor * -2.0 + 1.0;
  self->_maximumNumberOfThumbnailIcons = self->_maximumNumberOfThumbnailRows * maximumNumberOfThumbnailsPerRow;
  self->_shadowOffset.width = 0.0;
  self->_shadowOffset.height = -thumbnailIconScaleFactor;
  self->_thumbnailIconInnerMarginScaleFactor = (v4 - thumbnailIconScaleFactor * maximumNumberOfThumbnailsPerRow) / (maximumNumberOfThumbnailsPerRow - 1);
  self->_shadowBlurRadius = thumbnailIconScaleFactor + thumbnailIconScaleFactor;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end