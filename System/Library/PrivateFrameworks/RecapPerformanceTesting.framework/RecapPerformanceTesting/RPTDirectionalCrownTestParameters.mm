@interface RPTDirectionalCrownTestParameters
- (CGSize)scrollingSize;
- (RPTDirectionalCrownTestParameters)initWithTestName:(id)name scrollView:(id)view completionHandler:(id)handler;
- (RPTDirectionalCrownTestParameters)initWithTestName:(id)name scrollingSize:(CGSize)size screenSpaceMultiplier:(double)multiplier rotationDuration:(double)duration direction:(int64_t)direction completionHandler:(id)handler;
- (id)composerBlock;
@end

@implementation RPTDirectionalCrownTestParameters

- (RPTDirectionalCrownTestParameters)initWithTestName:(id)name scrollView:(id)view completionHandler:(id)handler
{
  handlerCopy = handler;
  viewCopy = view;
  nameCopy = name;
  v11 = RPTDefaultScrollDirection(viewCopy);
  [viewCopy contentSize];
  v13 = v12;
  v15 = v14;

  v16 = [(RPTDirectionalCrownTestParameters *)self initWithTestName:nameCopy scrollingSize:v11 screenSpaceMultiplier:handlerCopy rotationDuration:v13 direction:v15 completionHandler:1.0, 1.0];
  v17 = v16;

  return v17;
}

- (RPTDirectionalCrownTestParameters)initWithTestName:(id)name scrollingSize:(CGSize)size screenSpaceMultiplier:(double)multiplier rotationDuration:(double)duration direction:(int64_t)direction completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = RPTDirectionalCrownTestParameters;
  v17 = [(RPTDirectionalCrownTestParameters *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(RPTDirectionalCrownTestParameters *)v17 setTestName:nameCopy];
    [(RPTDirectionalCrownTestParameters *)v18 setScrollingSize:width, height];
    [(RPTDirectionalCrownTestParameters *)v18 setScreenSpaceMultiplier:multiplier];
    [(RPTDirectionalCrownTestParameters *)v18 setRotationDuration:duration];
    [(RPTDirectionalCrownTestParameters *)v18 setDirection:direction];
    [(RPTDirectionalCrownTestParameters *)v18 setCompletionHandler:handlerCopy];
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