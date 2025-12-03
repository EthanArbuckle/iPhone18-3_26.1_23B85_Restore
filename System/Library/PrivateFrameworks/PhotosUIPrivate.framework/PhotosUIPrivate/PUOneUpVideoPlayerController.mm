@interface PUOneUpVideoPlayerController
- (PUBrowsingVideoPlayer)player;
- (PUOneUpVideoPlayerControllerDelegate)delegate;
- (void)setDelegate:(id)delegate;
- (void)setPlayer:(id)player;
- (void)updateWithBrowsingViewModel:(id)model;
@end

@implementation PUOneUpVideoPlayerController

- (PUBrowsingVideoPlayer)player
{
  v2 = sub_1B37D8F70();

  return v2;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  selfCopy = self;
  sub_1B37D900C(player);
}

- (PUOneUpVideoPlayerControllerDelegate)delegate
{
  v2 = sub_1B37D9184();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B37D9220();
}

- (void)updateWithBrowsingViewModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_1B37DA9F4(modelCopy);
}

@end