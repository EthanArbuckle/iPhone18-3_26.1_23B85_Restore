@interface AudioQueueStateManager
- (_TtC21SiriInformationSearch22AudioQueueStateManager)init;
- (void)nowPlayingObserver:(id)a3 playbackStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5 lastPlayingDate:(id)a6;
@end

@implementation AudioQueueStateManager

- (void)nowPlayingObserver:(id)a3 playbackStateDidChangeFrom:(int64_t)a4 to:(int64_t)a5 lastPlayingDate:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v24[-1] - v14;
  if (a6)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  v18 = 0;
  if (a3)
  {
    v18 = type metadata accessor for SOMediaNowPlayingObserver();
    v19 = &protocol witness table for SOMediaNowPlayingObserver;
  }

  else
  {
    v19 = 0;
    v24[1] = 0;
    v24[2] = 0;
  }

  v24[0] = a3;
  v24[3] = v18;
  v24[4] = v19;
  v20 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x130);
  v21 = a3;
  v22 = self;
  v20(v24, a4, a5, v15);

  outlined destroy of MediaUserStateCenter?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of MediaUserStateCenter?(v24, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
}

- (_TtC21SiriInformationSearch22AudioQueueStateManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end