@interface LivePostPlayController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (NSString)description;
- (TVPPlayer)prefetchedPlayer;
- (void)cleanup;
- (void)didTapWithGesture:(id)gesture;
- (void)playerControlsVisibilityChanged:(BOOL)changed;
- (void)playerViewControllerWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)setPrefetchedPlayer:(id)player;
@end

@implementation LivePostPlayController

- (TVPPlayer)prefetchedPlayer
{
  v2 = sub_1E389D15C();

  return v2;
}

- (void)setPrefetchedPlayer:(id)player
{
  playerCopy = player;
  selfCopy = self;
  sub_1E389D200(player);
}

- (NSString)description
{
  selfCopy = self;
  sub_1E389D308();

  OUTLINED_FUNCTION_27_0();
  v3 = sub_1E4205ED4();

  return v3;
}

- (void)didTapWithGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_1E38A4F08();
}

- (void)cleanup
{
  selfCopy = self;
  sub_1E38A5934();
}

- (void)playerControlsVisibilityChanged:(BOOL)changed
{
  selfCopy = self;
  sub_1E38A5C24();
}

- (void)playerViewControllerWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E38A6014(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1E38A6224(recognizerCopy, touchCopy);

  return v9 & 1;
}

@end