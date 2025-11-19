@interface CSDParticipantUpdateSanitizerImpl
- (void)sanitize:(id)a3 completion:(id)a4;
@end

@implementation CSDParticipantUpdateSanitizerImpl

- (void)sanitize:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1003DAA64(v7, v8, v6);
  _Block_release(v6);
}

@end