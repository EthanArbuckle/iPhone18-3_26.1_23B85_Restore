@interface KeyCommandCenter
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)handleKeyCommandWithSender:(id)a3;
@end

@implementation KeyCommandCenter

- (void)handleKeyCommandWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1D8191F34();
  swift_unknownObjectRelease();
  KeyCommandCenter.handleKeyCommand(sender:)(v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v6 = self;
  }

  v7 = KeyCommandCenter.canPerformAction(_:withSender:)();

  sub_1D7E70E44(v9, &qword_1EDBBC780);
  return v7 & 1;
}

@end