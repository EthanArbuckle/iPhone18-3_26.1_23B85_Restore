@interface RTIUtilities
+ (id)_attributeToReplaceForCoding:(id)a3;
+ (id)_attributeToReplaceForDecoding:(id)a3;
+ (id)_attributesToAllowForCoding;
+ (id)_codableAttributedString:(id)a3 validAttributes:(id)a4;
+ (id)_decodableAttributedString:(id)a3;
+ (id)_textAnnotationAttributes;
+ (id)currentClientCodingServiceOptions;
+ (id)customInfoClassesForType:(id)a3 forClass:(Class)a4;
+ (id)customInfoDictionary;
+ (void)makeClientCodingQueuePthreadKeyOnce;
+ (void)performClientCoding:(id)a3 withServiceOptions:(id)a4;
+ (void)registerCustomInfoClasses:(id)a3 forType:(id)a4 forClass:(Class)a5;
+ (void)unregisterCustomInfoType:(id)a3 forClass:(Class)a4;
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

+ (id)_codableAttributedString:(id)a3 validAttributes:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = MEMORY[0x1E696AD40];
    v8 = a3;
    v9 = [v7 alloc];
    v10 = [v8 string];
    v11 = [v9 initWithString:v10];

    v12 = [v11 length];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__RTIUtilities__codableAttributedString_validAttributes___block_invoke;
    v16[3] = &unk_1E7514A58;
    v17 = v6;
    v19 = a1;
    v13 = v11;
    v18 = v13;
    [v8 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v16}];

    v14 = v18;
    a3 = v13;
  }

  return a3;
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

+ (id)_decodableAttributedString:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AD40];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v5 string];
    v8 = [v6 initWithString:v7];

    v9 = [v8 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__RTIUtilities__decodableAttributedString___block_invoke;
    v12[3] = &unk_1E7514AA8;
    v14 = a1;
    v10 = v8;
    v13 = v10;
    [v5 enumerateAttributesInRange:0 options:v9 usingBlock:{0, v12}];
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

+ (id)_attributeToReplaceForCoding:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"NSAttachment"];
  v6 = [v4 objectForKey:@"NSParagraphStyle"];
  v7 = [v4 objectForKey:@"NSTextAnimation"];
  if (objc_opt_respondsToSelector())
  {
    v27 = @"RTITextAnimation";
    v8 = [v7 name];
    v28[0] = v8;
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

  v13 = [v4 objectForKey:@"CTAdaptiveImageProvider"];

  if (v13)
  {
    v14 = [a1 currentClientCodingServiceOptions];
    v15 = [v14 displayOptions];

    if ((v15 & 2) != 0)
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
        v8 = [v6 mutableCopy];
        [v8 setTabStops:0];
        [v8 setTextLists:MEMORY[0x1E695E0F0]];
        v25 = @"NSParagraphStyle";
        v26 = v8;
        v9 = MEMORY[0x1E695DF20];
        v10 = &v26;
        v11 = &v25;
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v16 = [a1 _attributesToAllowForCoding];
    v17 = [v4 keyEnumerator];
    v18 = [v17 nextObject];
    v19 = [v16 containsObject:v18];

    if (v19)
    {
      v20 = [v4 objectEnumerator];
      v21 = [v20 nextObject];
      v22 = [objc_opt_class() supportsSecureCoding];

      if (v22)
      {
LABEL_9:
        v12 = v4;
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

+ (id)_attributeToReplaceForDecoding:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKey:@"RTITextAnimation"];
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
    v8 = v3;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)performClientCoding:(id)a3 withServiceOptions:(id)a4
{
  v7 = a3;
  v6 = a4;
  [a1 makeClientCodingQueuePthreadKeyOnce];
  if (v7 && v6)
  {
    pthread_setspecific(kRTIUtilitiesClientCodingQueuePthreadKey, v6);
    v7[2]();
    pthread_setspecific(kRTIUtilitiesClientCodingQueuePthreadKey, 0);
  }

  else if (v7)
  {
    v7[2]();
  }
}

+ (id)currentClientCodingServiceOptions
{
  [a1 makeClientCodingQueuePthreadKeyOnce];
  v2 = pthread_getspecific(kRTIUtilitiesClientCodingQueuePthreadKey);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (void)registerCustomInfoClasses:(id)a3 forType:(id)a4 forClass:(Class)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v8);
      }

      if (!--v11)
      {
        v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  os_unfair_lock_lock(&_rtiUtilities_lock);
  v13 = [a1 customInfoDictionary];
  v14 = NSStringFromClass(a5);
  v15 = [v13 objectForKey:v14];

  if (!v15)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v16 = [a1 customInfoDictionary];
    v17 = NSStringFromClass(a5);
    [v16 setObject:v15 forKey:v17];
  }

  [v15 setObject:v8 forKey:v9];
  os_unfair_lock_unlock(&_rtiUtilities_lock);

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)unregisterCustomInfoType:(id)a3 forClass:(Class)a4
{
  v6 = a3;
  os_unfair_lock_lock(&_rtiUtilities_lock);
  v7 = [a1 customInfoDictionary];
  v8 = NSStringFromClass(a4);
  v9 = [v7 objectForKey:v8];

  [v9 removeObjectForKey:v6];
  os_unfair_lock_unlock(&_rtiUtilities_lock);
}

+ (id)customInfoClassesForType:(id)a3 forClass:(Class)a4
{
  v6 = a3;
  os_unfair_lock_lock(&_rtiUtilities_lock);
  v7 = [a1 customInfoDictionary];
  v8 = NSStringFromClass(a4);
  v9 = [v7 objectForKey:v8];

  v10 = [v9 objectForKey:v6];

  os_unfair_lock_unlock(&_rtiUtilities_lock);

  return v10;
}

@end