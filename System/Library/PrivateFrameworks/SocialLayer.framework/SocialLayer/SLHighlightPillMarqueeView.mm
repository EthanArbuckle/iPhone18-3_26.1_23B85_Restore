@interface SLHighlightPillMarqueeView
- (SLHighlightPillMarqueeView)initWithFrame:(CGRect)a3 pillView:(id)a4;
- (void)_activateMarqueeAnimationIfNecessary;
- (void)_deactivateMarqueeAnimationIfNecessary;
- (void)layoutSubviews;
- (void)setEndingPositionConstraintsShouldBeActive:(BOOL)a3;
- (void)setMarqueeClippingWidth:(double)a3;
- (void)setMarqueeEnabled:(BOOL)a3;
- (void)setReplicatedContentAlignment:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation SLHighlightPillMarqueeView

- (SLHighlightPillMarqueeView)initWithFrame:(CGRect)a3 pillView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v38.receiver = self;
  v38.super_class = SLHighlightPillMarqueeView;
  v10 = [(SLHighlightPillMarqueeView *)&v38 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(SLHighlightPillMarqueeView *)v10 setPillView:v9];
    [(SLHighlightPillMarqueeView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SLHighlightPillMarqueeView *)v11 setMarqueeAnimationIsActive:0];
    [(SLHighlightPillMarqueeView *)v11 setEndingPositionConstraintsShouldBeActive:0];
    v12 = [[SLReplicatorView alloc] initWithFrame:v9 targetView:x, y, width, height];
    [(SLHighlightPillMarqueeView *)v11 setReplicatorView:v12];

    v13 = [(SLHighlightPillMarqueeView *)v11 replicatorView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(SLHighlightPillMarqueeView *)v11 replicatorView];
    [(SLHighlightPillMarqueeView *)v11 addSubview:v14];

    v15 = MEMORY[0x277D755B8];
    v16 = SLFrameworkBundle();
    v17 = [(SLHighlightPillMarqueeView *)v11 traitCollection];
    v18 = [v15 imageNamed:@"SLAttributionViewMarqueeMask" inBundle:v16 compatibleWithTraitCollection:v17];

    [v18 size];
    v20 = 1.0 / v19;
    v21 = [MEMORY[0x277CD9ED0] layer];
    [(SLHighlightPillMarqueeView *)v11 setMaskLayer:v21];

    v22 = [v18 CGImage];
    v23 = [(SLHighlightPillMarqueeView *)v11 maskLayer];
    [v23 setContents:v22];

    v24 = [(SLHighlightPillMarqueeView *)v11 maskLayer];
    [v24 setContentsCenter:{0.5 - v20 * 0.5, 0.0, v20, 1.0}];

    [v18 scale];
    v26 = v25;
    v27 = [(SLHighlightPillMarqueeView *)v11 maskLayer];
    [v27 setContentsScale:v26];

    [(SLHighlightPillMarqueeView *)v11 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [(SLHighlightPillMarqueeView *)v11 maskLayer];
    [v36 setFrame:{v29, v31, v33, v35}];
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
  v11 = [(SLHighlightPillMarqueeView *)self maskLayer];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)setMarqueeEnabled:(BOOL)a3
{
  if (self->_marqueeEnabled != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_marqueeEnabled = a3;
    [(SLHighlightPillMarqueeView *)self updateConstraints];
    [(SLHighlightPillMarqueeView *)self layoutIfNeeded];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SLHighlightPillMarqueeView_setMarqueeEnabled___block_invoke;
    v7[3] = &unk_278925D40;
    v8 = a3;
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

- (void)setMarqueeClippingWidth:(double)a3
{
  if (!SL_CGFloatApproximatelyEqualToFloat(a3, self->_marqueeClippingWidth))
  {
    self->_marqueeClippingWidth = a3;
    if (![(SLHighlightPillMarqueeView *)self marqueeAnimationIsActive])
    {

      [(SLHighlightPillMarqueeView *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setReplicatedContentAlignment:(int64_t)a3
{
  if (self->_replicatedContentAlignment != a3)
  {
    self->_replicatedContentAlignment = a3;
    if (![(SLHighlightPillMarqueeView *)self marqueeAnimationIsActive])
    {

      [(SLHighlightPillMarqueeView *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setEndingPositionConstraintsShouldBeActive:(BOOL)a3
{
  if (self->_endingPositionConstraintsShouldBeActive != a3)
  {
    self->_endingPositionConstraintsShouldBeActive = a3;
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
  v5 = [(SLHighlightPillMarqueeView *)self ourWidthConstraint];

  if (v5)
  {
    v6 = [(SLHighlightPillMarqueeView *)self ourWidthConstraint];
    [v6 constant];
    v8 = v7;
    [(SLHighlightPillMarqueeView *)self marqueeClippingWidth];
    v10 = SL_CGFloatApproximatelyEqualToFloat(v8, v9);

    if (v10)
    {
      goto LABEL_6;
    }

    [(SLHighlightPillMarqueeView *)self marqueeClippingWidth];
    v12 = v11;
    v13 = [(SLHighlightPillMarqueeView *)self ourWidthConstraint];
    [v13 setConstant:v12];
  }

  else
  {
    v14 = [(SLHighlightPillMarqueeView *)self widthAnchor];
    [(SLHighlightPillMarqueeView *)self marqueeClippingWidth];
    v15 = [v14 constraintEqualToConstant:?];
    [(SLHighlightPillMarqueeView *)self setOurWidthConstraint:v15];

    v13 = [(SLHighlightPillMarqueeView *)self ourWidthConstraint];
    [v3 addObject:v13];
  }

LABEL_6:
  v16 = [(SLHighlightPillMarqueeView *)self ourHeightConstraint];

  if (!v16)
  {
    v17 = [(SLHighlightPillMarqueeView *)self heightAnchor];
    v18 = [(SLHighlightPillMarqueeView *)self pillView];
    v19 = [v18 heightAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [(SLHighlightPillMarqueeView *)self setOurHeightConstraint:v20];

    v21 = [(SLHighlightPillMarqueeView *)self ourHeightConstraint];
    [v3 addObject:v21];
  }

  v22 = [(SLHighlightPillMarqueeView *)self replicatedContentAlignment];
  if (v22 != 2)
  {
    if (v22 == 1 && ![(SLHighlightPillMarqueeView *)self marqueeEnabled])
    {
      v23 = [(SLHighlightPillMarqueeView *)self centerXAnchor];
      v24 = [(SLHighlightPillMarqueeView *)self replicatorView];
      v25 = [v24 centerXAnchor];
      goto LABEL_11;
    }

LABEL_10:
    v23 = [(SLHighlightPillMarqueeView *)self leadingAnchor];
    v24 = [(SLHighlightPillMarqueeView *)self replicatorView];
    v25 = [v24 leadingAnchor];
    goto LABEL_11;
  }

  if ([(SLHighlightPillMarqueeView *)self marqueeEnabled])
  {
    goto LABEL_10;
  }

  v23 = [(SLHighlightPillMarqueeView *)self trailingAnchor];
  v24 = [(SLHighlightPillMarqueeView *)self replicatorView];
  v25 = [v24 trailingAnchor];
LABEL_11:
  v26 = v25;

  v27 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
  if (v27)
  {
    v28 = v27;
    v29 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
    v30 = [v29 firstAnchor];
    v31 = v30;
    if (v30 == v26)
    {
      v32 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
      v33 = [v32 secondAnchor];

      if (v33 == v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v34 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
  v35 = [v34 isActive];

  if (v35)
  {
    v36 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
    [v4 addObject:v36];
  }

  v37 = [v26 constraintEqualToAnchor:v23];
  [(SLHighlightPillMarqueeView *)self setReplicatorViewStartingPositionXConstraint:v37];

LABEL_22:
  v38 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
  if (!v38)
  {
    goto LABEL_24;
  }

  v39 = v38;
  v40 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
  v41 = [v40 firstAnchor];

  if (v41 != v23)
  {
LABEL_24:
    v42 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
    v43 = [v42 isActive];

    if (v43)
    {
      v44 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
      [v4 addObject:v44];
    }

    v45 = [(SLHighlightPillMarqueeView *)self pillView];
    v46 = [v45 trailingAnchor];
    v47 = [v23 constraintEqualToAnchor:v46 constant:40.0];
    [(SLHighlightPillMarqueeView *)self setReplicatorViewEndingPositionXConstraint:v47];
  }

  v48 = [(SLHighlightPillMarqueeView *)self replicatorViewYConstraint];

  if (!v48)
  {
    v49 = [(SLHighlightPillMarqueeView *)self replicatorView];
    v50 = [v49 topAnchor];
    v51 = [(SLHighlightPillMarqueeView *)self topAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [(SLHighlightPillMarqueeView *)self setReplicatorViewYConstraint:v52];
  }

  if ([(SLHighlightPillMarqueeView *)self endingPositionConstraintsShouldBeActive])
  {
    v53 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
    v54 = [v53 isActive];

    if (v54)
    {
      v55 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
      [v4 addObject:v55];
    }

    v56 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
    v57 = [v56 isActive];

    if ((v57 & 1) == 0)
    {
      v58 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
LABEL_38:
      v64 = v58;
      [v3 addObject:v58];
    }
  }

  else
  {
    v59 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
    v60 = [v59 isActive];

    if (v60)
    {
      v61 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
      [v4 addObject:v61];
    }

    v62 = [(SLHighlightPillMarqueeView *)self replicatorViewEndingPositionXConstraint];
    v63 = [v62 isActive];

    if ((v63 & 1) == 0)
    {
      v58 = [(SLHighlightPillMarqueeView *)self replicatorViewStartingPositionXConstraint];
      goto LABEL_38;
    }
  }

  v65 = [(SLHighlightPillMarqueeView *)self replicatorViewYConstraint];
  v66 = [v65 isActive];

  if ((v66 & 1) == 0)
  {
    v67 = [(SLHighlightPillMarqueeView *)self replicatorViewYConstraint];
    [v3 addObject:v67];
  }

  if ([v4 count])
  {
    v68 = MEMORY[0x277CCAAD0];
    v69 = [v4 allObjects];
    [v68 deactivateConstraints:v69];
  }

  if ([v3 count])
  {
    v70 = MEMORY[0x277CCAAD0];
    v71 = [v3 allObjects];
    [v70 activateConstraints:v71];
  }
}

- (void)_activateMarqueeAnimationIfNecessary
{
  if (![(SLHighlightPillMarqueeView *)self marqueeAnimationIsActive])
  {
    [(SLHighlightPillMarqueeView *)self setMarqueeAnimationIsActive:1];
    v3 = [(SLHighlightPillMarqueeView *)self replicatorView];
    [v3 updateInstanceCount:2 replicationPaddingX:40.0];

    v4 = [(SLHighlightPillMarqueeView *)self pillView];
    [v4 frame];
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
    v3 = [(SLHighlightPillMarqueeView *)self layer];
    [v3 removeAllAnimations];

    [(SLHighlightPillMarqueeView *)self setEndingPositionConstraintsShouldBeActive:0];
  }
}

@end