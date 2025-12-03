@interface WBSPasswordGenerationManager
+ (BOOL)passwordLooksLikePasswordManagerGeneratedMoreTypablePassword:(id)password;
+ (BOOL)passwordLooksLikePasswordManagerGeneratedPassword:(id)password;
+ (id)requirementsForPasswordRuleSet:(id)set respectingMinLength:(id)length maxLength:(id)maxLength;
- (BOOL)_tokensContainUnwantedWords:(id)words;
- (BOOL)manualPasswordGenerationIsDisallowedByRequirements:(id)requirements;
- (BOOL)passwordGenerationIsDisallowedByRequirements:(id)requirements;
- (WBSPasswordGenerationManager)initWithPasswordRequirementsByDomain:(id)domain;
- (id)_generatedPasswordMatchingRequirements:(id)requirements rejectUnwantedWords:(BOOL)words;
- (id)_moreTypeablePassword;
- (id)defaultRequirementsForDomain:(id)domain;
- (id)defaultRequirementsForURL:(id)l;
- (id)generatedPasswordMatchingRequirements:(id)requirements;
- (id)protectionSpaceForGeneratedPasswordsInProtectionSpace:(id)space;
- (id)updatedRequirements:(id)requirements respectingMaxLength:(unint64_t)length;
- (void)_lexiconEnumerateEntries:(_LXLexicon *)entries forString:(id)string completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation WBSPasswordGenerationManager

+ (id)requirementsForPasswordRuleSet:(id)set respectingMinLength:(id)length maxLength:(id)maxLength
{
  v34 = *MEMORY[0x1E69E9840];
  setCopy = set;
  lengthCopy = length;
  maxLengthCopy = maxLength;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (maxLengthCopy)
  {
    if (lengthCopy)
    {
      goto LABEL_6;
    }

LABEL_5:
    minLengthRule = [setCopy minLengthRule];
    lengthCopy = [minLengthRule value];

    if (!lengthCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  maxLengthRule = [setCopy maxLengthRule];
  maxLengthCopy = [maxLengthRule value];

  if (!lengthCopy)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (!maxLengthCopy)
  {
    if ([lengthCopy unsignedIntegerValue] > 0x13)
    {
      maxLengthCopy = lengthCopy;
      goto LABEL_12;
    }

    maxLengthCopy = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:20];
  }

LABEL_9:
  if (maxLengthCopy)
  {
LABEL_12:
    [dictionary setObject:maxLengthCopy forKeyedSubscript:{@"PasswordMaxLength", setCopy}];
  }

  if (lengthCopy)
  {
    [dictionary setObject:lengthCopy forKeyedSubscript:@"PasswordMinLength"];
  }

  allowedRule = [setCopy allowedRule];
  value = [allowedRule value];
  v13 = appendedCanonicalizedCharactersFromCharacterClasses(value);

  if ([v13 length])
  {
    [dictionary setObject:v13 forKeyedSubscript:@"PasswordAllowedCharacters"];
    array = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    requiredRules = [v27 requiredRules];
    v16 = [requiredRules countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(requiredRules);
          }

          value2 = [*(*(&v29 + 1) + 8 * i) value];
          v20 = appendedCanonicalizedCharactersFromCharacterClasses(value2);

          if ([v20 length])
          {
            [array addObject:v20];
          }
        }

        v16 = [requiredRules countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"PasswordRequiredCharacters"];
    maxConsecutiveRule = [v27 maxConsecutiveRule];
    value3 = [maxConsecutiveRule value];

    if (value3)
    {
      [dictionary setObject:value3 forKeyedSubscript:@"PasswordConsecutiveCharacterLimit"];
    }

    v23 = 0;
  }

  else
  {
    v23 = dictionary;
    dictionary = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (WBSPasswordGenerationManager)initWithPasswordRequirementsByDomain:(id)domain
{
  domainCopy = domain;
  v16.receiver = self;
  v16.super_class = WBSPasswordGenerationManager;
  v5 = [(WBSPasswordGenerationManager *)&v16 init];
  if (v5)
  {
    v6 = [domainCopy copy];
    passwordRequirementsByDomain = v5->_passwordRequirementsByDomain;
    v5->_passwordRequirementsByDomain = v6;

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v10 = [(__CFString *)localeIdentifier hasPrefix:@"en"];
    v11 = v10;
    if (v10)
    {
      v12 = localeIdentifier;
    }

    else
    {
      v12 = @"en";
    }

    v13 = v12;
    v5->_lexiconForEnglish = createLexiconWithLocale(v13);
    if ((v11 & 1) == 0)
    {
      v5->_lexiconForUserLocale = createLexiconWithLocale(&localeIdentifier->isa);
    }

    v14 = v5;
  }

  return v5;
}

- (void)dealloc
{
  lexiconForEnglish = self->_lexiconForEnglish;
  if (lexiconForEnglish)
  {
    CFRelease(lexiconForEnglish);
  }

  lexiconForUserLocale = self->_lexiconForUserLocale;
  if (lexiconForUserLocale)
  {
    CFRelease(lexiconForUserLocale);
  }

  v5.receiver = self;
  v5.super_class = WBSPasswordGenerationManager;
  [(WBSPasswordGenerationManager *)&v5 dealloc];
}

+ (BOOL)passwordLooksLikePasswordManagerGeneratedPassword:(id)password
{
  passwordCopy = password;
  if ([passwordCopy length])
  {
    v4 = passwordMatchesFormatOfGenerationStyle(passwordCopy, 2) || passwordMatchesFormatOfGenerationStyle(passwordCopy, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)passwordLooksLikePasswordManagerGeneratedMoreTypablePassword:(id)password
{
  passwordCopy = password;
  if ([passwordCopy length])
  {
    v4 = passwordMatchesFormatOfGenerationStyle(passwordCopy, 2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)updatedRequirements:(id)requirements respectingMaxLength:(unint64_t)length
{
  requirementsCopy = requirements;
  v6 = requirementsCopy;
  if (length && ([requirementsCopy safari_numberForKey:@"PasswordMaxLength"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "unsignedIntegerValue"), v7, v8 - 1 >= length))
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length];
    [v9 setObject:v10 forKey:@"PasswordMaxLength"];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)_moreTypeablePassword
{
  v2 = MEMORY[0x1E696AD60];
  v3 = randomSyllable();
  v4 = randomSyllable();
  v5 = randomSyllable();
  v6 = randomSyllable();
  v7 = randomSyllable();
  v8 = randomConsonant();
  v9 = [v2 stringWithFormat:@"%@%@%@%@%@%C%C", v3, v4, v5, v6, v7, v8, randomVowel()];

  v10 = [v9 length];
  while (1)
  {
    do
    {
      v11 = arc4random_uniform(v10);
      v12 = [v9 characterAtIndex:v11];
    }

    while (v12 == 111);
    v30 = __toupper(v12);
    v13 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v30 length:1];
    [v9 replaceCharactersInRange:v11 withString:{1, v13}];

    v14 = arc4random_uniform(5u);
    v15 = [v9 substringWithRange:{0, 6}];
    v16 = [v9 substringWithRange:{6, 6}];
    v17 = [v9 substringWithRange:{12, 5}];
    v18 = v17;
    if (v14 > 1)
    {
      switch(v14)
      {
        case 2:
          v20 = MEMORY[0x1E696AEC0];
          v21 = randomNumber();
          v22 = v18;
          v23 = v16;
          break;
        case 3:
          v20 = MEMORY[0x1E696AEC0];
          v21 = randomNumber();
          v22 = v16;
          v23 = v18;
          break;
        case 4:
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%C", v15, v16, v17, randomNumber()];
          goto LABEL_17;
        default:
          goto LABEL_10;
      }

      v19 = [v20 stringWithFormat:@"%@%@%C%@", v15, v22, v21, v23];
      goto LABEL_17;
    }

    if (!v14)
    {
      break;
    }

    if (v14 == 1)
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = randomNumber();
      v26 = v15;
      v27 = v18;
      goto LABEL_16;
    }

LABEL_10:
  }

  v24 = MEMORY[0x1E696AEC0];
  v25 = randomNumber();
  v26 = v18;
  v27 = v15;
LABEL_16:
  v19 = [v24 stringWithFormat:@"%@%C%@%@", v26, v25, v27, v16];
LABEL_17:
  v28 = v19;

  return v28;
}

- (void)_lexiconEnumerateEntries:(_LXLexicon *)entries forString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  LXLexiconEnumerateEntriesForString();
}

uint64_t __85__WBSPasswordGenerationManager__lexiconEnumerateEntries_forString_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = LXEntryCopyString();
  MetaFlags = LXEntryGetMetaFlags();
  CategoryFlags = LXEntryGetCategoryFlags();
  v8 = *(v4 + 16);

  return v8(v4, v5, MetaFlags, CategoryFlags, a3);
}

- (BOOL)_tokensContainUnwantedWords:(id)words
{
  v25 = *MEMORY[0x1E69E9840];
  wordsCopy = words;
  if ([wordsCopy count])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = wordsCopy;
    v5 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v5)
    {
      v6 = *v17;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __60__WBSPasswordGenerationManager__tokensContainUnwantedWords___block_invoke;
          aBlock[3] = &unk_1E7CF3530;
          aBlock[4] = v8;
          aBlock[5] = &v20;
          v9 = _Block_copy(aBlock);
          [(WBSPasswordGenerationManager *)self _lexiconEnumerateEntries:self->_lexiconForEnglish forString:v8 completionHandler:v9];
          if ((v21[3] & 1) != 0 || (lexiconForUserLocale = self->_lexiconForUserLocale) != 0 && ([(WBSPasswordGenerationManager *)self _lexiconEnumerateEntries:lexiconForUserLocale forString:v8 completionHandler:v9], *(v21 + 24) == 1))
          {

            v11 = 1;
            goto LABEL_16;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
        v11 = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_16:

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __60__WBSPasswordGenerationManager__tokensContainUnwantedWords___block_invoke(uint64_t a1, uint64_t a2, int a3, int a4, _BYTE *a5)
{
  result = [*(a1 + 32) safari_isCaseAndDiacriticInsensitiveEqualToString:a2];
  if (result)
  {
    if ((a3 & 0x3800000) != 0 || (*&a4 & 0x3FD00) != 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    *a5 = 1;
  }

  return result;
}

- (id)generatedPasswordMatchingRequirements:(id)requirements
{
  v3 = [(WBSPasswordGenerationManager *)self _generatedPasswordMatchingRequirements:requirements rejectUnwantedWords:1];

  return v3;
}

- (id)_generatedPasswordMatchingRequirements:(id)requirements rejectUnwantedWords:(BOOL)words
{
  wordsCopy = words;
  v134[16] = *MEMORY[0x1E69E9840];
  requirementsCopy = requirements;
  v4 = [requirementsCopy safari_numberForKey:@"PasswordMinLength"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v5 = [requirementsCopy safari_numberForKey:@"PasswordMaxLength"];
  unsignedIntegerValue2 = [v5 unsignedIntegerValue];

  v109 = unsignedIntegerValue2;
  if (unsignedIntegerValue > unsignedIntegerValue2)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [WBSPasswordGenerationManager _generatedPasswordMatchingRequirements:v7 rejectUnwantedWords:?];
    }

    unsignedIntegerValue = 0;
  }

  v8 = [requirementsCopy safari_stringForKey:@"PasswordAllowedCharacters"];
  v118 = v8;
  v9 = [requirementsCopy safari_arrayForKey:@"PasswordRequiredCharacters"];
  unsignedIntegerValue4 = v9;
  if (v9)
  {
    obj = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v10 = unsignedIntegerValue4;
    v11 = [v10 countByEnumeratingWithState:&v120 objects:__p count:16];
    if (v11)
    {
      v12 = *v121;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v121 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v120 + 1) + 8 * i);
          v15 = v8;
          v16 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v14];
          v17 = [v15 rangeOfCharacterFromSet:v16] == 0x7FFFFFFFFFFFFFFFLL;

          if (!v17)
          {
            v18 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v14];
            [obj addObject:v18];
          }

          v8 = v118;
        }

        v11 = [v10 countByEnumeratingWithState:&v120 objects:__p count:16];
      }

      while (v11);
    }

    v19 = obj;
    v8 = v118;
  }

  else
  {
    v19 = 0;
  }

  v119 = v8;
  v20 = v19;
  v106 = unsignedIntegerValue2 - 1;
  if (unsignedIntegerValue2 - 1 >= 0x13 && unsignedIntegerValue <= 0x14 && (!v119 || (-[__CFString safari_containsAllCharactersInString:](v119, "safari_containsAllCharactersInString:", @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789") & 1) != 0) && [v20 count] <= 0x14)
  {
    v132 = 0u;
    v133 = 0u;
    *v130 = 0u;
    v131 = 0u;
    obja = v20;
    v90 = [obja countByEnumeratingWithState:v130 objects:v134 count:16];
    if (v90)
    {
      v91 = 0;
      v92 = 0;
      v105 = *v131;
      while (2)
      {
        for (j = 0; j != v90; ++j)
        {
          if (*v131 != v105)
          {
            objc_enumerationMutation(obja);
          }

          v94 = *(v130[1] + j);
          v95 = [@"ABCDEFGHIJKLMNOPQRSTUVWXYZ" rangeOfCharacterFromSet:v94];
          if (((v95 != 0x7FFFFFFFFFFFFFFFLL) & v92) != 0 || (v96 = [@"0123456789" rangeOfCharacterFromSet:v94], v97 = v96 != 0x7FFFFFFFFFFFFFFFLL, ((v96 != 0x7FFFFFFFFFFFFFFFLL) & v91) != 0) || (v95 == 0x7FFFFFFFFFFFFFFFLL ? (v98 = v96 == 0x7FFFFFFFFFFFFFFFLL) : (v98 = 0), v98 && objc_msgSend(@"abcdefghijkmnopqrstuvwxyz-", "rangeOfCharacterFromSet:", v94) == 0x7FFFFFFFFFFFFFFFLL))
          {

            goto LABEL_23;
          }

          v92 |= v95 != 0x7FFFFFFFFFFFFFFFLL;
          v91 |= v97;
        }

        v90 = [obja countByEnumeratingWithState:v130 objects:v134 count:16];
        if (v90)
        {
          continue;
        }

        break;
      }
    }

    if (v119)
    {
      if ([(__CFString *)v119 rangeOfString:@"-"]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v99 = 3;
      }

      else
      {
        v99 = 2;
      }
    }

    else
    {
LABEL_183:
      v99 = 2;
    }

    v130[0] = @"PasswordGenerationStyle";
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:v99];
    v134[0] = v34;
    v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:v130 count:1];
    goto LABEL_60;
  }

LABEL_23:
  v21 = 12;
  if (unsignedIntegerValue > 0xF)
  {
    v21 = unsignedIntegerValue;
  }

  if (v106 >= 0xE)
  {
    v22 = v21;
  }

  else
  {
    v22 = v109;
  }

  v23 = unsignedIntegerValue > 0xF || v106 < 0xE;
  if (v119)
  {
    if ([(__CFString *)v119 rangeOfString:@"-"]== 0x7FFFFFFFFFFFFFFFLL || v23)
    {
LABEL_34:
      v24 = 15;
      if (unsignedIntegerValue > 0xF)
      {
        v24 = unsignedIntegerValue;
      }

      if (v106 >= 0xE)
      {
        v22 = v24;
      }

      else
      {
        v22 = v109;
      }

      v25 = 1;
      if (v20)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v119 = @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789";
    if (v23)
    {
      goto LABEL_34;
    }
  }

  v26 = [(__CFString *)v119 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F3064D08];

  v25 = 0;
  v119 = v26;
  if (!v20)
  {
LABEL_43:
    {
      uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
      v134[0] = uppercaseLetterCharacterSet;
      lowercaseLetterCharacterSet = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
      v134[1] = lowercaseLetterCharacterSet;
      decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
      v134[2] = decimalDigitCharacterSet;
      defaultRequiredCharacterSets(void)::requiredCharacterSets = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:3];
    }

    v20 = defaultRequiredCharacterSets(void)::requiredCharacterSets;
  }

LABEL_46:
  if ([v20 count] > v22)
  {

    v27 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [WBSPasswordGenerationManager _generatedPasswordMatchingRequirements:v27 rejectUnwantedWords:?];
    }

    v20 = 0;
  }

  v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(unsignedIntegerValue4, "count")}];
  v132 = 0u;
  v133 = 0u;
  *v130 = 0u;
  v131 = 0u;
  v29 = v20;
  v30 = [v29 countByEnumeratingWithState:v130 objects:v134 count:16];
  if (v30)
  {
    v31 = *v131;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v131 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(v130[1] + k);
        if ([(__CFString *)v119 rangeOfCharacterFromSet:v33]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v28 addObject:v33];
        }
      }

      v30 = [v29 countByEnumeratingWithState:v130 objects:v134 count:16];
    }

    while (v30);
  }

  v34 = v28;
  v124[0] = @"PasswordGenerationStyle";
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
  v125[0] = v35;
  v124[1] = @"NumberOfRequiredRandomCharacters";
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
  v125[1] = v36;
  v125[2] = v119;
  v124[2] = @"AllowedCharacters";
  v124[3] = @"RequiredCharacterSets";
  v125[3] = v34;
  v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:4];

  obja = v34;
LABEL_60:

  v37 = [v110 safari_numberForKey:@"PasswordGenerationStyle"];
  unsignedIntegerValue3 = [v37 unsignedIntegerValue];

  v39 = [v110 safari_numberForKey:@"NumberOfRequiredRandomCharacters"];
  unsignedIntegerValue4 = [v39 unsignedIntegerValue];

  std::vector<unsigned short>::vector[abi:sn200100](v130, unsignedIntegerValue4);
  v107 = [v110 safari_stringForKey:@"AllowedCharacters"];
  v104 = [requirementsCopy safari_numberForKey:@"PasswordRepeatedCharacterLimit"];
  LODWORD(obja) = v104 != 0;
  v103 = 0;
  while (1)
  {
    if (unsignedIntegerValue3 < 2)
    {
      v119 = [requirementsCopy safari_stringForKey:@"PasswordFirstCharacterCandidates"];
      if (unsignedIntegerValue4 && [(__CFString *)v119 length])
      {
        v44 = v107;
        v45 = v119;
        operator new();
      }

      getPasswordRandomCharacters(v130, v107);
      if (unsignedIntegerValue3)
      {
        v51 = [MEMORY[0x1E696AEC0] stringWithCharacters:v130[0] length:unsignedIntegerValue4];
      }

      else
      {
        v52 = objc_alloc(MEMORY[0x1E696AEC0]);
        v53 = v130[1] - v130[0];
        if (v130[1] == v130[0] || (v54 = v53 >> 1, (v53 >> 1) <= 1) || v53 == 4 || v54 <= 3 || v53 == 8 || v54 <= 5 || v53 == 12 || v54 <= 7 || v53 == 16 || v54 <= 9 || v53 == 20 || v54 <= 0xB)
        {
          __break(1u);
          goto LABEL_183;
        }

        v51 = [v52 initWithFormat:@"%C%C%C-%C%C%C-%C%C%C-%C%C%C", *v130[0], *(v130[0] + 1), *(v130[0] + 2), *(v130[0] + 3), *(v130[0] + 4), *(v130[0] + 5), *(v130[0] + 6), *(v130[0] + 7), *(v130[0] + 8), *(v130[0] + 9), *(v130[0] + 10), *(v130[0] + 11)];
      }

      v55 = v51;
      v56 = [v110 safari_arrayForKey:@"RequiredCharacterSets"];
      v41 = v55;
      v57 = v56;
      *__p = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v58 = v57;
      v59 = [v58 countByEnumeratingWithState:__p objects:v134 count:16];
      v60 = v41;
      if (v59)
      {
        v61 = *v127;
        v60 = v41;
        do
        {
          v62 = 0;
          v63 = v60;
          do
          {
            if (*v127 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v65 = [v63 rangeOfCharacterFromSet:*(__p[1] + v62)];
            if (v65 == 0x7FFFFFFFFFFFFFFFLL)
            {

              goto LABEL_155;
            }

            v60 = [v63 stringByReplacingCharactersInRange:v65 withString:{v64, &stru_1F3064D08}];

            ++v62;
            v63 = v60;
          }

          while (v59 != v62);
          v59 = [v58 countByEnumeratingWithState:__p objects:v134 count:16];
        }

        while (v59);
      }

      if (wordsCopy)
      {
        v66 = tokenizedPassword(v41, unsignedIntegerValue3);
        v67 = [(WBSPasswordGenerationManager *)self _tokensContainUnwantedWords:v66];

        if (v67)
        {
          goto LABEL_155;
        }
      }

      goto LABEL_112;
    }

    if (unsignedIntegerValue3 - 2 >= 2)
    {
      v41 = 0;
LABEL_112:
      if ((obja & 1) == 0)
      {
        LODWORD(obja) = 0;
        goto LABEL_126;
      }

      goto LABEL_113;
    }

    _moreTypeablePassword = [(WBSPasswordGenerationManager *)self _moreTypeablePassword];
    v41 = _moreTypeablePassword;
    if (wordsCopy)
    {
      v119 = tokenizedPassword(_moreTypeablePassword, unsignedIntegerValue3);
      if ([(WBSPasswordGenerationManager *)self _tokensContainUnwantedWords:?])
      {
        v42 = v103 + 1;
        if (unsignedIntegerValue3 == 2)
        {
          v43 = 0;
        }

        else
        {
          v43 = unsignedIntegerValue3;
        }

        if (v43 == 3)
        {
          v43 = 1;
        }

        ++v103;
        if (v42 > 0x64)
        {
          unsignedIntegerValue3 = v43;
        }

LABEL_155:

        goto LABEL_156;
      }
    }

    if (unsignedIntegerValue3 == 2)
    {
      v46 = MEMORY[0x1E696AEC0];
      v47 = [v41 substringWithRange:{0, 6}];
      v48 = [v41 substringWithRange:{6, 6}];
      v49 = [v41 substringWithRange:{12, 6}];
      v50 = [v46 stringWithFormat:@"%@-%@-%@", v47, v48, v49];
    }

    else
    {
      v50 = v41;
    }

    if ((obja & 1) == 0 || [v104 integerValue] != 1)
    {
      LODWORD(obja) = 0;
      v41 = v50;
      goto LABEL_126;
    }

    v41 = v50;
LABEL_113:
    integerValue = [v104 integerValue];
    if (integerValue < 1)
    {
      break;
    }

    v41 = v41;
    v69 = [v41 characterAtIndex:0];
    v70 = 0;
    v71 = 1;
    v72 = 1;
    while (v71 < [v41 length])
    {
      v73 = [v41 characterAtIndex:v71];
      v74 = v71 - v70;
      if (v71 - v70 <= v72)
      {
        v74 = v72;
      }

      if (v73 != v69)
      {
        v70 = v71;
        v72 = v74;
      }

      ++v71;
      v69 = v73;
    }

    LODWORD(obja) = 1;
    if (v72 <= integerValue)
    {
      goto LABEL_126;
    }

LABEL_156:
  }

  LODWORD(obja) = 1;
LABEL_126:
  v119 = [requirementsCopy safari_numberForKey:@"PasswordConsecutiveCharacterLimit"];
  if (!v119)
  {
    goto LABEL_157;
  }

  integerValue2 = [(__CFString *)v119 integerValue];
  if (integerValue2 < 1)
  {
    goto LABEL_157;
  }

  v114 = unsignedIntegerValue3;
  v76 = v41;
  v77 = 0;
  v78 = 0;
  v79 = 1;
  v80 = 1;
  while (2)
  {
    if (v79 < [v76 length])
    {
      v81 = [v76 characterAtIndex:v79];
      v82 = v79 - 1;
      v83 = [v76 characterAtIndex:v79 - 1];
      v84 = v83;
      if (v77)
      {
        if (![v77 BOOLValue] || v84 + 1 != v81)
        {
          bOOLValue = [v77 BOOLValue];
          v86 = v84 - 1 == v81 ? bOOLValue : 1;
          if (v86)
          {
            if (v84 + 1 == v81)
            {
              v77 = MEMORY[0x1E695E118];
LABEL_144:
              ++v79;
              v78 = v82;
              continue;
            }

            if (v84 - 1 == v81)
            {
              v77 = MEMORY[0x1E695E110];
              goto LABEL_144;
            }

LABEL_147:
            v77 = 0;
            if (v79 - v78 > v80)
            {
              v80 = v79 - v78;
            }

            v82 = v79;
            goto LABEL_144;
          }
        }
      }

      else if (v83 + 1 == v81)
      {
        v77 = MEMORY[0x1E695E118];
      }

      else
      {
        if (v83 - 1 != v81)
        {
          goto LABEL_147;
        }

        v77 = MEMORY[0x1E695E110];
      }

      v82 = v78;
      goto LABEL_144;
    }

    break;
  }

  if (v77)
  {
    v87 = [v76 length];
    if (v87 - v78 > v80)
    {
      v80 = v87 - v78;
    }
  }

  unsignedIntegerValue3 = v114;
  if (v80 > integerValue2)
  {
    v41 = v76;
    goto LABEL_155;
  }

LABEL_157:

  if (v130[0])
  {
    v130[1] = v130[0];
    operator delete(v130[0]);
  }

  v88 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)defaultRequirementsForDomain:(id)domain
{
  safari_stringByRemovingWwwDotPrefix = [domain safari_stringByRemovingWwwDotPrefix];
  v5 = [(NSDictionary *)self->_passwordRequirementsByDomain safari_dictionaryForKey:safari_stringByRemovingWwwDotPrefix];
  if (!v5)
  {
    safari_highLevelDomainFromHost = [safari_stringByRemovingWwwDotPrefix safari_highLevelDomainFromHost];
    if (safari_highLevelDomainFromHost)
    {
      v5 = [(NSDictionary *)self->_passwordRequirementsByDomain safari_dictionaryForKey:safari_highLevelDomainFromHost];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)defaultRequirementsForURL:(id)l
{
  host = [l host];
  if (host)
  {
    v5 = [(WBSPasswordGenerationManager *)self defaultRequirementsForDomain:host];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)protectionSpaceForGeneratedPasswordsInProtectionSpace:(id)space
{
  safari_protectionSpaceByReplacingHostWithHighlevelDomain = [space safari_protectionSpaceByReplacingHostWithHighlevelDomain];

  return safari_protectionSpaceByReplacingHostWithHighlevelDomain;
}

- (BOOL)manualPasswordGenerationIsDisallowedByRequirements:(id)requirements
{
  requirementsCopy = requirements;
  if (ignorePasswordGenerationIsDisallowedByRequirements(void)::once != -1)
  {
    [WBSPasswordGenerationManager manualPasswordGenerationIsDisallowedByRequirements:];
  }

  if (ignorePasswordGenerationIsDisallowedByRequirements(void)::ignorePasswordGenerationIsDisallowedByRequirements)
  {
    v4 = 0;
  }

  else
  {
    v4 = [requirementsCopy safari_BOOLForKey:@"ManualPasswordGenerationDisallowed"];
  }

  return v4;
}

- (BOOL)passwordGenerationIsDisallowedByRequirements:(id)requirements
{
  requirementsCopy = requirements;
  if (ignorePasswordGenerationIsDisallowedByRequirements(void)::once != -1)
  {
    [WBSPasswordGenerationManager manualPasswordGenerationIsDisallowedByRequirements:];
  }

  if (ignorePasswordGenerationIsDisallowedByRequirements(void)::ignorePasswordGenerationIsDisallowedByRequirements)
  {
    v5 = 0;
  }

  else if ([(WBSPasswordGenerationManager *)self manualPasswordGenerationIsDisallowedByRequirements:requirementsCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [requirementsCopy safari_BOOLForKey:@"PasswordGenerationDisallowed"];
  }

  return v5;
}

@end