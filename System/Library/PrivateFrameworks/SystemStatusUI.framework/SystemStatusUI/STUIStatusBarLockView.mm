@interface STUIStatusBarLockView
- (CGSize)intrinsicContentSize;
- (STUIStatusBarLockView)initWithFrame:(CGRect)a3;
- (void)animateUnlockWithCompletionBlock:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)applyStyleAttributes:(id)a3;
- (void)jiggleWithCompletionBlock:(id)a3;
- (void)resetLock;
@end

@implementation STUIStatusBarLockView

- (STUIStatusBarLockView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarLockView;
  v3 = [(STUIStatusBarLockView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[STUIStatusBarImageView alloc] initWithFrame:1.0, 2.0, 6.0, 7.0];
    shackleView = v3->_shackleView;
    v3->_shackleView = v4;

    [(STUIStatusBarLockView *)v3 addSubview:v3->_shackleView];
    v6 = [[STUIStatusBarImageView alloc] initWithFrame:0.0, 6.0, 8.0, 6.0];
    bodyView = v3->_bodyView;
    v3->_bodyView = v6;

    [(STUIStatusBarLockView *)v3 addSubview:v3->_bodyView];
  }

  return v3;
}

- (void)applyStyleAttributes:(id)a3
{
  v12 = a3;
  v4 = [(STUIStatusBarImageView *)self->_shackleView image];

  if (!v4)
  {
    v5 = +[STUIStatusBarImageProvider sharedProvider];
    v6 = [v5 imageNamed:@"LockShackle" styleAttributes:v12];
    v7 = [v6 imageWithRenderingMode:2];

    [(STUIStatusBarImageView *)self->_shackleView setImage:v7];
  }

  [(STUIStatusBarImageView *)self->_shackleView applyStyleAttributes:v12];
  v8 = [(STUIStatusBarImageView *)self->_bodyView image];

  if (!v8)
  {
    v9 = +[STUIStatusBarImageProvider sharedProvider];
    v10 = [v9 imageNamed:@"LockBody" styleAttributes:v12];
    v11 = [v10 imageWithRenderingMode:2];

    [(STUIStatusBarImageView *)self->_bodyView setImage:v11];
  }

  [(STUIStatusBarImageView *)self->_bodyView applyStyleAttributes:v12];
}

- (void)resetLock
{
  v3 = [(STUIStatusBarImageView *)self->_shackleView layer];
  [v3 removeAllAnimations];

  v4 = [(STUIStatusBarLockView *)self layer];
  [v4 removeAllAnimations];

  shackleView = self->_shackleView;

  [(STUIStatusBarImageView *)shackleView setFrame:1.0, 2.0, 6.0, 7.0];
}

- (CGSize)intrinsicContentSize
{
  v2 = 8.0;
  v3 = 12.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)animateUnlockWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (self->_completionBlock)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v18 = v4;
    (*(v4 + 2))(v4, 1);
  }

  else
  {
    v18 = v4;
    v5 = _Block_copy(v4);
    completionBlock = self->_completionBlock;
    self->_completionBlock = v5;

    [(STUIStatusBarImageView *)self->_shackleView setFrame:1.0, 0.0, 6.0, 7.0];
    v7 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
    [v7 setMass:2.0];
    [v7 setStiffness:300.0];
    [v7 setDamping:400.0];
    [v7 setDuration:0.91];
    v8 = objc_alloc(MEMORY[0x277CD9EF8]);
    LODWORD(v9) = 1046809695;
    LODWORD(v10) = 990250344;
    LODWORD(v11) = 1057860847;
    LODWORD(v12) = 1064564184;
    v13 = [v8 initWithControlPoints:v9 :v10 :v11 :v12];
    [v7 setTimingFunction:v13];

    LODWORD(v14) = 1066192077;
    [v7 setSpeed:v14];
    v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:{centerOfRect(1.0, 2.0, 6.0, 7.0)}];
    [v7 setFromValue:v15];

    v16 = [MEMORY[0x277CCAE60] valueWithCGPoint:{centerOfRect(1.0, 0.0, 6.0, 7.0)}];
    [v7 setToValue:v16];

    [v7 setFillMode:*MEMORY[0x277CDA230]];
    [v7 setDelegate:self];
    [(STUIStatusBarImageView *)self->_shackleView setFrame:1.0, 0.0, 6.0, 7.0];
    v17 = [(STUIStatusBarImageView *)self->_shackleView layer];
    [v17 addAnimation:v7 forKey:@"unlock"];
  }

  v4 = v18;
LABEL_6:
}

- (void)jiggleWithCompletionBlock:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(STUIStatusBarLockView *)self layer];
  if (self->_completionBlock)
  {
    if (v4)
    {
      v4[2](v4, 1);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
    v7 = MEMORY[0x277CCAE60];
    [v5 position];
    v8 = [v7 valueWithCGPoint:?];
    [v6 setFromValue:v8];

    v9 = MEMORY[0x277CCAE60];
    [v5 position];
    v11 = v10 + -20.0;
    [v5 position];
    v12 = [v9 valueWithCGPoint:v11];
    [v6 setToValue:v12];

    [v6 setMass:1.2];
    [v6 setStiffness:1200.0];
    [v6 setDamping:12.0];
    [v6 setDuration:0.6679];
    LODWORD(v13) = 1028404955;
    LODWORD(v14) = 990250344;
    LODWORD(v15) = 1059713387;
    LODWORD(v16) = 1.0;
    v17 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v13 :v14 :v15 :v16];
    [v6 setTimingFunction:v17];
    v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
    v19 = *(MEMORY[0x277CD9DE8] + 80);
    *&v30.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v30.m33 = v19;
    v20 = *(MEMORY[0x277CD9DE8] + 112);
    *&v30.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v30.m43 = v20;
    v21 = *(MEMORY[0x277CD9DE8] + 16);
    *&v30.m11 = *MEMORY[0x277CD9DE8];
    *&v30.m13 = v21;
    v22 = *(MEMORY[0x277CD9DE8] + 48);
    *&v30.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v30.m23 = v22;
    v23 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v30];
    [v18 setFromValue:v23];

    v24 = MEMORY[0x277CCAE60];
    CATransform3DMakeTranslation(&v30, 20.0, 0.0, 0.0);
    v25 = [v24 valueWithCATransform3D:&v30];
    [v18 setToValue:v25];

    [v18 setDuration:0.1012];
    v26 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v18 setTimingFunction:v26];

    [v18 setFillMode:*MEMORY[0x277CDA238]];
    v27 = [MEMORY[0x277CD9E00] animation];
    [v27 setDuration:0.6679];
    v31[0] = v6;
    v31[1] = v18;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [v27 setAnimations:v28];

    [v27 setDelegate:self];
    [(STUIStatusBarLockView *)self setCompletionBlock:v4];
    v29 = [(STUIStatusBarLockView *)self layer];
    [v29 addAnimation:v27 forKey:@"jiggle"];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v8 = _Block_copy(self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v4);
    v7 = v8;
  }
}

@end