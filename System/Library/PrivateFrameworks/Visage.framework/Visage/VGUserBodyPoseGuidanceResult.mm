@interface VGUserBodyPoseGuidanceResult
- (FrameRejectionState)rejection;
- (id).cxx_construct;
- (void)setRejection:(FrameRejectionState *)rejection;
@end

@implementation VGUserBodyPoseGuidanceResult

- (FrameRejectionState)rejection
{
  retstr->reason = self->_rejection.reason;
  v5 = self->_rejection.description;
  v6 = *&self->_rejection.outOfFovOffset;
  debugDictionary = self->_rejection.debugDictionary;
  retstr->description = v5;
  *&retstr->outOfFovOffset = v6;
  result = debugDictionary;
  retstr->debugDictionary = result;
  return result;
}

- (void)setRejection:(FrameRejectionState *)rejection
{
  self->_rejection.reason = rejection->reason;
  objc_storeStrong(&self->_rejection.description, rejection->description);
  *&self->_rejection.outOfFovOffset = *&rejection->outOfFovOffset;
  objc_storeStrong(&self->_rejection.debugDictionary, rejection->debugDictionary);

  description = rejection->description;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

@end