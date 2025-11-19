@interface SetShuffleStateIntentHandler
- (void)handleSetShuffleState:(id)a3 completion:(id)a4;
@end

@implementation SetShuffleStateIntentHandler

- (void)handleSetShuffleState:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_2689F3BA0();
}

@end