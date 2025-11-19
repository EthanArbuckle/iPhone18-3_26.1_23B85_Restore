@interface PodcastsApplicationStateMonitor
+ (PodcastsApplicationStateMonitor)shared;
+ (id)descriptionForState:(unint64_t)a3;
- (BOOL)isActive;
- (BOOL)isBackground;
- (BOOL)isUnknown;
- (unint64_t)currentState;
- (void)updateCurrentState:(unint64_t)a3;
@end

@implementation PodcastsApplicationStateMonitor

+ (PodcastsApplicationStateMonitor)shared
{
  if (qword_1ECAB1C70 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB1C78;

  return v3;
}

- (BOOL)isActive
{
  v2 = *(&self->super.isa + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4 == 1;
}

- (unint64_t)currentState
{
  v2 = *(&self->super.isa + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4;
}

- (BOOL)isBackground
{
  v2 = *(&self->super.isa + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4 == 2;
}

- (BOOL)isUnknown
{
  v2 = *(&self->super.isa + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  v3 = self;
  os_unfair_lock_lock((v2 + 24));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v4 == 0;
}

- (void)updateCurrentState:(unint64_t)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  v5 = self;
  os_unfair_lock_lock((v4 + 24));
  *(v4 + 16) = a3;
  os_unfair_lock_unlock((v4 + 24));
}

+ (id)descriptionForState:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3 || a3 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    result = sub_1D9179C9C();
    __break(1u);
    return result;
  }

  if (a3 != 2 && a3 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v3;
}

@end