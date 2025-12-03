@interface CSDParticipantUpdateSanitizerImpl
- (void)sanitize:(id)sanitize completion:(id)completion;
@end

@implementation CSDParticipantUpdateSanitizerImpl

- (void)sanitize:(id)sanitize completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  sanitizeCopy = sanitize;
  selfCopy = self;
  sub_1003DAA64(sanitizeCopy, selfCopy, v6);
  _Block_release(v6);
}

@end