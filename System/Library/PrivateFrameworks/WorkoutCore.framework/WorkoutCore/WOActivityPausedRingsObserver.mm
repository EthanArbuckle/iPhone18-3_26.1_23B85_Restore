@interface WOActivityPausedRingsObserver
- (BOOL)isPaused;
- (WOActivityPausedRingsObserver)init;
- (WOActivityPausedRingsObserver)initWithIsPaused:(BOOL)a3;
- (void)beginObserving;
- (void)setIsPaused:(BOOL)a3;
@end

@implementation WOActivityPausedRingsObserver

- (WOActivityPausedRingsObserver)init
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = OBJC_IVAR___WOActivityPausedRingsObserver__isPaused;
  v13 = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(self + v8, v7, v3);
  *(&self->super.isa + OBJC_IVAR___WOActivityPausedRingsObserver_state) = 0;
  v9 = type metadata accessor for ActivityPausedRingsObserver();
  v12.receiver = self;
  v12.super_class = v9;
  return [(WOActivityPausedRingsObserver *)&v12 init];
}

- (WOActivityPausedRingsObserver)initWithIsPaused:(BOOL)a3
{
  v3 = [(WOActivityPausedRingsObserver *)self init];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
  ActivityPausedRingsObserver.isPaused.didset();

  return v4;
}

- (BOOL)isPaused
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setIsPaused:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
  ActivityPausedRingsObserver.isPaused.didset();
}

- (void)beginObserving
{
  v2 = self;
  ActivityPausedRingsObserver.beginObserving()();
}

@end