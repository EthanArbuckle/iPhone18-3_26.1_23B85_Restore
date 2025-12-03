@interface SleepScheduleClock
- (BOOL)accessibilityAlarmEnabled;
- (BOOL)accessibilityIsForSingleDayOverride;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (_TtC13SleepHealthUI18SleepScheduleClock)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI18SleepScheduleClock)initWithFrame:(CGRect)frame;
- (double)accessibilityMaximumTimeInBed;
- (double)accessibilityMinimumTimeInBed;
- (double)accessibilityTimeInBed;
- (double)accessibilityTimeInBedGoal;
- (void)accessibilitySetBedtimeAngle:(double)angle minimumTimeInBed:(double)bed maximumTimeInBed:(double)inBed;
- (void)accessibilitySetModel:(id)model wakeUpComponents:(id)components timeInBedGoal:(double)goal alarmEnabled:(BOOL)enabled;
- (void)accessibilitySetModel:(id)model wakeUpComponents:(id)components timeInBedGoal:(double)goal alarmEnabled:(BOOL)enabled isForSingleDayOverride:(BOOL)override;
- (void)accessibilitySetWakeupAngle:(double)angle minimumTimeInBed:(double)bed maximumTimeInBed:(double)inBed;
- (void)gestureRecognizerDidEnd:(id)end;
- (void)layoutSubviews;
@end

@implementation SleepScheduleClock

- (_TtC13SleepHealthUI18SleepScheduleClock)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_269CD2AA8();
}

- (void)layoutSubviews
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269CCCC08();
}

- (BOOL)accessibilityIsForSingleDayOverride
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  swift_beginAccess();
  LOBYTE(v3) = v3[42];

  return v3;
}

- (BOOL)accessibilityAlarmEnabled
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  swift_beginAccess();
  LOBYTE(v3) = v3[41];

  return v3;
}

- (double)accessibilityTimeInBed
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CCD470();
  v3 = v2;

  return v3;
}

- (double)accessibilityTimeInBedGoal
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (self + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v4 = v3[4];
  LODWORD(v3) = *(v3 + 40);

  result = 0.0;
  if (!v3)
  {
    return v4;
  }

  return result;
}

- (_TtC13SleepHealthUI18SleepScheduleClock)initWithFrame:(CGRect)frame
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accessibilitySetModel:(id)model wakeUpComponents:(id)components timeInBedGoal:(double)goal alarmEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = sub_269D971F0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-v13];
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97120();
  sub_269D97120();
  selfCopy = self;
  v16 = sub_269D97110();
  v17 = sub_269D97110();
  [(SleepScheduleClock *)selfCopy accessibilitySetModel:v16 wakeUpComponents:v17 timeInBedGoal:enabledCopy alarmEnabled:0 isForSingleDayOverride:goal];

  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v14, v8);
}

- (void)accessibilitySetModel:(id)model wakeUpComponents:(id)components timeInBedGoal:(double)goal alarmEnabled:(BOOL)enabled isForSingleDayOverride:(BOOL)override
{
  enabledCopy = enabled;
  overrideCopy = override;
  v9 = sub_269D971F0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97120();
  sub_269D97120();
  selfCopy = self;
  SleepScheduleClock.accessibilitySetModel(_:wakeUpComponents:timeInBedGoal:alarmEnabled:isForSingleDayOverride:)(v15, v13, enabledCopy, overrideCopy, goal);

  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_gestureRecognizer);
  sub_269C1B0B8(0, &qword_28034FB10);
  recognizerCopy = recognizer;
  selfCopy = self;
  v9 = v6;
  v10 = sub_269D9ADD0();

  return (v10 & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  touchCopy = touch;
  selfCopy = self;
  [touchCopy locationInView_];
  v9 = v8;
  v11 = v10;
  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand) frame];
  v14.x = v9;
  v14.y = v11;
  v12 = CGRectContainsPoint(v16, v14) || ([*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand) frame], v15.x = v9, v15.y = v11, CGRectContainsPoint(v17, v15)) || sub_269CCF8A8(v9, v11);

  return v12;
}

- (void)gestureRecognizerDidEnd:(id)end
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  endCopy = end;
  selfCopy = self;
  sub_269CD2C1C();
}

- (double)accessibilityMinimumTimeInBed
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super._minimumSafeAreaInsets.right + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration);

  return v3;
}

- (double)accessibilityMaximumTimeInBed
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super._clippedSafeAreaCornerInsets.packedInsets + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration);

  return v3;
}

- (void)accessibilitySetBedtimeAngle:(double)angle minimumTimeInBed:(double)bed maximumTimeInBed:(double)inBed
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  selfCopy = self;
  sub_269D1F15C(angle, bed, bed);
  swift_endAccess();
  sub_269CCBCFC();
}

- (void)accessibilitySetWakeupAngle:(double)angle minimumTimeInBed:(double)bed maximumTimeInBed:(double)inBed
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = self + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model;
  swift_beginAccess();
  selfCopy = self;
  *(v8 + 2) = sub_269D1EFD8(angle);
  *(v8 + 3) = v10;
  sub_269D1FAC8(bed, bed);
  swift_endAccess();
  sub_269CCBCFC();
}

@end