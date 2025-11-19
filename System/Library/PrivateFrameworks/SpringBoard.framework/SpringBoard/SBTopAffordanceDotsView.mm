@interface SBTopAffordanceDotsView
- (BOOL)isHighlighted;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (SBTopAffordanceDotsView)initWithFrame:(CGRect)a3 delegate:(id)a4;
- (SBTopAffordanceDotsViewDelegate)delegate;
- (UIEdgeInsets)hitTestEdgeInsets;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_dotViews;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_updateBackgroundColor;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)setHighlighted:(BOOL)a3;
- (void)setHitTestEdgeInsets:(UIEdgeInsets)a3;
@end

@implementation SBTopAffordanceDotsView

- (SBTopAffordanceDotsView)initWithFrame:(CGRect)a3 delegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v66[12] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v65.receiver = self;
  v65.super_class = SBTopAffordanceDotsView;
  v10 = [(SBTopAffordanceDotsView *)&v65 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(SBTopAffordanceDotsView *)v10 setAccessibilityTraits:*MEMORY[0x277D76548]];
    [(SBTopAffordanceDotsView *)v11 setIsAccessibilityElement:1];
    [(SBTopAffordanceDotsView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBTopAffordanceDotsView *)v11 setUserInteractionEnabled:1];
    v12 = [(SBTopAffordanceDotsView *)v11 layer];
    [v12 setCornerRadius:7.0];

    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    hitTestBlocker = v11->_hitTestBlocker;
    v11->_hitTestBlocker = v13;

    v15 = v11->_hitTestBlocker;
    [MEMORY[0x277D75348] clearColor];
    v16 = v64 = v9;
    [(UIView *)v15 setBackgroundColor:v16];

    v17 = [(UIView *)v11->_hitTestBlocker layer];
    [v17 setHitTestsAsOpaque:1];

    v18 = [(UIView *)v11->_hitTestBlocker layer];
    [v18 setAllowsHitTesting:1];

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
    v25 = [(UIView *)v11->_hitTestBlocker widthAnchor];
    v26 = [v25 constraintEqualToConstant:0.0];
    hitTestBlockerWidthConstraint = v11->_hitTestBlockerWidthConstraint;
    v11->_hitTestBlockerWidthConstraint = v26;

    v28 = [(UIView *)v11->_hitTestBlocker heightAnchor];
    v29 = [v28 constraintEqualToConstant:0.0];
    hitTestBlockerHeightConstraint = v11->_hitTestBlockerHeightConstraint;
    v11->_hitTestBlockerHeightConstraint = v29;

    v31 = [(UIView *)v11->_hitTestBlocker leftAnchor];
    v32 = [(SBTopAffordanceDotsView *)v11 leftAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:0.0];
    hitTestBlockerLeftConstraint = v11->_hitTestBlockerLeftConstraint;
    v11->_hitTestBlockerLeftConstraint = v33;

    v63 = [(SBTopAffordanceDotsView *)v11 widthAnchor];
    v62 = [v63 constraintEqualToConstant:32.0];
    v66[0] = v62;
    v61 = [(SBTopAffordanceDotsView *)v11 heightAnchor];
    v60 = [v61 constraintEqualToConstant:14.0];
    v66[1] = v60;
    v59 = [(SBTopAffordanceDotView *)v11->_leadingDotView trailingAnchor];
    v58 = [(SBTopAffordanceDotView *)v11->_centerDotView leadingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58 constant:-3.0];
    v66[2] = v57;
    v56 = [(SBTopAffordanceDotView *)v11->_trailingDotView leadingAnchor];
    v55 = [(SBTopAffordanceDotView *)v11->_centerDotView trailingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55 constant:3.0];
    v66[3] = v54;
    v53 = [(SBTopAffordanceDotView *)v11->_leadingDotView centerYAnchor];
    v52 = [(SBTopAffordanceDotView *)v11->_centerDotView centerYAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v66[4] = v51;
    v50 = [(SBTopAffordanceDotView *)v11->_centerDotView centerXAnchor];
    v49 = [(SBTopAffordanceDotsView *)v11 centerXAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v66[5] = v48;
    v47 = [(SBTopAffordanceDotView *)v11->_centerDotView centerYAnchor];
    v35 = [(SBTopAffordanceDotsView *)v11 centerYAnchor];
    v36 = [v47 constraintEqualToAnchor:v35];
    v66[6] = v36;
    v37 = [(SBTopAffordanceDotView *)v11->_trailingDotView centerYAnchor];
    v38 = [(SBTopAffordanceDotView *)v11->_centerDotView centerYAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    v66[7] = v39;
    v40 = [(UIView *)v11->_hitTestBlocker topAnchor];
    v41 = [(SBTopAffordanceDotsView *)v11 topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v66[8] = v42;
    v66[9] = v11->_hitTestBlockerWidthConstraint;
    v66[10] = v11->_hitTestBlockerHeightConstraint;
    v66[11] = v11->_hitTestBlockerLeftConstraint;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:12];
    [(SBTopAffordanceDotsView *)v11 addConstraints:v43];

    v9 = v64;
    v44 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v11];
    pointerInteraction = v11->_pointerInteraction;
    v11->_pointerInteraction = v44;

    [(SBTopAffordanceDotsView *)v11 addInteraction:v11->_pointerInteraction];
    objc_storeWeak(&v11->_delegate, v64);
  }

  return v11;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBTopAffordanceDotsView *)self _dotViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setHighlighted:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(SBTopAffordanceDotsView *)self _updateBackgroundColor];
  [(UIPointerInteraction *)self->_pointerInteraction invalidate];
}

- (BOOL)isHighlighted
{
  v2 = [(SBTopAffordanceDotsView *)self _dotViews];
  v3 = [v2 firstObject];
  v4 = [v3 isHighlighted];

  return v4;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = MEMORY[0x277D75880];
  v7 = a5;
  [(SBTopAffordanceDotsView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 identifier];

  v17 = [v6 regionWithRect:v16 identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
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

- (void)setHitTestEdgeInsets:(UIEdgeInsets)a3
{
  self->_hitTestEdgeInsets = a3;
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

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBTopAffordanceDotsView;
  v5 = [(SBTopAffordanceDotsView *)&v8 _contextMenuInteraction:a3 styleForMenuWithConfiguration:a4];
  v6 = [(SBTopAffordanceDotsView *)self superview];
  [v5 setContainerView:v6];

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

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  [(SBTopAffordanceDotsView *)self bounds];
  MidX = CGRectGetMidX(v6);
  v4 = 3.0;
  result.y = v4;
  result.x = MidX;
  return result;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = SBTopAffordanceDotsView;
  [(SBTopAffordanceDotsView *)&v7 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained topAffordanceDotsViewWillPresentMenu:self];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = SBTopAffordanceDotsView;
  [(SBTopAffordanceDotsView *)&v7 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained topAffordanceDotsViewWillDismissMenu:self];
}

- (void)_updateBackgroundColor
{
  v8 = [MEMORY[0x277D75348] clearColor];
  if ([(SBTopAffordanceDotsView *)self isHighlighted])
  {
    v3 = [(SBTopAffordanceDotsView *)self traitCollection];
    if ([v3 userInterfaceStyle] == 2)
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
    v6 = v8;
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
  v4 = [(SBTopAffordanceDotsView *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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