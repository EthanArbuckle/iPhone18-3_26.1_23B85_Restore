@interface SBTopAffordanceDotsView
- (BOOL)isHighlighted;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (SBTopAffordanceDotsView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (SBTopAffordanceDotsViewDelegate)delegate;
- (UIEdgeInsets)hitTestEdgeInsets;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_dotViews;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_updateBackgroundColor;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHitTestEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation SBTopAffordanceDotsView

- (SBTopAffordanceDotsView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v66[12] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v65.receiver = self;
  v65.super_class = SBTopAffordanceDotsView;
  height = [(SBTopAffordanceDotsView *)&v65 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(SBTopAffordanceDotsView *)height setAccessibilityTraits:*MEMORY[0x277D76548]];
    [(SBTopAffordanceDotsView *)v11 setIsAccessibilityElement:1];
    [(SBTopAffordanceDotsView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBTopAffordanceDotsView *)v11 setUserInteractionEnabled:1];
    layer = [(SBTopAffordanceDotsView *)v11 layer];
    [layer setCornerRadius:7.0];

    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    hitTestBlocker = v11->_hitTestBlocker;
    v11->_hitTestBlocker = v13;

    v15 = v11->_hitTestBlocker;
    [MEMORY[0x277D75348] clearColor];
    v16 = v64 = delegateCopy;
    [(UIView *)v15 setBackgroundColor:v16];

    layer2 = [(UIView *)v11->_hitTestBlocker layer];
    [layer2 setHitTestsAsOpaque:1];

    layer3 = [(UIView *)v11->_hitTestBlocker layer];
    [layer3 setAllowsHitTesting:1];

    [(UIView *)v11->_hitTestBlocker setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = objc_alloc_init(SBTopAffordanceDotView);
    leadingDotView = v11->_leadingDotView;
    v11->_leadingDotView = v19;

    v21 = objc_alloc_init(SBTopAffordanceDotView);
    centerDotView = v11->_centerDotView;
    v11->_centerDotView = v21;

    v23 = objc_alloc_init(SBTopAffordanceDotView);
    trailingDotView = v11->_trailingDotView;
    v11->_trailingDotView = v23;

    [(SBTopAffordanceDotsView *)v11 addSubview:v11->_hitTestBlocker];
    [(SBTopAffordanceDotsView *)v11 addSubview:v11->_leadingDotView];
    [(SBTopAffordanceDotsView *)v11 addSubview:v11->_centerDotView];
    [(SBTopAffordanceDotsView *)v11 addSubview:v11->_trailingDotView];
    widthAnchor = [(UIView *)v11->_hitTestBlocker widthAnchor];
    v26 = [widthAnchor constraintEqualToConstant:0.0];
    hitTestBlockerWidthConstraint = v11->_hitTestBlockerWidthConstraint;
    v11->_hitTestBlockerWidthConstraint = v26;

    heightAnchor = [(UIView *)v11->_hitTestBlocker heightAnchor];
    v29 = [heightAnchor constraintEqualToConstant:0.0];
    hitTestBlockerHeightConstraint = v11->_hitTestBlockerHeightConstraint;
    v11->_hitTestBlockerHeightConstraint = v29;

    leftAnchor = [(UIView *)v11->_hitTestBlocker leftAnchor];
    leftAnchor2 = [(SBTopAffordanceDotsView *)v11 leftAnchor];
    v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
    hitTestBlockerLeftConstraint = v11->_hitTestBlockerLeftConstraint;
    v11->_hitTestBlockerLeftConstraint = v33;

    widthAnchor2 = [(SBTopAffordanceDotsView *)v11 widthAnchor];
    v62 = [widthAnchor2 constraintEqualToConstant:32.0];
    v66[0] = v62;
    heightAnchor2 = [(SBTopAffordanceDotsView *)v11 heightAnchor];
    v60 = [heightAnchor2 constraintEqualToConstant:14.0];
    v66[1] = v60;
    trailingAnchor = [(SBTopAffordanceDotView *)v11->_leadingDotView trailingAnchor];
    leadingAnchor = [(SBTopAffordanceDotView *)v11->_centerDotView leadingAnchor];
    v57 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-3.0];
    v66[2] = v57;
    leadingAnchor2 = [(SBTopAffordanceDotView *)v11->_trailingDotView leadingAnchor];
    trailingAnchor2 = [(SBTopAffordanceDotView *)v11->_centerDotView trailingAnchor];
    v54 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:3.0];
    v66[3] = v54;
    centerYAnchor = [(SBTopAffordanceDotView *)v11->_leadingDotView centerYAnchor];
    centerYAnchor2 = [(SBTopAffordanceDotView *)v11->_centerDotView centerYAnchor];
    v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v66[4] = v51;
    centerXAnchor = [(SBTopAffordanceDotView *)v11->_centerDotView centerXAnchor];
    centerXAnchor2 = [(SBTopAffordanceDotsView *)v11 centerXAnchor];
    v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v66[5] = v48;
    centerYAnchor3 = [(SBTopAffordanceDotView *)v11->_centerDotView centerYAnchor];
    centerYAnchor4 = [(SBTopAffordanceDotsView *)v11 centerYAnchor];
    v36 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v66[6] = v36;
    centerYAnchor5 = [(SBTopAffordanceDotView *)v11->_trailingDotView centerYAnchor];
    centerYAnchor6 = [(SBTopAffordanceDotView *)v11->_centerDotView centerYAnchor];
    v39 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v66[7] = v39;
    topAnchor = [(UIView *)v11->_hitTestBlocker topAnchor];
    topAnchor2 = [(SBTopAffordanceDotsView *)v11 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v66[8] = v42;
    v66[9] = v11->_hitTestBlockerWidthConstraint;
    v66[10] = v11->_hitTestBlockerHeightConstraint;
    v66[11] = v11->_hitTestBlockerLeftConstraint;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:12];
    [(SBTopAffordanceDotsView *)v11 addConstraints:v43];

    delegateCopy = v64;
    v44 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v11];
    pointerInteraction = v11->_pointerInteraction;
    v11->_pointerInteraction = v44;

    [(SBTopAffordanceDotsView *)v11 addInteraction:v11->_pointerInteraction];
    objc_storeWeak(&v11->_delegate, v64);
  }

  return v11;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _dotViews = [(SBTopAffordanceDotsView *)self _dotViews];
  v6 = [_dotViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(_dotViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) setHighlighted:highlightedCopy];
      }

      while (v7 != v9);
      v7 = [_dotViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(SBTopAffordanceDotsView *)self _updateBackgroundColor];
  [(UIPointerInteraction *)self->_pointerInteraction invalidate];
}

- (BOOL)isHighlighted
{
  _dotViews = [(SBTopAffordanceDotsView *)self _dotViews];
  firstObject = [_dotViews firstObject];
  isHighlighted = [firstObject isHighlighted];

  return isHighlighted;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SBTopAffordanceDotsView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SBTopAffordanceDotsView *)self hitTestEdgeInsets];
  v16 = v10 + v15;
  v19 = v12 - (v17 + v18);
  v21 = v14 - (v15 + v20);
  v22 = v8 + v17;
  v23 = v16;
  v24 = v19;
  v25 = x;
  v26 = y;

  return CGRectContainsPoint(*&v22, *&v25);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v6 = MEMORY[0x277D75880];
  regionCopy = region;
  [(SBTopAffordanceDotsView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  identifier = [regionCopy identifier];

  v17 = [v6 regionWithRect:identifier identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x277D758D8]);
  v6 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v5];
  if ([(SBTopAffordanceDotsView *)self isHighlighted])
  {
    v7 = [MEMORY[0x277D75878] effectWithPreview:v6];
    v8 = 0;
  }

  else
  {
    [(SBTopAffordanceDotsView *)self frame];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    v13 = CGRectGetHeight(v17) * 0.5;
    v7 = [MEMORY[0x277D75860] effectWithPreview:v6];
    v8 = [MEMORY[0x277D75888] shapeWithRoundedRect:x cornerRadius:{y, width, height, v13}];
  }

  v14 = [MEMORY[0x277D75890] styleWithEffect:v7 shape:v8];

  return v14;
}

- (void)setHitTestEdgeInsets:(UIEdgeInsets)insets
{
  self->_hitTestEdgeInsets = insets;
  hitTestBlockerWidthConstraint = self->_hitTestBlockerWidthConstraint;
  [(SBTopAffordanceDotsView *)self hitTestEdgeInsets];
  v6 = 32.0 - v5;
  [(SBTopAffordanceDotsView *)self hitTestEdgeInsets];
  [(NSLayoutConstraint *)hitTestBlockerWidthConstraint setConstant:v6 - v7];
  hitTestBlockerHeightConstraint = self->_hitTestBlockerHeightConstraint;
  [(SBTopAffordanceDotsView *)self hitTestEdgeInsets];
  [(NSLayoutConstraint *)hitTestBlockerHeightConstraint setConstant:14.0 - v9];
  hitTestBlockerLeftConstraint = self->_hitTestBlockerLeftConstraint;
  [(SBTopAffordanceDotsView *)self hitTestEdgeInsets];

  [(NSLayoutConstraint *)hitTestBlockerLeftConstraint setConstant:v11];
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = SBTopAffordanceDotsView;
  v5 = [(SBTopAffordanceDotsView *)&v8 _contextMenuInteraction:interaction styleForMenuWithConfiguration:configuration];
  superview = [(SBTopAffordanceDotsView *)self superview];
  [v5 setContainerView:superview];

  if (objc_opt_respondsToSelector())
  {
    [v5 setPreferredAttachmentEdge:4];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setPrefersStackedHierarchy:1];
  }

  return v5;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  [(SBTopAffordanceDotsView *)self bounds];
  MidX = CGRectGetMidX(v6);
  v4 = 3.0;
  result.y = v4;
  result.x = MidX;
  return result;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = SBTopAffordanceDotsView;
  [(SBTopAffordanceDotsView *)&v7 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained topAffordanceDotsViewWillPresentMenu:self];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = SBTopAffordanceDotsView;
  [(SBTopAffordanceDotsView *)&v7 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained topAffordanceDotsViewWillDismissMenu:self];
}

- (void)_updateBackgroundColor
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  if ([(SBTopAffordanceDotsView *)self isHighlighted])
  {
    traitCollection = [(SBTopAffordanceDotsView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      v4 = 0.16;
      v5 = 1.0;
    }

    else
    {
      v4 = 0.1;
      v5 = 0.0;
    }

    v7 = [MEMORY[0x277D75348] colorWithWhite:v5 alpha:v4];

    v6 = v7;
  }

  else
  {
    v6 = clearColor;
  }

  v9 = v6;
  [(SBTopAffordanceDotsView *)self setBackgroundColor:v6];
}

- (id)_dotViews
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(SBTopAffordanceDotsView *)self subviews];
  v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (UIEdgeInsets)hitTestEdgeInsets
{
  top = self->_hitTestEdgeInsets.top;
  left = self->_hitTestEdgeInsets.left;
  bottom = self->_hitTestEdgeInsets.bottom;
  right = self->_hitTestEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SBTopAffordanceDotsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end