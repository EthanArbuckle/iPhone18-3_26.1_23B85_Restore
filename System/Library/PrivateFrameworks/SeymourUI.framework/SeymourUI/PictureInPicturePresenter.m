@interface PictureInPicturePresenter
- (_TtC9SeymourUI25PictureInPicturePresenter)init;
- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)playerViewControllerDidStartPictureInPicture:(id)a3;
- (void)playerViewControllerDidStopPictureInPicture:(id)a3;
- (void)playerViewControllerWillStopPictureInPicture:(id)a3;
@end

@implementation PictureInPicturePresenter

- (_TtC9SeymourUI25PictureInPicturePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)playerViewControllerDidStartPictureInPicture:(id)a3
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_20C13B574();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  sub_20BDDE554();
}

- (void)playerViewControllerWillStopPictureInPicture:(id)a3
{
  v4 = a3;
  v5 = self;
  _s9SeymourUI09PictureInC9PresenterC028playerViewControllerWillStopcdC0yySo08AVPlayergH0CF_0();
}

- (void)playerViewControllerDidStopPictureInPicture:(id)a3
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_20C13B574();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  sub_20BDDD674();
}

- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  _Block_copy(v11);
  v12 = a3;
  v13 = self;
  sub_20C13B574();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  sub_20BDE08D8(v12, v13, v11);
  _Block_release(v11);

  _Block_release(v11);
}

@end