@interface SkipContentIntentHandler
- (void)handleSkipContent:(id)a3 completion:(id)a4;
@end

@implementation SkipContentIntentHandler

- (void)handleSkipContent:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_26895480C();
}

@end