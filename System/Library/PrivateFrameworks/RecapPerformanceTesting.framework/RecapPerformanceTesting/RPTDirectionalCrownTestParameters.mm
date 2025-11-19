@interface RPTDirectionalCrownTestParameters
- (CGSize)scrollingSize;
- (RPTDirectionalCrownTestParameters)initWithTestName:(id)a3 scrollView:(id)a4 completionHandler:(id)a5;
- (RPTDirectionalCrownTestParameters)initWithTestName:(id)a3 scrollingSize:(CGSize)a4 screenSpaceMultiplier:(double)a5 rotationDuration:(double)a6 direction:(int64_t)a7 completionHandler:(id)a8;
- (id)composerBlock;
@end

@implementation RPTDirectionalCrownTestParameters

- (RPTDirectionalCrownTestParameters)initWithTestName:(id)a3 scrollView:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = RPTDefaultScrollDirection(v9);
  [v9 contentSize];
  v13 = v12;
  v15 = v14;

  v16 = [(RPTDirectionalCrownTestParameters *)self initWithTestName:v10 scrollingSize:v11 screenSpaceMultiplier:v8 rotationDuration:v13 direction:v15 completionHandler:1.0, 1.0];
  v17 = v16;

  return v17;
}

- (RPTDirectionalCrownTestParameters)initWithTestName:(id)a3 scrollingSize:(CGSize)a4 screenSpaceMultiplier:(double)a5 rotationDuration:(double)a6 direction:(int64_t)a7 completionHandler:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = RPTDirectionalCrownTestParameters;
  v17 = [(RPTDirectionalCrownTestParameters *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(RPTDirectionalCrownTestParameters *)v17 setTestName:v15];
    [(RPTDirectionalCrownTestParameters *)v18 setScrollingSize:width, height];
    [(RPTDirectionalCrownTestParameters *)v18 setScreenSpaceMultiplier:a5];
    [(RPTDirectionalCrownTestParameters *)v18 setRotationDuration:a6];
    [(RPTDirectionalCrownTestParameters *)v18 setDirection:a7];
    [(RPTDirectionalCrownTestParameters *)v18 setCompletionHandler:v16];
    [(RPTDirectionalCrownTestParameters *)v18 setAdjustRotationDurationForRevolution:1];
  }

  return v18;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__RPTDirectionalCrownTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF38A8;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

- (CGSize)scrollingSize
{
  width = self->_scrollingSize.width;
  height = self->_scrollingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end