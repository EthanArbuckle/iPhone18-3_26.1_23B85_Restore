@interface TPTipsHelper_Swift
+ (uint64_t)donateEventSavedNumber;
+ (void)donateEventSearchedCallHistory;
- (TPTipsHelper_Swift)init;
- (UIViewController)popoverController;
- (void)setPopoverController:(id)controller;
@end

@implementation TPTipsHelper_Swift

- (UIViewController)popoverController
{
  v3 = OBJC_IVAR___TPTipsHelper_Swift_popoverController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPopoverController:(id)controller
{
  v5 = OBJC_IVAR___TPTipsHelper_Swift_popoverController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

+ (void)donateEventSearchedCallHistory
{
  sub_1B48D282C(0);
  v2 = sub_1B48D2024();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - v6;
  (*(v4 + 16))(&v8 - v6, v2, v3);
  sub_1B48E68C4();
  (*(v4 + 8))(v7, v3);
}

- (TPTipsHelper_Swift)init
{
  *(&self->super.isa + OBJC_IVAR___TPTipsHelper_Swift_popoverController) = 0;
  v3 = OBJC_IVAR___TPTipsHelper_Swift_entries;
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + v3) = sub_1B48CABA0(MEMORY[0x1E69E7CC0]);
  v5 = OBJC_IVAR___TPTipsHelper_Swift_currentTip;
  *(&self->super.isa + v5) = sub_1B48CACB0(v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for TPTipsHelper();
  return [(TPTipsHelper_Swift *)&v7 init];
}

+ (uint64_t)donateEventSavedNumber
{
  RecentsSaveAsContactTip.init()();
  v0 = sub_1B48E67C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6982AE8], v0);
  sub_1B48CBB64();
  sub_1B48E6654();
  (*(v1 + 8))(v4, v0);
  v5 = sub_1B48CD3B0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2610, &qword_1B48EBF70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v5, v6);
  sub_1B48E68C4();
  return (*(v7 + 8))(v10, v6);
}

@end