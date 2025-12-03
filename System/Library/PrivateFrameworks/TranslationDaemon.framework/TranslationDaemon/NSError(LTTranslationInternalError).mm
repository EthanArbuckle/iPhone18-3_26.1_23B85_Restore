@interface NSError(LTTranslationInternalError)
+ (id)lt_bundle;
+ (id)lt_incompatibleForcedRoutes;
+ (id)lt_internalErrorWithCode:()LTTranslationInternalError description:userInfo:;
+ (id)lt_internalTTSCreationError;
+ (id)lt_lidModelLoadError;
+ (id)lt_offlineTTSErrorWithError:()LTTranslationInternalError;
+ (id)lt_translationNotWorking;
+ (id)lt_unsupporedLocalePairError:()LTTranslationInternalError;
@end

@implementation NSError(LTTranslationInternalError)

+ (id)lt_bundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NSError_LTTranslationInternalError__lt_bundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (lt_bundle_onceToken != -1)
  {
    dispatch_once(&lt_bundle_onceToken, block);
  }

  v1 = lt_bundle_bundle;

  return v1;
}

+ (id)lt_internalErrorWithCode:()LTTranslationInternalError description:userInfo:
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    dictionary = [v8 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = dictionary;
  if (v7)
  {
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationInternalErrorDomain" code:a3 userInfo:v11];

  return v12;
}

+ (id)lt_incompatibleForcedRoutes
{
  lt_bundle = [self lt_bundle];
  v3 = [lt_bundle localizedStringForKey:@"INVALID_ONLINE_OFFLINE_REQUEST_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
  v4 = [self lt_internalErrorWithCode:0 description:v3 userInfo:0];

  return v4;
}

+ (id)lt_lidModelLoadError
{
  lt_bundle = [self lt_bundle];
  v3 = [lt_bundle localizedStringForKey:@"LID_MODEL_LOAD_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
  v4 = [self lt_internalErrorWithCode:4 description:v3 userInfo:0];

  return v4;
}

+ (id)lt_offlineTTSErrorWithError:()LTTranslationInternalError
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  lt_bundle = [self lt_bundle];
  v6 = [lt_bundle localizedStringForKey:@"OFFLINE_TTS_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
  v11 = *MEMORY[0x277CCA7E8];
  v12[0] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v8 = [self lt_internalErrorWithCode:7 description:v6 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)lt_internalTTSCreationError
{
  lt_bundle = [self lt_bundle];
  v3 = [lt_bundle localizedStringForKey:@"TTS_PLAYER_FAILURE_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
  v4 = [self lt_internalErrorWithCode:9 description:v3 userInfo:0];

  return v4;
}

+ (id)lt_unsupporedLocalePairError:()LTTranslationInternalError
{
  v4 = a3;
  sourceLocale = [v4 sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];

  targetLocale = [v4 targetLocale];

  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [currentLocale localizedStringForLocaleIdentifier:_ltLocaleIdentifier];

  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = [currentLocale2 localizedStringForLocaleIdentifier:_ltLocaleIdentifier2];

  v13 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle localizedStringForKey:@"UNSUPPORTED_LOCALE_PAIR_ERROR_DESCRIPTION_FORMATTED_STRING" value:&stru_284834138 table:0];
  v16 = [v13 stringWithFormat:v15, v10, v12];

  v17 = [self lt_errorWithCode:11 description:v16 userInfo:0];

  return v17;
}

+ (id)lt_translationNotWorking
{
  lt_bundle = [self lt_bundle];
  v3 = [lt_bundle localizedStringForKey:@"TRANSLATION_NOT_WORKING" value:&stru_284834138 table:0];
  v4 = [self lt_internalErrorWithCode:11 description:v3 userInfo:0];

  return v4;
}

@end