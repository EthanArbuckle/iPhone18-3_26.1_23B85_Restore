@interface SLHighlightPillMarqueeView
- (SLHighlightPillMarqueeView)initWithFrame:(CGRect)frame pillView:(id)view;
- (void)_activateMarqueeAnimationIfNecessary;
- (void)_deactivateMarqueeAnimationIfNecessary;
- (void)layoutSubviews;
- (void)setEndingPositionConstraintsShouldBeActive:(BOOL)active;
- (void)setMarqueeClippingWidth:(double)width;
- (void)setMarqueeEnabled:(BOOL)enabled;
- (void)setReplicatedContentAlignment:(int64_t)alignment;
- (void)updateConstraints;
@end

@implementation SLHighlightPillMarqueeView

- (SLHighlightPillMarqueeView)initWithFrame:(CGRect)frame pillView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v38.receiver = self;
  v38.super_class = SLHighlightPillMarqueeView;
  height = [(SLHighlightPillMarqueeView *)&v38 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(SLHighlightPillMarqueeView *)height setPillView:viewCopy];
    [(SLHighlightPillMarqueeView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SLHighlightPillMarqueeView *)v11 setMarqueeAnimationIsActive:0];
    [(SLHighlightPillMarqueeView *)v11 setEndingPositionConstraintsShouldBeActive:0];
    height2 = [[SLReplicatorView alloc] initWithFrame:viewCopy targetView:x, y, width, height];
    [(SLHighlightPillMarqueeView *)v11 setReplicatorView:height2];

    replicatorView = [(SLHighlightPillMarqueeView *)v11 replicatorView];
    [replicatorView setTranslatesAutoresizingMaskIntoConstraints:0];

    replicatorView2 = [(SLHighlightPillMarqueeView *)v11 replicatorView];
    [(SLHighlightPillMarqueeView *)v11 addSubview:replicatorView2];

    v15 = MEMORY[0x277D755B8];
    v16 = SLFrameworkBundle();
    traitCollection = [(SLHighlightPillMarqueeView *)v11 traitCollection];
    v18 = [v15 imageNamed:@"SLAttributionViewMarqueeMask" inBundle:v16 compatibleWithTraitCollection:traitCollection];

    [v18 size];
    v20 = 1.0 / v19;
    layer = [MEMORY[0x277CD9ED0] layer];
    [(SLHighlightPillMarqueeView *)v11 setMaskLayer:layer];

    cGImage = [v18 CGImage];
    maskLayer = [(SLHighlightPillMarqueeView *)v11 maskLayer];
    [maskLayer setContents:cGImage];

    maskLayer2 = [(SLHighlightPillMarqueeView *)v11 maskLayer];
    [maskLayer2 setContentsCenter:{0.5 - v20 * 0.5, 0.0, v20, 1.0}];

    [v18 scale];
    v26 = v25;
    maskLayer3 = [(SLHighlightPillMarqueeView *)v11 maskLayer];
    [maskLayer3 setContentsScale:v26];

    [(SLHighlightPillMarqueeView *)v11 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    maskLayer4 = [(SLHighlightPillMarqueeView *)v11 maskLayer];
    [maskLayer4 setFrame:{v29, v31, v33, v35}];
  }

  return v11;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SLHighlightPillMarqueeView;
  [(SLHighlightPillMarqueeView *)&v12 layoutSubviews];
  [(SLHighlightPillMarqueeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  maskLayer = [(SLHighlightPillMarqueeView *)self maskLayer];
  [maskLayer setFrame:{v4, v6, v8, v10}];
}

- (void)setMarqueeEnabled:(BOOL)enabled
{
  if (self->_marqueeEnabled != enabled)
  {
    v9 = v3;
    v10 = v4;
    self->_marqueeEnabled = enabled;
    [(SLHighlightPillMarqueeView *)self updateConstraints];
    [(SLHighlightPillMarqueeView *)self layoutIfNeeded];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SLHighlightPillMarqueeView_setMarqueeEnabled___block_invoke;
    v7[3] = &unk_278925D40;
    enabledCopy = enabled;
    v7[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

uint64_t __48__SLHighlightPillMarqueeView_setMarqueeEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 maskLayer];
    v5 = [*(a1 + 32) layer];
    [v5 setMask:v4];

    [*(a1 + 32) setNeedsLayout];
    v6 = *(a1 + 32);

    return [v6 _activateMarqueeAnimationIfNecessary];
  }

  else
  {
    v8 = [v3 layer];
    [v8 setMask:0];

    [*(a1 + 32) setNeedsLayout];
    v9 = *(a1 + 32);

    return [v9 _deactivateMarqueeAnimationIfNecessary];
  }
}

- (void)setMarqueeClippingWidth:(double)width
{
  if (!SL_CGFloatApproximatelyEqualToFloat(width, self->_marqueeClippingWidth))
  {
    self->_marqueeClippingWidth = width;
    if (![(SLHighlightPillMarqueeView *)self marqueeAnimationIsActive])
    {

      [(SLHighlightPillMarqueeView *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setReplicatedContentAlignment:(int64_t)alignment
{
  if (self->_replicatedContentAlignment != alignment)
  {
    self->_replicatedContentAlignment = alignment;
    if (![(SLHighlightPillMarqueeView *)self marqueeAnimationIsActive])
    {

      [(SLHighlightPillMarqueeView *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setEndingPositionConstraintsShouldBeActive:(BOOL)active
{
  if (self->_endingPositionConstraintsShouldBeActive != active)
  {
    self->_endingPositionConstraintsShouldBeActive = active;
    [(SLHighlightPillMarqueeView *)self updateConstraints];

    [(SLHighlightPillMarqueeView *)self layoutIfNeeded];
  }
}

- (void)updateConstraints
{
  v72.receiver = self;
  v72.super_class = SLHighlightPillMarqueeView;
  [(SLHighlightPillMarqueeView *)&v72 updateConstraints];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  ourWidthConstraint = [(SLHighlightPillMarqueeView *)self ourWidthConstraint];

  if (ourWidthConstraint)
  {
    ourWidthConstraint2 = [(SLHighlightPillMarqueeView *)self ourWidthConstraint];
    [ourWidthConstraint2 constant];
    v8 = v7;
    [(SLHighlightPillMarqueeView *)self marqueeClippingWidth];
    v10 = SL_CGFloatApproximatelyEqualToFloat(v8, v9);

    if (v10)
    {
      goto LABEL_6;
    }

    [(SLHighlightPillMarqueeView *)self marqueeClippingWidth];
    v12 = v11;
    ourWidthConstraint3 = [(SLHighlightPillMarqueeView *)self ourWidthConstraint];
    [ourWidthConstraint3 setConstant:v12];
  }

  else
  {
    widthAnchor = [(SLHighlightPillMarqueeView *)self widthAnchor];
    [(SLHighlightPillMarqueeView *)self marqueeClippingWidth];
    v15 = [widthAnchor constraintEqualToConstant:?];
    [(SLHighlightPillMarqueeView *)self setOurWidthConstraint:v15];

    ourWidthConstraint3 = [(SLHighlightPillMarqueeView *)self ourWidthConstraint];
    [v3 addObject:ourWidthConstraint3];
  }

LABEL_6:
  ourHeightConstraint = [(SLHighlightPillMarqueeView *)self ourHeightConstraint];

  if (!ourHeightConstraint)
  {
    heightAnchor = [(SLHighlightPillMarqueeView *)self heightAnchor];
    pillView = [(SLHighlightPillMarqueeView *)self pillView];
    heightAnchor2 = [pillView heightAnchor];
    v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [(SLHighlightPillMarqueeView *)self setOurHeightConstraint:v20];

    ourHeightConstraint2 = [(SLHighlightPillMarqueeView *)self ourHeightConstraint];
    [v3 addObject:ourHeightConstraint2];
  }

  replicatedContentAlignment = [(SLHighlightPillMarqueeView *)self replicatedContentAlignment];
  if (replicatedContentAlignment != 2)
  {
    if (replicatedContentAlignment == 1 && ![(SLHighlightPillMarqueeView *)self marqueeEnabled])
    {
      centerXAnchor = [(SLHighlightPillMarqueeView *)self centerXAnchor];
      replicatorView = [(SLHighlightPillMarqueeView *)self replicatorView];
      centerXAnchor2 = [replicatorView centerXAnchor];
      goto LABEL_11;
    }

LABEL_10:
    centerXAnchor = [(SLHighlightPillMarqueeView *)self leadingAnchor];
    replicatorView = [(SLHighlightPillMarqueeView *)self replicatorView];
    centerXAnchor2 = [replicatorView leadingAnchor];
    goto LABEL_11;
  }

  if ([(SLHighlightPillMarqueeView *)self marqueeEnabled])
  {
    goto LABEL_10;
  }

  centerXAnchor = [(SLHighlightPillMarqueeView *)self trailingAnchor];
  replicatorView = [(SLHighlightPillMarqueeView *)self replicatorView];
  centerXAnchor2 = [replicatorView trailingAnchor];
LABEL_11:
  v26 = centerXAnchor2;

  replicatorViewStartingPositionXConstraint = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
  if (replicatorViewStartingPositionXConstraint)
  {
    v28 = replicatorViewStartingPositionXConstraint;
    replicatorViewStartingPositionXConstraint2 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
    firstAnchor = [replicatorViewStartingPositionXConstraint2 firstAnchor];
    v31 = firstAnchor;
    if (firstAnchor == v26)
    {
      replicatorViewStartingPositionXConstraint3 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
      secondAnchor = [replicatorViewStartingPositionXConstraint3 secondAnchor];

      if (secondAnchor == centerXAnchor)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  replicatorViewStartingPositionXConstraint4 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
  isActive = [replicatorViewStartingPositionXConstraint4 isActive];

  if (isActive)
  {
    replicatorViewStartingPositionXConstraint5 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
    [v4 addObject:replicatorViewStartingPositionXConstraint5];
  }

  v37 = [v26 constraintEqualToAnchor:centerXAnchor];
  [(SLHighlightPillMarqueeView *)self setReplicatorViewStartingPositionXConstraint:v37];

LABEL_22:
  replicatorViewEndingPositionXConstraint = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
  if (!replicatorViewEndingPositionXConstraint)
  {
    goto LABEL_24;
  }

  v39 = replicatorViewEndingPositionXConstraint;
  replicatorViewEndingPositionXConstraint2 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
  firstAnchor2 = [replicatorViewEndingPositionXConstraint2 firstAnchor];

  if (firstAnchor2 != centerXAnchor)
  {
LABEL_24:
    replicatorViewEndingPositionXConstraint3 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
    isActive2 = [replicatorViewEndingPositionXConstraint3 isActive];

    if (isActive2)
    {
      replicatorViewEndingPositionXConstraint4 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
      [v4 addObject:replicatorViewEndingPositionXConstraint4];
    }

    pillView2 = [(SLHighlightPillMarqueeView *)self pillView];
    trailingAnchor = [pillView2 trailingAnchor];
    v47 = [centerXAnchor constraintEqualToAnchor:trailingAnchor constant:40.0];
    [(SLHighlightPillMarqueeView *)self setReplicatorViewEndingPositionXConstraint:v47];
  }

  replicatorViewYConstraint = [(SLHighlightPillMarqueeView *)self replicatorViewYConstraint];

  if (!replicatorViewYConstraint)
  {
    replicatorView2 = [(SLHighlightPillMarqueeView *)self replicatorView];
    topAnchor = [replicatorView2 topAnchor];
    topAnchor2 = [(SLHighlightPillMarqueeView *)self topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(SLHighlightPillMarqueeView *)self setReplicatorViewYConstraint:v52];
  }

  if ([(SLHighlightPillMarqueeView *)self endingPositionConstraintsShouldBeActive])
  {
    replicatorViewStartingPositionXConstraint6 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
    isActive3 = [replicatorViewStartingPositionXConstraint6 isActive];

    if (isActive3)
    {
      replicatorViewStartingPositionXConstraint7 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
      [v4 addObject:replicatorViewStartingPositionXConstraint7];
    }

    replicatorViewEndingPositionXConstraint5 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
    isActive4 = [replicatorViewEndingPositionXConstraint5 isActive];

    if ((isActive4 & 1) == 0)
    {
      replicatorViewEndingPositionXConstraint6 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
LABEL_38:
      v64 = replicatorViewEndingPositionXConstraint6;
      [v3 addObject:replicatorViewEndingPositionXConstraint6];
    }
  }

  else
  {
    replicatorViewEndingPositionXConstraint7 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
    isActive5 = [replicatorViewEndingPositionXConstraint7 isActive];

    if (isActive5)
    {
      replicatorViewEndingPositionXConstraint8 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
      [v4 addObject:replicatorViewEndingPositionXConstraint8];
    }

    replicatorViewEndingPositionXConstraint9 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
    isActive6 = [replicatorViewEndingPositionXConstraint9 isActive];

    if ((isActive6 & 1) == 0)
    {
      replicatorViewEndingPositionXConstraint6 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
      goto LABEL_38;
    }
  }

  replicatorViewYConstraint2 = [(SLHighlightPillMarqueeView *)self replicatorViewYConstraint];
  isActive7 = [replicatorViewYConstraint2 isActive];

  if ((isActive7 & 1) == 0)
  {
    replicatorViewYConstraint3 = [(SLHighlightPillMarqueeView *)self replicatorViewYConstraint];
    [v3 addObject:replicatorViewYConstraint3];
  }

  if ([v4 count])
  {
    v68 = MEMORY[0x277CCAAD0];
    allObjects = [v4 allObjects];
    [v68 deactivateConstraints:allObjects];
  }

  if ([v3 count])
  {
    v70 = MEMORY[0x277CCAAD0];
    allObjects2 = [v3 allObjects];
    [v70 activateConstraints:allObjects2];
  }
}

- (void)_activateMarqueeAnimationIfNecessary
{
  if (![(SLHighlightPillMarqueeView *)self marqueeAnimationIsActive])
  {
    [(SLHighlightPillMarqueeView *)self setMarqueeAnimationIsActive:1];
    replicatorView = [(SLHighlightPillMarqueeView *)self replicatorView];
    [replicatorView updateInstanceCount:2 replicationPaddingX:40.0];

    pillView = [(SLHighlightPillMarqueeView *)self pillView];
    [pillView frame];
    v6 = v5 / 45.0 + 2.0;

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__SLHighlightPillMarqueeView__activateMarqueeAnimationIfNecessary__block_invoke;
    v8[3] = &unk_278925D68;
    v8[4] = self;
    *&v8[5] = v6;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__SLHighlightPillMarqueeView__activateMarqueeAnimationIfNecessary__block_invoke_4;
    v7[3] = &unk_278926128;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateKeyframesWithDuration:13 delay:v8 options:v7 animations:v6 completion:0.0];
  }
}

uint64_t __66__SLHighlightPillMarqueeView__activateMarqueeAnimationIfNecessary__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SLHighlightPillMarqueeView__activateMarqueeAnimationIfNecessary__block_invoke_2;
  v5[3] = &unk_278925D90;
  v5[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:0.0];
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__SLHighlightPillMarqueeView__activateMarqueeAnimationIfNecessary__block_invoke_3;
  v4[3] = &unk_278925D90;
  v4[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v4 relativeDuration:2.0 / v2 animations:1.0];
}

uint64_t __66__SLHighlightPillMarqueeView__activateMarqueeAnimationIfNecessary__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEndingPositionConstraintsShouldBeActive:0];
  [*(a1 + 32) updateConstraints];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __66__SLHighlightPillMarqueeView__activateMarqueeAnimationIfNecessary__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setEndingPositionConstraintsShouldBeActive:0];
  v2 = *(a1 + 32);

  return [v2 setMarqueeAnimationIsActive:0];
}

- (void)_deactivateMarqueeAnimationIfNecessary
{
  if ([(SLHighlightPillMarqueeView *)self marqueeAnimationIsActive])
  {
    [(SLHighlightPillMarqueeView *)self setMarqueeAnimationIsActive:0];
    layer = [(SLHighlightPillMarqueeView *)self layer];
    [layer removeAllAnimations];

    [(SLHighlightPillMarqueeView *)self setEndingPositionConstraintsShouldBeActive:0];
  }
}

@end