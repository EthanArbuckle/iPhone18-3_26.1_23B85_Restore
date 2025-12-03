@interface SLReplicatorView
- (SLReplicatorView)initWithFrame:(CGRect)frame targetView:(id)view;
- (void)_updateReplicatorLayer;
- (void)updateConstraints;
- (void)updateInstanceCount:(unint64_t)count replicationPaddingX:(double)x;
@end

@implementation SLReplicatorView

- (SLReplicatorView)initWithFrame:(CGRect)frame targetView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = SLReplicatorView;
  height = [(SLReplicatorView *)&v14 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(SLReplicatorView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SLReplicatorView *)v11 setTargetView:viewCopy];
    [(SLReplicatorView *)v11 setInstanceCount:1];
    [(SLReplicatorView *)v11 setReplicationPaddingX:0.0];
    targetView = [(SLReplicatorView *)v11 targetView];
    [(SLReplicatorView *)v11 addSubview:targetView];

    [(SLReplicatorView *)v11 _updateReplicatorLayer];
  }

  return v11;
}

- (void)updateInstanceCount:(unint64_t)count replicationPaddingX:(double)x
{
  instanceCount = [(SLReplicatorView *)self instanceCount];
  if (instanceCount != count)
  {
    [(SLReplicatorView *)self setInstanceCount:count];
  }

  [(SLReplicatorView *)self replicationPaddingX];
  if (!SL_CGFloatApproximatelyEqualToFloat(v8, x))
  {
    [(SLReplicatorView *)self setReplicationPaddingX:x];
    goto LABEL_7;
  }

  if (instanceCount != count)
  {
LABEL_7:
    [(SLReplicatorView *)self setNeedsUpdateConstraints];
    [(SLReplicatorView *)self layoutIfNeeded];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SLReplicatorView_updateInstanceCount_replicationPaddingX___block_invoke;
    block[3] = &unk_278925D90;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_updateReplicatorLayer
{
  layer = [(SLReplicatorView *)self layer];
  [layer setInstanceCount:{-[SLReplicatorView instanceCount](self, "instanceCount")}];
  targetView = [(SLReplicatorView *)self targetView];
  [targetView frame];
  v6 = v5;
  [(SLReplicatorView *)self replicationPaddingX];
  v8 = v7 + v6;

  CATransform3DMakeTranslation(&v10, v8, 0.0, 0.0);
  v9 = v10;
  [layer setInstanceTransform:&v9];
  [(SLReplicatorView *)self setNeedsLayout];
  [(SLReplicatorView *)self layoutIfNeeded];
}

- (void)updateConstraints
{
  v45.receiver = self;
  v45.super_class = SLReplicatorView;
  [(SLReplicatorView *)&v45 updateConstraints];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  [(SLReplicatorView *)self replicationPaddingX];
  v6 = v5 * ([(SLReplicatorView *)self instanceCount]- 1);
  widthConstraint = [(SLReplicatorView *)self widthConstraint];
  if (widthConstraint)
  {
    v8 = widthConstraint;
    widthConstraint2 = [(SLReplicatorView *)self widthConstraint];
    firstAnchor = [widthConstraint2 firstAnchor];
    targetView = [(SLReplicatorView *)self targetView];
    widthAnchor = [targetView widthAnchor];
    if (firstAnchor == widthAnchor)
    {
      widthConstraint3 = [(SLReplicatorView *)self widthConstraint];
      [widthConstraint3 multiplier];
      if (v14 == [(SLReplicatorView *)self instanceCount])
      {
        widthConstraint4 = [(SLReplicatorView *)self widthConstraint];
        [widthConstraint4 constant];
        v44 = v43;

        if (v44 == v6)
        {
          goto LABEL_9;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_6:
  widthConstraint5 = [(SLReplicatorView *)self widthConstraint];

  if (widthConstraint5)
  {
    widthConstraint6 = [(SLReplicatorView *)self widthConstraint];
    [array2 addObject:widthConstraint6];
  }

  widthAnchor2 = [(SLReplicatorView *)self widthAnchor];
  targetView2 = [(SLReplicatorView *)self targetView];
  widthAnchor3 = [targetView2 widthAnchor];
  v20 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:-[SLReplicatorView instanceCount](self constant:{"instanceCount"), v6}];
  [(SLReplicatorView *)self setWidthConstraint:v20];

  widthConstraint7 = [(SLReplicatorView *)self widthConstraint];
  [array addObject:widthConstraint7];

LABEL_9:
  heightConstraint = [(SLReplicatorView *)self heightConstraint];

  if (!heightConstraint)
  {
    heightAnchor = [(SLReplicatorView *)self heightAnchor];
    targetView3 = [(SLReplicatorView *)self targetView];
    heightAnchor2 = [targetView3 heightAnchor];
    v28 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [(SLReplicatorView *)self setHeightConstraint:v28];

    goto LABEL_13;
  }

  heightConstraint2 = [(SLReplicatorView *)self heightConstraint];
  isActive = [heightConstraint2 isActive];

  if ((isActive & 1) == 0)
  {
LABEL_13:
    heightConstraint3 = [(SLReplicatorView *)self heightConstraint];
    [array addObject:heightConstraint3];
  }

  targetViewLeadingConstraint = [(SLReplicatorView *)self targetViewLeadingConstraint];

  if (!targetViewLeadingConstraint)
  {
    targetView4 = [(SLReplicatorView *)self targetView];
    leadingAnchor = [targetView4 leadingAnchor];
    leadingAnchor2 = [(SLReplicatorView *)self leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(SLReplicatorView *)self setTargetViewLeadingConstraint:v34];

    targetViewLeadingConstraint2 = [(SLReplicatorView *)self targetViewLeadingConstraint];
    [array addObject:targetViewLeadingConstraint2];
  }

  targetViewTopConstraint = [(SLReplicatorView *)self targetViewTopConstraint];

  if (!targetViewTopConstraint)
  {
    targetView5 = [(SLReplicatorView *)self targetView];
    topAnchor = [targetView5 topAnchor];
    topAnchor2 = [(SLReplicatorView *)self topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(SLReplicatorView *)self setTargetViewTopConstraint:v40];

    targetViewTopConstraint2 = [(SLReplicatorView *)self targetViewTopConstraint];
    [array addObject:targetViewTopConstraint2];
  }

  if ([array2 count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:array2];
  }

  if ([array count])
  {
    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }
}

@end