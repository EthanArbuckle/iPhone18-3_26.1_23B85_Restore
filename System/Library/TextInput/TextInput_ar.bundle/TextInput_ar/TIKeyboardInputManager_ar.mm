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

  currentInputModeIdentifier = [(TIKeyboardInputManagerBase *)self currentInputModeIdentifier];
  v4 = TIInputModeGetComponentsFromIdentifier();
  v5 = [v4 objectForKey:@"sw"];

  if ([v5 containsString:@"Arabic-With-QWERTY"])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ar;
    isUsingMultilingual = [(TIKeyboardInputManager_mul *)&v8 isUsingMultilingual];
  }

  else
  {
    isUsingMultilingual = 0;
  }

  return isUsingMultilingual;
}

- (void)chooseBetterInputMethod
{
  v3 = [(TIKeyboardInputManager_mul *)self getCurrentExternalStringGiven:1];
  lowercaseString = [v3 lowercaseString];

  if (!-[TIKeyboardInputManager_mul reasonForFreezing](self, "reasonForFreezing") && [lowercaseString length] == 1 && (-[TIKeyboardInputManager_ar wordsMandatingToChooseSecondary](self, "wordsMandatingToChooseSecondary"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", lowercaseString), v5, v6))
  {
    [(TIKeyboardInputManager_mul *)self setChoseSecondary:1];
    pregeneratedTypingAutocorrections = [(TIKeyboardInputManager_ar *)self pregeneratedTypingAutocorrections];
    corrections = [pregeneratedTypingAutocorrections corrections];
    autocorrection = [corrections autocorrection];
    [autocorrection setLexiconLocale:0];
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
  generateKeyLayoutMap = [self generateKeyLayoutMap];
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __56__TIKeyboardInputManager_ar_generateKeyLayoutMapReverse__block_invoke;
  v6[3] = &unk_29F377850;
  v4 = v3;
  v7 = v4;
  [generateKeyLayoutMap enumerateKeysAndObjectsUsingBlock:v6];
  [v4 setObject:@"ا" forKey:@"g"];
  [v4 setObject:@"أ" forKey:@"G"];
  [v4 setObject:@"و" forKey:@"m"];
  [v4 setObject:@"ؤ" forKey:@"M"];

  return v4;
}

+ (id)generateKeyLayoutMapReverseV2
{
  generateKeyLayoutMapV2 = [self generateKeyLayoutMapV2];
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __58__TIKeyboardInputManager_ar_generateKeyLayoutMapReverseV2__block_invoke;
  v6[3] = &unk_29F377850;
  v4 = v3;
  v7 = v4;
  [generateKeyLayoutMapV2 enumerateKeysAndObjectsUsingBlock:v6];
  [v4 setObject:@"ي" forKey:@"s"];
  [v4 setObject:@"ى" forKey:@"S"];
  [v4 setObject:@"ء" forKey:@"z"];
  [v4 setObject:@"ئ" forKey:@"Z"];

  return v4;
}

@end