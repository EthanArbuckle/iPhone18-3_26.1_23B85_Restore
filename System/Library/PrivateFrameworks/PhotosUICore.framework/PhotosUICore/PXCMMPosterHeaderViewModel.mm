@interface PXCMMPosterHeaderViewModel
- (PXCMMPosterHeaderViewModel)init;
- (void)performChanges:(id)changes;
- (void)setAsset:(id)asset;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMediaProvider:(id)provider;
- (void)setShowStatusCheckmark:(BOOL)checkmark;
- (void)setStatusString:(id)string;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PXCMMPosterHeaderViewModel

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(PXCMMPosterHeaderViewModel *)self signalChange:64];
  }
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    [(PXCMMPosterHeaderViewModel *)self signalChange:32];
    providerCopy = v6;
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v6 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    [(PXCMMPosterHeaderViewModel *)self signalChange:16];
    assetCopy = v6;
  }
}

- (void)setShowStatusCheckmark:(BOOL)checkmark
{
  if (self->_showStatusCheckmark != checkmark)
  {
    self->_showStatusCheckmark = checkmark;
    [(PXCMMPosterHeaderViewModel *)self signalChange:8];
  }
}

- (void)setStatusString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self->_statusString != stringCopy)
  {
    v9 = stringCopy;
    v6 = [(NSString *)stringCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      statusString = self->_statusString;
      self->_statusString = v7;

      [(PXCMMPosterHeaderViewModel *)self signalChange:4];
      v5 = v9;
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (!subtitleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPosterHeaderViewModel.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"subtitle"}];

    subtitleCopy = 0;
  }

  if (self->_subtitle != subtitleCopy)
  {
    v10 = subtitleCopy;
    v6 = [(NSString *)subtitleCopy isEqualToString:?];
    subtitleCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      subtitle = self->_subtitle;
      self->_subtitle = v7;

      [(PXCMMPosterHeaderViewModel *)self signalChange:2];
      subtitleCopy = v10;
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPosterHeaderViewModel.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    titleCopy = 0;
  }

  if (self->_title != titleCopy)
  {
    v10 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    titleCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      title = self->_title;
      self->_title = v7;

      [(PXCMMPosterHeaderViewModel *)self signalChange:1];
      titleCopy = v10;
    }
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCMMPosterHeaderViewModel;
  [(PXCMMPosterHeaderViewModel *)&v3 performChanges:changes];
}

- (PXCMMPosterHeaderViewModel)init
{
  v8.receiver = self;
  v8.super_class = PXCMMPosterHeaderViewModel;
  v2 = [(PXCMMPosterHeaderViewModel *)&v8 init];
  v3 = v2;
  if (v2)
  {
    title = v2->_title;
    v2->_title = &stru_1F1741150;

    subtitle = v3->_subtitle;
    v3->_subtitle = &stru_1F1741150;

    statusString = v3->_statusString;
    v3->_statusString = &stru_1F1741150;
  }

  return v3;
}

@end