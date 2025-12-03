@interface VSUIVoiceShortcutCard
- (VSUIVoiceShortcutCard)initWithCard:(id)card;
- (void)_configureWithCard:(id)card;
- (void)loadCardWithCompletion:(id)completion;
- (void)loadCardWithContent:(id)content completion:(id)completion;
@end

@implementation VSUIVoiceShortcutCard

- (VSUIVoiceShortcutCard)initWithCard:(id)card
{
  cardCopy = card;
  v9.receiver = self;
  v9.super_class = VSUIVoiceShortcutCard;
  v5 = [(VSUIAsyncLoadingCard *)&v9 initWithCard:cardCopy];
  v6 = v5;
  if (v5)
  {
    [(VSUIVoiceShortcutCard *)v5 _configureWithCard:cardCopy];
    v7 = v6;
  }

  return v6;
}

- (void)_configureWithCard:(id)card
{
  cardCopy = card;
  interactions = [cardCopy interactions];
  anyObject = [interactions anyObject];

  intent = [anyObject intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = intent;
    voiceCommand = [v32 voiceCommand];
    vocabularyIdentifier = [voiceCommand vocabularyIdentifier];
    shortcutIdentifier = self->_shortcutIdentifier;
    self->_shortcutIdentifier = vocabularyIdentifier;

    intentResponse = [anyObject intentResponse];
    underlyingIntent = [intentResponse underlyingIntent];
    underlyingIntentResponse = [intentResponse underlyingIntentResponse];
    typeName = [underlyingIntent typeName];
    messageData = [underlyingIntent messageData];
    v15 = INIntentCreate();

    typeName2 = [underlyingIntentResponse typeName];
    messageData2 = [underlyingIntentResponse messageData];
    v31 = INIntentResponseCreate();

    _metadata = [v32 _metadata];
    _metadata2 = [(INIntent *)v15 _metadata];
    [_metadata2 setExecutionContext:{objc_msgSend(_metadata, "executionContext")}];
    [(INIntent *)v15 _setMetadata:_metadata2];
    intent = self->_intent;
    self->_intent = v15;
    v21 = v15;

    intentResponse = self->_intentResponse;
    self->_intentResponse = v31;
  }

  else
  {
    objc_storeStrong(&self->_intent, intent);
    intentResponse2 = [anyObject intentResponse];
    intentResponse = self->_intentResponse;
    self->_intentResponse = intentResponse2;
  }

  cardSections = [cardCopy cardSections];

  firstObject = [cardSections firstObject];

  commands = [firstObject commands];
  v27 = commands;
  v28 = MEMORY[0x277CBEBF8];
  if (commands)
  {
    v28 = commands;
  }

  v29 = v28;

  sectionCommands = self->_sectionCommands;
  self->_sectionCommands = v29;
}

- (void)loadCardWithCompletion:(id)completion
{
  completionCopy = completion;
  intent = [(VSUIVoiceShortcutCard *)self intent];
  intentResponse = [(VSUIVoiceShortcutCard *)self intentResponse];
  if (intent)
  {
    v7 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:intent response:intentResponse];
    [(VSUIVoiceShortcutCard *)self loadCardWithContent:v7 completion:completionCopy];
  }

  else
  {
    v7 = os_log_create("com.apple.cards.VoiceShortcutsUICardKitProviderSupport", "VSUIVoiceShortcutCard");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(VSUIVoiceShortcutCard *)self loadCardWithCompletion:v7];
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)loadCardWithContent:(id)content completion:(id)completion
{
  completionCopy = completion;
  contentCopy = content;
  v8 = objc_opt_new();
  [v8 setStyle:0];
  [v8 setShowThumbnailImage:1];
  v9 = [objc_alloc(MEMORY[0x277CEBDE0]) initWithCardViewConfig:v8];
  [v9 setFormat:1];
  [v9 setContent:contentCopy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__VSUIVoiceShortcutCard_loadCardWithContent_completion___block_invoke;
  v11[3] = &unk_279E530F0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 startWithReply:v11];
}

void __56__VSUIVoiceShortcutCard_loadCardWithContent_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 card];
  v3 = [v8 cardSections];
  v4 = [v3 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 sectionCommands];
    [v6 setCommands:v7];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)loadCardWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 shortcutIdentifier];
  v5 = [a1 intentResponse];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_2728B4000, a2, OS_LOG_TYPE_ERROR, "Nil intent encountered while loading VSUIVoiceShortcutCard: shortcutIdentifier = %{public}@, intentResponse = %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end