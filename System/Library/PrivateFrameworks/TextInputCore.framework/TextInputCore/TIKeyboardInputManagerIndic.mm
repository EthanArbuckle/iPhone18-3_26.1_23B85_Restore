@interface TIKeyboardInputManagerIndic
- (TIKeyboardInputManagerIndic)initWithConfig:(id)config keyboardState:(id)state;
- (id)contextualDisplayKeys;
- (id)handleKeyboardInput:(id)input;
- (void)setKeyLayout:(id)layout;
- (void)syncToLayoutState:(id)state;
@end

@implementation TIKeyboardInputManagerIndic

- (id)contextualDisplayKeys
{
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    scriptComposer = [(TIKeyboardInputManagerIndic *)self scriptComposer];
    contextualDisplayKeys = [scriptComposer contextualDisplayKeys];
  }

  else
  {
    contextualDisplayKeys = 0;
  }

  return contextualDisplayKeys;
}

- (void)setKeyLayout:(id)layout
{
  layoutCopy = layout;
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v5 = [objc_alloc(MEMORY[0x277D6F400]) initWithCapacity:50];
    [v5 setUsesTwoHands:{objc_msgSend(layoutCopy, "usesTwoHands")}];
    [v5 setShifted:{objc_msgSend(layoutCopy, "isShifted")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__TIKeyboardInputManagerIndic_setKeyLayout___block_invoke;
    v9[3] = &unk_2787323B8;
    v9[4] = self;
    v10 = v5;
    v6 = v5;
    [layoutCopy enumerateKeysUsingBlock:v9];
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManagerIndic;
    [(TIKeyboardInputManager *)&v8 setKeyLayout:v6];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerIndic;
    [(TIKeyboardInputManager *)&v7 setKeyLayout:layoutCopy];
  }
}

void __44__TIKeyboardInputManagerIndic_setKeyLayout___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v11 = [*(a1 + 32) scriptComposer];
  v12 = [v11 stringByComposingInput:v13];

  [*(a1 + 40) addKeyWithString:v12 frame:{a3, a4, a5, a6}];
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  if (-[TIKeyboardInputManagerIndic alphabeticLayout](self, "alphabeticLayout") && ([inputCopy isPopupVariant] & 1) == 0)
  {
    scriptComposer = [(TIKeyboardInputManagerIndic *)self scriptComposer];
    string = [inputCopy string];
    v7 = [scriptComposer stringByComposingInput:string];
    [inputCopy setString:v7];
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerIndic;
  v8 = [(TIKeyboardInputManager *)&v10 handleKeyboardInput:inputCopy];

  return v8;
}

- (void)syncToLayoutState:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerIndic;
  stateCopy = state;
  [(TIKeyboardInputManager *)&v10 syncToLayoutState:stateCopy];
  softwareLayout = [stateCopy softwareLayout];

  KB::String::String(v11, [softwareLayout UTF8String]);
  [(TIKeyboardInputManagerIndic *)self setAlphabeticLayout:TI::IndicUtils::isAlphabeticLayout(v11)];
  if (v12 && v11[6] == 1)
  {
    free(v12);
  }

  inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
  languageWithRegion = [inputMode languageWithRegion];
  scriptComposer = [(TIKeyboardInputManagerIndic *)self scriptComposer];
  [scriptComposer setLanguageIdentifier:languageWithRegion];

  v9 = *MEMORY[0x277D85DE8];
}

- (TIKeyboardInputManagerIndic)initWithConfig:(id)config keyboardState:(id)state
{
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManagerIndic;
  v4 = [(TIKeyboardInputManager *)&v17 initWithConfig:config keyboardState:state];
  v5 = v4;
  if (v4)
  {
    *(v4->super.m_impl + 737) = 0;
    objc_initWeak(&location, v4);
    v6 = objc_alloc([(TIKeyboardInputManagerIndic *)v5 scriptComposerClass]);
    inputMode = [(TIKeyboardInputManagerBase *)v5 inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __60__TIKeyboardInputManagerIndic_initWithConfig_keyboardState___block_invoke;
    v14 = &unk_278732390;
    objc_copyWeak(&v15, &location);
    v9 = [v6 initWithLanguage:languageWithRegion contextFetcher:&v11];
    [(TIKeyboardInputManagerIndic *)v5 setScriptComposer:v9, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

id __60__TIKeyboardInputManagerIndic_initWithConfig_keyboardState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained keyboardState];
  v3 = [v2 documentState];
  v4 = [v3 contextBeforeInput];

  return v4;
}

@end