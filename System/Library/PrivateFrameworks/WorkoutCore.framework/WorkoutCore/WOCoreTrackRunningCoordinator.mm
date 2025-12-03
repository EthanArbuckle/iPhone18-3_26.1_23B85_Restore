@interface WOCoreTrackRunningCoordinator
+ (WOCoreTrackRunningCoordinator)shared;
- (BOOL)canShowTrackPrompt;
- (BOOL)didShowTrackPrompt;
- (BOOL)trackModeEnabledLocal;
- (NSNumber)trackId;
- (void)dealloc;
- (void)didUpdateKeyValueDomain:(id)domain;
- (void)reset;
- (void)setCanShowTrackPrompt:(BOOL)prompt;
- (void)setDidShowTrackPrompt:(BOOL)prompt;
- (void)setTrackId:(id)id;
@end

@implementation WOCoreTrackRunningCoordinator

- (BOOL)canShowTrackPrompt
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCanShowTrackPrompt:(BOOL)prompt
{
  v5 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  *(&self->super.isa + v5) = prompt;
}

- (BOOL)didShowTrackPrompt
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDidShowTrackPrompt:(BOOL)prompt
{
  v5 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  *(&self->super.isa + v5) = prompt;
}

- (BOOL)trackModeEnabledLocal
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (NSNumber)trackId
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTrackId:(id)id
{
  v5 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = id;
  idCopy = id;
}

+ (WOCoreTrackRunningCoordinator)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static TrackRunningCoordinator.shared;

  return v3;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOCoreTrackRunningCoordinator_domain);
  selfCopy = self;
  [v2 stopObservation_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for TrackRunningCoordinator();
  [(WOCoreTrackRunningCoordinator *)&v4 dealloc];
}

- (void)reset
{
  selfCopy = self;
  TrackRunningCoordinator.reset()();
}

- (void)didUpdateKeyValueDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  specialized TrackRunningCoordinator.keyValueDomain(didUpdate:)();
}

@end