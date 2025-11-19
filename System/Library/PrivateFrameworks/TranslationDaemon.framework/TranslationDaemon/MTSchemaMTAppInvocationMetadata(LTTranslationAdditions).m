@interface MTSchemaMTAppInvocationMetadata(LTTranslationAdditions)
+ (id)lt_initWithTranslateAppContext:()LTTranslationAdditions;
@end

@implementation MTSchemaMTAppInvocationMetadata(LTTranslationAdditions)

+ (id)lt_initWithTranslateAppContext:()LTTranslationAdditions
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D58A70]);
  v5 = [v3 displayMode];
  if (v5 <= 3)
  {
    [v4 setDisplayMode:v5];
  }

  v6 = MEMORY[0x277D58B30];
  v7 = [v3 localePair];
  v8 = [v6 lt_initWithLocalePair:v7];
  [v4 setLocalePair:v8];

  [v4 setIsGenderAlternativeEnabled:{objc_msgSend(v3, "isGenderAlternativeEnabled")}];
  v9 = [v3 tabName];
  if (v9 <= 4)
  {
    [v4 setTabName:v9];
  }

  v10 = objc_alloc(MEMORY[0x277D5AC78]);
  v11 = [v3 tabSessionId];
  v12 = [v10 initWithNSUUID:v11];
  [v4 setTabSessionId:v12];

  v13 = [v3 conversationTabView];
  if (v13 <= 2)
  {
    [v4 setConversationTabView:v13];
  }

  [v4 setIsPlayTranslationsEnabled:{objc_msgSend(v3, "isPlayTranslationsEnabled")}];
  v14 = [v3 autoTranslateSessionId];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277D5AC78]);
    v16 = [v3 autoTranslateSessionId];
    v17 = [v15 initWithNSUUID:v16];
    [v4 setAutoTranslateSessionId:v17];
  }

  v18 = [v3 audioChannel] - 1;
  if (v18 < 5)
  {
    v19 = (v18 + 1);
  }

  else
  {
    v19 = 0;
  }

  [v4 setAudioChannel:v19];

  return v4;
}

@end