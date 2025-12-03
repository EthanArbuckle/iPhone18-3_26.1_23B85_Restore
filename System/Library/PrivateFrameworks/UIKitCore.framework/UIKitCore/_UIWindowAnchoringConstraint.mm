@interface _UIWindowAnchoringConstraint
- (BOOL)_addToEngine:(id)engine integralizationAdjustment:(double)adjustment mutuallyExclusiveConstraints:(id *)constraints;
@end

@implementation _UIWindowAnchoringConstraint

- (BOOL)_addToEngine:(id)engine integralizationAdjustment:(double)adjustment mutuallyExclusiveConstraints:(id *)constraints
{
  window = self->_window;
  if ((dyld_program_sdk_at_least() & 1) != 0 || window && [(UIView *)window _forceLayoutEngineSolutionInRationalEdges])
  {
    v10 = 1;
  }

  else
  {
    [(UIWindow *)self->_window _setIsLoweringAnchoringConstraints:1];
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = _UIWindowAnchoringConstraint;
  v11 = [(_UIWindowAnchoringConstraint *)&v13 _addToEngine:engine integralizationAdjustment:constraints mutuallyExclusiveConstraints:adjustment];
  if ((v10 & 1) == 0)
  {
    [(UIWindow *)self->_window _setIsLoweringAnchoringConstraints:0];
  }

  return v11;
}

@end