@interface SeekTimeIntentHandler
- (void)handleSeekTime:(id)a3 completion:(id)a4;
@end

@implementation SeekTimeIntentHandler

- (void)handleSeekTime:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_268B12C2C();
}

@end