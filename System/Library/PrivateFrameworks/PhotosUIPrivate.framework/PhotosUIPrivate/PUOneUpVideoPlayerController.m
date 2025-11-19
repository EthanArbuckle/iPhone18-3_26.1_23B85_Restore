@interface PUOneUpVideoPlayerController
- (PUBrowsingVideoPlayer)player;
- (PUOneUpVideoPlayerControllerDelegate)delegate;
- (void)setDelegate:(id)a3;
- (void)setPlayer:(id)a3;
- (void)updateWithBrowsingViewModel:(id)a3;
@end

@implementation PUOneUpVideoPlayerController

- (PUBrowsingVideoPlayer)player
{
  v2 = sub_1B37D8F70();

  return v2;
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B37D900C(a3);
}

- (PUOneUpVideoPlayerControllerDelegate)delegate
{
  v2 = sub_1B37D9184();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B37D9220();
}

- (void)updateWithBrowsingViewModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37DA9F4(v4);
}

@end