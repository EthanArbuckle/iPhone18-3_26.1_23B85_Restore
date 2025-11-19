@interface SleepScheduleClock
- (BOOL)accessibilityAlarmEnabled;
- (BOOL)accessibilityIsForSingleDayOverride;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (_TtC13SleepHealthUI18SleepScheduleClock)initWithCoder:(id)a3;
- (_TtC13SleepHealthUI18SleepScheduleClock)initWithFrame:(CGRect)a3;
- (double)accessibilityMaximumTimeInBed;
- (double)accessibilityMinimumTimeInBed;
- (double)accessibilityTimeInBed;
- (double)accessibilityTimeInBedGoal;
- (void)accessibilitySetBedtimeAngle:(double)a3 minimumTimeInBed:(double)a4 maximumTimeInBed:(double)a5;
- (void)accessibilitySetModel:(id)a3 wakeUpComponents:(id)a4 timeInBedGoal:(double)a5 alarmEnabled:(BOOL)a6;
- (void)accessibilitySetModel:(id)a3 wakeUpComponents:(id)a4 timeInBedGoal:(double)a5 alarmEnabled:(BOOL)a6 isForSingleDayOverride:(BOOL)a7;
- (void)accessibilitySetWakeupAngle:(double)a3 minimumTimeInBed:(double)a4 maximumTimeInBed:(double)a5;
- (void)gestureRecognizerDidEnd:(id)a3;
- (void)layoutSubviews;
@end

@implementation SleepScheduleClock

- (_TtC13SleepHealthUI18SleepScheduleClock)initWithCoder:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
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

  v3 = self;
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

- (_TtC13SleepHealthUI18SleepScheduleClock)initWithFrame:(CGRect)a3
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

- (void)accessibilitySetModel:(id)a3 wakeUpComponents:(id)a4 timeInBedGoal:(double)a5 alarmEnabled:(BOOL)a6
{
  v20 = a6;
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
  v15 = self;
  v16 = sub_269D97110();
  v17 = sub_269D97110();
  [(SleepScheduleClock *)v15 accessibilitySetModel:v16 wakeUpComponents:v17 timeInBedGoal:v20 alarmEnabled:0 isForSingleDayOverride:a5];

  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v14, v8);
}

- (void)accessibilitySetModel:(id)a3 wakeUpComponents:(id)a4 timeInBedGoal:(double)a5 alarmEnabled:(BOOL)a6 isForSingleDayOverride:(BOOL)a7
{
  v19 = a6;
  v20 = a7;
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
  v16 = self;
  SleepScheduleClock.accessibilitySetModel(_:wakeUpComponents:timeInBedGoal:alarmEnabled:isForSingleDayOverride:)(v15, v13, v19, v20, a5);

  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
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
  v7 = a3;
  v8 = self;
  v9 = v6;
  v10 = sub_269D9ADD0();

  return (v10 & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a4;
  v7 = self;
  [v6 locationInView_];
  v9 = v8;
  v11 = v10;
  [*(&v7->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_bedtimeHand) frame];
  v14.x = v9;
  v14.y = v11;
  v12 = CGRectContainsPoint(v16, v14) || ([*(&v7->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_wakeUpHand) frame], v15.x = v9, v15.y = v11, CGRectContainsPoint(v17, v15)) || sub_269CCF8A8(v9, v11);

  return v12;
}

- (void)gestureRecognizerDidEnd:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
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

- (void)accessibilitySetBedtimeAngle:(double)a3 minimumTimeInBed:(double)a4 maximumTimeInBed:(double)a5
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v8 = self;
  sub_269D1F15C(a3, a4, a4);
  swift_endAccess();
  sub_269CCBCFC();
}

- (void)accessibilitySetWakeupAngle:(double)a3 minimumTimeInBed:(double)a4 maximumTimeInBed:(double)a5
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
  v9 = self;
  *(v8 + 2) = sub_269D1EFD8(a3);
  *(v8 + 3) = v10;
  sub_269D1FAC8(a4, a4);
  swift_endAccess();
  sub_269CCBCFC();
}

@end