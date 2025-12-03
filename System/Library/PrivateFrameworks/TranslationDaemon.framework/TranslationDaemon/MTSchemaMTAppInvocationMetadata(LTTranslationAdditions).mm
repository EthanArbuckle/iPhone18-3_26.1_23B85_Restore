@interface MTSchemaMTAppInvocationMetadata(LTTranslationAdditions)
+ (id)lt_initWithTranslateAppContext:()LTTranslationAdditions;
@end

@implementation MTSchemaMTAppInvocationMetadata(LTTranslationAdditions)

+ (id)lt_initWithTranslateAppContext:()LTTranslationAdditions
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D58A70]);
  displayMode = [v3 displayMode];
  if (displayMode <= 3)
  {
    [v4 setDisplayMode:displayMode];
  }

  v6 = MEMORY[0x277D58B30];
  localePair = [v3 localePair];
  v8 = [v6 lt_initWithLocalePair:localePair];
  [v4 setLocalePair:v8];

  [v4 setIsGenderAlternativeEnabled:{objc_msgSend(v3, "isGenderAlternativeEnabled")}];
  tabName = [v3 tabName];
  if (tabName <= 4)
  {
    [v4 setTabName:tabName];
  }

  v10 = objc_alloc(MEMORY[0x277D5AC78]);
  tabSessionId = [v3 tabSessionId];
  v12 = [v10 initWithNSUUID:tabSessionId];
  [v4 setTabSessionId:v12];

  conversationTabView = [v3 conversationTabView];
  if (conversationTabView <= 2)
  {
    [v4 setConversationTabView:conversationTabView];
  }

  [v4 setIsPlayTranslationsEnabled:{objc_msgSend(v3, "isPlayTranslationsEnabled")}];
  autoTranslateSessionId = [v3 autoTranslateSessionId];

  if (autoTranslateSessionId)
  {
    v15 = objc_alloc(MEMORY[0x277D5AC78]);
    autoTranslateSessionId2 = [v3 autoTranslateSessionId];
    v17 = [v15 initWithNSUUID:autoTranslateSessionId2];
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