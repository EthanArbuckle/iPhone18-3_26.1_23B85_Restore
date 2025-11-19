@interface SRSSPhoneticVocabularyIPAMappingHelper
+ (id)nvASRFromIPA:(id)a3 locale:(id)a4 separator:(id)a5;
- (_TtC30SpeechRecognitionSharedSupport38SRSSPhoneticVocabularyIPAMappingHelper)init;
@end

@implementation SRSSPhoneticVocabularyIPAMappingHelper

+ (id)nvASRFromIPA:(id)a3 locale:(id)a4 separator:(id)a5
{
  v5 = sub_26B5B5AF8();
  v7 = v6;
  v8 = sub_26B5B5AF8();
  _s30SpeechRecognitionSharedSupport38SRSSPhoneticVocabularyIPAMappingHelperC5nvASR7fromIPA6locale9separatorS2S_S2StFZ_0(v5, v7, v8, v9);

  v10 = sub_26B5B5AE8();

  return v10;
}

- (_TtC30SpeechRecognitionSharedSupport38SRSSPhoneticVocabularyIPAMappingHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SRSSPhoneticVocabularyIPAMappingHelper();
  return [(SRSSPhoneticVocabularyIPAMappingHelper *)&v3 init];
}

@end