@interface RTIUtilities
+ (id)_attributeToReplaceForCoding:(id)coding;
+ (id)_attributeToReplaceForDecoding:(id)decoding;
+ (id)_attributesToAllowForCoding;
+ (id)_codableAttributedString:(id)string validAttributes:(id)attributes;
+ (id)_decodableAttributedString:(id)string;
+ (id)_textAnnotationAttributes;
+ (id)currentClientCodingServiceOptions;
+ (id)customInfoClassesForType:(id)type forClass:(Class)class;
+ (id)customInfoDictionary;
+ (void)makeClientCodingQueuePthreadKeyOnce;
+ (void)performClientCoding:(id)coding withServiceOptions:(id)options;
+ (void)registerCustomInfoClasses:(id)classes forType:(id)type forClass:(Class)class;
+ (void)unregisterCustomInfoType:(id)type forClass:(Class)class;
@end

@implementation RTIUtilities

+ (id)customInfoDictionary
{
  if (customInfoDictionary_onceToken != -1)
  {
    +[RTIUtilities customInfoDictionary];
  }

  v3 = customInfoDictionary_customInfoDictionary;

  return v3;
}

uint64_t __36__RTIUtilities_customInfoDictionary__block_invoke()
{
  customInfoDictionary_customInfoDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)makeClientCodingQueuePthreadKeyOnce
{
  if (makeClientCodingQueuePthreadKeyOnce_onceToken != -1)
  {
    +[RTIUtilities makeClientCodingQueuePthreadKeyOnce];
  }
}

+ (id)_textAnnotationAttributes
{
  if (_textAnnotationAttributes_onceToken != -1)
  {
    +[RTIUtilities _textAnnotationAttributes];
  }

  v3 = _textAnnotationAttributes__attributes;

  return v3;
}

uint64_t __41__RTIUtilities__textAnnotationAttributes__block_invoke()
{
  _textAnnotationAttributes__attributes = [MEMORY[0x1E695DFD8] setWithObjects:{@"NSDominantLanguageAttributeName", @"NSDominantScriptAttributeName", @"NSAccessibilitySpellingState", @"NSGrammarLeftOffsetAttributeName", @"NSGrammarRightOffsetAttributeName", @"NSGrammarConfidenceScore", @"NSGrammarIssueType", @"NSGrammarLanguage", @"NSGrammarTargetPair", @"NSGrammarAutocorrected", @"NSIgnoringSubstitution", @"NSOrthography", @"NSReplacedString", @"NSSpellingState", @"NSTemporaryTextCorrection", @"NSTextAlternatives", @"NSTextAlternativesDisplayStyle", @"NSTextChecked", @"NSTextCorrection", @"NSTextEdited", @"NSTextReverted", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_codableAttributedString:(id)string validAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (string)
  {
    v7 = MEMORY[0x1E696AD40];
    stringCopy = string;
    v9 = [v7 alloc];
    string = [stringCopy string];
    v11 = [v9 initWithString:string];

    v12 = [v11 length];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__RTIUtilities__codableAttributedString_validAttributes___block_invoke;
    v16[3] = &unk_1E7514A58;
    v17 = attributesCopy;
    selfCopy = self;
    v13 = v11;
    v18 = v13;
    [stringCopy enumerateAttributesInRange:0 options:v12 usingBlock:{0, v16}];

    v14 = v18;
    string = v13;
  }

  return string;
}

void __57__RTIUtilities__codableAttributedString_validAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__RTIUtilities__codableAttributedString_validAttributes___block_invoke_2;
  v10[3] = &unk_1E7514A30;
  v11 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = v9;
  v12 = v9;
  v13 = a3;
  v14 = a4;
  [a2 enumerateKeysAndObjectsUsingBlock:v10];
}

void __57__RTIUtilities__codableAttributedString_validAttributes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    v7 = *(a1 + 48);
    v12 = v5;
    v13[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 _attributeToReplaceForCoding:v8];

    v10 = *(a1 + 40);
    if (v9)
    {
      [v10 addAttributes:v9 range:{*(a1 + 56), *(a1 + 64)}];
    }

    else
    {
      [v10 addAttribute:v5 value:v6 range:{*(a1 + 56), *(a1 + 64)}];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)_decodableAttributedString:(id)string
{
  if (string)
  {
    v4 = MEMORY[0x1E696AD40];
    stringCopy = string;
    v6 = [v4 alloc];
    string = [stringCopy string];
    v8 = [v6 initWithString:string];

    v9 = [v8 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__RTIUtilities__decodableAttributedString___block_invoke;
    v12[3] = &unk_1E7514AA8;
    selfCopy = self;
    v10 = v8;
    v13 = v10;
    [stringCopy enumerateAttributesInRange:0 options:v9 usingBlock:{0, v12}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __43__RTIUtilities__decodableAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__RTIUtilities__decodableAttributedString___block_invoke_2;
  v9[3] = &unk_1E7514A80;
  v8 = *(a1 + 32);
  v7 = v8;
  v10 = v8;
  v11 = a3;
  v12 = a4;
  [a2 enumerateKeysAndObjectsUsingBlock:v9];
}

void __43__RTIUtilities__decodableAttributedString___block_invoke_2(void *a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[5];
  v13 = a2;
  v14[0] = a3;
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = a2;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v5 _attributeToReplaceForDecoding:v9];

  v11 = a1[4];
  if (v10)
  {
    [v11 addAttributes:v10 range:{a1[6], a1[7]}];
  }

  else
  {
    [v11 addAttribute:v8 value:v7 range:{a1[6], a1[7]}];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)_attributesToAllowForCoding
{
  if (_attributesToAllowForCoding_onceToken != -1)
  {
    +[RTIUtilities _attributesToAllowForCoding];
  }

  v3 = _attributesToAllowForCoding_attributesToAllow;

  return v3;
}

uint64_t __43__RTIUtilities__attributesToAllowForCoding__block_invoke()
{
  _attributesToAllowForCoding_attributesToAllow = [MEMORY[0x1E695DFD8] setWithObjects:{@"NSParagraphStyle", @"NSFont", @"NSColor", @"NSBackgroundColor", @"NSUnderline", @"NSUnderlineColor", @"NSMarkedClauseSegment", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_attributeToReplaceForCoding:(id)coding
{
  v28[1] = *MEMORY[0x1E69E9840];
  codingCopy = coding;
  v5 = [codingCopy objectForKey:@"NSAttachment"];
  v6 = [codingCopy objectForKey:@"NSParagraphStyle"];
  v7 = [codingCopy objectForKey:@"NSTextAnimation"];
  if (objc_opt_respondsToSelector())
  {
    v27 = @"RTITextAnimation";
    name = [v7 name];
    v28[0] = name;
    v9 = MEMORY[0x1E695DF20];
    v10 = v28;
    v11 = &v27;
LABEL_3:
    v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];

    goto LABEL_16;
  }

  if (v5)
  {
    if ([objc_opt_class() supportsSecureCoding])
    {
      [v5 image];
    }

    goto LABEL_15;
  }

  v13 = [codingCopy objectForKey:@"CTAdaptiveImageProvider"];

  if (v13)
  {
    currentClientCodingServiceOptions = [self currentClientCodingServiceOptions];
    displayOptions = [currentClientCodingServiceOptions displayOptions];

    if ((displayOptions & 2) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      if ([objc_opt_class() supportsSecureCoding])
      {
        name = [v6 mutableCopy];
        [name setTabStops:0];
        [name setTextLists:MEMORY[0x1E695E0F0]];
        v25 = @"NSParagraphStyle";
        v26 = name;
        v9 = MEMORY[0x1E695DF20];
        v10 = &v26;
        v11 = &v25;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    _attributesToAllowForCoding = [self _attributesToAllowForCoding];
    keyEnumerator = [codingCopy keyEnumerator];
    nextObject = [keyEnumerator nextObject];
    v19 = [_attributesToAllowForCoding containsObject:nextObject];

    if (v19)
    {
      objectEnumerator = [codingCopy objectEnumerator];
      nextObject2 = [objectEnumerator nextObject];
      supportsSecureCoding = [objc_opt_class() supportsSecureCoding];

      if (supportsSecureCoding)
      {
LABEL_9:
        v12 = codingCopy;
        goto LABEL_16;
      }
    }
  }

LABEL_15:
  v12 = 0;
LABEL_16:

  v23 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_attributeToReplaceForDecoding:(id)decoding
{
  v12[1] = *MEMORY[0x1E69E9840];
  decodingCopy = decoding;
  v4 = [decodingCopy objectForKey:@"RTITextAnimation"];
  v5 = v4;
  if (v4 && (RTITextAnimationWithName(v4), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v11 = @"NSTextAnimation";
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v8 = decodingCopy;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)performClientCoding:(id)coding withServiceOptions:(id)options
{
  codingCopy = coding;
  optionsCopy = options;
  [self makeClientCodingQueuePthreadKeyOnce];
  if (codingCopy && optionsCopy)
  {
    pthread_setspecific(kRTIUtilitiesClientCodingQueuePthreadKey, optionsCopy);
    codingCopy[2]();
    pthread_setspecific(kRTIUtilitiesClientCodingQueuePthreadKey, 0);
  }

  else if (codingCopy)
  {
    codingCopy[2]();
  }
}

+ (id)currentClientCodingServiceOptions
{
  [self makeClientCodingQueuePthreadKeyOnce];
  v2 = pthread_getspecific(kRTIUtilitiesClientCodingQueuePthreadKey);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (void)registerCustomInfoClasses:(id)classes forType:(id)type forClass:(Class)class
{
  v24 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  typeCopy = type;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [classesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(classesCopy);
      }

      if (!--v11)
      {
        v11 = [classesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  os_unfair_lock_lock(&_rtiUtilities_lock);
  customInfoDictionary = [self customInfoDictionary];
  v14 = NSStringFromClass(class);
  dictionary = [customInfoDictionary objectForKey:v14];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    customInfoDictionary2 = [self customInfoDictionary];
    v17 = NSStringFromClass(class);
    [customInfoDictionary2 setObject:dictionary forKey:v17];
  }

  [dictionary setObject:classesCopy forKey:typeCopy];
  os_unfair_lock_unlock(&_rtiUtilities_lock);

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)unregisterCustomInfoType:(id)type forClass:(Class)class
{
  typeCopy = type;
  os_unfair_lock_lock(&_rtiUtilities_lock);
  customInfoDictionary = [self customInfoDictionary];
  v8 = NSStringFromClass(class);
  v9 = [customInfoDictionary objectForKey:v8];

  [v9 removeObjectForKey:typeCopy];
  os_unfair_lock_unlock(&_rtiUtilities_lock);
}

+ (id)customInfoClassesForType:(id)type forClass:(Class)class
{
  typeCopy = type;
  os_unfair_lock_lock(&_rtiUtilities_lock);
  customInfoDictionary = [self customInfoDictionary];
  v8 = NSStringFromClass(class);
  v9 = [customInfoDictionary objectForKey:v8];

  v10 = [v9 objectForKey:typeCopy];

  os_unfair_lock_unlock(&_rtiUtilities_lock);

  return v10;
}

@end