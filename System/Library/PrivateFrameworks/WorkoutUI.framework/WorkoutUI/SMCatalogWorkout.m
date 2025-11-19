@interface SMCatalogWorkout
- (NSArray)musicTracks;
- (NSNumber)mediaTypeRawValue;
- (NSSet)artwork;
- (NSSet)mediaMoments;
- (NSURL)musicPlaylistURL;
- (SMCatalogWorkout)init;
- (SMContributor)narrator;
- (double)duration;
@end

@implementation SMCatalogWorkout

- (SMContributor)narrator
{
  v2 = self;
  v3 = CatalogWorkoutBridge.narrator.getter();

  return v3;
}

- (NSSet)artwork
{
  v2 = self;
  v3 = CatalogWorkout.artwork.getter();
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11SeymourCore7ArtworkVG_9WorkoutUI0F6BridgeCs5NeverOTg503_s9g13UI07CatalogA6i16C7artworkShyAA07f10D0CGvgAF11D13Core0F0VXEfU_Tf1cn_nTm(v3, MEMORY[0x277D53A78], type metadata accessor for ArtworkBridge, &OBJC_IVAR___SMArtwork_artwork);

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9WorkoutUI13ArtworkBridgeC_SayAFGTt0g5Tf4g_n(v4);

  type metadata accessor for ArtworkBridge();
  lazy protocol witness table accessor for type MediaMomentBridge and conformance NSObject(&lazy protocol witness table cache variable for type ArtworkBridge and conformance NSObject, type metadata accessor for ArtworkBridge);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (double)duration
{
  v2 = self;
  CatalogWorkout.duration.getter();
  v4 = v3;

  return v4;
}

- (NSArray)musicTracks
{
  v2 = self;
  v3 = CatalogWorkout.musicTracks.getter();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11SeymourCore7ArtworkVG_9WorkoutUI0F6BridgeCs5NeverOTg503_s9g13UI07CatalogA6i16C7artworkShyAA07f10D0CGvgAF11D13Core0F0VXEfU_Tf1cn_nTm(v3, MEMORY[0x277D4FEC8], type metadata accessor for MusicTrackBridge, &OBJC_IVAR___SMMusicTrack_musicTrack);

  type metadata accessor for MusicTrackBridge();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (NSURL)musicPlaylistURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = self;
  CatalogWorkout.musicPlaylistURL.getter();

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (NSSet)mediaMoments
{
  v2 = self;
  v3 = CatalogWorkout.mediaMoments.getter();
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11SeymourCore7ArtworkVG_9WorkoutUI0F6BridgeCs5NeverOTg503_s9g13UI07CatalogA6i16C7artworkShyAA07f10D0CGvgAF11D13Core0F0VXEfU_Tf1cn_nTm(v3, MEMORY[0x277D50018], type metadata accessor for MediaMomentBridge, &OBJC_IVAR___SMMediaMoment_mediaMoment);

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9WorkoutUI17MediaMomentBridgeC_SayAFGTt0g5Tf4g_n(v4);

  type metadata accessor for MediaMomentBridge();
  lazy protocol witness table accessor for type MediaMomentBridge and conformance NSObject(&lazy protocol witness table cache variable for type MediaMomentBridge and conformance NSObject, type metadata accessor for MediaMomentBridge);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (NSNumber)mediaTypeRawValue
{
  v2 = self;
  v3 = CatalogWorkoutBridge.mediaTypeRawValue.getter();

  return v3;
}

- (SMCatalogWorkout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end