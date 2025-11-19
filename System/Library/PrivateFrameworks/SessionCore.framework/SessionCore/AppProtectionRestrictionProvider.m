@interface AppProtectionRestrictionProvider
- (_TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider)init;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)dealloc;
@end

@implementation AppProtectionRestrictionProvider

- (_TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider____lazy_storage___restrictionsPublisher) = 0;
  v3 = OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider__restrictionsPublisher;
  v10 = MEMORY[0x277D84FA0];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3468, &unk_22D01B588);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(&self->super.isa + v3) = sub_22D01644C();
  *(&self->super.isa + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_subjectMonitorSubscription) = 0;
  v7 = self + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name;
  strcpy(self + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_name, "AppProtection");
  *(v7 + 7) = -4864;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AppProtectionRestrictionProvider();
  return [(AppProtectionRestrictionProvider *)&v9 init];
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11SessionCoreP33_03222CA904BB2C7146C40B12EAF3EEE332AppProtectionRestrictionProvider_subjectMonitorSubscription);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for AppProtectionRestrictionProvider();
  [(AppProtectionRestrictionProvider *)&v5 dealloc];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v4 = self;
  sub_22CFC6D10();
}

@end