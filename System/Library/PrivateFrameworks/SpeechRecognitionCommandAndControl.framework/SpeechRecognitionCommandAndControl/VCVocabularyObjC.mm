@interface VCVocabularyObjC
+ (int64_t)exportTo:(id)to localeIdentifier:(id)identifier error:(id *)error;
+ (int64_t)importFrom:(id)from error:(id *)error;
+ (void)addVocabularyEntryWithString:(id)string;
+ (void)addVocabularyEntryWithString:(id)string pronunciations:(id)pronunciations;
+ (void)deleteAllVocabularyForActiveLocale;
+ (void)removePronunciationsFromText:(id)text;
+ (void)removeVocabularyEntryWithText:(id)text localeIdentifier:(id)identifier;
+ (void)setPronunciations:(id)pronunciations forText:(id)text;
- (VCVocabularyObjC)init;
@end

@implementation VCVocabularyObjC

+ (int64_t)importFrom:(id)from error:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = specialized static VCVocabularyObjC.import(from:error:)();
  (*(v5 + 8))(v7, v4);
  return v8;
}

+ (int64_t)exportTo:(id)to localeIdentifier:(id)identifier error:(id *)error
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = specialized static VCVocabularyObjC.export(to:localeIdentifier:error:)();

  (*(v7 + 8))(v9, v6);
  return v10;
}

+ (void)addVocabularyEntryWithString:(id)string
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for VCSettings();
  v6 = static VCSettings.shared.getter();
  v7 = type metadata accessor for Locale();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  VCSettings.addVocabularyEntry(text:pronunciations:locale:)();

  outlined destroy of Locale?(v5);
}

+ (void)addVocabularyEntryWithString:(id)string pronunciations:(id)pronunciations
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for VCSettings();
  v7 = static VCSettings.shared.getter();
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  VCSettings.addVocabularyEntry(text:pronunciations:locale:)();

  outlined destroy of Locale?(v6);
}

+ (void)removeVocabularyEntryWithText:(id)text localeIdentifier:(id)identifier
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for VCSettings();
  v11 = static VCSettings.shared.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B405970;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  String.voiceControlLocaleIdentifier.getter();

  Locale.init(identifier:)();
  VCSettings.removeVocabularyEntries(texts:locale:)();

  (*(v5 + 8))(v7, v4);
}

+ (void)deleteAllVocabularyForActiveLocale
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VCSettings();
  v6 = static VCSettings.shared.getter();
  v7 = static VCSettings.shared.getter();
  VCSettings.activeLocale.getter();

  VCSettings.removeAllVocabularyEntries(for:)();
  (*(v3 + 8))(v5, v2);
}

+ (void)setPronunciations:(id)pronunciations forText:(id)text
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for VCSettings();
  v8 = static VCSettings.shared.getter();
  v9 = static VCSettings.shared.getter();
  VCSettings.activeLocale.getter();

  VCSettings.setPronunciations(pronunciations:forText:locale:)();

  (*(v5 + 8))(v7, v4);
}

+ (void)removePronunciationsFromText:(id)text
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for VCSettings();
  v7 = static VCSettings.shared.getter();
  v8 = static VCSettings.shared.getter();
  VCSettings.activeLocale.getter();

  VCSettings.removePronunciations(fromText:locale:)();

  (*(v4 + 8))(v6, v3);
}

- (VCVocabularyObjC)init
{
  v3.receiver = self;
  v3.super_class = VCVocabularyObjC;
  return [(VCVocabularyObjC *)&v3 init];
}

@end