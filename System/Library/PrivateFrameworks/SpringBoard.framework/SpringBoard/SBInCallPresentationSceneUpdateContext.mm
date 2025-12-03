@interface SBInCallPresentationSceneUpdateContext
- (CGRect)referenceFrame;
- (SBInCallPresentationSceneUpdateContext)initWithReferenceFrame:(CGRect)frame analyticsSource:(id)source transitionRequestBuilderBlock:(id)block;
@end

@implementation SBInCallPresentationSceneUpdateContext

- (SBInCallPresentationSceneUpdateContext)initWithReferenceFrame:(CGRect)frame analyticsSource:(id)source transitionRequestBuilderBlock:(id)block
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sourceCopy = source;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = SBInCallPresentationSceneUpdateContext;
  v13 = [(SBInCallPresentationSceneUpdateContext *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_referenceFrame.origin.x = x;
    v13->_referenceFrame.origin.y = y;
    v13->_referenceFrame.size.width = width;
    v13->_referenceFrame.size.height = height;
    v15 = [sourceCopy copy];
    analyticsSource = v14->_analyticsSource;
    v14->_analyticsSource = v15;

    v17 = [blockCopy copy];
    transitionRequestBuilderBlock = v14->_transitionRequestBuilderBlock;
    v14->_transitionRequestBuilderBlock = v17;

    v14->_executionTarget = 0;
  }

  return v14;
}

- (CGRect)referenceFrame
{
  x = self->_referenceFrame.origin.x;
  y = self->_referenceFrame.origin.y;
  width = self->_referenceFrame.size.width;
  height = self->_referenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end