@interface PXMemoryView
- (CGRect)_performLayoutInRect:(CGRect)rect applyToSubviews:(BOOL)subviews;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXMemoryView)init;
- (PXMemoryViewPresentationDelegate)presentationDelegate;
- (PXTitleSubtitleUILabel)titleSubtitleLabel;
- (UIView)highlightView;
- (UIView)overlayView;
- (void)_didTap:(id)tap;
- (void)_updateHighlightedIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateKeyAssetIfNeeded;
- (void)_updateSpecIfNeeded;
- (void)_updateTitleSubtitleIfNeeded;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDisplayAssetView:(id)view;
- (void)setFrame:(CGRect)frame;
- (void)setViewModel:(id)model;
@end

@implementation PXMemoryView

- (PXMemoryViewPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXMemoryViewModelObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoryView.m" lineNumber:252 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 3) != 0)
  {
    if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView observable:didChange:context:]"];
      [currentHandler2 handleFailureInFunction:v14 file:@"PXMemoryView.m" lineNumber:237 description:{@"invalidating %lu after it already has been updated", 1}];
      goto LABEL_29;
    }

    self->_updateFlags.needsUpdate |= 1uLL;
  }

  if ((changeCopy & 4) != 0)
  {
    if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 2) != 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView observable:didChange:context:]"];
      [currentHandler2 handleFailureInFunction:v14 file:@"PXMemoryView.m" lineNumber:240 description:{@"invalidating %lu after it already has been updated", 2}];
      goto LABEL_29;
    }

    self->_updateFlags.needsUpdate |= 2uLL;
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if ((changeCopy & 8) != 0)
  {
    if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 4) != 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView observable:didChange:context:]"];
      [currentHandler2 handleFailureInFunction:v14 file:@"PXMemoryView.m" lineNumber:243 description:{@"invalidating %lu after it already has been updated", 4}];
      goto LABEL_29;
    }

    needsUpdate |= 4uLL;
    p_updateFlags->needsUpdate = needsUpdate;
  }

  if ((changeCopy & 0x10) != 0)
  {
    if (!self->_updateFlags.isPerformingUpdate || (self->_updateFlags.updated & 8) == 0)
    {
      p_updateFlags->needsUpdate = needsUpdate | 8;
      goto LABEL_20;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView observable:didChange:context:]"];
    [currentHandler2 handleFailureInFunction:v14 file:@"PXMemoryView.m" lineNumber:246 description:{@"invalidating %lu after it already has been updated", 8}];
LABEL_29:

    abort();
  }

  if (needsUpdate)
  {
LABEL_20:
    v15 = observableCopy;
    [(PXMemoryView *)self setNeedsLayout];
    observableCopy = v15;
  }
}

- (void)_didTap:(id)tap
{
  presentationDelegate = [(PXMemoryView *)self presentationDelegate];
  [presentationDelegate presentDetailsForMemoryView:self];
}

- (CGRect)_performLayoutInRect:(CGRect)rect applyToSubviews:(BOOL)subviews
{
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (subviews)
  {
    v8 = [(PXMemoryView *)self displayAssetView:rect.origin.x];
    [v8 setFrame:{x, y, width, width}];

    overlayView = [(PXMemoryView *)self overlayView];
    [overlayView setFrame:{x, y, width, width}];

    highlightView = [(PXMemoryView *)self highlightView];
    [highlightView setFrame:{x, y, width, width}];

    titleSubtitleLabel = [(PXMemoryView *)self titleSubtitleLabel];
    [titleSubtitleLabel setFrame:{x, y, width, width}];
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = width;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_updateSpecIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateSpecIfNeeded]"];
    [currentHandler handleFailureInFunction:v16 file:@"PXMemoryView.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 8uLL;
  if ((needsUpdate & 8) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFF7;
    [(PXMemoryView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    viewModel = [(PXMemoryView *)self viewModel];
    v13 = [off_1E7721910 memoriesTitleSubtitleSpecForTileKind:1 viewMode:viewModel boundedByRect:{v6, v8, v10, v12}];
    titleSubtitleLabel = [(PXMemoryView *)self titleSubtitleLabel];
    [titleSubtitleLabel setSpec:v13];
  }
}

- (void)_updateHighlightedIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateHighlightedIfNeeded]"];
    [currentHandler handleFailureInFunction:v8 file:@"PXMemoryView.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 4uLL;
  if ((needsUpdate & 4) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;
    viewModel = [(PXMemoryView *)self viewModel];
    isHighlighted = [viewModel isHighlighted];

    highlightView = [(PXMemoryView *)self highlightView];
    [highlightView setHidden:isHighlighted ^ 1u];
  }
}

- (void)_updateKeyAssetIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateKeyAssetIfNeeded]"];
    [currentHandler handleFailureInFunction:v8 file:@"PXMemoryView.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 2uLL;
  if ((needsUpdate & 2) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
    viewModel = [(PXMemoryView *)self viewModel];
    keyAsset = [viewModel keyAsset];

    if (keyAsset)
    {
      v6 = [PXDisplayAssetContentView checkOutViewForAsset:keyAsset];
      [v6 setCanDisplayLoadingIndicator:1];
    }

    else
    {
      v6 = 0;
    }

    [(PXMemoryView *)self setDisplayAssetView:v6];
  }
}

- (void)_updateTitleSubtitleIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateTitleSubtitleIfNeeded]"];
    [currentHandler handleFailureInFunction:v13 file:@"PXMemoryView.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 1uLL;
  if (needsUpdate)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
    viewModel = [(PXMemoryView *)self viewModel];
    titleSubtitleLabel = [(PXMemoryView *)self titleSubtitleLabel];
    localizedTitle = [viewModel localizedTitle];
    v7 = localizedTitle;
    if (localizedTitle)
    {
      v8 = localizedTitle;
    }

    else
    {
      v8 = &stru_1F1741150;
    }

    [titleSubtitleLabel setTitleText:v8];

    localizedDateText = [viewModel localizedDateText];
    v10 = localizedDateText;
    if (localizedDateText)
    {
      v11 = localizedDateText;
    }

    else
    {
      v11 = &stru_1F1741150;
    }

    [titleSubtitleLabel setSubtitleText:v11];
  }
}

- (void)_updateIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  if (self->_updateFlags.needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateIfNeeded]"];
      [currentHandler handleFailureInFunction:v5 file:@"PXMemoryView.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 0;
    [(PXMemoryView *)self _updateTitleSubtitleIfNeeded];
    [(PXMemoryView *)self _updateKeyAssetIfNeeded];
    [(PXMemoryView *)self _updateHighlightedIfNeeded];
    [(PXMemoryView *)self _updateSpecIfNeeded];
    p_updateFlags->isPerformingUpdate = 0;
    if (p_updateFlags->needsUpdate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateIfNeeded]"];
      [currentHandler2 handleFailureInFunction:v6 file:@"PXMemoryView.m" lineNumber:162 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXMemoryView *)self _performLayoutInRect:0 applyToSubviews:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXMemoryView;
  [(PXMemoryView *)&v3 layoutSubviews];
  [(PXMemoryView *)self _updateIfNeeded];
  [(PXMemoryView *)self bounds];
  [(PXMemoryView *)self _performLayoutInRect:1 applyToSubviews:?];
}

- (void)setFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXMemoryView;
  [(PXMemoryView *)&v6 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 0xA) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView setFrame:]"];
    [currentHandler handleFailureInFunction:v5 file:@"PXMemoryView.m" lineNumber:138 description:{@"invalidating %lu after it already has been updated", 10}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 0xAuLL;
}

- (void)setDisplayAssetView:(id)view
{
  viewCopy = view;
  v5 = self->_displayAssetView;
  v6 = v5;
  if (v5 == viewCopy)
  {
  }

  else
  {
    v7 = [(PXDisplayAssetContentView *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      displayAssetView = self->_displayAssetView;
      if (displayAssetView)
      {
        [(PXDisplayAssetContentView *)displayAssetView removeFromSuperview];
        [PXDisplayAssetContentView checkInView:self->_displayAssetView];
      }

      objc_storeStrong(&self->_displayAssetView, view);
      if (self->_displayAssetView)
      {
        quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
        [(PXDisplayAssetContentView *)self->_displayAssetView setBackgroundColor:quaternarySystemFillColor];

        [(PXDisplayAssetContentView *)self->_displayAssetView setContentMode:2];
        v10 = objc_alloc_init(PXPhotoKitUIMediaProvider);
        [(PXDisplayAssetContentView *)self->_displayAssetView setMediaProvider:v10];

        layer = [(PXDisplayAssetContentView *)self->_displayAssetView layer];
        [layer setAllowsGroupBlending:1];

        [(PXMemoryView *)self addSubview:self->_displayAssetView];
        [(PXMemoryView *)self sendSubviewToBack:self->_displayAssetView];
      }
    }
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  v5 = self->_viewModel;
  v6 = v5;
  if (v5 == modelCopy)
  {
  }

  else
  {
    v7 = [(PXMemoryViewModel *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      [(PXMemoryViewModel *)self->_viewModel unregisterChangeObserver:self context:PXMemoryViewModelObservationContext];
      objc_storeStrong(&self->_viewModel, model);
      [(PXMemoryViewModel *)self->_viewModel registerChangeObserver:self context:PXMemoryViewModelObservationContext];
      if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 0xB) != 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView setViewModel:]"];
        [currentHandler handleFailureInFunction:v9 file:@"PXMemoryView.m" lineNumber:108 description:{@"invalidating %lu after it already has been updated", 11}];

        abort();
      }

      self->_updateFlags.needsUpdate |= 0xBuLL;
      [(PXMemoryView *)self setNeedsLayout];
    }
  }
}

- (UIView)highlightView
{
  highlightView = self->_highlightView;
  if (!highlightView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_highlightView;
    self->_highlightView = v4;

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)self->_highlightView setBackgroundColor:labelColor];

    [(UIView *)self->_highlightView setAlpha:0.3];
    [(UIView *)self->_highlightView setHidden:1];
    [(PXMemoryView *)self addSubview:self->_highlightView];
    highlightView = self->_highlightView;
  }

  return highlightView;
}

- (UIView)overlayView
{
  overlayView = self->_overlayView;
  if (!overlayView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_overlayView;
    self->_overlayView = v4;

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)self->_overlayView setBackgroundColor:labelColor];

    [(UIView *)self->_overlayView setAlpha:0.2];
    [(PXMemoryView *)self addSubview:self->_overlayView];
    overlayView = self->_overlayView;
  }

  return overlayView;
}

- (PXTitleSubtitleUILabel)titleSubtitleLabel
{
  titleSubtitleLabel = self->_titleSubtitleLabel;
  if (!titleSubtitleLabel)
  {
    v4 = objc_alloc_init(PXTitleSubtitleUILabel);
    v5 = self->_titleSubtitleLabel;
    self->_titleSubtitleLabel = v4;

    [(PXTitleSubtitleUILabel *)self->_titleSubtitleLabel setRendersTextAsynchronously:0];
    [(PXMemoryView *)self addSubview:self->_titleSubtitleLabel];
    titleSubtitleLabel = self->_titleSubtitleLabel;
  }

  return titleSubtitleLabel;
}

- (PXMemoryView)init
{
  v10.receiver = self;
  v10.super_class = PXMemoryView;
  v2 = [(PXMemoryView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    overlayView = [(PXMemoryView *)v2 overlayView];
    highlightView = [(PXMemoryView *)v3 highlightView];
    titleSubtitleLabel = [(PXMemoryView *)v3 titleSubtitleLabel];
    [(PXMemoryView *)v3 setClipsToBounds:1];
    layer = [(PXMemoryView *)v3 layer];
    [layer setCornerRadius:4.0];

    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel__didTap_];
    [(PXMemoryView *)v3 addGestureRecognizer:v8];
  }

  return v3;
}

@end