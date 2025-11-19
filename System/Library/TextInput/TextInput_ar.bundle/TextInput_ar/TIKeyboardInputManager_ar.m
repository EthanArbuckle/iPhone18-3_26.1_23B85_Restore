@interface TIKeyboardInputManager_ar
+ (id)generateKeyLayoutMapReverse;
+ (id)generateKeyLayoutMapReverseV2;
- (BOOL)isUsingMultilingual;
- (NSArray)wordsMandatingToChooseSecondary;
- (void)chooseBetterInputMethod;
@end

@implementation TIKeyboardInputManager_ar

- (BOOL)isUsingMultilingual
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(TIKeyboardInputManagerBase *)self currentInputModeIdentifier];
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v4 objectForKey:@"sw"];

  if ([v5 containsString:@"Arabic-With-QWERTY"])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ar;
    v6 = [(TIKeyboardInputManager_mul *)&v8 isUsingMultilingual];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)chooseBetterInputMethod
{
  v3 = [(TIKeyboardInputManager_mul *)self getCurrentExternalStringGiven:1];
  v4 = [v3 lowercaseString];

  if (!-[TIKeyboardInputManager_mul reasonForFreezing](self, "reasonForFreezing") && [v4 length] == 1 && (-[TIKeyboardInputManager_ar wordsMandatingToChooseSecondary](self, "wordsMandatingToChooseSecondary"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, v6))
  {
    [(TIKeyboardInputManager_mul *)self setChoseSecondary:1];
    v7 = [(TIKeyboardInputManager_ar *)self pregeneratedTypingAutocorrections];
    v8 = [v7 corrections];
    v9 = [v8 autocorrection];
    [v9 setLexiconLocale:0];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_ar;
    [(TIKeyboardInputManager_mul *)&v10 chooseBetterInputMethod];
  }
}

- (NSArray)wordsMandatingToChooseSecondary
{
  wordsMandatingToChooseSecondary = self->_wordsMandatingToChooseSecondary;
  if (!wordsMandatingToChooseSecondary)
  {
    self->_wordsMandatingToChooseSecondary = &unk_2A2522750;

    wordsMandatingToChooseSecondary = self->_wordsMandatingToChooseSecondary;
  }

  return wordsMandatingToChooseSecondary;
}

+ (id)generateKeyLayoutMapReverse
{
  v2 = [a1 generateKeyLayoutMap];
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __56__TIKeyboardInputManager_ar_generateKeyLayoutMapReverse__block_invoke;
  v6[3] = &unk_29F377850;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  [v4 setObject:@"ا" forKey:@"g"];
  [v4 setObject:@"أ" forKey:@"G"];
  [v4 setObject:@"و" forKey:@"m"];
  [v4 setObject:@"ؤ" forKey:@"M"];

  return v4;
}

+ (id)generateKeyLayoutMapReverseV2
{
  v2 = [a1 generateKeyLayoutMapV2];
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __58__TIKeyboardInputManager_ar_generateKeyLayoutMapReverseV2__block_invoke;
  v6[3] = &unk_29F377850;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];
  [v4 setObject:@"ي" forKey:@"s"];
  [v4 setObject:@"ى" forKey:@"S"];
  [v4 setObject:@"ء" forKey:@"z"];
  [v4 setObject:@"ئ" forKey:@"Z"];

  return v4;
}

@end