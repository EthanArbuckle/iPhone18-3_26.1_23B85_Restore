@interface Station.Mood:
- (unint64_t)Date;
- (unint64_t)String;
@end

@implementation Station.Mood:

- (unint64_t)String
{
  result = lazy protocol witness table cache variable for type [Station.Mood : String] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [Station.Mood : String] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodOSSGMR);
    lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, 255, MEMORY[0x277D2B280]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Station.Mood : String] and conformance <> [A : B]);
  }

  return result;
}

- (unint64_t)Date
{
  result = lazy protocol witness table cache variable for type [Station.Mood : Date] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [Station.Mood : Date] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMd, &_sSDy8MusicKit7StationV0aB8InternalE4MoodO10Foundation4DateVGMR);
    lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, 255, MEMORY[0x277D2B280]);
    lazy protocol witness table accessor for type MediaPlaybackMoodStationCache and conformance MediaPlaybackMoodStationCache(&lazy protocol witness table cache variable for type Date and conformance Date, 255, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Station.Mood : Date] and conformance <> [A : B]);
  }

  return result;
}

@end