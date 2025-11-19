@interface CACCorrectionsCandidateState
- (CGPoint)arrowButtonOffset;
@end

@implementation CACCorrectionsCandidateState

- (CGPoint)arrowButtonOffset
{
  x = self->_arrowButtonOffset.x;
  y = self->_arrowButtonOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end