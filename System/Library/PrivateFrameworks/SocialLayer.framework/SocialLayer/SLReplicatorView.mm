@interface SLReplicatorView
- (SLReplicatorView)initWithFrame:(CGRect)a3 targetView:(id)a4;
- (void)_updateReplicatorLayer;
- (void)updateConstraints;
- (void)updateInstanceCount:(unint64_t)a3 replicationPaddingX:(double)a4;
@end

@implementation SLReplicatorView

- (SLReplicatorView)initWithFrame:(CGRect)a3 targetView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SLReplicatorView;
  v10 = [(SLReplicatorView *)&v14 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(SLReplicatorView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SLReplicatorView *)v11 setTargetView:v9];
    [(SLReplicatorView *)v11 setInstanceCount:1];
    [(SLReplicatorView *)v11 setReplicationPaddingX:0.0];
    v12 = [(SLReplicatorView *)v11 targetView];
    [(SLReplicatorView *)v11 addSubview:v12];

    [(SLReplicatorView *)v11 _updateReplicatorLayer];
  }

  return v11;
}

- (void)updateInstanceCount:(unint64_t)a3 replicationPaddingX:(double)a4
{
  v7 = [(SLReplicatorView *)self instanceCount];
  if (v7 != a3)
  {
    [(SLReplicatorView *)self setInstanceCount:a3];
  }

  [(SLReplicatorView *)self replicationPaddingX];
  if (!SL_CGFloatApproximatelyEqualToFloat(v8, a4))
  {
    [(SLReplicatorView *)self setReplicationPaddingX:a4];
    goto LABEL_7;
  }

  if (v7 != a3)
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
  v3 = [(SLReplicatorView *)self layer];
  [v3 setInstanceCount:{-[SLReplicatorView instanceCount](self, "instanceCount")}];
  v4 = [(SLReplicatorView *)self targetView];
  [v4 frame];
  v6 = v5;
  [(SLReplicatorView *)self replicationPaddingX];
  v8 = v7 + v6;

  CATransform3DMakeTranslation(&v10, v8, 0.0, 0.0);
  v9 = v10;
  [v3 setInstanceTransform:&v9];
  [(SLReplicatorView *)self setNeedsLayout];
  [(SLReplicatorView *)self layoutIfNeeded];
}

- (void)updateConstraints
{
  v45.receiver = self;
  v45.super_class = SLReplicatorView;
  [(SLReplicatorView *)&v45 updateConstraints];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  [(SLReplicatorView *)self replicationPaddingX];
  v6 = v5 * ([(SLReplicatorView *)self instanceCount]- 1);
  v7 = [(SLReplicatorView *)self widthConstraint];
  if (v7)
  {
    v8 = v7;
    v9 = [(SLReplicatorView *)self widthConstraint];
    v10 = [v9 firstAnchor];
    v11 = [(SLReplicatorView *)self targetView];
    v12 = [v11 widthAnchor];
    if (v10 == v12)
    {
      v13 = [(SLReplicatorView *)self widthConstraint];
      [v13 multiplier];
      if (v14 == [(SLReplicatorView *)self instanceCount])
      {
        v42 = [(SLReplicatorView *)self widthConstraint];
        [v42 constant];
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
  v15 = [(SLReplicatorView *)self widthConstraint];

  if (v15)
  {
    v16 = [(SLReplicatorView *)self widthConstraint];
    [v4 addObject:v16];
  }

  v17 = [(SLReplicatorView *)self widthAnchor];
  v18 = [(SLReplicatorView *)self targetView];
  v19 = [v18 widthAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 multiplier:-[SLReplicatorView instanceCount](self constant:{"instanceCount"), v6}];
  [(SLReplicatorView *)self setWidthConstraint:v20];

  v21 = [(SLReplicatorView *)self widthConstraint];
  [v3 addObject:v21];

LABEL_9:
  v22 = [(SLReplicatorView *)self heightConstraint];

  if (!v22)
  {
    v25 = [(SLReplicatorView *)self heightAnchor];
    v26 = [(SLReplicatorView *)self targetView];
    v27 = [v26 heightAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [(SLReplicatorView *)self setHeightConstraint:v28];

    goto LABEL_13;
  }

  v23 = [(SLReplicatorView *)self heightConstraint];
  v24 = [v23 isActive];

  if ((v24 & 1) == 0)
  {
LABEL_13:
    v29 = [(SLReplicatorView *)self heightConstraint];
    [v3 addObject:v29];
  }

  v30 = [(SLReplicatorView *)self targetViewLeadingConstraint];

  if (!v30)
  {
    v31 = [(SLReplicatorView *)self targetView];
    v32 = [v31 leadingAnchor];
    v33 = [(SLReplicatorView *)self leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [(SLReplicatorView *)self setTargetViewLeadingConstraint:v34];

    v35 = [(SLReplicatorView *)self targetViewLeadingConstraint];
    [v3 addObject:v35];
  }

  v36 = [(SLReplicatorView *)self targetViewTopConstraint];

  if (!v36)
  {
    v37 = [(SLReplicatorView *)self targetView];
    v38 = [v37 topAnchor];
    v39 = [(SLReplicatorView *)self topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [(SLReplicatorView *)self setTargetViewTopConstraint:v40];

    v41 = [(SLReplicatorView *)self targetViewTopConstraint];
    [v3 addObject:v41];
  }

  if ([v4 count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v4];
  }

  if ([v3 count])
  {
    [MEMORY[0x277CCAAD0] activateConstraints:v3];
  }
}

@end