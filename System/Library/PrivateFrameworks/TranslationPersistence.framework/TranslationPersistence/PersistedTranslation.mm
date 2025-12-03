@interface PersistedTranslation
- (PersistedTranslation)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (double)ttsPlaybackRateDouble;
- (void).cxx_construct;
- (void)setTtsPlaybackRateDouble:(double)double;
@end

@implementation PersistedTranslation

- (double)ttsPlaybackRateDouble
{
  v3 = OBJC_IVAR___PersistedTranslation_ttsPlaybackRateDouble;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setTtsPlaybackRateDouble:(double)double
{
  v5 = OBJC_IVAR___PersistedTranslation_ttsPlaybackRateDouble;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = double;
  selfCopy = self;
  sub_26F397258();
  sub_26F397108();
}

- (PersistedTranslation)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PersistedTranslation();
  return [(PersistedTranslation *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void).cxx_construct
{
  *(&self->super.super.isa + OBJC_IVAR___PersistedTranslation_ttsPlaybackRateDouble) = 0x3FF0000000000000;
  v3 = OBJC_IVAR___PersistedTranslation_selfLoggingInvocationId;
  v4 = sub_26F397008();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
}

@end