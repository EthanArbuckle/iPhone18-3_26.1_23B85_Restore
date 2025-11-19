@interface PMAddGroupMembersView.Coordinator
- (_TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator)init;
- (void)memberPickerViewController:(id)a3 addedRecipients:(id)a4;
@end

@implementation PMAddGroupMembersView.Coordinator

- (void)memberPickerViewController:(id)a3 addedRecipients:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_21C6E8F4C(0, &qword_27CDEE438, 0x277CFBCA0);
    v4 = sub_21CB85824();
  }

  v7 = a3;
  v8 = self;
  sub_21C85C700(v4);
}

- (_TtCV17PasswordManagerUI21PMAddGroupMembersView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end