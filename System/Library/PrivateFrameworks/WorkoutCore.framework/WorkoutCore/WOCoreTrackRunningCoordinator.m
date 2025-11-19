@interface WOCoreTrackRunningCoordinator
+ (WOCoreTrackRunningCoordinator)shared;
- (BOOL)canShowTrackPrompt;
- (BOOL)didShowTrackPrompt;
- (BOOL)trackModeEnabledLocal;
- (NSNumber)trackId;
- (void)dealloc;
- (void)didUpdateKeyValueDomain:(id)a3;
- (void)reset;
- (void)setCanShowTrackPrompt:(BOOL)a3;
- (void)setDidShowTrackPrompt:(BOOL)a3;
- (void)setTrackId:(id)a3;
@end

@implementation WOCoreTrackRunningCoordinator

- (BOOL)canShowTrackPrompt
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCanShowTrackPrompt:(BOOL)a3
{
  v5 = OBJC_IVAR___WOCoreTrackRunningCoordinator_canShowTrackPrompt;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)didShowTrackPrompt
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDidShowTrackPrompt:(BOOL)a3
{
  v5 = OBJC_IVAR___WOCoreTrackRunningCoordinator_didShowTrackPrompt;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)trackModeEnabledLocal
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (NSNumber)trackId
{
  v3 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTrackId:(id)a3
{
  v5 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
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
  v3 = self;
  [v2 stopObservation_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for TrackRunningCoordinator();
  [(WOCoreTrackRunningCoordinator *)&v4 dealloc];
}

- (void)reset
{
  v2 = self;
  TrackRunningCoordinator.reset()();
}

- (void)didUpdateKeyValueDomain:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized TrackRunningCoordinator.keyValueDomain(didUpdate:)();
}

@end