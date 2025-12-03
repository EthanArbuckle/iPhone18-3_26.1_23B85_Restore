@interface WGWidgetPlatterView
+ (double)contentBaselineToBoundsBottomWithWidth:(double)width;
- (BOOL)_isUtilityButtonVisible;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGRect)_headerFrameForBounds:(CGRect)bounds;
- (CGSize)_contentSize;
- (CGSize)contentSizeForSize:(CGSize)size;
- (CGSize)intrinsicContentSize;
- (CGSize)minimumSizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)size;
- (NSArray)requiredVisualStyleCategories;
- (NSString)widgetIdentifier;
- (UIButton)addWidgetButton;
- (UIButton)showMoreButton;
- (WGWidgetHostingViewController)widgetHost;
- (WGWidgetListItemViewController)listItem;
- (WGWidgetPlatterView)initWithFrame:(CGRect)frame;
- (id)cancelTouches;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_configureBackgroundMaterialViewIfNecessary;
- (void)_configureHeaderViewsIfNecessary;
- (void)_handleAddWidget:(id)widget;
- (void)_handleIconButton:(id)button;
- (void)_layoutContentView;
- (void)_layoutHeaderViews;
- (void)_setContentView:(id)view;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setUtilityButtonVisible:(BOOL)visible;
- (void)_toggleShowMore:(id)more;
- (void)_updateHeaderContentViewVisualStyling;
- (void)_updateShowMoreButtonImage;
- (void)_updateUtilityButtonForMode:(int64_t)mode;
- (void)_updateUtilityButtonForMoreContentState:(BOOL)state;
- (void)iconDidInvalidate:(id)invalidate;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setBackgroundHidden:(BOOL)hidden;
- (void)setClippingEdge:(unint64_t)edge;
- (void)setContentViewHitTestingDisabled:(BOOL)disabled;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setOverrideHeightForLayingOutContentView:(double)view;
- (void)setShowingMoreContent:(BOOL)content;
- (void)setTopMarginForLayout:(double)layout;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)setWidgetHost:(id)host;
- (void)willRemoveSubview:(id)subview;
@end

@implementation WGWidgetPlatterView

- (WGWidgetPlatterView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = WGWidgetPlatterView;
  v3 = [(WGWidgetPlatterView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WGWidgetPlatterView *)v3 setClipsToBounds:1];
    [(WGWidgetPlatterView *)v4 setAutoresizesSubviews:1];
    [(WGWidgetPlatterView *)v4 _setContinuousCornerRadius:13.0];
    layer = [(WGWidgetPlatterView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_iconDidInvalidate_ name:@"WGWidgetInfoIconDidInvalidateNotification" object:0];
  }

  return v4;
}

- (void)setWidgetHost:(id)host
{
  hostCopy = host;
  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
  v6 = WeakRetained;
  if (WeakRetained != hostCopy)
  {
    view = [WeakRetained view];
    [view removeFromSuperview];

    v8 = objc_storeWeak(&self->_widgetHost, hostCopy);
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__WGWidgetPlatterView_setWidgetHost___block_invoke;
    v14[3] = &unk_279ED0FE8;
    objc_copyWeak(&v16, &location);
    v9 = hostCopy;
    v15 = v9;
    [v9 requestIconWithHandler:v14];
    headerContentView = self->_headerContentView;
    displayName = [v9 displayName];
    localizedUppercaseString = [displayName localizedUppercaseString];
    [(PLPlatterHeaderContentView *)headerContentView setTitle:localizedUppercaseString];

    [(WGWidgetPlatterView *)self _updateUtilityButtonForMode:self->_buttonMode];
    view2 = [v9 view];
    [(WGWidgetPlatterView *)self _setContentView:view2];

    [(WGWidgetPlatterView *)self setNeedsLayout];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __37__WGWidgetPlatterView_setWidgetHost___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WGWidgetPlatterView_setWidgetHost___block_invoke_2;
  block[3] = &unk_279ED0FC0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __37__WGWidgetPlatterView_setWidgetHost___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v9[0] = *(a1 + 32);
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [WeakRetained[52] setIcons:v3];
    }

    v4 = [*(a1 + 40) widgetIdentifier];
    v5 = WGApplicationIdentifierForWidgetWithBundleIdentifier(v4);
    v6 = [v5 length];

    if (v6)
    {
      v7 = [WeakRetained[52] iconButtons];
      v8 = [v7 firstObject];
      [v8 addTarget:WeakRetained action:sel__handleIconButton_ forControlEvents:64];
    }
  }
}

- (CGSize)minimumSizeThatFits:(CGSize)fits
{
  [(WGWidgetPlatterView *)self sizeThatFitsContentWithSize:fits.width, 0.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setContentViewHitTestingDisabled:(BOOL)disabled
{
  if (self->_contentViewHitTestingDisabled != disabled)
  {
    self->_contentViewHitTestingDisabled = disabled;
    [(UIView *)self->_contentView bs_setHitTestingDisabled:?];
  }
}

- (void)setClippingEdge:(unint64_t)edge
{
  if (edge != 1 && edge != 4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WGWidgetPlatterView.m" lineNumber:103 description:@"Only 'UIRectEdgeTop' or 'UIRectEdgeBottom' (but not both) are supported."];
  }

  if (self->_clippingEdge != edge)
  {
    self->_clippingEdge = edge;

    [(WGWidgetPlatterView *)self setNeedsLayout];
  }
}

- (void)setBackgroundHidden:(BOOL)hidden
{
  if (self->_backgroundHidden != hidden)
  {
    self->_backgroundHidden = hidden;
    [(WGWidgetPlatterView *)self setNeedsLayout];
  }
}

- (UIButton)showMoreButton
{
  [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
  headerContentView = self->_headerContentView;

  return [(PLPlatterHeaderContentView *)headerContentView utilityButton];
}

- (void)setShowingMoreContent:(BOOL)content
{
  contentCopy = content;
  contentCopy2 = content;
  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
  [WeakRetained setUserSpecifiedDisplayMode:contentCopy2];

  if (self->_showingMoreContent != contentCopy)
  {
    self->_showingMoreContent = contentCopy;

    [(WGWidgetPlatterView *)self _updateUtilityButtonForMoreContentState:contentCopy];
  }
}

- (UIButton)addWidgetButton
{
  [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
  headerContentView = self->_headerContentView;

  return [(PLPlatterHeaderContentView *)headerContentView utilityButton];
}

- (void)setTopMarginForLayout:(double)layout
{
  if (self->_topMarginForLayout != layout)
  {
    self->_topMarginForLayout = layout;
    [(WGWidgetPlatterView *)self setNeedsLayout];
  }
}

+ (double)contentBaselineToBoundsBottomWithWidth:(double)width
{
  v4 = _WGMainScreenScale();

  [(PLPlatterHeaderContentView *)WGPlatterHeaderContentView contentBaselineToBoundsBottomWithWidth:width scale:v4];
  return result;
}

- (NSString)widgetIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
  widgetIdentifier = [WeakRetained widgetIdentifier];

  return widgetIdentifier;
}

- (id)cancelTouches
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
  _cancelTouches = [WeakRetained _cancelTouches];

  return _cancelTouches;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
  parentViewController = [WeakRetained parentViewController];
  v7 = parentViewController;
  if (parentViewController)
  {
    [parentViewController sizeForChildContentContainer:WeakRetained withParentContainerSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  }

  else
  {
    [(WGWidgetPlatterView *)self _contentSize];
  }

  [(WGWidgetPlatterView *)self sizeThatFitsContentWithSize:width];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x277D77260];
  [(WGWidgetPlatterView *)self _contentSize];
  [(WGWidgetPlatterView *)self sizeThatFitsContentWithSize:?];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = WGWidgetPlatterView;
  [(WGWidgetPlatterView *)&v38 layoutSubviews];
  [(WGWidgetPlatterView *)self _configureBackgroundMaterialViewIfNecessary];
  [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
  [(WGWidgetPlatterView *)self _layoutHeaderViews];
  [(WGWidgetPlatterView *)self _layoutContentView];
  [(WGWidgetPlatterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_contentView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  MaxY = CGRectGetMaxY(v39);
  v40.origin.x = v12;
  v40.origin.y = v14;
  v40.size.width = v16;
  v40.size.height = v18;
  v19 = CGRectGetMaxY(v40);
  v20 = v19;
  clippingEdge = self->_clippingEdge;
  if (clippingEdge == 4)
  {
    v19 = MaxY;
    if (MaxY < v20)
    {
      v22 = 12;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (clippingEdge != 1)
  {
LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v41.origin.x = v4;
  v35 = v20;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  Height = CGRectGetHeight(v41);
  v42.origin.x = v12;
  v42.origin.y = v14;
  v42.size.width = v16;
  v42.size.height = v18;
  if (Height >= CGRectGetHeight(v42) + self->_cornerRadius)
  {
    v22 = 0;
  }

  else
  {
    v22 = 3;
  }

  [(WGPlatterHeaderContentView *)self->_headerContentView frame];
  v26 = v25;
  v28 = v27;
  v19 = MaxY;
  if (MaxY < v35 || (v29 = v23, v30 = v24, v43.origin.x = v4, v43.origin.y = v6, v43.size.width = v8, v43.size.height = v10, v31 = CGRectGetHeight(v43), v44.origin.x = v26, v44.origin.y = v28, v44.size.width = v29, v44.size.height = v30, v19 = CGRectGetHeight(v44) + self->_cornerRadius, v31 < v19))
  {
    v22 |= 0xCuLL;
  }

LABEL_12:
  layer = [(WGWidgetPlatterView *)self layer];
  [layer setMaskedCorners:v22];

  if (v22)
  {
    cornerRadius = self->_cornerRadius;
  }

  else
  {
    cornerRadius = 0.0;
  }

  v37.receiver = self;
  v37.super_class = WGWidgetPlatterView;
  [(WGWidgetPlatterView *)&v37 _setContinuousCornerRadius:cornerRadius];
}

- (void)willRemoveSubview:(id)subview
{
  subviewCopy = subview;
  v8.receiver = self;
  v8.super_class = WGWidgetPlatterView;
  [(WGWidgetPlatterView *)&v8 willRemoveSubview:subviewCopy];
  contentView = self->_contentView;
  if (contentView == subviewCopy)
  {
    self->_contentView = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
  if ([WeakRetained isViewLoaded])
  {
    view = [WeakRetained view];

    if (view == subviewCopy)
    {
      objc_storeWeak(&self->_widgetHost, 0);
    }
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(MTMaterialView *)self->_backgroundView _setContinuousCornerRadius:?];
    [(UIView *)self->_contentView _setContinuousCornerRadius:self->_cornerRadius];

    [(WGWidgetPlatterView *)self setNeedsDisplay];
  }
}

- (void)_updateShowMoreButtonImage
{
  showMoreButton = [(WGWidgetPlatterView *)self showMoreButton];
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940]];
  [v2 pointSize];
  v5 = v4;
  [v3 pointSize];
  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:(v5 + v6) * 0.5];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
  v9 = [v8 imageWithSymbolConfiguration:v7];

  [showMoreButton setImage:v9 forState:0];
  [showMoreButton setImageEdgeInsets:{-0.5, 0.0, 0.5, 0.0}];
  [showMoreButton _setTouchInsets:{-20.0, -20.0, -20.0, -20.0}];
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
  headerContentView = self->_headerContentView;
  if (headerContentView)
  {
    [(PLPlatterHeaderContentView *)headerContentView sizeThatFits:width, 0.0];
    height = height + v7;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)contentSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(WGWidgetPlatterView *)self sizeThatFitsContentWithSize:size.width, 0.0];
  v6 = ((height - v5) & ~((height - v5) >> 31));
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
    headerContentView = self->_headerContentView;
    adjustsFontForContentSizeCategory = self->_adjustsFontForContentSizeCategory;

    [(PLPlatterHeaderContentView *)headerContentView setAdjustsFontForContentSizeCategory:adjustsFontForContentSizeCategory];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  [(WGWidgetPlatterView *)self _updateShowMoreButtonImage];
  [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
  [(PLPlatterHeaderContentView *)self->_headerContentView adjustForContentSizeCategoryChange];
  [(WGWidgetPlatterView *)self setNeedsLayout];
  return 1;
}

- (void)setMaterialGroupNameBase:(id)base
{
  baseCopy = base;
  if (![(NSString *)self->_materialGroupNameBase isEqualToString:?])
  {
    objc_storeStrong(&self->_materialGroupNameBase, base);
    [(MTMaterialView *)self->_backgroundView setGroupNameBase:self->_materialGroupNameBase];
  }
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  if (self->_backgroundView)
  {
    v3 = [(MTMaterialView *)self->_backgroundView visualStylingProviderForCategory:category];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WGWidgetPlatterView;
    v3 = [(WGWidgetPlatterView *)&v5 visualStylingProviderForCategory:category];
  }

  return v3;
}

- (NSArray)requiredVisualStyleCategories
{
  [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
  headerContentView = self->_headerContentView;

  return [(PLPlatterHeaderContentView *)headerContentView requiredVisualStyleCategories];
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
  [(PLPlatterHeaderContentView *)self->_headerContentView setVisualStylingProvider:providerCopy forCategory:category];
}

- (void)_setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v11 = viewCopy;
    superview = [(UIView *)contentView superview];

    if (superview == self)
    {
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    [(UIView *)self->_contentView bs_setHitTestingDisabled:self->_contentViewHitTestingDisabled];
    v8 = self->_contentView;
    if (v8)
    {
      [(UIView *)v8 setAutoresizingMask:0];
      layer = [(UIView *)self->_contentView layer];
      [layer setMaskedCorners:12];

      [(UIView *)self->_contentView _setContinuousCornerRadius:self->_cornerRadius];
      [(UIView *)self->_contentView setClipsToBounds:1];
      [(WGWidgetPlatterView *)self _configureBackgroundMaterialViewIfNecessary];
      v10 = self->_contentView;
      if (self->_backgroundView)
      {
        [(WGWidgetPlatterView *)self insertSubview:v10 aboveSubview:?];
      }

      else
      {
        [(WGWidgetPlatterView *)self insertSubview:v10 atIndex:?];
      }
    }

    contentView = [(WGWidgetPlatterView *)self setNeedsLayout];
    viewCopy = v11;
  }

  MEMORY[0x2821F96F8](contentView, viewCopy);
}

- (void)_configureBackgroundMaterialViewIfNecessary
{
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    if (self->_backgroundHidden)
    {
      [(MTMaterialView *)backgroundView removeFromSuperview];
      v4 = self->_backgroundView;
      self->_backgroundView = 0;
    }
  }

  else if (!self->_backgroundHidden)
  {
    v5 = [MEMORY[0x277D26718] materialViewWithRecipe:2 configuration:1];
    v6 = self->_backgroundView;
    self->_backgroundView = v5;

    [(MTMaterialView *)self->_backgroundView setGroupNameBase:self->_materialGroupNameBase];
    [(MTMaterialView *)self->_backgroundView _setContinuousCornerRadius:self->_cornerRadius];
    v7 = self->_backgroundView;
    [(WGWidgetPlatterView *)self bounds];
    [(MTMaterialView *)v7 setFrame:?];
    [(MTMaterialView *)self->_backgroundView setAutoresizingMask:18];
    v8 = self->_backgroundView;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    [(MTMaterialView *)v8 setBlurEnabled:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
    v11 = self->_backgroundView;

    [(WGWidgetPlatterView *)self insertSubview:v11 atIndex:0];
  }
}

- (void)_updateHeaderContentViewVisualStyling
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_headerContentView)
  {
    [(WGWidgetPlatterView *)self _configureBackgroundMaterialViewIfNecessary];
    if (self->_backgroundView)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      requiredVisualStyleCategories = [(PLPlatterHeaderContentView *)self->_headerContentView requiredVisualStyleCategories];
      v4 = [requiredVisualStyleCategories countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v12;
        do
        {
          v7 = 0;
          do
          {
            if (*v12 != v6)
            {
              objc_enumerationMutation(requiredVisualStyleCategories);
            }

            integerValue = [*(*(&v11 + 1) + 8 * v7) integerValue];
            headerContentView = self->_headerContentView;
            v10 = [(MTMaterialView *)self->_backgroundView visualStylingProviderForCategory:integerValue];
            [(PLPlatterHeaderContentView *)headerContentView setVisualStylingProvider:v10 forCategory:integerValue];

            ++v7;
          }

          while (v5 != v7);
          v5 = [requiredVisualStyleCategories countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v5);
      }
    }
  }
}

- (void)_configureHeaderViewsIfNecessary
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults integerForKey:@"WGAzulWidgetsType"];

  if (self->_headerContentView)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    [(WGWidgetPlatterView *)self _configureBackgroundMaterialViewIfNecessary];
    v6 = objc_alloc_init(WGPlatterHeaderContentView);
    headerContentView = self->_headerContentView;
    self->_headerContentView = v6;

    [(PLPlatterHeaderContentView *)self->_headerContentView setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
    [(PLPlatterHeaderContentView *)self->_headerContentView setHeedsHorizontalLayoutMargins:1];
    layer = [(WGPlatterHeaderContentView *)self->_headerContentView layer];
    [layer setMaskedCorners:3];

    [(WGPlatterHeaderContentView *)self->_headerContentView _setContinuousCornerRadius:self->_cornerRadius];
    [(WGPlatterHeaderContentView *)self->_headerContentView setLayoutMargins:0.0, 11.5, 0.0, 11.5];
    [(WGWidgetPlatterView *)self addSubview:self->_headerContentView];

    [(WGWidgetPlatterView *)self _updateHeaderContentViewVisualStyling];
  }
}

- (CGSize)_contentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
  parentViewController = [WeakRetained parentViewController];
  v4 = parentViewController;
  if (parentViewController)
  {
    [parentViewController sizeForChildContentContainer:WeakRetained withParentContainerSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  }

  else
  {
    [WeakRetained preferredContentSize];
  }

  v7 = v5;
  v8 = v6;
  +[WGWidgetInfo maximumContentHeightForCompactDisplayMode];
  if (v8 < v9)
  {
    v8 = v9;
  }

  v10 = v7;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)_headerFrameForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(WGWidgetPlatterView *)self _configureHeaderViewsIfNecessary];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (CGRectIsEmpty(v12))
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    [(PLPlatterHeaderContentView *)self->_headerContentView sizeThatFits:width, height];
    BSRectWithSize();
    _WGMainScreenScale();
    UIRectIntegralWithScale();
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setOverrideHeightForLayingOutContentView:(double)view
{
  if (vabdd_f64(view, self->_overrideHeightForLayingOutContentView) > 2.22044605e-16)
  {
    self->_overrideHeightForLayingOutContentView = view;
    [(WGWidgetPlatterView *)self setNeedsLayout];
  }
}

- (void)_layoutContentView
{
  if (self->_contentView)
  {
    [(WGWidgetPlatterView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PLPlatterHeaderContentView *)self->_headerContentView sizeThatFits:v7, v9];
    if (self->_overrideHeightForLayingOutContentView <= 0.0)
    {
      [(WGWidgetPlatterView *)self _contentSize];
    }

    [(WGWidgetPlatterView *)self bounds];
    [(WGWidgetPlatterView *)self _headerFrameForBounds:?];
    MaxY = CGRectGetMaxY(v21);
    v22.origin.x = v4;
    v22.origin.y = v6;
    v22.size.width = v8;
    v22.size.height = v10;
    if (CGRectIsEmpty(v22))
    {
      v12 = *MEMORY[0x277CBF3A0];
      v13 = *(MEMORY[0x277CBF3A0] + 16);
      v14 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      v23.origin.x = v4;
      v23.origin.y = v6;
      v23.size.width = v8;
      v23.size.height = v10;
      CGRectGetWidth(v23);
      BSRectWithSize();
      v12 = v15;
      v13 = v16;
      v14 = v17;
    }

    if (self->_clippingEdge == 1)
    {
      [(WGWidgetPlatterView *)self topMarginForLayout];
      MaxY = MaxY - v18;
    }

    contentView = self->_contentView;

    [(UIView *)contentView setFrame:v12, MaxY, v13, v14];
  }
}

- (void)_layoutHeaderViews
{
  [(WGWidgetPlatterView *)self bounds];
  [(WGWidgetPlatterView *)self _headerFrameForBounds:?];
  [(WGPlatterHeaderContentView *)self->_headerContentView setFrame:?];
  headerContentView = self->_headerContentView;

  [(WGPlatterHeaderContentView *)headerContentView setNeedsLayout];
}

- (void)_handleIconButton:(id)button
{
  v16[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
  widgetIdentifier = [WeakRetained widgetIdentifier];
  v5 = WGApplicationIdentifierForWidgetWithBundleIdentifier(widgetIdentifier);

  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v7 = MEMORY[0x277D0AD60];
  v8 = *MEMORY[0x277CD9308];
  v9 = *MEMORY[0x277D0AC70];
  v15[0] = *MEMORY[0x277D0AC28];
  v15[1] = v9;
  v16[0] = v8;
  v16[1] = MEMORY[0x277CBEC38];
  v15[2] = *MEMORY[0x277D0AC58];
  v16[2] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v11 = [v7 optionsWithDictionary:v10];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__WGWidgetPlatterView__handleIconButton___block_invoke;
  v13[3] = &unk_279ED1010;
  v14 = v5;
  v12 = v5;
  [serviceWithDefaultShellEndpoint openApplication:v12 withOptions:v11 completion:v13];
}

void __41__WGWidgetPlatterView__handleIconButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__WGWidgetPlatterView__handleIconButton___block_invoke_cold_1(a1, v6);
  }
}

- (void)_updateUtilityButtonForMode:(int64_t)mode
{
  if (mode == 1)
  {
    addWidgetButton = [(WGWidgetPlatterView *)self addWidgetButton];
    [addWidgetButton removeTarget:self action:sel__toggleShowMore_ forControlEvents:64];

    addWidgetButton2 = [(WGWidgetPlatterView *)self addWidgetButton];
    [addWidgetButton2 addTarget:self action:sel__handleAddWidget_ forControlEvents:64];

    addWidgetButton3 = [(WGWidgetPlatterView *)self addWidgetButton];
    v10 = _os_feature_enabled_impl();
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10)
    {
      v13 = @"ADD_WIDGET_TITLE_LEGACY";
    }

    else
    {
      v13 = @"ADD_WIDGET_TITLE";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_2883435D8 table:@"Widgets"];
    [addWidgetButton3 setTitle:v14 forState:0];

    headerContentView = self->_headerContentView;

    [(WGPlatterHeaderContentView *)headerContentView setNeedsLayout];
  }

  else if (!mode)
  {
    WeakRetained = objc_loadWeakRetained(&self->_widgetHost);
    if ([WeakRetained isLinkedOnOrAfterSystemVersion:@"10.0"])
    {
      -[WGWidgetPlatterView setShowingMoreContent:](self, "setShowingMoreContent:", [WeakRetained userSpecifiedDisplayMode] == 1);
      showMoreButton = [(WGWidgetPlatterView *)self showMoreButton];
      [showMoreButton removeTarget:self action:sel__handleAddWidget_ forControlEvents:64];
      [showMoreButton addTarget:self action:sel__toggleShowMore_ forControlEvents:64];
      titleLabel = [showMoreButton titleLabel];
      if ([(WGWidgetPlatterView *)self _shouldReverseLayoutDirection])
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }

      [titleLabel setTextAlignment:v6];

      [(WGWidgetPlatterView *)self _updateShowMoreButtonImage];
      [(WGWidgetPlatterView *)self _updateUtilityButtonForMoreContentState:self->_showingMoreContent];
      -[WGWidgetPlatterView setShowMoreButtonVisible:](self, "setShowMoreButtonVisible:", [WeakRetained largestAvailableDisplayMode] == 1);
    }

    else
    {
      [(WGWidgetPlatterView *)self setShowMoreButtonVisible:0];
    }
  }
}

- (BOOL)_isUtilityButtonVisible
{
  utilityButton = [(PLPlatterHeaderContentView *)self->_headerContentView utilityButton];
  [utilityButton alpha];
  v4 = v3 > 0.0;

  return v4;
}

- (void)_setUtilityButtonVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(WGWidgetPlatterView *)self _isUtilityButtonVisible]!= visible)
  {
    utilityButton = [(PLPlatterHeaderContentView *)self->_headerContentView utilityButton];
    v6 = utilityButton;
    v7 = 0.0;
    if (visibleCopy)
    {
      v7 = 1.0;
    }

    [utilityButton setAlpha:v7];

    [(WGWidgetPlatterView *)self setNeedsLayout];
  }
}

- (void)_toggleShowMore:(id)more
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__WGWidgetPlatterView__toggleShowMore___block_invoke;
  v3[3] = &unk_279ED0948;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:6 delay:v3 options:0 animations:0.3 completion:0.0];
}

uint64_t __39__WGWidgetPlatterView__toggleShowMore___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 isShowingMoreContent] ^ 1;

  return [v1 setShowingMoreContent:v2];
}

- (void)_handleAddWidget:(id)widget
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__WGWidgetPlatterView__handleAddWidget___block_invoke;
  v13[3] = &unk_279ED0948;
  v13[4] = self;
  [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:0 delay:v13 options:0 mass:0.4 stiffness:0.0 damping:3.0 initialVelocity:1560.0 animations:600.0 completion:0.0];
  v4 = objc_alloc_init(WGCircleCheckView);
  v5 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__WGWidgetPlatterView__handleAddWidget___block_invoke_2;
  v11[3] = &unk_279ED0A40;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  [v5 performWithoutAnimation:v11];
  v7 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__WGWidgetPlatterView__handleAddWidget___block_invoke_3;
  v9[3] = &unk_279ED0948;
  v10 = v6;
  v8 = v6;
  [v7 animateWithDuration:v9 animations:0.4];
}

uint64_t __40__WGWidgetPlatterView__handleAddWidget___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setUtilityView:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 416);

  return [v2 layoutIfNeeded];
}

- (void)_updateUtilityButtonForMoreContentState:(BOOL)state
{
  if (!self->_buttonMode)
  {
    v20 = v6;
    v21 = v5;
    v22 = v3;
    v23 = v4;
    stateCopy = state;
    _shouldReverseLayoutDirection = [(WGWidgetPlatterView *)self _shouldReverseLayoutDirection];
    v10 = *MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v19.a = *MEMORY[0x277CBF2C0];
    *&v19.c = v11;
    v12 = *(MEMORY[0x277CBF2C0] + 32);
    *&v19.tx = v12;
    if (stateCopy)
    {
      v13 = -3.0;
      if (_shouldReverseLayoutDirection)
      {
        v13 = 3.0;
      }

      v14 = -0.5;
      if (_shouldReverseLayoutDirection)
      {
        v14 = 0.5;
      }

      *&v18.a = v10;
      *&v18.c = v11;
      *&v18.tx = v12;
      if (_shouldReverseLayoutDirection)
      {
        v15 = -1.57079633;
      }

      else
      {
        v15 = 1.57079633;
      }

      CGAffineTransformTranslate(&v19, &v18, v13, v14);
      v17 = v19;
      CGAffineTransformRotate(&v18, &v17, v15);
      v19 = v18;
    }

    headerContentView = self->_headerContentView;
    v18 = v19;
    [(WGPlatterHeaderContentView *)headerContentView setUtilityButtonTransform:&v18];
  }
}

- (void)iconDidInvalidate:(id)invalidate
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__WGWidgetPlatterView_iconDidInvalidate___block_invoke;
  v3[3] = &unk_279ED0AB8;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __41__WGWidgetPlatterView_iconDidInvalidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained widgetHost];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__WGWidgetPlatterView_iconDidInvalidate___block_invoke_2;
  v4[3] = &unk_279ED1038;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 requestIconWithHandler:v4];

  objc_destroyWeak(&v5);
}

void __41__WGWidgetPlatterView_iconDidInvalidate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__WGWidgetPlatterView_iconDidInvalidate___block_invoke_3;
  v5[3] = &unk_279ED09F0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __41__WGWidgetPlatterView_iconDidInvalidate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained[52];
  if (v3)
  {
    v5 = WeakRetained;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{*(a1 + 32), 0}];
    [v3 setIcons:v4];

    WeakRetained = v5;
  }
}

- (WGWidgetHostingViewController)widgetHost
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetHost);

  return WeakRetained;
}

- (WGWidgetListItemViewController)listItem
{
  WeakRetained = objc_loadWeakRetained(&self->_listItem);

  return WeakRetained;
}

void __41__WGWidgetPlatterView__handleIconButton___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_27425E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to open application with bundle identifier '%@': %@", &v3, 0x16u);
}

@end