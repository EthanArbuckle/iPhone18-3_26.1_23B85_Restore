@interface CACAppElementsEvaluationManager
+ (id)sharedManager;
- (BOOL)isRecognitionString:(id)string supportedForElement:(id)element;
- (CACAppElementsEvaluationManager)init;
- (Class)evaluatorClassForAppIdentifier:(id)identifier;
- (id)_trimmedArrayOfActionableAXElements:(id)elements;
- (id)actionableAXElementsFromAXElements:(id)elements forAppIdentifier:(id)identifier;
@end

@implementation CACAppElementsEvaluationManager

+ (id)sharedManager
{
  if (sharedManager_singletonInit_0 != -1)
  {
    +[CACAppElementsEvaluationManager sharedManager];
  }

  v3 = sCACAppElementsEvaluationManager;

  return v3;
}

uint64_t __48__CACAppElementsEvaluationManager_sharedManager__block_invoke()
{
  sCACAppElementsEvaluationManager = objc_alloc_init(CACAppElementsEvaluationManager);

  return MEMORY[0x2821F96F8]();
}

- (CACAppElementsEvaluationManager)init
{
  v9.receiver = self;
  v9.super_class = CACAppElementsEvaluationManager;
  v2 = [(CACAppElementsEvaluationManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    appIdentifersForStandardFilter = v2->_appIdentifersForStandardFilter;
    v2->_appIdentifersForStandardFilter = v3;

    v5 = CFPreferencesCopyAppValue(@"AppElementEvaluatorOverrideClassName", @"com.apple.speech.SpeechRecognitionCommandAndControl");
    evaluatorOverrideClassName = v2->_evaluatorOverrideClassName;
    v2->_evaluatorOverrideClassName = v5;

    if (![(NSString *)v2->_evaluatorOverrideClassName length]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = v2->_evaluatorOverrideClassName;
      v2->_evaluatorOverrideClassName = 0;
    }
  }

  return v2;
}

- (Class)evaluatorClassForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  evaluatorOverrideClassName = self->_evaluatorOverrideClassName;
  if (evaluatorOverrideClassName)
  {
    v6 = NSClassFromString(evaluatorOverrideClassName);
    if (v6)
    {
LABEL_8:
      v10 = v6;
      goto LABEL_9;
    }
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [identifierCopy stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  v9 = [v7 stringWithFormat:@"CACAppElementsEvaluator_%@", v8];
  v10 = NSClassFromString(v9);

  if (!v10)
  {
    if ([(NSSet *)self->_appIdentifersForStandardFilter containsObject:identifierCopy])
    {
      v11 = @"CACAppElementsEvaluatorStandardFilter";
    }

    else
    {
      v11 = @"CACAppElementsEvaluatorNoFilter";
    }

    v6 = NSClassFromString(&v11->isa);
    goto LABEL_8;
  }

LABEL_9:
  v12 = v10;

  return v10;
}

- (id)actionableAXElementsFromAXElements:(id)elements forAppIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  [(CACAppElementsEvaluationManager *)self evaluatorClassForAppIdentifier:identifier];
  v7 = objc_opt_new();
  v8 = [v7 actionableAXElementsFromAXElements:elementsCopy];
  v9 = [(CACAppElementsEvaluationManager *)self _trimmedArrayOfActionableAXElements:v8];

  v10 = CACLogElementEvaluation();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138478339;
    v13 = elementsCopy;
    v14 = 2112;
    v15 = v7;
    v16 = 2113;
    v17 = v9;
    _os_log_debug_impl(&dword_26B354000, v10, OS_LOG_TYPE_DEBUG, "Actionable elements from %{private}@ using evaluator %@ were %{private}@", &v12, 0x20u);
  }

  return v9;
}

- (id)_trimmedArrayOfActionableAXElements:(id)elements
{
  v23[3] = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:elementsCopy];
  v4 = 0;
  v5 = *MEMORY[0x277CE6D78];
  v23[0] = *MEMORY[0x277CE6D68];
  v23[1] = v5;
  v23[2] = *MEMORY[0x277CE6DE8];
  do
  {
    if ([v3 count] < 0x97)
    {
      break;
    }

    v6 = objc_opt_new();
    v7 = [v3 count];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = v7 - 150;
      v12 = *v19;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if ([v14 hasAnyTraits:v23[v4]])
        {
          [v6 addObject:v14];
          if (!--v11)
          {
            break;
          }
        }

        if (v10 == ++v13)
        {
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    if ([v6 count])
    {
      [v8 removeObjectsInArray:v6];
    }

    v15 = [v8 count];

    if (v15 < 0x97)
    {
      break;
    }

    ++v4;
  }

  while (v4 != 3);

  return v3;
}

- (BOOL)isRecognitionString:(id)string supportedForElement:(id)element
{
  stringCopy = string;
  elementCopy = element;
  if (![stringCopy length])
  {
    goto LABEL_10;
  }

  if ([elementCopy hasAnyTraits:*MEMORY[0x277CE6D68]])
  {
    v7 = +[CACPreferences sharedPreferences];
    allowLetterKeysAsTapCommands = [v7 allowLetterKeysAsTapCommands];

    if ((allowLetterKeysAsTapCommands & 1) == 0)
    {
      v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:stringCopy];
      v10 = CTLineCreateWithAttributedString(v9);

      if (v10)
      {
        if (CTLineGetGlyphCount(v10) == 1)
        {
          integerValue = [stringCopy integerValue];
          CFRelease(v10);
          if (!integerValue)
          {
            goto LABEL_10;
          }
        }

        else
        {
          CFRelease(v10);
        }
      }
    }
  }

  v12 = *MEMORY[0x277CE6CF0];
  if (([elementCopy hasAnyTraits:*MEMORY[0x277CE6CF0]] & 1) == 0)
  {
    v13 = [elementCopy hasAnyTraits:v12] ^ 1;
    goto LABEL_12;
  }

LABEL_10:
  LOBYTE(v13) = 0;
LABEL_12:

  return v13;
}

@end