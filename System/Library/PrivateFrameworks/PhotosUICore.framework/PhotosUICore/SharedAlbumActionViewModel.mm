@interface SharedAlbumActionViewModel
- (_TtC12PhotosUICore26SharedAlbumActionViewModel)init;
- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients;
@end

@implementation SharedAlbumActionViewModel

- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients
{
  sub_1A3C52C70(0, &qword_1EB12C1F0);
  v6 = sub_1A524CA34();
  controllerCopy = controller;
  selfCopy = self;
  sub_1A3D5A25C(controllerCopy, v6);
}

- (_TtC12PhotosUICore26SharedAlbumActionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end