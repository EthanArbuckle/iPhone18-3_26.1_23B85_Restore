@interface PXMemoryView
- (CGRect)_performLayoutInRect:(CGRect)a3 applyToSubviews:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXMemoryView)init;
- (PXMemoryViewPresentationDelegate)presentationDelegate;
- (PXTitleSubtitleUILabel)titleSubtitleLabel;
- (UIView)highlightView;
- (UIView)overlayView;
- (void)_didTap:(id)a3;
- (void)_updateHighlightedIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateKeyAssetIfNeeded;
- (void)_updateSpecIfNeeded;
- (void)_updateTitleSubtitleIfNeeded;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDisplayAssetView:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setViewModel:(id)a3;
@end

@implementation PXMemoryView

- (PXMemoryViewPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXMemoryViewModelObservationContext != a5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXMemoryView.m" lineNumber:252 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 3) != 0)
  {
    if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 1) != 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView observable:didChange:context:]"];
      [v13 handleFailureInFunction:v14 file:@"PXMemoryView.m" lineNumber:237 description:{@"invalidating %lu after it already has been updated", 1}];
      goto LABEL_29;
    }

    self->_updateFlags.needsUpdate |= 1uLL;
  }

  if ((v6 & 4) != 0)
  {
    if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 2) != 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView observable:didChange:context:]"];
      [v13 handleFailureInFunction:v14 file:@"PXMemoryView.m" lineNumber:240 description:{@"invalidating %lu after it already has been updated", 2}];
      goto LABEL_29;
    }

    self->_updateFlags.needsUpdate |= 2uLL;
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if ((v6 & 8) != 0)
  {
    if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 4) != 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView observable:didChange:context:]"];
      [v13 handleFailureInFunction:v14 file:@"PXMemoryView.m" lineNumber:243 description:{@"invalidating %lu after it already has been updated", 4}];
      goto LABEL_29;
    }

    needsUpdate |= 4uLL;
    p_updateFlags->needsUpdate = needsUpdate;
  }

  if ((v6 & 0x10) != 0)
  {
    if (!self->_updateFlags.isPerformingUpdate || (self->_updateFlags.updated & 8) == 0)
    {
      p_updateFlags->needsUpdate = needsUpdate | 8;
      goto LABEL_20;
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView observable:didChange:context:]"];
    [v13 handleFailureInFunction:v14 file:@"PXMemoryView.m" lineNumber:246 description:{@"invalidating %lu after it already has been updated", 8}];
LABEL_29:

    abort();
  }

  if (needsUpdate)
  {
LABEL_20:
    v15 = v9;
    [(PXMemoryView *)self setNeedsLayout];
    v9 = v15;
  }
}

- (void)_didTap:(id)a3
{
  v4 = [(PXMemoryView *)self presentationDelegate];
  [v4 presentDetailsForMemoryView:self];
}

- (CGRect)_performLayoutInRect:(CGRect)a3 applyToSubviews:(BOOL)a4
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    v8 = [(PXMemoryView *)self displayAssetView:a3.origin.x];
    [v8 setFrame:{x, y, width, width}];

    v9 = [(PXMemoryView *)self overlayView];
    [v9 setFrame:{x, y, width, width}];

    v10 = [(PXMemoryView *)self highlightView];
    [v10 setFrame:{x, y, width, width}];

    v11 = [(PXMemoryView *)self titleSubtitleLabel];
    [v11 setFrame:{x, y, width, width}];
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
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateSpecIfNeeded]"];
    [v15 handleFailureInFunction:v16 file:@"PXMemoryView.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v17 = [(PXMemoryView *)self viewModel];
    v13 = [off_1E7721910 memoriesTitleSubtitleSpecForTileKind:1 viewMode:v17 boundedByRect:{v6, v8, v10, v12}];
    v14 = [(PXMemoryView *)self titleSubtitleLabel];
    [v14 setSpec:v13];
  }
}

- (void)_updateHighlightedIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateHighlightedIfNeeded]"];
    [v7 handleFailureInFunction:v8 file:@"PXMemoryView.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 4uLL;
  if ((needsUpdate & 4) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;
    v5 = [(PXMemoryView *)self viewModel];
    v6 = [v5 isHighlighted];

    v9 = [(PXMemoryView *)self highlightView];
    [v9 setHidden:v6 ^ 1u];
  }
}

- (void)_updateKeyAssetIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  if (!self->_updateFlags.isPerformingUpdate)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateKeyAssetIfNeeded]"];
    [v7 handleFailureInFunction:v8 file:@"PXMemoryView.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 2uLL;
  if ((needsUpdate & 2) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
    v5 = [(PXMemoryView *)self viewModel];
    v9 = [v5 keyAsset];

    if (v9)
    {
      v6 = [PXDisplayAssetContentView checkOutViewForAsset:v9];
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
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateTitleSubtitleIfNeeded]"];
    [v12 handleFailureInFunction:v13 file:@"PXMemoryView.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 1uLL;
  if (needsUpdate)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
    v14 = [(PXMemoryView *)self viewModel];
    v5 = [(PXMemoryView *)self titleSubtitleLabel];
    v6 = [v14 localizedTitle];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F1741150;
    }

    [v5 setTitleText:v8];

    v9 = [v14 localizedDateText];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F1741150;
    }

    [v5 setSubtitleText:v11];
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
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateIfNeeded]"];
      [v4 handleFailureInFunction:v5 file:@"PXMemoryView.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
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
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView _updateIfNeeded]"];
      [v7 handleFailureInFunction:v6 file:@"PXMemoryView.m" lineNumber:162 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXMemoryView *)self _performLayoutInRect:0 applyToSubviews:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
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

- (void)setFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXMemoryView;
  [(PXMemoryView *)&v6 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 0xA) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView setFrame:]"];
    [v4 handleFailureInFunction:v5 file:@"PXMemoryView.m" lineNumber:138 description:{@"invalidating %lu after it already has been updated", 10}];

    abort();
  }

  self->_updateFlags.needsUpdate |= 0xAuLL;
}

- (void)setDisplayAssetView:(id)a3
{
  v12 = a3;
  v5 = self->_displayAssetView;
  v6 = v5;
  if (v5 == v12)
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

      objc_storeStrong(&self->_displayAssetView, a3);
      if (self->_displayAssetView)
      {
        v9 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
        [(PXDisplayAssetContentView *)self->_displayAssetView setBackgroundColor:v9];

        [(PXDisplayAssetContentView *)self->_displayAssetView setContentMode:2];
        v10 = objc_alloc_init(PXPhotoKitUIMediaProvider);
        [(PXDisplayAssetContentView *)self->_displayAssetView setMediaProvider:v10];

        v11 = [(PXDisplayAssetContentView *)self->_displayAssetView layer];
        [v11 setAllowsGroupBlending:1];

        [(PXMemoryView *)self addSubview:self->_displayAssetView];
        [(PXMemoryView *)self sendSubviewToBack:self->_displayAssetView];
      }
    }
  }
}

- (void)setViewModel:(id)a3
{
  v10 = a3;
  v5 = self->_viewModel;
  v6 = v5;
  if (v5 == v10)
  {
  }

  else
  {
    v7 = [(PXMemoryViewModel *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      [(PXMemoryViewModel *)self->_viewModel unregisterChangeObserver:self context:PXMemoryViewModelObservationContext];
      objc_storeStrong(&self->_viewModel, a3);
      [(PXMemoryViewModel *)self->_viewModel registerChangeObserver:self context:PXMemoryViewModelObservationContext];
      if (self->_updateFlags.isPerformingUpdate && (self->_updateFlags.updated & 0xB) != 0)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMemoryView setViewModel:]"];
        [v8 handleFailureInFunction:v9 file:@"PXMemoryView.m" lineNumber:108 description:{@"invalidating %lu after it already has been updated", 11}];

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

    v6 = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)self->_highlightView setBackgroundColor:v6];

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

    v6 = [MEMORY[0x1E69DC888] labelColor];
    [(UIView *)self->_overlayView setBackgroundColor:v6];

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
    v4 = [(PXMemoryView *)v2 overlayView];
    v5 = [(PXMemoryView *)v3 highlightView];
    v6 = [(PXMemoryView *)v3 titleSubtitleLabel];
    [(PXMemoryView *)v3 setClipsToBounds:1];
    v7 = [(PXMemoryView *)v3 layer];
    [v7 setCornerRadius:4.0];

    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel__didTap_];
    [(PXMemoryView *)v3 addGestureRecognizer:v8];
  }

  return v3;
}

@end