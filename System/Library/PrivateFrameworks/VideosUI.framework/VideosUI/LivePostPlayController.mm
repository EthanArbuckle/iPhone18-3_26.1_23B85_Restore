@interface LivePostPlayController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (NSString)description;
- (TVPPlayer)prefetchedPlayer;
- (void)cleanup;
- (void)didTapWithGesture:(id)a3;
- (void)playerControlsVisibilityChanged:(BOOL)a3;
- (void)playerViewControllerWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)setPrefetchedPlayer:(id)a3;
@end

@implementation LivePostPlayController

- (TVPPlayer)prefetchedPlayer
{
  v2 = sub_1E389D15C();

  return v2;
}

- (void)setPrefetchedPlayer:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E389D200(a3);
}

- (NSString)description
{
  v2 = self;
  sub_1E389D308();

  OUTLINED_FUNCTION_27_0();
  v3 = sub_1E4205ED4();

  return v3;
}

- (void)didTapWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E38A4F08();
}

- (void)cleanup
{
  v2 = self;
  sub_1E38A5934();
}

- (void)playerControlsVisibilityChanged:(BOOL)a3
{
  v3 = self;
  sub_1E38A5C24();
}

- (void)playerViewControllerWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1E38A6014(a4, width, height);
  swift_unknownObjectRelease();
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1E38A6224(v6, v7);

  return v9 & 1;
}

@end