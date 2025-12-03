@interface SMActivityManagerInternal
+ (SMActivityManagerInternal)shared;
- (BOOL)hasActivity;
- (SMActivityManagerInternal)init;
- (void)endActivities;
- (void)startActivityWith:(id)with localState:(id)state;
- (void)updateActivityWith:(id)with localState:(id)state shouldNotify:(BOOL)notify;
@end

@implementation SMActivityManagerInternal

+ (SMActivityManagerInternal)shared
{
  if (qword_280BCB650 != -1)
  {
    swift_once();
  }

  v3 = qword_280BCB658;

  return v3;
}

- (SMActivityManagerInternal)init
{
  *(&self->super.isa + OBJC_IVAR___SMActivityManagerInternal_activities) = MEMORY[0x277D84F90];
  v2 = (&self->super.isa + OBJC_IVAR___SMActivityManagerInternal_silentAudioFileName);
  *v2 = 0xD000000000000010;
  v2[1] = 0x80000002645DAB70;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SMActivityManager();
  v3 = [(SMActivityManagerInternal *)&v9 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  v4 = v3;
  v5 = sub_2645D361C();
  v6 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  v7 = *(&v4->super.isa + v6);
  *(&v4->super.isa + v6) = v5;

  return v4;
}

- (void)startActivityWith:(id)with localState:(id)state
{
  withCopy = with;
  stateCopy = state;
  selfCopy = self;
  sub_264561600();
}

- (void)updateActivityWith:(id)with localState:(id)state shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  withCopy = with;
  stateCopy = state;
  selfCopy = self;
  sub_264561DA0(withCopy, notifyCopy);
}

- (void)endActivities
{
  selfCopy = self;
  sub_264560A50();
}

- (BOOL)hasActivity
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72788, &qword_2645D9528);
  selfCopy = self;
  v4 = sub_2645D361C();
  v5 = OBJC_IVAR___SMActivityManagerInternal_activities;
  swift_beginAccess();
  v6 = *(&selfCopy->super.isa + v5);
  *(&selfCopy->super.isa + v5) = v4;

  v7 = *(&selfCopy->super.isa + v5);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v10 = *(&selfCopy->super.isa + v5);
    }

    v8 = sub_2645D3BCC();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8 != 0;
}

@end