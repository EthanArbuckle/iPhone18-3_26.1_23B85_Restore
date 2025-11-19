@interface SBPrototypeAdvancedActivityElementViewProvider
- (BOOL)handleElementViewEvent:(int64_t)a3;
- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4 inLayoutMode:(int64_t)a5;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBPrototypeAdvancedActivityElementViewProvider)init;
- (UIView)leadingView;
- (UIView)trailingView;
- (id)_currentTrailingTitle;
- (id)_newTrailingLabel;
- (void)_decrementLayoutMode;
- (void)_incrementLayoutMode;
- (void)_requestSignificantTransition;
- (void)_updateLabel;
- (void)_updateLabel:(id)a3 forLayoutMode:(int64_t)a4;
- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5;
- (void)layoutHostContainerViewWillLayoutSubviews:(id)a3;
@end

@implementation SBPrototypeAdvancedActivityElementViewProvider

- (SBPrototypeAdvancedActivityElementViewProvider)init
{
  v3.receiver = self;
  v3.super_class = SBPrototypeAdvancedActivityElementViewProvider;
  result = [(SBPrototypeAdvancedActivityElementViewProvider *)&v3 init];
  if (result)
  {
    result->_preferredLayoutMode = 2;
  }

  return result;
}

- (BOOL)handleElementViewEvent:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      [(SBPrototypeAdvancedActivityElementViewProvider *)self _requestSignificantTransition];
      return 1;
    case 2:
      [(SBPrototypeAdvancedActivityElementViewProvider *)self _decrementLayoutMode];
      return 1;
    case 1:
      [(SBPrototypeAdvancedActivityElementViewProvider *)self _incrementLayoutMode];
      return 1;
  }

  return 0;
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = MEMORY[0x277D755B8];
    v6 = MEMORY[0x277D755D0];
    v7 = [MEMORY[0x277D75348] systemGreenColor];
    v8 = [v6 configurationWithHierarchicalColor:v7];
    v9 = [v5 systemImageNamed:@"star.circle" withConfiguration:v8];
    v10 = [v4 initWithImage:v9];
    v11 = self->_leadingView;
    self->_leadingView = v10;

    leadingView = self->_leadingView;
  }

  return leadingView;
}

- (UIView)trailingView
{
  trailingView = self->_trailingView;
  if (!trailingView)
  {
    v4 = [(SBPrototypeAdvancedActivityElementViewProvider *)self _newTrailingLabel];
    v5 = self->_trailingView;
    self->_trailingView = v4;

    [(SBPrototypeAdvancedActivityElementViewProvider *)self _updateLabel];
    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  top = result.top;
  if (a3 == 3)
  {
    trailing = a5.trailing;
    leading = a5.leading;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained edgeOutsetsForSize:{1.79769313e308, 112.0}];
    bottom = v9;

    result.leading = leading;
    result.trailing = trailing;
  }

  else
  {
    bottom = result.bottom;
  }

  v11 = top;
  v12 = bottom;
  result.bottom = v12;
  result.top = v11;
  return result;
}

- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4 inLayoutMode:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = v9;
  v11 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF3A8] + 8);
  if (v9 && self->_trailingView == v9)
  {
    v13 = [(SBPrototypeAdvancedActivityElementViewProvider *)self _newTrailingLabel];
    [(SBPrototypeAdvancedActivityElementViewProvider *)self _updateLabel:v13 forLayoutMode:a5];
    [v13 sizeThatFits:{width, height}];
    v11 = v14;
    v12 = v15;
  }

  v16 = v11;
  v17 = v12;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)layoutHostContainerViewWillLayoutSubviews:(id)a3
{
  [a3 bounds];
  if (self->_layoutMode == 3)
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    [(UIView *)self->_leadingView setFrame:12.0, 12.0, 88.0, 88.0];
    [(UIView *)self->_trailingView sizeToFit];
    [(UIView *)self->_trailingView bounds];
    Width = CGRectGetWidth(v14);
    v15.origin.x = v8;
    v15.origin.y = v9;
    v15.size.width = v10;
    v15.size.height = v11;
    [(UIView *)self->_trailingView setFrame:CGRectGetMaxX(v15) - Width + -12.0, 12.0, Width, 88.0];
  }

  [(SBPrototypeAdvancedActivityElementViewProvider *)self _updateLabel];
}

- (id)_currentTrailingTitle
{
  if (self->_layoutCondensed)
  {
    return @"⭐️ 📽️";
  }

  else
  {
    return @"Star Demo";
  }
}

- (void)_requestSignificantTransition
{
  self->_layoutCondensed ^= 1u;
  v3 = [(SBPrototypeAdvancedActivityElementViewProvider *)self elementHost];
  if ([(SBPrototypeAdvancedActivityElementViewProvider *)self layoutMode]== 3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 elementRequestsSignificantUpdateTransition:self];
  }
}

- (void)_incrementLayoutMode
{
  preferredLayoutMode = self->_preferredLayoutMode;
  if (preferredLayoutMode < [(SBPrototypeAdvancedActivityElementViewProvider *)self maximumSupportedLayoutMode])
  {
    ++self->_preferredLayoutMode;
  }

  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
}

- (void)_decrementLayoutMode
{
  preferredLayoutMode = self->_preferredLayoutMode;
  if (preferredLayoutMode > [(SBPrototypeAdvancedActivityElementViewProvider *)self minimumSupportedLayoutMode])
  {
    --self->_preferredLayoutMode;
  }

  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredLayoutModeDidInvalidateForLayoutSpecifier:self];
}

- (id)_newTrailingLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v3 setTextAlignment:2];
  v4 = [MEMORY[0x277D75348] systemGreenColor];
  [v3 setTextColor:v4];

  v5 = [(SBPrototypeAdvancedActivityElementViewProvider *)self _currentTrailingTitle];
  [v3 setText:v5];

  return v3;
}

- (void)_updateLabel:(id)a3 forLayoutMode:(int64_t)a4
{
  v10 = a3;
  v6 = [(SBPrototypeAdvancedActivityElementViewProvider *)self _currentTrailingTitle];
  [v10 setText:v6];

  v7 = MEMORY[0x277D76968];
  if (a4 == 3)
  {
    v7 = MEMORY[0x277D76A08];
  }

  v8 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*v7];
  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];
  [v10 setFont:v9];
}

- (void)_updateLabel
{
  v3 = [(SBPrototypeAdvancedActivityElementViewProvider *)self trailingView];
  v4 = objc_opt_self();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(SBPrototypeAdvancedActivityElementViewProvider *)self _updateLabel:v7 forLayoutMode:self->_layoutMode];
}

- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __124__SBPrototypeAdvancedActivityElementViewProvider_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v9[3] = &unk_2783B6F60;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [a5 animateAlongsideTransition:v9 completion:0];
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (SAElementHosting)elementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_elementHost);

  return WeakRetained;
}

@end