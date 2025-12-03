@interface PXGAssetDecorationView
+ (BOOL)_wantsActivityIndicatorForConfiguration:(id)configuration;
+ (BOOL)_wantsProgressIndicatorForConfiguration:(id)configuration;
+ (BOOL)wantsDecorationViewForConfiguration:(id)configuration;
- (CGRect)clippingRect;
- (PXGAssetDecorationView)initWithFrame:(CGRect)frame;
- (void)_updateProgressIndicator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setUserData:(id)data;
@end

@implementation PXGAssetDecorationView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)prepareForReuse
{
  [(NSTimer *)self->_progressIndicatorDelayTimer invalidate];
  progressIndicatorDelayTimer = self->_progressIndicatorDelayTimer;
  self->_progressIndicatorDelayTimer = 0;

  [(PXGAssetDecorationView *)self setUserData:0];
}

- (void)_updateProgressIndicator
{
  v36[2] = *MEMORY[0x277D85DE8];
  userData = [(PXGAssetDecorationView *)self userData];
  v4 = [objc_opt_class() _wantsProgressIndicatorForConfiguration:userData];
  v5 = [objc_opt_class() _wantsActivityIndicatorForConfiguration:userData];
  if (v4)
  {
    progressIndicatorDelayTimer = self->_progressIndicatorDelayTimer;
    if (!progressIndicatorDelayTimer)
    {
LABEL_5:
      objc_initWeak(&location, self);
      v7 = MEMORY[0x277CBEBB8];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __50__PXGAssetDecorationView__updateProgressIndicator__block_invoke;
      v33[3] = &unk_2782AA608;
      objc_copyWeak(&v34, &location);
      v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v33 block:1.0];
      v9 = self->_progressIndicatorDelayTimer;
      self->_progressIndicatorDelayTimer = v8;

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
      goto LABEL_11;
    }

    if ([(NSTimer *)progressIndicatorDelayTimer isValid])
    {
      if (self->_progressIndicatorDelayTimer)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    if (!self->_progressIndicatorView)
    {
      [MEMORY[0x277D3CDA8] sizeForSizeClass:1];
      PXRectWithOriginAndSize();
      v16 = [objc_alloc(MEMORY[0x277D3CDA8]) initWithFrame:1 style:{v12, v13, v14, v15}];
      progressIndicatorView = self->_progressIndicatorView;
      self->_progressIndicatorView = v16;

      [(PXRoundProgressView *)self->_progressIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PXGAssetDecorationView *)self addSubview:self->_progressIndicatorView];
    }

    loadStatus = [userData loadStatus];
    [loadStatus progress];
    *&v19 = v19;
    [(PXRoundProgressView *)self->_progressIndicatorView setProgress:v19];
  }

  else
  {
    v10 = self->_progressIndicatorView;
    if (v10)
    {
      [(PXRoundProgressView *)v10 removeFromSuperview];
      v11 = self->_progressIndicatorView;
      self->_progressIndicatorView = 0;
    }
  }

LABEL_11:
  activityIndicatorView = self->_activityIndicatorView;
  if (v5)
  {
    if (!activityIndicatorView)
    {
      v21 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
      v22 = self->_activityIndicatorView;
      self->_activityIndicatorView = v21;

      [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UIActivityIndicatorView *)self->_activityIndicatorView setColor:whiteColor];

      [(PXGAssetDecorationView *)self addSubview:self->_activityIndicatorView];
      v32 = MEMORY[0x277CCAAD0];
      centerXAnchor = [(UIActivityIndicatorView *)self->_activityIndicatorView centerXAnchor];
      centerXAnchor2 = [(PXGAssetDecorationView *)self centerXAnchor];
      v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v36[0] = v26;
      centerYAnchor = [(UIActivityIndicatorView *)self->_activityIndicatorView centerYAnchor];
      centerYAnchor2 = [(PXGAssetDecorationView *)self centerYAnchor];
      v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v36[1] = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      [v32 activateConstraints:v30];

      [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
    }
  }

  else if (activityIndicatorView)
  {
    [(UIActivityIndicatorView *)activityIndicatorView removeFromSuperview];
    v31 = self->_activityIndicatorView;
    self->_activityIndicatorView = 0;
  }
}

void __50__PXGAssetDecorationView__updateProgressIndicator__block_invoke(uint64_t a1, void *a2)
{
  [a2 invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateProgressIndicator];
}

- (void)layoutSubviews
{
  [(PXUpdater *)self->_updater updateIfNeeded];
  [(PXGAssetDecorationView *)self bounds];
  PXRectGetCenter();
  progressIndicatorView = self->_progressIndicatorView;

  [(PXRoundProgressView *)progressIndicatorView setCenter:?];
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self->_userData != dataCopy)
  {
    v9 = dataCopy;
    v6 = [(PXGAssetDecorationViewConfiguration *)dataCopy isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXGAssetDecorationViewConfiguration *)v9 copy];
      userData = self->_userData;
      self->_userData = v7;

      [(PXGAssetDecorationView *)self _invalidateProgressIndicator];
      v5 = v9;
    }
  }
}

- (PXGAssetDecorationView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXGAssetDecorationView;
  v3 = [(PXGAssetDecorationView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D3CE28]) initWithTarget:v3 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v3->_updater;
    v3->_updater = v4;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateProgressIndicator];
  }

  return v3;
}

+ (BOOL)_wantsActivityIndicatorForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  loadStatus = [configurationCopy loadStatus];
  if ([loadStatus state] == 1)
  {
    loadStatus2 = [configurationCopy loadStatus];
    isIndeterminate = [loadStatus2 isIndeterminate];
  }

  else
  {
    isIndeterminate = 0;
  }

  return isIndeterminate;
}

+ (BOOL)_wantsProgressIndicatorForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  loadStatus = [configurationCopy loadStatus];
  if ([loadStatus state] == 1)
  {
    loadStatus2 = [configurationCopy loadStatus];
    v6 = [loadStatus2 isIndeterminate] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)wantsDecorationViewForConfiguration:(id)configuration
{
  loadStatus = [configuration loadStatus];
  v4 = [loadStatus state] == 1;

  return v4;
}

@end