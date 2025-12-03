@interface PBFGalleryControllerState
- (NSDate)lastUsefulGalleryConfigurationPersistDate;
- (_TtC11PosterBoard25PBFGalleryControllerState)init;
- (_TtC11PosterBoard25PBFGalleryControllerState)initWithLastUsefulGalleryConfigurationPersistDate:(id)date minimumIntervalBetweenProactivePush:(double)push maximumIntervalBetweenProactivePush:(double)proactivePush proactiveInfractionCount:(unint64_t)count;
- (double)maximumIntervalBetweenProactivePush;
- (double)minimumIntervalBetweenProactivePush;
- (unint64_t)proactiveInfractionCount;
- (void)setLastUsefulGalleryConfigurationPersistDate:(id)date;
- (void)setMaximumIntervalBetweenProactivePush:(double)push;
- (void)setMinimumIntervalBetweenProactivePush:(double)push;
- (void)setProactiveInfractionCount:(unint64_t)count;
@end

@implementation PBFGalleryControllerState

- (_TtC11PosterBoard25PBFGalleryControllerState)initWithLastUsefulGalleryConfigurationPersistDate:(id)date minimumIntervalBetweenProactivePush:(double)push maximumIntervalBetweenProactivePush:(double)proactivePush proactiveInfractionCount:(unint64_t)count
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  if (date)
  {
    sub_21B6C8814();
    v13 = sub_21B6C8854();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_21B6C8854();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  return PBFGalleryControllerState.init(lastUsefulGalleryConfigurationPersistDate:minimumIntervalBetweenProactivePush:maximumIntervalBetweenProactivePush:proactiveInfractionCount:)(v12, count, push, proactivePush);
}

- (NSDate)lastUsefulGalleryConfigurationPersistDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-v4];
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  selfCopy = self;
  v15 = sub_21B63D9CC;
  v16 = &v17;
  selfCopy2 = self;
  os_unfair_lock_lock(v6 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v6 + 4);

  v8 = sub_21B6C8854();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_21B6C87F4();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setLastUsefulGalleryConfigurationPersistDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  if (date)
  {
    sub_21B6C8814();
    v8 = sub_21B6C8854();
    v9 = (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v10 = sub_21B6C8854();
    v9 = (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  v11 = *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  v12 = MEMORY[0x28223BE20](v9);
  *&v15[-16] = self;
  *&v15[-8] = v7;
  MEMORY[0x28223BE20](v12);
  *&v15[-16] = sub_21B63D93C;
  *&v15[-8] = v13;
  selfCopy = self;
  os_unfair_lock_lock(v11 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v11 + 4);
  sub_21B62AA8C(v7, &qword_27CD93190);
}

- (double)minimumIntervalBetweenProactivePush
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_21B63D99C(&v6);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v6;

  return v4;
}

- (void)setMinimumIntervalBetweenProactivePush:(double)push
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  selfCopy = self;
  os_unfair_lock_lock(v3 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v3 + 4);
}

- (double)maximumIntervalBetweenProactivePush
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_21B63D99C(&v6);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v6;

  return v4;
}

- (void)setMaximumIntervalBetweenProactivePush:(double)push
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  selfCopy = self;
  os_unfair_lock_lock(v3 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v3 + 4);
}

- (unint64_t)proactiveInfractionCount
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_21B63D9B4(&v6);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v6;

  return v4;
}

- (void)setProactiveInfractionCount:(unint64_t)count
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11PosterBoard25PBFGalleryControllerState_lock);
  selfCopy = self;
  os_unfair_lock_lock(v3 + 4);
  sub_21B63DA2C();
  os_unfair_lock_unlock(v3 + 4);
}

- (_TtC11PosterBoard25PBFGalleryControllerState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end