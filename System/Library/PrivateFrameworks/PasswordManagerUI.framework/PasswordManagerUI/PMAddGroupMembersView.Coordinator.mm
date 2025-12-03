@interface PMAddGroupMembersView.Coordinator
- (_TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator)init;
- (void)memberPickerViewController:(id)controller addedRecipients:(id)recipients;
@end

@implementation PMAddGroupMembersView.Coordinator

- (void)memberPickerViewController:(id)controller addedRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (recipients)
  {
    sub_21C6E8F4C(0, &qword_27CDEE438, 0x277CFBCA0);
    recipientsCopy = sub_21CB85824();
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_21C85C700(recipientsCopy);
}

- (_TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end