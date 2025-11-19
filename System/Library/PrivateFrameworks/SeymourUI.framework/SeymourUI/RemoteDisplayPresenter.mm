@interface RemoteDisplayPresenter
- (_TtC9SeymourUI22RemoteDisplayPresenter)init;
- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)playerViewControllerDidStartPictureInPicture:(id)a3;
- (void)playerViewControllerDidStopPictureInPicture:(id)a3;
- (void)playerViewControllerWillStopPictureInPicture:(id)a3;
@end

@implementation RemoteDisplayPresenter

- (_TtC9SeymourUI22RemoteDisplayPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)playerViewControllerDidStartPictureInPicture:(id)a3
{
  v4 = a3;
  v5 = self;
  _s9SeymourUI22RemoteDisplayPresenterC037playerViewControllerDidStartPictureInK0yySo08AVPlayergH0CF_0();
}

- (void)playerViewControllerWillStopPictureInPicture:(id)a3
{
  v4 = sub_20C138474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = self;
  sub_20C13B574();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  swift_getObjectType();
  sub_20C138464();
  sub_20B9D072C(&unk_27C76F050, MEMORY[0x277D53FF0]);
  sub_20C13A764();
  (*(v5 + 8))(v7, v4);
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
  sub_20B9CB1A0();
}

- (void)playerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_20B9D0138(v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end