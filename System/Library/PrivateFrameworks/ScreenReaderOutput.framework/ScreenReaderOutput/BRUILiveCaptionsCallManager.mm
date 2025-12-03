@interface BRUILiveCaptionsCallManager
+ (_TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager)shared;
- (void)handleCallStatusChanged:(id)changed;
@end

@implementation BRUILiveCaptionsCallManager

+ (_TtC18ScreenReaderOutput27BRUILiveCaptionsCallManager)shared
{
  if (qword_27FF87360 != -1)
  {
    swift_once();
  }

  v3 = qword_27FF86E78;

  return v3;
}

- (void)handleCallStatusChanged:(id)changed
{
  v4 = sub_264982374();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264982354();
  selfCopy = self;
  sub_26496CE7C(v10);

  (*(v5 + 8))(v10, v4);
}

@end