@interface _UIStatusBarLockView
- (CGSize)intrinsicContentSize;
- (_UIStatusBarLockView)initWithFrame:(CGRect)frame;
- (void)animateUnlockWithCompletionBlock:(id)block;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)applyStyleAttributes:(id)attributes;
- (void)jiggleWithCompletionBlock:(id)block;
- (void)resetLock;
@end

@implementation _UIStatusBarLockView

- (_UIStatusBarLockView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UIStatusBarLockView;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[_UIStatusBarImageView alloc] initWithFrame:1.0, 2.0, 6.0, 7.0];
    shackleView = v3->_shackleView;
    v3->_shackleView = v4;

    [(UIView *)v3 addSubview:v3->_shackleView];
    v6 = [[_UIStatusBarImageView alloc] initWithFrame:0.0, 6.0, 8.0, 6.0];
    bodyView = v3->_bodyView;
    v3->_bodyView = v6;

    [(UIView *)v3 addSubview:v3->_bodyView];
  }

  return v3;
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  image = [(UIImageView *)self->_shackleView image];

  if (!image)
  {
    v5 = +[_UIStatusBarImageProvider sharedProvider];
    v6 = [v5 imageNamed:@"LockShackle" styleAttributes:attributesCopy];
    v7 = [v6 imageWithRenderingMode:2];

    [(UIImageView *)self->_shackleView setImage:v7];
  }

  [(_UIStatusBarImageView *)self->_shackleView applyStyleAttributes:attributesCopy];
  image2 = [(UIImageView *)self->_bodyView image];

  if (!image2)
  {
    v9 = +[_UIStatusBarImageProvider sharedProvider];
    v10 = [v9 imageNamed:@"LockBody" styleAttributes:attributesCopy];
    v11 = [v10 imageWithRenderingMode:2];

    [(UIImageView *)self->_bodyView setImage:v11];
  }

  [(_UIStatusBarImageView *)self->_bodyView applyStyleAttributes:attributesCopy];
}

- (void)resetLock
{
  layer = [(UIView *)self->_shackleView layer];
  [layer removeAllAnimations];

  layer2 = [(UIView *)self layer];
  [layer2 removeAllAnimations];

  shackleView = self->_shackleView;

  [(UIImageView *)shackleView setFrame:1.0, 2.0, 6.0, 7.0];
}

- (CGSize)intrinsicContentSize
{
  v2 = 8.0;
  v3 = 12.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)animateUnlockWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (self->_completionBlock)
  {
    if (!blockCopy)
    {
      goto LABEL_6;
    }

    v18 = blockCopy;
    (*(blockCopy + 2))(blockCopy, 1);
  }

  else
  {
    v18 = blockCopy;
    v5 = _Block_copy(blockCopy);
    completionBlock = self->_completionBlock;
    self->_completionBlock = v5;

    [(UIImageView *)self->_shackleView setFrame:1.0, 0.0, 6.0, 7.0];
    v7 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    [v7 setMass:2.0];
    [v7 setStiffness:300.0];
    [v7 setDamping:400.0];
    [v7 setDuration:0.91];
    v8 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v9) = 1046809695;
    LODWORD(v10) = 990250344;
    LODWORD(v11) = 1057860847;
    LODWORD(v12) = 1064564184;
    v13 = [v8 initWithControlPoints:v9 :v10 :v11 :v12];
    [v7 setTimingFunction:v13];

    LODWORD(v14) = 1066192077;
    [v7 setSpeed:v14];
    v15 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(1.0, 2.0, 6.0, 7.0)}];
    [v7 setFromValue:v15];

    v16 = [MEMORY[0x1E696B098] valueWithCGPoint:{centerOfRect(1.0, 0.0, 6.0, 7.0)}];
    [v7 setToValue:v16];

    [v7 setFillMode:*MEMORY[0x1E69797E0]];
    [v7 setDelegate:self];
    [(UIImageView *)self->_shackleView setFrame:1.0, 0.0, 6.0, 7.0];
    layer = [(UIView *)self->_shackleView layer];
    [layer addAnimation:v7 forKey:@"unlock"];
  }

  blockCopy = v18;
LABEL_6:
}

- (void)jiggleWithCompletionBlock:(id)block
{
  v31[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  layer = [(UIView *)self layer];
  if (self->_completionBlock)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, 1);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    v7 = MEMORY[0x1E696B098];
    [layer position];
    v8 = [v7 valueWithCGPoint:?];
    [v6 setFromValue:v8];

    v9 = MEMORY[0x1E696B098];
    [layer position];
    v11 = v10 + -20.0;
    [layer position];
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
    v17 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :v14 :v15 :v16];
    [v6 setTimingFunction:v17];
    v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    v19 = *(MEMORY[0x1E69792E8] + 80);
    *&v30.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v30.m33 = v19;
    v20 = *(MEMORY[0x1E69792E8] + 112);
    *&v30.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v30.m43 = v20;
    v21 = *(MEMORY[0x1E69792E8] + 16);
    *&v30.m11 = *MEMORY[0x1E69792E8];
    *&v30.m13 = v21;
    v22 = *(MEMORY[0x1E69792E8] + 48);
    *&v30.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v30.m23 = v22;
    v23 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v30];
    [v18 setFromValue:v23];

    v24 = MEMORY[0x1E696B098];
    CATransform3DMakeTranslation(&v30, 20.0, 0.0, 0.0);
    v25 = [v24 valueWithCATransform3D:&v30];
    [v18 setToValue:v25];

    [v18 setDuration:0.1012];
    v26 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v18 setTimingFunction:v26];

    [v18 setFillMode:*MEMORY[0x1E69797E8]];
    animation = [MEMORY[0x1E6979308] animation];
    [animation setDuration:0.6679];
    v31[0] = v6;
    v31[1] = v18;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    [animation setAnimations:v28];

    [animation setDelegate:self];
    [(_UIStatusBarLockView *)self setCompletionBlock:blockCopy];
    layer2 = [(UIView *)self layer];
    [layer2 addAnimation:animation forKey:@"jiggle"];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  v8 = _Block_copy(self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, finishedCopy);
    v7 = v8;
  }
}

@end