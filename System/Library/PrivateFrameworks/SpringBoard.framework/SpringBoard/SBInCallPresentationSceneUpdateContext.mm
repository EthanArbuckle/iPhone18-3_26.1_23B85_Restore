@interface SBInCallPresentationSceneUpdateContext
- (CGRect)referenceFrame;
- (SBInCallPresentationSceneUpdateContext)initWithReferenceFrame:(CGRect)a3 analyticsSource:(id)a4 transitionRequestBuilderBlock:(id)a5;
@end

@implementation SBInCallPresentationSceneUpdateContext

- (SBInCallPresentationSceneUpdateContext)initWithReferenceFrame:(CGRect)a3 analyticsSource:(id)a4 transitionRequestBuilderBlock:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
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
    v15 = [v11 copy];
    analyticsSource = v14->_analyticsSource;
    v14->_analyticsSource = v15;

    v17 = [v12 copy];
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