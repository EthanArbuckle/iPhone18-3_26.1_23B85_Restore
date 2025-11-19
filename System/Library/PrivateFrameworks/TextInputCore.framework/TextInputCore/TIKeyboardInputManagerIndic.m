@interface TIKeyboardInputManagerIndic
- (TIKeyboardInputManagerIndic)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)contextualDisplayKeys;
- (id)handleKeyboardInput:(id)a3;
- (void)setKeyLayout:(id)a3;
- (void)syncToLayoutState:(id)a3;
@end

@implementation TIKeyboardInputManagerIndic

- (id)contextualDisplayKeys
{
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v3 = [(TIKeyboardInputManagerIndic *)self scriptComposer];
    v4 = [v3 contextualDisplayKeys];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setKeyLayout:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManagerIndic *)self alphabeticLayout])
  {
    v5 = [objc_alloc(MEMORY[0x277D6F400]) initWithCapacity:50];
    [v5 setUsesTwoHands:{objc_msgSend(v4, "usesTwoHands")}];
    [v5 setShifted:{objc_msgSend(v4, "isShifted")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__TIKeyboardInputManagerIndic_setKeyLayout___block_invoke;
    v9[3] = &unk_2787323B8;
    v9[4] = self;
    v10 = v5;
    v6 = v5;
    [v4 enumerateKeysUsingBlock:v9];
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManagerIndic;
    [(TIKeyboardInputManager *)&v8 setKeyLayout:v6];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TIKeyboardInputManagerIndic;
    [(TIKeyboardInputManager *)&v7 setKeyLayout:v4];
  }
}

void __44__TIKeyboardInputManagerIndic_setKeyLayout___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v11 = [*(a1 + 32) scriptComposer];
  v12 = [v11 stringByComposingInput:v13];

  [*(a1 + 40) addKeyWithString:v12 frame:{a3, a4, a5, a6}];
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  if (-[TIKeyboardInputManagerIndic alphabeticLayout](self, "alphabeticLayout") && ([v4 isPopupVariant] & 1) == 0)
  {
    v5 = [(TIKeyboardInputManagerIndic *)self scriptComposer];
    v6 = [v4 string];
    v7 = [v5 stringByComposingInput:v6];
    [v4 setString:v7];
  }

  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerIndic;
  v8 = [(TIKeyboardInputManager *)&v10 handleKeyboardInput:v4];

  return v8;
}

- (void)syncToLayoutState:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerIndic;
  v4 = a3;
  [(TIKeyboardInputManager *)&v10 syncToLayoutState:v4];
  v5 = [v4 softwareLayout];

  KB::String::String(v11, [v5 UTF8String]);
  [(TIKeyboardInputManagerIndic *)self setAlphabeticLayout:TI::IndicUtils::isAlphabeticLayout(v11)];
  if (v12 && v11[6] == 1)
  {
    free(v12);
  }

  v6 = [(TIKeyboardInputManagerBase *)self inputMode];
  v7 = [v6 languageWithRegion];
  v8 = [(TIKeyboardInputManagerIndic *)self scriptComposer];
  [v8 setLanguageIdentifier:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (TIKeyboardInputManagerIndic)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManagerIndic;
  v4 = [(TIKeyboardInputManager *)&v17 initWithConfig:a3 keyboardState:a4];
  v5 = v4;
  if (v4)
  {
    *(v4->super.m_impl + 737) = 0;
    objc_initWeak(&location, v4);
    v6 = objc_alloc([(TIKeyboardInputManagerIndic *)v5 scriptComposerClass]);
    v7 = [(TIKeyboardInputManagerBase *)v5 inputMode];
    v8 = [v7 languageWithRegion];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __60__TIKeyboardInputManagerIndic_initWithConfig_keyboardState___block_invoke;
    v14 = &unk_278732390;
    objc_copyWeak(&v15, &location);
    v9 = [v6 initWithLanguage:v8 contextFetcher:&v11];
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