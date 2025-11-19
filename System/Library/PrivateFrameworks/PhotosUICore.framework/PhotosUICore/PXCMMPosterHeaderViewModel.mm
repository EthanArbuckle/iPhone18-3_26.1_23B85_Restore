@interface PXCMMPosterHeaderViewModel
- (PXCMMPosterHeaderViewModel)init;
- (void)performChanges:(id)a3;
- (void)setAsset:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMediaProvider:(id)a3;
- (void)setShowStatusCheckmark:(BOOL)a3;
- (void)setStatusString:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PXCMMPosterHeaderViewModel

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(PXCMMPosterHeaderViewModel *)self signalChange:64];
  }
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PXCMMPosterHeaderViewModel *)self signalChange:32];
    v5 = v6;
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_asset, a3);
    [(PXCMMPosterHeaderViewModel *)self signalChange:16];
    v5 = v6;
  }
}

- (void)setShowStatusCheckmark:(BOOL)a3
{
  if (self->_showStatusCheckmark != a3)
  {
    self->_showStatusCheckmark = a3;
    [(PXCMMPosterHeaderViewModel *)self signalChange:8];
  }
}

- (void)setStatusString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_statusString != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCMMPosterHeaderViewModel.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"subtitle"}];

    v5 = 0;
  }

  if (self->_subtitle != v5)
  {
    v10 = v5;
    v6 = [(NSString *)v5 isEqualToString:?];
    v5 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      subtitle = self->_subtitle;
      self->_subtitle = v7;

      [(PXCMMPosterHeaderViewModel *)self signalChange:2];
      v5 = v10;
    }
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCMMPosterHeaderViewModel.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    v5 = 0;
  }

  if (self->_title != v5)
  {
    v10 = v5;
    v6 = [(NSString *)v5 isEqualToString:?];
    v5 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      title = self->_title;
      self->_title = v7;

      [(PXCMMPosterHeaderViewModel *)self signalChange:1];
      v5 = v10;
    }
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCMMPosterHeaderViewModel;
  [(PXCMMPosterHeaderViewModel *)&v3 performChanges:a3];
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