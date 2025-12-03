@interface MediaPlayerViewController.Coordinator
- (_TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator)init;
- (void)nowPlayingViewController:(id)controller didChangeSizeWithAnimations:(id)animations completion:(id)completion;
@end

@implementation MediaPlayerViewController.Coordinator

- (void)nowPlayingViewController:(id)controller didChangeSizeWithAnimations:(id)animations completion:(id)completion
{
  v8 = _Block_copy(animations);
  v9 = _Block_copy(completion);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_F16C;
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (v9)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v10;
    v10 = sub_F110;
  }

LABEL_5:
  controllerCopy = controller;
  selfCopy = self;
  sub_DBC4(controllerCopy, v8, v11, v10);
  sub_F0C8(v10);
  sub_F0C8(v8);
}

- (_TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end