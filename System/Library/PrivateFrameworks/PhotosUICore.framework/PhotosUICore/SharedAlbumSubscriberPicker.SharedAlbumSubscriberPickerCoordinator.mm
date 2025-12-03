@interface SharedAlbumSubscriberPicker.SharedAlbumSubscriberPickerCoordinator
- (_TtCV12PhotosUICore27SharedAlbumSubscriberPicker38SharedAlbumSubscriberPickerCoordinator)init;
- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients;
@end

@implementation SharedAlbumSubscriberPicker.SharedAlbumSubscriberPickerCoordinator

- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients
{
  sub_1A3C52C70(0, &qword_1EB12C1F0);
  v6 = sub_1A524CA34();
  controllerCopy = controller;
  selfCopy = self;
  sub_1A3DA3860(controllerCopy, v6);
}

- (_TtCV12PhotosUICore27SharedAlbumSubscriberPicker38SharedAlbumSubscriberPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end