@interface SRCSCommandStringsTable
+ (BOOL)isLocaleIdentifier:(id)identifier containedInLocaleIdentifiers:(id)identifiers;
+ (BOOL)isSameLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier;
+ (NSArray)activeTargetTypes;
+ (NSArray)supportedTargetTypes;
+ (NSString)deviceName;
+ (id)commandStringsLoader;
+ (id)componentsFromLocaleIdentifier:(id)identifier;
+ (id)formattedBuiltInCommandString:(id)string;
+ (id)languageModelDictionaryFromCommandText:(id)text parsingErrorString:(id *)string;
+ (void)setCommandStringsLoader:(id)loader;
- (BOOL)isSupportedCommandIdentifier:(id)identifier forLocaleIdentifier:(id)localeIdentifier;
- (BOOL)isSupportedCommandIdentifier:(id)identifier forTargetTypes:(id)types;
- (SRCSCommandStringsTable)initWithLocaleIdentifier:(id)identifier;
- (id)_commandDescriptionsTable;
- (id)_commandStringsDictionaryForLocaleIdentifier:(id)identifier;
- (id)_commandStringsTable;
- (id)_descriptionTypeForParameterIdentifier:(id)identifier commandIdentifier:(id)commandIdentifier;
- (id)_exampleStringPermutationsFromCommandIdentifier:(id)identifier;
- (id)_keyboardKeyNamesTable;
- (id)_modifierKeyNamesTable;
- (id)_phoneticKeyNamesTable;
- (id)_rootCommandIdentifierFrom:(id)from foundTargetType:(id *)type;
- (id)_spokenStringPermutationOfLanguageModelDictionary:(id)dictionary givenPermutation:(unsigned __int16 *)permutation stringsTable:(id)table segmentOffsets:(id)offsets;
- (id)_warningsOfIncorrectTokenizationAcrossSegmentBoundariesInLanguageModelDictionary:(id)dictionary stringsTable:(id)table;
- (id)descriptionStringForCommandIdentifier:(id)identifier descriptionType:(id)type targetTypes:(id)types;
- (id)exampleParameterStringsTable;
- (id)languageModelDictionaryForCommandIdentifier:(id)identifier targetTypes:(id)types parsingErrorString:(id *)string;
- (id)mutableAttributedStringByReplacingPlaceholderAttribute:(id)attribute withAttributeName:(id)name inAttributedString:(id)string withValueTable:(id)table;
- (id)mutableAttributedStringCommandDescriptionForCommandIdentifier:(id)identifier calculateDisplayedAttributedStringWidthBlock:(id)block;
- (id)parameterIdentifiersFromCommandIdentifier:(id)identifier;
- (id)phrasesForCommandIdentifier:(id)identifier targetTypes:(id)types parameterStrings:(id)strings;
- (id)rowDataForTargetTypes:(id)types;
- (id)setOfBuiltInIdentifiersFromLanguageModelDictionary:(id)dictionary;
- (id)spokenStringPermutationsOfLanguageModelDictionary:(id)dictionary stringsTable:(id)table restrictPermutationsToShortestAndLongest:(BOOL)longest;
- (id)supportedCommandIdentifiersForTargetTypes:(id)types;
- (id)unparsedCommandTextForCommandIdentifier:(id)identifier targetTypes:(id)types;
- (id)warningStringForText:(id)text identifier:(id)identifier textTable:(id)table;
- (unint64_t)countOptionalNodesOfLanguageModelDictionary:(id)dictionary;
- (void)_flushCommandStringsTable;
- (void)_removeDuplicateSpacesFromMutableString:(id)string;
- (void)dealloc;
- (void)resolveReferencesInMutableAttributedString:(id)string stringsTable:(id)table;
@end

@implementation SRCSCommandStringsTable

+ (NSArray)supportedTargetTypes
{
  if (supportedTargetTypes_onceToken != -1)
  {
    +[SRCSCommandStringsTable supportedTargetTypes];
  }

  v3 = sSupportedTargetTypes;

  return v3;
}

void __47__SRCSCommandStringsTable_supportedTargetTypes__block_invoke()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = kSRCSCommandTargetTypeNone;
  v3[1] = kSRCSCommandTargetTypeOSX;
  v3[2] = kSRCSCommandTargetTypeiOS;
  v3[3] = kSRCSCommandTargetTypeiPad;
  v3[4] = kSRCSCommandTargetTypeiPhone;
  v3[5] = kSRCSCommandTargetTypeCarPlay;
  v3[6] = kSRCSCommandTargetTypeRealityDevice;
  v3[7] = kSRCSCommandTargetTypetvOS;
  v3[8] = kSRCSCommandTargetTypewatchOS;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
  v1 = sSupportedTargetTypes;
  sSupportedTargetTypes = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (NSArray)activeTargetTypes
{
  if (activeTargetTypes_onceToken != -1)
  {
    +[SRCSCommandStringsTable activeTargetTypes];
  }

  v3 = sActiveTargetTypes;

  return v3;
}

void __44__SRCSCommandStringsTable_activeTargetTypes__block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1 == 1)
  {
    v10 = kSRCSCommandTargetTypeiPhone;
    v11 = kSRCSCommandTargetTypeCarPlay;
    v12 = kSRCSCommandTargetTypeiOS;
    v13 = kSRCSCommandTargetTypeNone;
    v2 = MEMORY[0x277CBEA60];
    v3 = &v10;
    v4 = 4;
  }

  else if (v1 == 3)
  {
    v14 = kSRCSCommandTargetTypeiPad;
    v15 = kSRCSCommandTargetTypeiOS;
    v16 = kSRCSCommandTargetTypeNone;
    v2 = MEMORY[0x277CBEA60];
    v3 = &v14;
    v4 = 3;
  }

  else
  {
    v8 = kSRCSCommandTargetTypeiOS;
    v9 = kSRCSCommandTargetTypeNone;
    v2 = MEMORY[0x277CBEA60];
    v3 = &v8;
    v4 = 2;
  }

  v5 = [v2 arrayWithObjects:v3 count:{v4, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17}];
  v6 = sActiveTargetTypes;
  sActiveTargetTypes = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)componentsFromLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (componentsFromLocaleIdentifier__staticLocaleComponentsCacheSetup != -1)
    {
      +[SRCSCommandStringsTable componentsFromLocaleIdentifier:];
    }

    v4 = sLocaleComponentsCache;
    objc_sync_enter(v4);
    v5 = [sLocaleComponentsCache objectForKey:identifierCopy];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:identifierCopy];
      if (v5)
      {
        [sLocaleComponentsCache setObject:v5 forKey:identifierCopy];
      }
    }

    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __58__SRCSCommandStringsTable_componentsFromLocaleIdentifier___block_invoke()
{
  sLocaleComponentsCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isSameLocaleIdentifier:(id)identifier secondLocaleIdentifier:(id)localeIdentifier
{
  localeIdentifierCopy = localeIdentifier;
  v6 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:identifier];
  v7 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:localeIdentifierCopy];

  v8 = *MEMORY[0x277CBE6C8];
  v9 = [v6 objectForKey:*MEMORY[0x277CBE6C8]];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = [v7 objectForKey:v8];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v6 objectForKey:v8];
  v14 = [v7 objectForKey:v8];
  v15 = [v13 caseInsensitiveCompare:v14];

  if (!v15)
  {
    v17 = *MEMORY[0x277CBE690];
    v10 = [v6 objectForKey:*MEMORY[0x277CBE690]];
    if (!v10)
    {
      v12 = [v7 objectForKey:v17];
      if (!v12)
      {
        v16 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    v18 = [v6 objectForKey:v17];
    if (v18)
    {
      v19 = v18;
      v20 = [v7 objectForKey:v17];
      if (v20)
      {
        v21 = v20;
        v22 = [v6 objectForKey:v17];
        v23 = [v7 objectForKey:v17];
        v16 = [v22 caseInsensitiveCompare:v23] == 0;

        if (!v10)
        {
          goto LABEL_16;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v16 = 0;
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_4:
  v16 = 0;
LABEL_18:

  return v16;
}

+ (BOOL)isLocaleIdentifier:(id)identifier containedInLocaleIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  identifiersCopy = identifiers;
  v7 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        if ([SRCSCommandStringsTable isSameLocaleIdentifier:identifierCopy secondLocaleIdentifier:*(*(&v12 + 1) + 8 * i), v12])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)languageModelDictionaryFromCommandText:(id)text parsingErrorString:(id *)string
{
  textCopy = text;
  v6 = objc_opt_class();
  objc_sync_enter(v6);
  if (string)
  {
    *string = 0;
  }

  v9 = 0;
  v7 = CreateMutableDictionaryFromSpokenCommandString(textCopy, &v9);
  if (string && v9)
  {
    *string = v9;
  }

  objc_sync_exit(v6);

  return v7;
}

- (SRCSCommandStringsTable)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SRCSCommandStringsTable;
  v6 = [(SRCSCommandStringsTable *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, identifier);
    v8 = CFLocaleCreate(0, v7->_localeIdentifier);
    if (v8)
    {
      v9 = v8;
      v13.location = 0;
      v13.length = 0;
      v7->_wordUnitStringTokenizer = CFStringTokenizerCreate(0, &stru_287C0A5E8, v13, 0, v8);
      CFRelease(v9);
    }

    _commandStringsTable = [(SRCSCommandStringsTable *)v7 _commandStringsTable];

    if (!_commandStringsTable)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  wordUnitStringTokenizer = self->_wordUnitStringTokenizer;
  if (wordUnitStringTokenizer)
  {
    CFRelease(wordUnitStringTokenizer);
  }

  v4.receiver = self;
  v4.super_class = SRCSCommandStringsTable;
  [(SRCSCommandStringsTable *)&v4 dealloc];
}

- (id)_commandStringsTable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  commandStringsCache = selfCopy->_commandStringsCache;
  if (!commandStringsCache)
  {
    v4 = [(SRCSCommandStringsTable *)selfCopy _commandStringsDictionaryForLocaleIdentifier:selfCopy->_localeIdentifier];
    v5 = selfCopy->_commandStringsCache;
    selfCopy->_commandStringsCache = v4;

    commandStringsCache = selfCopy->_commandStringsCache;
  }

  v6 = commandStringsCache;
  objc_sync_exit(selfCopy);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SRCSCommandStringsTable__commandStringsTable__block_invoke;
  block[3] = &unk_279CF53B0;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return v6;
}

uint64_t __47__SRCSCommandStringsTable__commandStringsTable__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__flushCommandStringsTable object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__flushCommandStringsTable withObject:0 afterDelay:20.0];
}

- (void)_flushCommandStringsTable
{
  obj = self;
  objc_sync_enter(obj);
  commandStringsCache = obj->_commandStringsCache;
  obj->_commandStringsCache = 0;

  objc_sync_exit(obj);
}

- (id)_commandDescriptionsTable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  commandDescriptionsCache = selfCopy->_commandDescriptionsCache;
  if (!commandDescriptionsCache)
  {
    v4 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v5 = [v4 dictionaryForLocaleIdentifier:selfCopy->_localeIdentifier resourceFileName:@"CommandDescriptions" resourceFileExtension:@"strings"];
    v6 = selfCopy->_commandDescriptionsCache;
    selfCopy->_commandDescriptionsCache = v5;

    commandDescriptionsCache = selfCopy->_commandDescriptionsCache;
  }

  v7 = commandDescriptionsCache;
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_keyboardKeyNamesTable
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keyboardKeyNamesCache = selfCopy->_keyboardKeyNamesCache;
  if (!keyboardKeyNamesCache)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_keyboardKeyNamesCache;
    selfCopy->_keyboardKeyNamesCache = v4;

    v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v7 = [v6 dictionaryForLocaleIdentifier:selfCopy->_localeIdentifier resourceFileName:@"KeyboardKeyNames" resourceFileExtension:@"strings"];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allKeys = [v7 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    p_isa = &selfCopy->super.isa;
    if (v9)
    {
      v11 = *v24;
      obj = allKeys;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v7 objectForKey:{v13, obj}];
          if (v14)
          {
            v22 = 0;
            v15 = [SRCSCommandStringsTable languageModelDictionaryFromCommandText:v14 parsingErrorString:&v22];
            v16 = v22;
            if (![v16 length])
            {
              v17 = [p_isa spokenStringPermutationsOfLanguageModelDictionary:v15 stringsTable:0];
              if (v17)
              {
                [p_isa[5] setObject:v17 forKey:v13];
              }
            }
          }
        }

        allKeys = obj;
        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    selfCopy = p_isa;
    keyboardKeyNamesCache = p_isa[5];
  }

  v18 = keyboardKeyNamesCache;
  objc_sync_exit(selfCopy);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_phoneticKeyNamesTable
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  phoneticKeyNamesCache = selfCopy->_phoneticKeyNamesCache;
  if (!phoneticKeyNamesCache)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_phoneticKeyNamesCache;
    selfCopy->_phoneticKeyNamesCache = v4;

    v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    localeIdentifier = selfCopy->_localeIdentifier;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v6 dictionaryForLocaleIdentifier:localeIdentifier bundle:v8 subDirectory:@"LocalizedPhoneticAlphabet" rootFileName:@"PhoneticAlphabet" rootFileExtension:@"plist"];
    v10 = [v9 objectForKey:@"PhoneticPronunciationMapping"];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allKeys = [v10 allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v26 objects:v30 count:16];
    p_isa = &selfCopy->super.isa;
    if (v12)
    {
      v14 = *v27;
      obj = allKeys;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v10 objectForKey:{v16, obj}];
          if (v17)
          {
            v25 = 0;
            v18 = [SRCSCommandStringsTable languageModelDictionaryFromCommandText:v17 parsingErrorString:&v25];
            v19 = v25;
            if (![v19 length])
            {
              v20 = [p_isa spokenStringPermutationsOfLanguageModelDictionary:v18 stringsTable:0];
              if (v20)
              {
                [p_isa[7] setObject:v20 forKey:v16];
              }
            }
          }
        }

        allKeys = obj;
        v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    selfCopy = p_isa;
    phoneticKeyNamesCache = p_isa[7];
  }

  v21 = phoneticKeyNamesCache;
  objc_sync_exit(selfCopy);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_modifierKeyNamesTable
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  modifierKeyNamesCache = selfCopy->_modifierKeyNamesCache;
  if (!modifierKeyNamesCache)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_modifierKeyNamesCache;
    selfCopy->_modifierKeyNamesCache = v4;

    v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v7 = [v6 dictionaryForLocaleIdentifier:selfCopy->_localeIdentifier resourceFileName:@"ModifierKeyNames" resourceFileExtension:@"strings"];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allKeys = [v7 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    p_isa = &selfCopy->super.isa;
    if (v9)
    {
      v11 = *v24;
      obj = allKeys;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v7 objectForKey:{v13, obj}];
          if (v14)
          {
            v22 = 0;
            v15 = [SRCSCommandStringsTable languageModelDictionaryFromCommandText:v14 parsingErrorString:&v22];
            v16 = v22;
            if (![v16 length])
            {
              v17 = [p_isa spokenStringPermutationsOfLanguageModelDictionary:v15 stringsTable:0];
              if (v17)
              {
                [p_isa[6] setObject:v17 forKey:v13];
              }
            }
          }
        }

        allKeys = obj;
        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    selfCopy = p_isa;
    modifierKeyNamesCache = p_isa[6];
  }

  v18 = modifierKeyNamesCache;
  objc_sync_exit(selfCopy);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)exampleParameterStringsTable
{
  v76 = *MEMORY[0x277D85DE8];
  parameterIdentifiersToExamplesTable = self->_parameterIdentifiersToExamplesTable;
  if (!parameterIdentifiersToExamplesTable)
  {
    localeIdentifier = self->_localeIdentifier;
    v52 = RXEngineTypeForLocaleIdentifier();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    selfCopy = self;
    [(SRCSCommandStringsTable *)self _commandDescriptionsTable];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v71 = 0u;
    v6 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v69;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v69 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v68 + 1) + 8 * i);
          if ([v10 hasPrefix:@"ExampleParameter."])
          {
            v11 = [v10 rangeOfString:@"." options:0 range:{objc_msgSend(@"ExampleParameter.", "length"), objc_msgSend(v10, "length") - objc_msgSend(@"ExampleParameter.", "length")}];
            if (v11 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v13 = v11;
              v14 = v12;
              v15 = [v10 substringToIndex:v11];
              array = [dictionary objectForKey:v15];
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
                [dictionary setObject:array forKey:v15];
              }

              if (v52 == 1 || ![v10 hasPrefix:@"ExampleParameter.IntegerValue"])
              {
                v17 = [obj objectForKey:v10];
                [array addObject:v17];
              }

              else
              {
                v17 = [v10 substringWithRange:{v13 + v14, objc_msgSend(v10, "rangeOfString:options:range:", @"_", 0, v14, objc_msgSend(v10, "length") - v14) - (v13 + v14)}];
                if ([v17 integerValue] <= 9)
                {
                  v18 = [obj objectForKey:v10];
                  [array addObject:v18];
                }
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v7);
    }

    v19 = objc_opt_new();
    p_isa = &selfCopy->super.isa;
    v21 = selfCopy->_parameterIdentifiersToExamplesTable;
    selfCopy->_parameterIdentifiersToExamplesTable = v19;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    allObjects = [AllValidCommandParameterIdentifiers() allObjects];
    v23 = [allObjects countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v65;
      do
      {
        v26 = 0;
        do
        {
          if (*v65 != v25)
          {
            objc_enumerationMutation(allObjects);
          }

          v27 = *(*(&v64 + 1) + 8 * v26);
          if (([v27 isEqualToString:kSRCSCommandParameterSwitchableApplication[0]] & 1) != 0 || objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterRunningApplication[0]))
          {
            v28 = dictionary;
            v29 = @"ExampleParameter.AppName";
            goto LABEL_35;
          }

          if (([v27 isEqualToString:kSRCSCommandParameterTextSegmentCardinalNumber[0]] & 1) != 0 || (objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterScreenDistanceCardinalNumber[0]) & 1) != 0 || (objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterNumberZeroThroughOneHundred[0]) & 1) != 0 || (objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterNumberTwoThroughNinetyNine[0]) & 1) != 0 || (objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterNumberTwoThroughNinetyNine2[0]) & 1) != 0 || (objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterOverlayLabel[0]) & 1) != 0 || objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterOverlayLabel2[0]))
          {
            v28 = dictionary;
            v29 = @"ExampleParameter.IntegerValue";
            goto LABEL_35;
          }

          if (([v27 isEqualToString:kSRCSCommandParameterMenuItem[0]] & 1) != 0 || (objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterWindowItem[0]) & 1) != 0 || objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterWindowItem2[0]))
          {
            v28 = dictionary;
            v29 = @"ExampleParameter.ElementName";
            goto LABEL_35;
          }

          if ([v27 isEqualToString:kSRCSCommandParameterMenuBarItem[0]])
          {
            v28 = dictionary;
            v29 = @"ExampleParameter.MenuBarName";
LABEL_35:
            v30 = [v28 objectForKey:v29];
            if (v30)
            {
              [p_isa[8] setObject:v30 forKey:v27];
            }

            goto LABEL_37;
          }

          if (([v27 isEqualToString:kSRCSCommandParameterDictation[0]] & 1) != 0 || objc_msgSend(v27, "isEqualToString:", kSRCSCommandParameterDictation2[0]))
          {
            v28 = dictionary;
            v29 = @"ExampleParameter.DictatedPhrase";
            goto LABEL_35;
          }

          if ([v27 isEqualToString:kSRCSCommandParameterKeyboardKeyName[0]])
          {
            v30 = objc_opt_new();
            _phoneticKeyNamesTable = [p_isa _phoneticKeyNamesTable];
            _keyboardKeyNamesTable = [p_isa _keyboardKeyNamesTable];
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v48 = _keyboardKeyNamesTable;
            allKeys = [_keyboardKeyNamesTable allKeys];
            v53 = [allKeys countByEnumeratingWithState:&v60 objects:v73 count:16];
            if (v53)
            {
              v47 = *v61;
              do
              {
                for (j = 0; j != v53; ++j)
                {
                  if (*v61 != v47)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v33 = *(*(&v60 + 1) + 8 * j);
                  v34 = [v48 objectForKey:v33];
                  [v30 addObjectsFromArray:v34];

                  v35 = [_phoneticKeyNamesTable objectForKey:v33];
                  if (v35)
                  {
                    [v30 addObjectsFromArray:v35];
                  }
                }

                v53 = [allKeys countByEnumeratingWithState:&v60 objects:v73 count:16];
              }

              while (v53);
            }

            p_isa = &selfCopy->super.isa;
            [(NSMutableDictionary *)selfCopy->_parameterIdentifiersToExamplesTable setObject:v30 forKey:v27];

            v36 = _phoneticKeyNamesTable;
            goto LABEL_69;
          }

          if ([v27 isEqualToString:kSRCSCommandParameterModifierKeys[0]])
          {
            v30 = objc_opt_new();
            _modifierKeyNamesTable = [p_isa _modifierKeyNamesTable];
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v54 = _modifierKeyNamesTable;
            allKeys2 = [_modifierKeyNamesTable allKeys];
            v38 = [allKeys2 countByEnumeratingWithState:&v56 objects:v72 count:16];
            if (v38)
            {
              v39 = v38;
              v51 = *v57;
              do
              {
                for (k = 0; k != v39; ++k)
                {
                  if (*v57 != v51)
                  {
                    objc_enumerationMutation(allKeys2);
                  }

                  v41 = [v54 objectForKey:*(*(&v56 + 1) + 8 * k)];
                  [v30 addObjectsFromArray:v41];
                }

                v39 = [allKeys2 countByEnumeratingWithState:&v56 objects:v72 count:16];
              }

              while (v39);
            }

            p_isa = &selfCopy->super.isa;
            [(NSMutableDictionary *)selfCopy->_parameterIdentifiersToExamplesTable setObject:v30 forKey:v27];
            v36 = v54;
LABEL_69:

LABEL_37:
          }

          ++v26;
        }

        while (v26 != v24);
        v42 = [allObjects countByEnumeratingWithState:&v64 objects:v74 count:16];
        v24 = v42;
      }

      while (v42);
    }

    parameterIdentifiersToExamplesTable = p_isa[8];
  }

  v43 = *MEMORY[0x277D85DE8];

  return parameterIdentifiersToExamplesTable;
}

- (id)supportedCommandIdentifiersForTargetTypes:(id)types
{
  v24 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [typesCopy count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  _commandStringsTable = [(SRCSCommandStringsTable *)self _commandStringsTable];
  allKeys = [_commandStringsTable allKeys];

  v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v14 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:v13 foundTargetType:&v18];
        v15 = v18;
        if ([v14 length] && (objc_msgSend(array, "containsObject:", v14) & 1) == 0 && (!v6 || objc_msgSend(typesCopy, "containsObject:", v15)) && -[SRCSCommandStringsTable isSupportedCommandIdentifier:forLocaleIdentifier:](self, "isSupportedCommandIdentifier:forLocaleIdentifier:", v14, self->_localeIdentifier))
        {
          [array addObject:v14];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)isSupportedCommandIdentifier:(id)identifier forTargetTypes:(id)types
{
  typesCopy = types;
  v11 = 0;
  v7 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:identifier foundTargetType:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [typesCopy containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isSupportedCommandIdentifier:(id)identifier forLocaleIdentifier:(id)localeIdentifier
{
  localeIdentifierCopy = localeIdentifier;
  identifierCopy = identifier;
  v7 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
  commandAttributes = [v7 commandAttributes];
  v9 = [commandAttributes objectForKey:identifierCopy];

  v10 = [v9 objectForKey:kSRCSCommandAttributeIncludeOnlyForLocales];
  if (v10 && ![SRCSCommandStringsTable isLocaleIdentifier:localeIdentifierCopy containedInLocaleIdentifiers:v10])
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v11 = [v9 objectForKey:kSRCSCommandAttributeExcludeAlwaysForLocales];
    if (v11)
    {
      v12 = ![SRCSCommandStringsTable isLocaleIdentifier:localeIdentifierCopy containedInLocaleIdentifiers:v11];
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

- (id)_rootCommandIdentifierFrom:(id)from foundTargetType:(id *)type
{
  fromCopy = from;
  v6 = kSRCSCommandTargetTypeNone;
  v7 = [fromCopy rangeOfString:@"_" options:4];
  if (v8 == 1 && (v9 = v7, v7 < [fromCopy length] - 1))
  {
    v10 = [fromCopy substringFromIndex:v9 + 1];
    if ([v10 length])
    {
      v11 = [fromCopy substringToIndex:v9];

      v12 = v10;
    }

    else
    {

      v12 = 0;
      v11 = 0;
    }

    v6 = v12;
  }

  else
  {
    v11 = fromCopy;
  }

  v13 = v6;
  *type = v6;

  return v11;
}

- (unint64_t)countOptionalNodesOfLanguageModelDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v6 = [v5 objectForKey:kSRCSCommandParseAttributeOptional[0]];
  bOOLValue = [v6 BOOLValue];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [dictionaryCopy objectForKey:{kSRCSCommandParseDictionaryKeyChildren[0], 0}];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        bOOLValue += [(SRCSCommandStringsTable *)self countOptionalNodesOfLanguageModelDictionary:*(*(&v15 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)_spokenStringPermutationOfLanguageModelDictionary:(id)dictionary givenPermutation:(unsigned __int16 *)permutation stringsTable:(id)table segmentOffsets:(id)offsets
{
  v58 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  tableCopy = table;
  offsetsCopy = offsets;
  v52 = [MEMORY[0x277CCAB68] stringWithString:&stru_287C0A5E8];
  v8 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v9 = [v8 objectForKey:kSRCSCommandParseAttributeOptional[0]];
  LODWORD(table) = [v9 BOOLValue];

  tableCopy2 = table;
  if (table)
  {
    v49 = *permutation & 1;
    *permutation >>= 1;
  }

  else
  {
    v49 = 1;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  v10 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v10)
  {
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v53 + 1) + 8 * i);
        if (offsetsCopy)
        {
          v14 = objc_opt_new();
        }

        else
        {
          v14 = 0;
        }

        v15 = [(SRCSCommandStringsTable *)self _spokenStringPermutationOfLanguageModelDictionary:v13 givenPermutation:permutation stringsTable:tableCopy segmentOffsets:v14];
        v16 = v15;
        if (v49 && [v15 length])
        {
          if (offsetsCopy && [v14 count])
          {
            if ([v52 length])
            {
              v17 = [v14 count];
              if (v17 >= 1)
              {
                for (j = 0; j != v17; ++j)
                {
                  v19 = [v14 objectAtIndex:j];
                  range = [v19 range];
                  v21 = [v52 length];
                  [v19 range];
                  [v19 setRange:{range + v21, v22}];
                }
              }
            }

            [offsetsCopy addObjectsFromArray:v14];
          }

          [v52 appendString:v16];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v10);
  }

  if (v49)
  {
    v23 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
    bOOLValue = [v23 BOOLValue];

    if (!bOOLValue)
    {
      v25 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyText[0]];
      if ([(__CFString *)v25 length])
      {
        if (offsetsCopy)
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          wordUnitStringTokenizer = selfCopy->_wordUnitStringTokenizer;
          v60.length = [(__CFString *)v25 length];
          v60.location = 0;
          CFStringTokenizerSetString(wordUnitStringTokenizer, v25, v60);
          if (CFStringTokenizerAdvanceToNextToken(selfCopy->_wordUnitStringTokenizer))
          {
            CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(selfCopy->_wordUnitStringTokenizer);
            v38 = v25;
            if ((tableCopy2 & 1) == 0)
            {
              v38 = [(__CFString *)v25 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
            }

            v39 = [SRCSCommandSegmentInfo segmentInfoWith:CurrentTokenRange.location text:CurrentTokenRange.length, v38];
            [offsetsCopy addObject:v39];

            if ((tableCopy2 & 1) == 0)
            {
            }
          }

          objc_sync_exit(selfCopy);
        }

        [v52 appendString:v25];
      }

      goto LABEL_56;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:kSRCSCommandParseDictionaryKeyIdentifier[0]];
    v26 = [tableCopy objectForKey:v25];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    if ([v28 length])
    {
      v31 = [(__CFString *)v25 isEqualToString:kSRCSCommandParameterDeviceName[0]];
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = v32;
      if (v31)
      {
        [v32 localizedStringForKey:@"CommandParameter.DeviceNameFormatString" value:&stru_287C0A5E8 table:0];
      }

      else
      {
        [v32 localizedStringForKey:@"CommandParameter.GenericFormatString" value:&stru_287C0A5E8 table:0];
      }
      v34 = ;
      [v52 appendFormat:v34, v28];
    }

    else if ([v30 count])
    {
      if (![v30 count])
      {
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }

      if ([v30 count] < 2)
      {
        v41 = 0;
      }

      else
      {
        do
        {
          v40 = random();
          v41 = v40 % [v30 count];
        }

        while (_spokenStringPermutationOfLanguageModelDictionary_givenPermutation_stringsTable_segmentOffsets__sLastRandomInteger == v41);
      }

      _spokenStringPermutationOfLanguageModelDictionary_givenPermutation_stringsTable_segmentOffsets__sLastRandomInteger = v41;
      v33 = [v30 objectAtIndex:?];
      [v52 appendString:v33];
    }

    else
    {
      v33 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
      [v52 appendFormat:@"{%@}", v33];
    }

    goto LABEL_55;
  }

LABEL_57:

  v42 = *MEMORY[0x277D85DE8];

  return v52;
}

- (id)setOfBuiltInIdentifiersFromLanguageModelDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  if ([v6 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [dictionaryCopy objectForKey:{kSRCSCommandParseDictionaryKeyChildren[0], 0}];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(SRCSCommandStringsTable *)self setOfBuiltInIdentifiersFromLanguageModelDictionary:*(*(&v19 + 1) + 8 * i)];
          allObjects = [v12 allObjects];
          [v5 addObjectsFromArray:allObjects];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:kSRCSCommandParseDictionaryKeyIdentifier[0]];
      if (v16)
      {
        [v5 addObject:v16];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_removeDuplicateSpacesFromMutableString:(id)string
{
  stringCopy = string;
    ;
  }
}

- (id)unparsedCommandTextForCommandIdentifier:(id)identifier targetTypes:(id)types
{
  v29 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v7 = typesCopy;
  if (identifier && typesCopy)
  {
    v27 = 0;
    v8 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:identifier foundTargetType:&v27];
    v9 = v27;
    _commandStringsTable = [(SRCSCommandStringsTable *)self _commandStringsTable];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    supportedTargetTypes = [objc_opt_class() supportedTargetTypes];
    reverseObjectEnumerator = [supportedTargetTypes reverseObjectEnumerator];

    v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if ([v7 containsObject:v17])
          {
            if ([v17 isEqualToString:kSRCSCommandTargetTypeNone])
            {
              v18 = v8;
            }

            else
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v8, v17];
            }

            v19 = v18;
            v20 = [_commandStringsTable objectForKeyedSubscript:v18];
            if ([(__CFString *)v20 length])
            {

              goto LABEL_20;
            }
          }
        }

        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v20 = &stru_287C0A5E8;
    }

    else
    {
      v20 = &stru_287C0A5E8;
    }

LABEL_20:
  }

  else
  {
    NSLog(&cfstr_ErrorDonTPassN.isa);
    v20 = &stru_287C0A5E8;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)languageModelDictionaryForCommandIdentifier:(id)identifier targetTypes:(id)types parsingErrorString:(id *)string
{
  identifierCopy = identifier;
  typesCopy = types;
  v10 = [(SRCSCommandStringsTable *)self unparsedCommandTextForCommandIdentifier:identifierCopy targetTypes:typesCopy];
  v11 = objc_opt_class();
  objc_sync_enter(v11);
  if (string)
  {
    *string = 0;
  }

  v14 = 0;
  v12 = CreateMutableDictionaryFromSpokenCommandString(v10, &v14);
  if (string && v14)
  {
    *string = v14;
  }

  objc_sync_exit(v11);

  return v12;
}

- (id)spokenStringPermutationsOfLanguageModelDictionary:(id)dictionary stringsTable:(id)table restrictPermutationsToShortestAndLongest:(BOOL)longest
{
  longestCopy = longest;
  v41 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  tableCopy = table;
  array = [MEMORY[0x277CBEB18] array];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v12 = [v11 objectForKey:kSRCSCommandParseAttributePath[0]];

  if (v12)
  {
    v13 = SRCSLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = dictionaryCopy;
      _os_log_impl(&dword_26B44D000, v13, OS_LOG_TYPE_DEFAULT, "Malformed LM dictionary in spokenStringPermutationsOfLanguageModelDictionary:stringsTable:, should not have a path at the top level: %@.", buf, 0xCu);
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
    v33 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v33)
    {
      v28 = dictionaryCopy;
      obj = v13;
      v30 = *v35;
      v31 = longestCopy;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = [(SRCSCommandStringsTable *)self countOptionalNodesOfLanguageModelDictionary:v15, v28];
          v17 = objc_opt_new();
          if (v16 <= 0xF)
          {
            v18 = 0;
            v19 = 1 << v16;
            do
            {
              *buf = v18;
              v20 = [(SRCSCommandStringsTable *)self spokenStringPermutationOfLanguageModelDictionary:v15 givenPermutation:buf stringsTable:tableCopy];
              [(SRCSCommandStringsTable *)self _removeDuplicateSpacesFromMutableString:v20];
              v21 = [v20 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
              [v17 addObject:v21];

              ++v18;
            }

            while (v19 != v18);
          }

          v22 = objc_alloc(MEMORY[0x277CBEB18]);
          allObjects = [v17 allObjects];
          v24 = [allObjects sortedArrayUsingComparator:&__block_literal_global_228];
          v25 = [v22 initWithArray:v24];

          if (v31 && [v25 count] >= 3)
          {
            [v25 removeObjectsInRange:{1, objc_msgSend(v25, "count") - 2}];
          }

          [array addObjectsFromArray:v25];
        }

        v13 = obj;
        v33 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v33);
      dictionaryCopy = v28;
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __131__SRCSCommandStringsTable_spokenStringPermutationsOfLanguageModelDictionary_stringsTable_restrictPermutationsToShortestAndLongest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    if (v8 >= [v5 length])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_warningsOfIncorrectTokenizationAcrossSegmentBoundariesInLanguageModelDictionary:(id)dictionary stringsTable:(id)table
{
  v43 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  tableCopy = table;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v7 = [v6 objectForKey:kSRCSCommandParseAttributePath[0]];

  if (v7)
  {
    v8 = SRCSLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = dictionaryCopy;
      _os_log_impl(&dword_26B44D000, v8, OS_LOG_TYPE_DEFAULT, "Malformed LM dictionary in _warningsOfIncorrectTokenizationAcrossSegmentBoundariesInLanguageModelDictionary:stringsTable:, should not have a path at the top level: %@.", buf, 0xCu);
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [dictionaryCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
    v30 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v30)
    {
      v29 = *v37;
      do
      {
        v9 = 0;
        do
        {
          if (*v37 != v29)
          {
            v10 = v9;
            objc_enumerationMutation(obj);
            v9 = v10;
          }

          v31 = v9;
          v35 = *(*(&v36 + 1) + 8 * v9);
          v11 = [(SRCSCommandStringsTable *)self countOptionalNodesOfLanguageModelDictionary:?];
          if (v11 <= 0xF)
          {
            v12 = 0;
            v34 = (1 << v11);
            do
            {
              array2 = [MEMORY[0x277CBEB18] array];
              *buf = v12;
              v14 = [(SRCSCommandStringsTable *)self _spokenStringPermutationOfLanguageModelDictionary:v35 givenPermutation:buf stringsTable:tableCopy segmentOffsets:array2];
              selfCopy = self;
              objc_sync_enter(selfCopy);
              wordUnitStringTokenizer = self->_wordUnitStringTokenizer;
              v45.length = [(__CFString *)v14 length];
              v45.location = 0;
              CFStringTokenizerSetString(wordUnitStringTokenizer, v14, v45);
LABEL_12:
              while (CFStringTokenizerAdvanceToNextToken(self->_wordUnitStringTokenizer))
              {
                location = CFStringTokenizerGetCurrentTokenRange(self->_wordUnitStringTokenizer).location;
                v18 = [array2 count];
                if (v18 >= 1)
                {
                  v19 = 0;
                  while (1)
                  {
                    v20 = [array2 objectAtIndex:v19];
                    v21 = [v20 range] == location;

                    if (v21)
                    {
                      break;
                    }

                    if (v18 == ++v19)
                    {
                      goto LABEL_12;
                    }
                  }

                  [array2 removeObjectAtIndex:v19];
                }
              }

              objc_sync_exit(selfCopy);

              if ([array2 count])
              {
                v22 = MEMORY[0x277CCACA8];
                v23 = [array2 componentsJoinedByString:{@", "}];
                v24 = [v22 stringWithFormat:@"%@ in “%@”", v23, v14];
                [array addObject:v24];
              }

              ++v12;
            }

            while (v12 < v34);
          }

          v9 = v31 + 1;
        }

        while (v31 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v30);
    }

    v8 = obj;
  }

  v25 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)descriptionStringForCommandIdentifier:(id)identifier descriptionType:(id)type targetTypes:(id)types
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeCopy = type;
  typesCopy = types;
  _commandDescriptionsTable = [(SRCSCommandStringsTable *)self _commandDescriptionsTable];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = typesCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v25;
LABEL_3:
    v17 = 0;
    v18 = v15;
    while (1)
    {
      if (*v25 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v24 + 1) + 8 * v17);
      if ([v19 isEqualToString:@"None"])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", identifierCopy, typeCopy, v23];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", identifierCopy, typeCopy, v19];
      }
      v20 = ;
      v15 = [_commandDescriptionsTable objectForKey:v20];

      if ([v15 length])
      {
        break;
      }

      ++v17;
      v18 = v15;
      if (v14 == v17)
      {
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)mutableAttributedStringByReplacingPlaceholderAttribute:(id)attribute withAttributeName:(id)name inAttributedString:(id)string withValueTable:(id)table
{
  nameCopy = name;
  tableCopy = table;
  v11 = MEMORY[0x277CCAB48];
  stringCopy = string;
  attributeCopy = attribute;
  v14 = [[v11 alloc] initWithAttributedString:stringCopy];
  v15 = [stringCopy length];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __134__SRCSCommandStringsTable_mutableAttributedStringByReplacingPlaceholderAttribute_withAttributeName_inAttributedString_withValueTable___block_invoke;
  v22[3] = &unk_279CF5490;
  v23 = tableCopy;
  v16 = v14;
  v24 = v16;
  v25 = nameCopy;
  v17 = nameCopy;
  v18 = tableCopy;
  [stringCopy enumerateAttribute:attributeCopy inRange:0 options:v15 usingBlock:{0, v22}];

  [v16 removeAttribute:attributeCopy range:{0, objc_msgSend(v16, "length")}];
  v19 = v25;
  v20 = v16;

  return v16;
}

uint64_t __134__SRCSCommandStringsTable_mutableAttributedStringByReplacingPlaceholderAttribute_withAttributeName_inAttributedString_withValueTable___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) objectForKey:a2];
  if (v7)
  {
    [*(a1 + 40) addAttribute:*(a1 + 48) value:v7 range:{a3, a4}];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)phrasesForCommandIdentifier:(id)identifier targetTypes:(id)types parameterStrings:(id)strings
{
  stringsCopy = strings;
  v12 = 0;
  v9 = [(SRCSCommandStringsTable *)self languageModelDictionaryForCommandIdentifier:identifier targetTypes:types parsingErrorString:&v12];
  if (v9)
  {
    v10 = [(SRCSCommandStringsTable *)self spokenStringPermutationsOfLanguageModelDictionary:v9 stringsTable:stringsCopy restrictPermutationsToShortestAndLongest:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)mutableAttributedStringCommandDescriptionForCommandIdentifier:(id)identifier calculateDisplayedAttributedStringWidthBlock:(id)block
{
  v4 = MEMORY[0x28223BE20](self, a2, identifier, block);
  v6 = v5;
  v7 = v4;
  v433 = *MEMORY[0x277D85DE8];
  v278 = v8;
  v296 = v6;
  v9 = objc_opt_new();
  v10 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
  v285 = v7;
  v281 = [v10 commandStringsTableForLocaleIdentifier:v7[1]];

  v271 = objc_opt_new();
  v365 = 0u;
  v366 = 0u;
  v367 = 0u;
  v368 = 0u;
  allObjects = [AllValidCommandParameterIdentifiers() allObjects];
  v12 = [allObjects countByEnumeratingWithState:&v365 objects:v432 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v366;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v366 != v14)
        {
          objc_enumerationMutation(allObjects);
        }

        v16 = *(*(&v365 + 1) + 8 * i);
        v17 = +[SRCSCommandStringsTable activeTargetTypes];
        v18 = [v281 descriptionStringForCommandIdentifier:v16 descriptionType:@"NAME" targetTypes:v17];

        if ([v18 length])
        {
          [v271 setObject:v18 forKey:v16];
        }
      }

      v13 = [allObjects countByEnumeratingWithState:&v365 objects:v432 count:16];
    }

    while (v13);
  }

  v19 = +[SRCSCommandStringsTable activeTargetTypes];
  v20 = v281;
  v21 = [v281 descriptionStringForCommandIdentifier:@"Section.Phrases" descriptionType:@"TITL" targetTypes:v19];

  v22 = 0x277CCA000uLL;
  v23 = objc_alloc(MEMORY[0x277CCAB48]);
  if (v21)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v21];
  }

  else
  {
    v24 = &stru_287C0A5E8;
  }

  v25 = v21;
  v26 = 0x2803FF000uLL;
  v430[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
  v430[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
  v431[0] = kSRCSCommandDescriptionsSectionTitleValue;
  v431[1] = kSRCSCommandDescriptionsSectionTitleValue;
  v430[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
  v431[2] = kSRCSCommandDescriptionsSectionTitleValue;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v431 forKeys:v430 count:3];
  v28 = [v23 initWithString:v24 attributes:v27];

  v262 = v25;
  if (v25)
  {
  }

  v261 = v28;
  [v9 appendAttributedString:v28];
  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v274 = [v29 localizedStringForKey:@"CommandDisplay.commandDisplayWithBulletAndNewLineFormatter" value:&stru_287C0A5E8 table:0];

  v30 = +[SRCSCommandStringsTable activeTargetTypes];
  v31 = [v285 phrasesForCommandIdentifier:v278 targetTypes:v30 parameterStrings:v271];

  string = [MEMORY[0x277CCAB68] string];
  v361 = 0u;
  v362 = 0u;
  v363 = 0u;
  v364 = 0u;
  obj = v31;
  v32 = [obj countByEnumeratingWithState:&v361 objects:v429 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v362;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v362 != v34)
        {
          objc_enumerationMutation(obj);
        }

        [string appendFormat:v274, *(*(&v361 + 1) + 8 * j)];
      }

      v33 = [obj countByEnumeratingWithState:&v361 objects:v429 count:16];
    }

    while (v33);
  }

  v36 = objc_alloc(MEMORY[0x277CCAB48]);
  v427[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
  v427[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
  v428[0] = kSRCSCommandDescriptionsVariantValue;
  v428[1] = kSRCSCommandDescriptionsSectionDescValue;
  v427[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
  v428[2] = kSRCSCommandDescriptionsSectionDescValue;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v428 forKeys:v427 count:3];
  v38 = [v36 initWithString:string attributes:v37];

  v260 = v38;
  [v9 appendAttributedString:v38];
  v39 = +[SRCSCommandStringsTable activeTargetTypes];
  v40 = [v281 descriptionStringForCommandIdentifier:v278 descriptionType:@"SUMM" targetTypes:v39];

  v263 = v40;
  v269 = [v285 parameterIdentifiersFromCommandIdentifier:v278];
  v290 = v9;
  if ([v40 length] || objc_msgSend(v269, "count"))
  {
    v41 = +[SRCSCommandStringsTable activeTargetTypes];
    v42 = [v281 descriptionStringForCommandIdentifier:@"Section.Description" descriptionType:@"TITL" targetTypes:v41];

    v43 = objc_alloc(MEMORY[0x277CCAB48]);
    v44 = &stru_287C0A5E8;
    if (v42)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v42];
    }

    v425[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
    v425[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
    v426[0] = kSRCSCommandDescriptionsSectionTitleValue;
    v426[1] = kSRCSCommandDescriptionsSectionTitleValue;
    v425[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
    v426[2] = kSRCSCommandDescriptionsSectionTitleValue;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v426 forKeys:v425 count:3];
    v287 = [v43 initWithString:v44 attributes:v45];

    v282 = v42;
    if (v42)
    {
    }

    [v9 appendAttributedString:v287];
    if ([v263 length])
    {
      v46 = objc_alloc(MEMORY[0x277CCAB48]);
      v263 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v263];
      v48 = [v46 initWithString:v263];

      [v281 resolveReferencesInMutableAttributedString:v48 stringsTable:v271];
      v423[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
      v423[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v424[0] = kSRCSCommandDescriptionsSectionDescValue;
      v424[1] = kSRCSCommandDescriptionsSectionDescValue;
      v423[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v424[2] = kSRCSCommandDescriptionsSectionDescValue;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v424 forKeys:v423 count:3];
      [v48 addAttributes:v49 range:{0, objc_msgSend(v48, "length")}];

      [v9 appendAttributedString:v48];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v357 = 0u;
    v358 = 0u;
    v359 = 0u;
    v360 = 0u;
    v295 = v269;
    v302 = [v295 countByEnumeratingWithState:&v357 objects:v422 count:16];
    if (v302)
    {
      v297 = *v358;
      v50 = 0.0;
      v51 = v271;
      v52 = 0x277CBE000;
      do
      {
        for (k = 0; k != v302; ++k)
        {
          if (*v358 != v297)
          {
            objc_enumerationMutation(v295);
          }

          v54 = *(*(&v357 + 1) + 8 * k);
          v55 = [v51 objectForKey:v54];
          v56 = [SRCSCommandStringsTable formattedBuiltInCommandString:v55];

          if ([v56 length])
          {
            v57 = objc_alloc(MEMORY[0x277CCAB48]);
            v420[0] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
            v420[1] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
            v421[0] = kSRCSCommandDescriptionsSectionDescBoldValue;
            v421[1] = kSRCSCommandDescriptionsSectionDescValue;
            v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v421 forKeys:v420 count:2];
            v59 = [v57 initWithString:v56 attributes:v58];

            v60 = [v285 _descriptionTypeForParameterIdentifier:v54 commandIdentifier:v278];
            v61 = objc_alloc(MEMORY[0x277CCAB48]);
            v62 = +[SRCSCommandStringsTable activeTargetTypes];
            v63 = [v281 descriptionStringForCommandIdentifier:v54 descriptionType:v60 targetTypes:v62];
            v64 = [v61 initWithString:v63];

            v51 = v271;
            [v281 resolveReferencesInMutableAttributedString:v64 stringsTable:v271];
            v52 = 0x277CBE000uLL;
            v418[0] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
            v418[1] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
            v419[0] = kSRCSCommandDescriptionsSectionDescValue;
            v419[1] = kSRCSCommandDescriptionsSectionDescValue;
            v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v419 forKeys:v418 count:2];
            [(__CFString *)v64 addAttributes:v65 range:0, [(__CFString *)v64 length]];

            if ([(__CFString *)v64 length])
            {
              v66 = v64;
            }

            else
            {
              v66 = &stru_287C0A5E8;
            }

            [dictionary setObject:v66 forKey:v59];
            if (v296)
            {
              v67 = v296[2]();
            }

            else
            {
              v67 = 10.0;
            }

            if (v67 > v50)
            {
              v50 = v67;
            }
          }
        }

        v302 = [v295 countByEnumeratingWithState:&v357 objects:v422 count:16];
      }

      while (v302);
      v68 = v50;
      v22 = 0x277CCA000;
    }

    else
    {
      v68 = 0.0;
      v52 = 0x277CBE000;
    }

    v69 = *(v22 + 2888);
    v70 = objc_opt_new();
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v356 = 0u;
    allKeys = [dictionary allKeys];
    v303 = [(__CFString *)allKeys countByEnumeratingWithState:&v353 objects:v417 count:16];
    if (v303)
    {
      v298 = *v354;
      v52 = 0x277CBE000uLL;
      do
      {
        for (m = 0; m != v303; ++m)
        {
          if (*v354 != v298)
          {
            objc_enumerationMutation(allKeys);
          }

          v72 = *(*(&v353 + 1) + 8 * m);
          [v70 appendAttributedString:v72];
          v73 = objc_alloc(MEMORY[0x277CCAB48]);
          v415[0] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
          v415[1] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
          v416[0] = kSRCSCommandDescriptionsSectionDescValue;
          v416[1] = kSRCSCommandDescriptionsSectionDescValue;
          v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v416 forKeys:v415 count:2];
          v75 = [v73 initWithString:@"\t" attributes:v74];
          [v70 appendAttributedString:v75];

          v76 = [dictionary objectForKey:v72];
          [v70 appendAttributedString:v76];

          v77 = objc_alloc(MEMORY[0x277CCAB48]);
          v413[0] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
          v413[1] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
          v414[0] = kSRCSCommandDescriptionsSectionDescValue;
          v414[1] = kSRCSCommandDescriptionsSectionDescValue;
          v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v414 forKeys:v413 count:2];
          v79 = [v77 initWithString:@"\n" attributes:v78];
          [v70 appendAttributedString:v79];
        }

        v303 = [(__CFString *)allKeys countByEnumeratingWithState:&v353 objects:v417 count:16];
      }

      while (v303);
    }

    v80 = v52;
    v26 = 0x2803FF000uLL;
    v411 = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
    v412 = kSRCSCommandDescriptionsParameterValue;
    v81 = [*(v80 + 2752) dictionaryWithObjects:&v412 forKeys:&v411 count:1];
    [v70 addAttributes:v81 range:{0, objc_msgSend(v70, "length")}];

    v9 = v290;
    [v290 appendAttributedString:v70];
    v82 = +[SRCSCommandStringsTable activeTargetTypes];
    v20 = v281;
    v83 = [v281 descriptionStringForCommandIdentifier:v278 descriptionType:@"DESC" targetTypes:v82];

    v22 = 0x277CCA000uLL;
    v84 = 0x277CCA000uLL;
    if ([v83 length])
    {
      v85 = objc_alloc(MEMORY[0x277CCAB48]);
      v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v83];
      v87 = [v85 initWithString:v86];
      v88 = v80;
      v89 = v87;

      [v281 resolveReferencesInMutableAttributedString:v89 stringsTable:v271];
      v409[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
      v409[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v410[0] = kSRCSCommandDescriptionsSectionDescValue;
      v410[1] = kSRCSCommandDescriptionsSectionDescValue;
      v409[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v410[2] = kSRCSCommandDescriptionsSectionDescValue;
      v90 = [*(v88 + 2752) dictionaryWithObjects:v410 forKeys:v409 count:3];
      [v89 addAttributes:v90 range:{0, objc_msgSend(v89, "length")}];

      [v290 appendAttributedString:v89];
    }
  }

  else
  {
    v68 = 0.0;
    v84 = 0x277CCA000;
  }

  if ([v269 count])
  {
    v91 = [v285 _exampleStringPermutationsFromCommandIdentifier:v278];
    if ([v91 count])
    {
      v92 = +[SRCSCommandStringsTable activeTargetTypes];
      v93 = [v20 descriptionStringForCommandIdentifier:@"Section.Examples" descriptionType:@"TITL" targetTypes:v92];

      v94 = objc_alloc(MEMORY[0x277CCAB48]);
      if (v93)
      {
        v95 = [*(v84 + 3240) stringWithFormat:@"%@\n", v93];
      }

      else
      {
        v95 = &stru_287C0A5E8;
      }

      v407[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
      v407[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v408[0] = kSRCSCommandDescriptionsSectionTitleValue;
      v408[1] = kSRCSCommandDescriptionsSectionTitleValue;
      v407[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v408[2] = kSRCSCommandDescriptionsSectionTitleValue;
      v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v408 forKeys:v407 count:3];
      v97 = [v94 initWithString:v95 attributes:v96];

      if (v93)
      {
      }

      [v9 appendAttributedString:v97];
      string2 = [MEMORY[0x277CCAB68] string];
      v349 = 0u;
      v350 = 0u;
      v351 = 0u;
      v352 = 0u;
      v99 = v91;
      v100 = [v99 countByEnumeratingWithState:&v349 objects:v406 count:16];
      if (v100)
      {
        v101 = v100;
        v102 = *v350;
        do
        {
          for (n = 0; n != v101; ++n)
          {
            if (*v350 != v102)
            {
              objc_enumerationMutation(v99);
            }

            [string2 appendFormat:v274, *(*(&v349 + 1) + 8 * n)];
          }

          v101 = [v99 countByEnumeratingWithState:&v349 objects:v406 count:16];
        }

        while (v101);
      }

      v104 = objc_alloc(MEMORY[0x277CCAB48]);
      v26 = 0x2803FF000uLL;
      v404[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
      v404[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v405[0] = kSRCSCommandDescriptionsVariantValue;
      v405[1] = kSRCSCommandDescriptionsSectionDescValue;
      v404[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v405[2] = kSRCSCommandDescriptionsSectionDescValue;
      v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v405 forKeys:v404 count:3];
      v106 = [v104 initWithString:string2 attributes:v105];

      [v9 appendAttributedString:v106];
      v22 = 0x277CCA000uLL;

      v84 = 0x277CCA000uLL;
    }
  }

  v347 = 0u;
  v348 = 0u;
  v345 = 0u;
  v346 = 0u;
  v402[0] = kSRCSCommandParameterModifierKeys[0];
  v402[1] = kSRCSCommandParameterKeyboardKeyName[0];
  v307 = [MEMORY[0x277CBEA60] arrayWithObjects:v402 count:2];
  v107 = [v307 countByEnumeratingWithState:&v345 objects:v403 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v346;
    v299 = *v346;
    do
    {
      for (ii = 0; ii != v108; ++ii)
      {
        if (*v346 != v109)
        {
          objc_enumerationMutation(v307);
        }

        v111 = *(*(&v345 + 1) + 8 * ii);
        if ([v269 containsObject:v111])
        {
          exampleParameterStringsTable = [v20 exampleParameterStringsTable];
          v113 = [exampleParameterStringsTable objectForKey:v111];

          if ([v113 count])
          {
            v114 = *(v84 + 3240);
            v115 = +[SRCSCommandStringsTable activeTargetTypes];
            v116 = [v281 descriptionStringForCommandIdentifier:v111 descriptionType:@"TITL" targetTypes:v115];
            [v114 stringWithFormat:@"%@\n", v116];
            v118 = v117 = v9;

            v119 = objc_alloc(MEMORY[0x277CCAB48]);
            if (v118)
            {
              v120 = v118;
            }

            else
            {
              v120 = &stru_287C0A5E8;
            }

            v400[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
            v400[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
            v401[0] = kSRCSCommandDescriptionsSectionTitleValue;
            v401[1] = kSRCSCommandDescriptionsSectionTitleValue;
            v400[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
            v401[2] = kSRCSCommandDescriptionsSectionTitleValue;
            v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v401 forKeys:v400 count:3];
            v122 = [v119 initWithString:v120 attributes:v121];

            [v117 appendAttributedString:v122];
            string3 = [MEMORY[0x277CCAB68] string];
            v341 = 0u;
            v342 = 0u;
            v343 = 0u;
            v344 = 0u;
            v124 = [v113 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
            v125 = [v124 countByEnumeratingWithState:&v341 objects:v399 count:16];
            if (v125)
            {
              v126 = v125;
              v127 = *v342;
              do
              {
                for (jj = 0; jj != v126; ++jj)
                {
                  if (*v342 != v127)
                  {
                    objc_enumerationMutation(v124);
                  }

                  [string3 appendFormat:v274, *(*(&v341 + 1) + 8 * jj)];
                }

                v126 = [v124 countByEnumeratingWithState:&v341 objects:v399 count:16];
              }

              while (v126);
            }

            v22 = 0x277CCA000uLL;
            v129 = objc_alloc(MEMORY[0x277CCAB48]);
            v26 = 0x2803FF000uLL;
            v397[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
            v397[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
            v398[0] = kSRCSCommandDescriptionsVariantValue;
            v398[1] = kSRCSCommandDescriptionsSectionDescValue;
            v397[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
            v398[2] = kSRCSCommandDescriptionsSectionDescValue;
            v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v398 forKeys:v397 count:3];
            v131 = [v129 initWithString:string3 attributes:v130];

            [v290 appendAttributedString:v131];
            v9 = v290;
            v84 = 0x277CCA000uLL;
            v109 = v299;
          }

          v20 = v281;
        }
      }

      v108 = [v307 countByEnumeratingWithState:&v345 objects:v403 count:16];
    }

    while (v108);
  }

  if (([v278 isEqualToString:@"Dictation.Streaming"] & 1) != 0 || (objc_msgSend(v278, "isEqualToString:", @"System.StartDictationMode") & 1) != 0 || (v133 = 0.0, objc_msgSend(v278, "isEqualToString:", @"System.StartSpellingMode")))
  {
    v134 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v135 = v285[1];
    v136 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v137 = [v134 dictionaryForLocaleIdentifier:v135 bundle:v136 subDirectory:@"LocalizedCommandDocumentation" rootFileName:@"EmbeddedCommands" rootFileExtension:@"plist"];

    if (v137)
    {
      v138 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v308 = [v138 localizedStringForKey:@"CommandDisplay.commandDisplayQuotedWithBulletFormatter" value:&stru_287C0A5E8 table:0];

      v339 = 0u;
      v340 = 0u;
      v337 = 0u;
      v338 = 0u;
      v259 = v137;
      v283 = [v137 objectForKey:kSRCSEmbeddedCommandsKeySections];
      v291 = [v283 countByEnumeratingWithState:&v337 objects:v396 count:16];
      if (v291)
      {
        v288 = *v338;
        v139 = 0.0;
        do
        {
          v140 = 0;
          do
          {
            if (*v338 != v288)
            {
              objc_enumerationMutation(v283);
            }

            allKeys = v140;
            v141 = *(*(&v337 + 1) + 8 * v140);
            array = [MEMORY[0x277CBEB18] array];
            v333 = 0u;
            v334 = 0u;
            v335 = 0u;
            v336 = 0u;
            v143 = [v141 objectForKey:kSRCSEmbeddedCommandsKeyItems];
            v144 = [v143 countByEnumeratingWithState:&v333 objects:v395 count:16];
            if (v144)
            {
              v145 = v144;
              v146 = *v334;
              do
              {
                for (kk = 0; kk != v145; ++kk)
                {
                  if (*v334 != v146)
                  {
                    objc_enumerationMutation(v143);
                  }

                  v148 = *(*(&v333 + 1) + 8 * kk);
                  v149 = [v148 objectForKey:kSRCSEmbeddedCommandsKeyMode];
                  if ([v149 isEqualToString:kSRCSEmbeddedCommandsModeAll])
                  {
                    goto LABEL_114;
                  }

                  v150 = [v278 isEqualToString:@"System.StartSpellingMode"];
                  v151 = &kSRCSEmbeddedCommandsModeSpellingOnly;
                  if (!v150)
                  {
                    v151 = &kSRCSEmbeddedCommandsModeDictationOnly;
                  }

                  if ([v149 isEqualToString:*v151])
                  {
LABEL_114:
                    [array addObject:v148];
                  }
                }

                v145 = [v143 countByEnumeratingWithState:&v333 objects:v395 count:16];
              }

              while (v145);
            }

            v331 = 0u;
            v332 = 0u;
            v329 = 0u;
            v330 = 0u;
            v300 = array;
            v152 = [v300 countByEnumeratingWithState:&v329 objects:v394 count:16];
            if (v152)
            {
              v153 = v152;
              v304 = *v330;
              do
              {
                for (mm = 0; mm != v153; ++mm)
                {
                  if (*v330 != v304)
                  {
                    objc_enumerationMutation(v300);
                  }

                  v155 = [*(*(&v329 + 1) + 8 * mm) objectForKey:kSRCSEmbeddedCommandsKeyCommandStrings];
                  v325 = 0u;
                  v326 = 0u;
                  v327 = 0u;
                  v328 = 0u;
                  v156 = v155;
                  v157 = [v156 countByEnumeratingWithState:&v325 objects:v393 count:16];
                  if (v157)
                  {
                    v158 = v157;
                    v159 = *v326;
                    do
                    {
                      for (nn = 0; nn != v158; ++nn)
                      {
                        if (*v326 != v159)
                        {
                          objc_enumerationMutation(v156);
                        }

                        v161 = [MEMORY[0x277CCACA8] stringWithFormat:v308, *(*(&v325 + 1) + 8 * nn)];
                        v162 = objc_alloc(MEMORY[0x277CCAB48]);
                        v391[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                        v391[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                        v392[0] = kSRCSCommandDescriptionsPuncCommentValue;
                        v392[1] = kSRCSCommandDescriptionsSectionDescValue;
                        v391[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                        v392[2] = kSRCSCommandDescriptionsSectionDescValue;
                        v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v392 forKeys:v391 count:3];
                        v164 = [v162 initWithString:v161 attributes:v163];

                        if (v296)
                        {
                          v165 = v296[2]();
                        }

                        else
                        {
                          v165 = 10.0;
                        }

                        if (v165 > v139)
                        {
                          v139 = v165;
                        }
                      }

                      v158 = [v156 countByEnumeratingWithState:&v325 objects:v393 count:16];
                    }

                    while (v158);
                  }
                }

                v153 = [v300 countByEnumeratingWithState:&v329 objects:v394 count:16];
              }

              while (v153);
            }

            v140 = (&allKeys->isa + 1);
            v22 = 0x277CCA000;
          }

          while (&allKeys->isa + 1 != v291);
          v291 = [v283 countByEnumeratingWithState:&v337 objects:v396 count:16];
        }

        while (v291);
        v133 = v139;
        v9 = v290;
        v20 = v281;
        v84 = 0x277CCA000;
        v26 = 0x2803FF000;
      }

      else
      {
        v133 = 0.0;
      }

      v166 = +[SRCSCommandStringsTable activeTargetTypes];
      v167 = [v20 descriptionStringForCommandIdentifier:@"Section.Punctuation" descriptionType:@"TITL" targetTypes:v166];

      v168 = objc_alloc(*(v22 + 2888));
      if (v167)
      {
        v167 = [*(v84 + 3240) stringWithFormat:@"%@\n", v167];
      }

      else
      {
        v167 = &stru_287C0A5E8;
      }

      v389[0] = *(v26 + 2632);
      v389[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v390[0] = kSRCSCommandDescriptionsSectionTitleValue;
      v390[1] = kSRCSCommandDescriptionsSectionTitleValue;
      v389[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v390[2] = kSRCSCommandDescriptionsSectionTitleValue;
      v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v390 forKeys:v389 count:3];
      v258 = [v168 initWithString:v167 attributes:v170];

      if (v167)
      {
      }

      [v9 appendAttributedString:v258];
      if ([v278 isEqualToString:@"System.StartSpellingMode"])
      {
        v171 = @"DSC2";
      }

      else
      {
        v171 = @"DESC";
      }

      v172 = +[SRCSCommandStringsTable activeTargetTypes];
      v173 = [v20 descriptionStringForCommandIdentifier:@"Section.Punctuation" descriptionType:v171 targetTypes:v172];

      v174 = objc_alloc(*(v22 + 2888));
      if (v173)
      {
        v173 = [*(v84 + 3240) stringWithFormat:@"%@\n", v173];
      }

      else
      {
        v173 = &stru_287C0A5E8;
      }

      v257 = v167;
      v387[0] = *(v26 + 2632);
      v387[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
      v388[0] = kSRCSCommandDescriptionsSectionDescValue;
      v388[1] = kSRCSCommandDescriptionsSectionDescValue;
      v387[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
      v388[2] = kSRCSCommandDescriptionsSectionDescValue;
      v176 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v388 forKeys:v387 count:3];
      v177 = [v174 initWithString:v173 attributes:v176];

      v256 = v173;
      if (v173)
      {
      }

      v255 = v177;
      [v9 appendAttributedString:v177];
      v178 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v280 = [v178 localizedStringForKey:@"CommandDisplay.commandDisplayHortLine" value:&stru_287C0A5E8 table:0];

      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v264 = [v259 objectForKey:kSRCSEmbeddedCommandsKeySections];
      v267 = [v264 countByEnumeratingWithState:&v321 objects:v386 count:16];
      if (v267)
      {
        v266 = *v322;
        do
        {
          v179 = 0;
          do
          {
            if (*v322 != v266)
            {
              objc_enumerationMutation(v264);
            }

            v270 = v179;
            v180 = *(*(&v321 + 1) + 8 * v179);
            array2 = [MEMORY[0x277CBEB18] array];
            v317 = 0u;
            v318 = 0u;
            v319 = 0u;
            v320 = 0u;
            v272 = v180;
            v182 = [v180 objectForKey:kSRCSEmbeddedCommandsKeyItems];
            v183 = [v182 countByEnumeratingWithState:&v317 objects:v385 count:16];
            if (v183)
            {
              v184 = v183;
              v185 = *v318;
              do
              {
                for (i1 = 0; i1 != v184; ++i1)
                {
                  if (*v318 != v185)
                  {
                    objc_enumerationMutation(v182);
                  }

                  v187 = *(*(&v317 + 1) + 8 * i1);
                  v188 = [v187 objectForKey:kSRCSEmbeddedCommandsKeyMode];
                  if ([v188 isEqualToString:kSRCSEmbeddedCommandsModeAll])
                  {
                    goto LABEL_168;
                  }

                  v189 = [v278 isEqualToString:@"System.StartSpellingMode"];
                  v190 = &kSRCSEmbeddedCommandsModeSpellingOnly;
                  if (!v189)
                  {
                    v190 = &kSRCSEmbeddedCommandsModeDictationOnly;
                  }

                  if ([v188 isEqualToString:*v190])
                  {
LABEL_168:
                    [array2 addObject:v187];
                  }
                }

                v184 = [v182 countByEnumeratingWithState:&v317 objects:v385 count:16];
              }

              while (v184);
            }

            v191 = [array2 count];
            v313 = 0u;
            v314 = 0u;
            v315 = 0u;
            v316 = 0u;
            v273 = array2;
            v279 = [v273 countByEnumeratingWithState:&v313 objects:v384 count:16];
            if (v279)
            {
              v192 = 0;
              v193 = 0;
              v276 = *v314;
              v277 = v191 - 1;
              v194 = 0x277CCA000uLL;
              do
              {
                v195 = 0;
                do
                {
                  if (*v314 != v276)
                  {
                    v196 = v195;
                    objc_enumerationMutation(v273);
                    v195 = v196;
                  }

                  v284 = v195;
                  v286 = v192;
                  v305 = *(*(&v313 + 1) + 8 * v195);
                  if ((v193 & 1) == 0)
                  {
                    v197 = *(v84 + 3240);
                    v198 = [v272 objectForKey:kSRCSEmbeddedCommandsKeyTitle];
                    v198 = [v197 stringWithFormat:@"PunctuationGroup.%@", v198];
                    v200 = +[SRCSCommandStringsTable activeTargetTypes];
                    v201 = [v20 descriptionStringForCommandIdentifier:v198 descriptionType:@"TITL" targetTypes:v200];

                    v202 = objc_alloc(*(v194 + 2888));
                    if (v201)
                    {
                      v201 = [*(v84 + 3240) stringWithFormat:@"%@\n", v201];
                      v275 = v201;
                    }

                    else
                    {
                      v201 = &stru_287C0A5E8;
                    }

                    v382[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                    v382[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                    v383[0] = kSRCSCommandDescriptionsSectionSubTitleValue;
                    v383[1] = kSRCSCommandDescriptionsSectionSubTitleValue;
                    v382[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                    v383[2] = kSRCSCommandDescriptionsSectionSubTitleValue;
                    v204 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v383 forKeys:v382 count:3];
                    v205 = [v202 initWithString:v201 attributes:v204];

                    if (v201)
                    {
                    }

                    [v9 appendAttributedString:v205];
                    v206 = objc_alloc(*(v194 + 2888));
                    v280 = [*(v84 + 3240) stringWithFormat:@"%@\n", v280];
                    v380[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                    v380[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                    v381[0] = kSRCSCommandDescriptionsPuncDividerValue;
                    v381[1] = kSRCSCommandDescriptionsPuncDividerValue;
                    v380[2] = kSRCSCommandDescriptionsStrikethroughColorPlaceholderAttributeName;
                    v380[3] = kSRCSCommandDescriptionsStrikethroughStylePlaceholderAttributeName;
                    v381[2] = kSRCSCommandDescriptionsSectionDescValue;
                    v381[3] = kSRCSCommandDescriptionsSectionDescValue;
                    v208 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v381 forKeys:v380 count:4];
                    v209 = [v206 initWithString:v280 attributes:v208];

                    [v9 appendAttributedString:v209];
                    v292 = v205;
                    v210 = +[SRCSCommandStringsTable activeTargetTypes];
                    v211 = [v281 descriptionStringForCommandIdentifier:@"PunctuationColumnHeader.Phrase" descriptionType:@"TITL" targetTypes:v210];

                    v212 = +[SRCSCommandStringsTable activeTargetTypes];
                    v213 = [v281 descriptionStringForCommandIdentifier:@"PunctuationColumnHeader.Result" descriptionType:@"TITL" targetTypes:v212];

                    v214 = objc_alloc(*(v194 + 2888));
                    v213 = [*(v84 + 3240) stringWithFormat:@"%@\t%@\n", v211, v213];
                    v378[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                    v378[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                    v379[0] = kSRCSCommandDescriptionsHeaderValue;
                    v379[1] = kSRCSCommandDescriptionsSectionDescValue;
                    v378[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                    v379[2] = kSRCSCommandDescriptionsSectionDescValue;
                    v216 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v379 forKeys:v378 count:3];
                    v217 = [v214 initWithString:v213 attributes:v216];

                    v194 = 0x277CCA000uLL;
                    [v9 appendAttributedString:v217];
                    [v9 appendAttributedString:v209];
                  }

                  v218 = [v305 objectForKey:kSRCSEmbeddedCommandsKeyCommandStrings];
                  v309 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                  v312 = 0u;
                  v293 = v218;
                  v219 = [v293 countByEnumeratingWithState:&v309 objects:v377 count:16];
                  if (v219)
                  {
                    v220 = v219;
                    v221 = 0;
                    v301 = *v310;
                    do
                    {
                      v222 = 0;
                      v289 = v221;
                      v223 = -v221;
                      do
                      {
                        if (*v310 != v301)
                        {
                          objc_enumerationMutation(v293);
                        }

                        v224 = [*(v84 + 3240) stringWithFormat:v308, *(*(&v309 + 1) + 8 * v222)];
                        v225 = objc_alloc(*(v194 + 2888));
                        v226 = *(v84 + 3240);
                        v227 = &stru_287C0A5E8;
                        if (v223 == v222)
                        {
                          allKeys = [v305 objectForKey:kSRCSEmbeddedCommandsKeyResult];
                          v227 = allKeys;
                        }

                        v227 = [v226 stringWithFormat:@"%@\t%@", v224, v227];
                        v375[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                        v375[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                        v376[0] = kSRCSCommandDescriptionsItemValue;
                        v376[1] = kSRCSCommandDescriptionsSectionDescValue;
                        v375[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                        v376[2] = kSRCSCommandDescriptionsSectionDescValue;
                        v229 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v376 forKeys:v375 count:3];
                        v230 = [v225 initWithString:v227 attributes:v229];

                        if (v223 != v222)
                        {
                          [v9 appendAttributedString:v230];
                          v84 = 0x277CCA000uLL;
LABEL_197:
                          v241 = objc_alloc(*(v194 + 2888));
                          v371[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                          v371[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                          v372[0] = kSRCSCommandDescriptionsItemValue;
                          v372[1] = kSRCSCommandDescriptionsSectionDescValue;
                          v371[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                          v372[2] = kSRCSCommandDescriptionsSectionDescValue;
                          v235 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v372 forKeys:v371 count:3];
                          v240 = [v241 initWithString:@"\n" attributes:v235];
                          goto LABEL_198;
                        }

                        [v9 appendAttributedString:v230];
                        v231 = [v305 objectForKey:kSRCSEmbeddedCommandsKeyComment];
                        v232 = [v231 length];

                        v84 = 0x277CCA000;
                        if (!v232)
                        {
                          goto LABEL_197;
                        }

                        v233 = objc_alloc(*(v194 + 2888));
                        v234 = MEMORY[0x277CCACA8];
                        v235 = [v305 objectForKey:kSRCSEmbeddedCommandsKeyResult];
                        if ([v235 length])
                        {
                          v236 = @"  ";
                        }

                        else
                        {
                          v236 = &stru_287C0A5E8;
                        }

                        v237 = [v305 objectForKey:kSRCSEmbeddedCommandsKeyComment];
                        v237 = [v234 stringWithFormat:@"%@%@\n", v236, v237];
                        v373[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                        v373[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                        v374[0] = kSRCSCommandDescriptionsItemValue;
                        v374[1] = kSRCSCommandDescriptionsPuncCommentValue;
                        v373[2] = kSRCSCommandDescriptionsColorPlaceholderAttributeName;
                        v374[2] = kSRCSCommandDescriptionsPuncCommentValue;
                        v239 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v374 forKeys:v373 count:3];
                        v240 = [v233 initWithString:v237 attributes:v239];

                        v194 = 0x277CCA000;
                        v84 = 0x277CCA000;

                        v9 = v290;
LABEL_198:

                        [v9 appendAttributedString:v240];
                        ++v222;
                      }

                      while (v220 != v222);
                      v221 = v289 + v220;
                      v220 = [v293 countByEnumeratingWithState:&v309 objects:v377 count:16];
                    }

                    while (v220);
                  }

                  v242 = objc_alloc(*(v194 + 2888));
                  v243 = &stru_287C0A5E8;
                  if (v286 < v277)
                  {
                    v243 = v280;
                  }

                  v243 = [*(v84 + 3240) stringWithFormat:@"%@\n", v243];
                  v369[0] = kSRCSCommandDescriptionsParagraphPlaceholderAttributeName;
                  v369[1] = kSRCSCommandDescriptionsFontPlaceholderAttributeName;
                  v370[0] = kSRCSCommandDescriptionsPuncDividerValue;
                  v370[1] = kSRCSCommandDescriptionsPuncDividerValue;
                  v369[2] = kSRCSCommandDescriptionsStrikethroughColorPlaceholderAttributeName;
                  v369[3] = kSRCSCommandDescriptionsStrikethroughStylePlaceholderAttributeName;
                  v370[2] = kSRCSCommandDescriptionsPuncDividerValue;
                  v370[3] = kSRCSCommandDescriptionsPuncDividerValue;
                  v245 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v370 forKeys:v369 count:4];
                  v246 = [v242 initWithString:v243 attributes:v245];

                  [v9 appendAttributedString:v246];
                  v192 = v286 + 1;

                  v20 = v281;
                  v195 = v284 + 1;
                  v193 = 1;
                }

                while (v284 + 1 != v279);
                v279 = [v273 countByEnumeratingWithState:&v313 objects:v384 count:16];
              }

              while (v279);
            }

            v179 = v270 + 1;
          }

          while (v270 + 1 != v267);
          v267 = [v264 countByEnumeratingWithState:&v321 objects:v386 count:16];
        }

        while (v267);
      }

      v137 = v259;
    }

    else
    {
      v133 = 0.0;
    }
  }

  v247 = kSRCSCommandDescriptionsMaxParameterLengthPlaceholderAttributeName;
  *&v132 = v68;
  v248 = [MEMORY[0x277CCABB0] numberWithFloat:v132];
  [v9 addAttribute:v247 value:v248 range:{0, objc_msgSend(v9, "length")}];

  v249 = kSRCSCommandDescriptionsMaxEmbeddedCommandLengthPlaceholderAttributeName;
  *&v250 = v133;
  v251 = [MEMORY[0x277CCABB0] numberWithFloat:v250];
  [v9 addAttribute:v249 value:v251 range:{0, objc_msgSend(v9, "length")}];

  v252 = v9;
  v253 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_exampleStringPermutationsFromCommandIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SRCSCommandStringsTable activeTargetTypes];
  v12 = 0;
  v6 = [(SRCSCommandStringsTable *)self languageModelDictionaryForCommandIdentifier:identifierCopy targetTypes:v5 parsingErrorString:&v12];

  v7 = v12;
  v8 = [v7 length];

  v9 = 0;
  if (!v8)
  {
    exampleParameterStringsTable = [(SRCSCommandStringsTable *)self exampleParameterStringsTable];
    v9 = [(SRCSCommandStringsTable *)self spokenStringPermutationsOfLanguageModelDictionary:v6 stringsTable:exampleParameterStringsTable restrictPermutationsToShortestAndLongest:0];
  }

  return v9;
}

- (id)_descriptionTypeForParameterIdentifier:(id)identifier commandIdentifier:(id)commandIdentifier
{
  identifierCopy = identifier;
  commandIdentifierCopy = commandIdentifier;
  if (_descriptionTypeForParameterIdentifier_commandIdentifier__staticAlternateParameterDescriptionTypeTableSetUp != -1)
  {
    [SRCSCommandStringsTable _descriptionTypeForParameterIdentifier:commandIdentifier:];
  }

  localeIdentifier = self->_localeIdentifier;
  if (RXEngineTypeForLocaleIdentifier() != 1 && (([identifierCopy isEqualToString:@"BuiltInLM.TextSegmentCardinalNumber"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"BuiltInLM.ScreenDistanceCardinalNumber") & 1) != 0) || objc_msgSend(identifierCopy, "hasPrefix:", @"BuiltInLM.Dictation") && +[SRCSCommandStringsTable isLocaleIdentifier:containedInLocaleIdentifiers:](SRCSCommandStringsTable, "isLocaleIdentifier:containedInLocaleIdentifiers:", self->_localeIdentifier, RXLocalesSupportingSpellingMode()))
  {
    v11 = @"DSC2";
  }

  else
  {
    v9 = [_descriptionTypeForParameterIdentifier_commandIdentifier__sAlternateParameterDescriptionTypeTable objectForKey:identifierCopy];
    v10 = [v9 containsObject:commandIdentifierCopy];

    if (v10)
    {
      v11 = @"DSC2";
    }

    else
    {
      v11 = @"DESC";
    }
  }

  return v11;
}

void __84__SRCSCommandStringsTable__descriptionTypeForParameterIdentifier_commandIdentifier___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _descriptionTypeForParameterIdentifier_commandIdentifier__sAlternateParameterDescriptionTypeTable;
  _descriptionTypeForParameterIdentifier_commandIdentifier__sAlternateParameterDescriptionTypeTable = v0;

  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"System.OverlayIncrementLabel", @"System.OverlayIncrementLabelUsingCardinalNumber", @"System.OverlayDecrementLabel", @"System.OverlayDecrementLabelUsingCardinalNumber", @"System.OverlaySetValueByPercentAtLabel", @"System.OverlayShowActionsForLabel", @"System.OverlayShowContextualMenuAtLabel", 0}];
  [_descriptionTypeForParameterIdentifier_commandIdentifier__sAlternateParameterDescriptionTypeTable setObject:v2 forKey:kSRCSCommandParameterOverlayLabel[0]];
}

- (id)parameterIdentifiersFromCommandIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SRCSCommandStringsTable activeTargetTypes];
  v10 = 0;
  v6 = [(SRCSCommandStringsTable *)self languageModelDictionaryForCommandIdentifier:identifierCopy targetTypes:v5 parsingErrorString:&v10];

  v7 = [(SRCSCommandStringsTable *)self setOfBuiltInIdentifiersFromLanguageModelDictionary:v6];
  allObjects = [v7 allObjects];

  return allObjects;
}

- (void)resolveReferencesInMutableAttributedString:(id)string stringsTable:(id)table
{
  selfCopy = self;
  v47[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  tableCopy = table;
  string = [stringCopy string];
  v8 = [string rangeOfString:@"{"];
  v10 = v9;

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = tableCopy;
    do
    {
      v11 = v8 + v10;
      string2 = [stringCopy string];
      v13 = [string2 rangeOfString:@"}" options:0 range:{v8 + v10, objc_msgSend(stringCopy, "length") - (v8 + v10)}];
      v15 = v14;

      string3 = [stringCopy string];
      v17 = [string3 substringWithRange:{v11, v13 - v11}];

      if ([v17 hasPrefix:@"BuiltInLM."])
      {
        v18 = [tableCopy objectForKey:v17];

        if (v18)
        {
          v19 = objc_alloc(MEMORY[0x277CCAB48]);
          v20 = [tableCopy objectForKey:v17];
          v21 = [SRCSCommandStringsTable formattedBuiltInCommandString:v20];
          v18 = [v19 initWithString:v21];

          tableCopy = v44;
        }
      }

      else
      {
        v18 = 0;
      }

      if ([v17 hasPrefix:@"CommonSection."])
      {
        v22 = objc_alloc(MEMORY[0x277CCAB48]);
        v23 = +[SRCSCommandStringsTable activeTargetTypes];
        v24 = [(SRCSCommandStringsTable *)selfCopy descriptionStringForCommandIdentifier:v17 descriptionType:@"DESC" targetTypes:v23];
        v25 = [v22 initWithString:v24];

        tableCopy = v44;
        [(SRCSCommandStringsTable *)selfCopy resolveReferencesInMutableAttributedString:v25 stringsTable:v44];
        v18 = v25;
      }

      if ([v17 hasPrefix:@"RemoteURLRef."])
      {
        v26 = +[SRCSCommandStringsTable activeTargetTypes];
        v27 = [(SRCSCommandStringsTable *)selfCopy descriptionStringForCommandIdentifier:v17 descriptionType:@"URLD" targetTypes:v26];

        v28 = +[SRCSCommandStringsTable activeTargetTypes];
        v29 = [(SRCSCommandStringsTable *)selfCopy descriptionStringForCommandIdentifier:v17 descriptionType:@"URLS" targetTypes:v28];

        if ([v27 length] && objc_msgSend(v29, "length"))
        {
          v30 = objc_alloc(MEMORY[0x277CCAB48]);
          v46 = @"NSLink";
          v47[0] = v29;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
          v32 = [v30 initWithString:v27 attributes:v31];

          v18 = v32;
        }

        tableCopy = v44;
      }

      if (v18)
      {
        goto LABEL_22;
      }

      v33 = +[SRCSCommandStringsTable activeTargetTypes];
      v45 = 0;
      v34 = [(SRCSCommandStringsTable *)selfCopy languageModelDictionaryForCommandIdentifier:v17 targetTypes:v33 parsingErrorString:&v45];
      v35 = v45;

      v36 = [v35 length];
      if (v36)
      {
      }

      else
      {
        v37 = [(SRCSCommandStringsTable *)selfCopy spokenStringPermutationsOfLanguageModelDictionary:v34 stringsTable:tableCopy restrictPermutationsToShortestAndLongest:1];
        if ([v37 count])
        {
          v38 = objc_alloc(MEMORY[0x277CCAB48]);
          firstObject = [v37 firstObject];
          v18 = [v38 initWithString:firstObject];
        }

        else
        {
          v18 = 0;
        }

        tableCopy = v44;
        if (v18)
        {
          goto LABEL_22;
        }
      }

      v18 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:@"<unknown>"];
LABEL_22:
      [stringCopy replaceCharactersInRange:v8 withAttributedString:{v15 - v8 + v13, v18}];

      string4 = [stringCopy string];
      v8 = [string4 rangeOfString:@"{"];
      v10 = v41;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v42 = *MEMORY[0x277D85DE8];
}

+ (NSString)deviceName
{
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_287C0A5E8;
  }

  v5 = v4;

  return &v4->isa;
}

- (id)rowDataForTargetTypes:(id)types
{
  v104 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v66 = typesCopy;
  if ([typesCopy containsObject:kSRCSCommandTargetTypeOSX])
  {
    mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
    v7 = [mEMORY[0x277D79890] bestSupportedLocaleFor:self->_localeIdentifier];

    mEMORY[0x277D79890]2 = [MEMORY[0x277D79890] shared];
    localeIdentifier = [v7 localeIdentifier];
    v10 = [mEMORY[0x277D79890]2 engineForLocale:localeIdentifier];

    if ([v10 isEqualToString:@"s2"])
    {
      +[VCCommandObjC allCommandIdentifiersForMacLegacyDevice];
    }

    else
    {
      +[VCCommandObjC allCommandIdentifiersForMacQuasarDevice];
    }
    v11 = ;
    [v5 addObjectsFromArray:v11];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypeiPhone])
  {
    v12 = +[VCCommandObjC allCommandIdentifiersForIPhoneDevice];
    [v5 addObjectsFromArray:v12];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypeCarPlay])
  {
    v13 = +[VCCommandObjC allCommandIdentifiersForCarPlayDevice];
    [v5 addObjectsFromArray:v13];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypeiPad])
  {
    v14 = +[VCCommandObjC allCommandIdentifiersForIPadDevice];
    [v5 addObjectsFromArray:v14];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypeRealityDevice])
  {
    v15 = +[VCCommandObjC allCommandIdentifiersForVisionDevice];
    [v5 addObjectsFromArray:v15];
  }

  if ([typesCopy containsObject:kSRCSCommandTargetTypetvOS])
  {
    v16 = +[VCCommandObjC allCommandIdentifiersForIPodDevice];
    [v5 addObjectsFromArray:v16];
  }

  v71 = v5;
  _commandStringsTable = [(SRCSCommandStringsTable *)self _commandStringsTable];
  allKeys = [_commandStringsTable allKeys];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __49__SRCSCommandStringsTable_rowDataForTargetTypes___block_invoke;
  v99[3] = &unk_279CF54B8;
  v99[4] = self;
  v19 = [allKeys sortedArrayUsingComparator:v99];

  v65 = objc_opt_new();
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v96;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v96 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v95 + 1) + 8 * i);
        v94 = 0;
        v25 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:v24 foundTargetType:&v94];
        v26 = v94;
        if (v26 && [typesCopy containsObject:v26])
        {
          [v65 setObject:v24 forKeyedSubscript:v25];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v21);
  }

  v73 = 1;
  v27 = v71;
  do
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    allValues = [v65 allValues];
    v29 = [allValues sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v30 = [v29 countByEnumeratingWithState:&v90 objects:v102 count:16];
    if (!v30)
    {
      goto LABEL_74;
    }

    v31 = v30;
    v32 = *v91;
    v74 = v29;
    v70 = *v91;
    do
    {
      v33 = 0;
      v72 = v31;
      do
      {
        if (*v91 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v90 + 1) + 8 * v33);
        if (![typesCopy count])
        {
          v35 = v34;
          v36 = 0;
          goto LABEL_72;
        }

        v89 = 0;
        v35 = [(SRCSCommandStringsTable *)self _rootCommandIdentifierFrom:v34 foundTargetType:&v89];
        v36 = v89;
        if (v36 && [v27 containsObject:v35] && objc_msgSend(typesCopy, "containsObject:", v36))
        {
          v76 = v36;
          [MEMORY[0x277CCAB68] string];
          v38 = v37 = v35;
          array2 = [MEMORY[0x277CBEA60] array];
          v88 = 0;
          v78 = v37;
          v40 = typesCopy;
          v41 = [(SRCSCommandStringsTable *)self languageModelDictionaryForCommandIdentifier:v37 targetTypes:typesCopy parsingErrorString:&v88];
          v42 = v88;
          if ([v42 length])
          {
            [v38 appendString:v42];
          }

          v75 = v42;
          v77 = v41;
          if ([v38 length])
          {
            v36 = v76;
            typesCopy = v40;
            v29 = v74;
          }

          else
          {
            v43 = [(SRCSCommandStringsTable *)self spokenStringPermutationsOfLanguageModelDictionary:v41 stringsTable:0];

            typesCopy = v40;
            v69 = v43;
            if (v73 == 1)
            {
              v86 = 0uLL;
              v87 = 0uLL;
              v84 = 0uLL;
              v85 = 0uLL;
              v44 = v43;
              v45 = [v44 countByEnumeratingWithState:&v84 objects:v101 count:16];
              if (v45)
              {
                v46 = v45;
                v47 = *v85;
                do
                {
                  for (j = 0; j != v46; ++j)
                  {
                    if (*v85 != v47)
                    {
                      objc_enumerationMutation(v44);
                    }

                    lowercaseString = [*(*(&v84 + 1) + 8 * j) lowercaseString];
                    array3 = [v4 objectForKey:lowercaseString];
                    if (!array3)
                    {
                      array3 = [MEMORY[0x277CBEB18] array];
                      [v4 setObject:array3 forKey:lowercaseString];
                    }

                    [array3 addObject:v34];
                  }

                  v46 = [v44 countByEnumeratingWithState:&v84 objects:v101 count:16];
                }

                while (v46);
                typesCopy = v66;
                v29 = v74;
                v32 = v70;
                v31 = v72;
                v36 = v76;
              }

              else
              {
                v31 = v72;
                v36 = v76;
                v29 = v74;
              }
            }

            else
            {
              v82 = 0uLL;
              v83 = 0uLL;
              v80 = 0uLL;
              v81 = 0uLL;
              array2 = v43;
              v51 = [array2 countByEnumeratingWithState:&v80 objects:v100 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = *v81;
                do
                {
                  for (k = 0; k != v52; ++k)
                  {
                    if (*v81 != v53)
                    {
                      objc_enumerationMutation(array2);
                    }

                    v55 = [(SRCSCommandStringsTable *)self warningStringForText:*(*(&v80 + 1) + 8 * k) identifier:v34 textTable:v4];
                    if ([v55 length] && (objc_msgSend(v38, "isEqualToString:", v55) & 1) == 0)
                    {
                      if ([v38 length])
                      {
                        [v38 appendString:@"  "];
                      }

                      [v38 appendString:v55];
                    }
                  }

                  v52 = [array2 countByEnumeratingWithState:&v80 objects:v100 count:16];
                }

                while (v52);
              }

              v29 = v74;
              v32 = v70;
              v31 = v72;
              v36 = v76;
              if ([v38 length])
              {
                goto LABEL_69;
              }

              v44 = [(SRCSCommandStringsTable *)self _warningsOfIncorrectTokenizationAcrossSegmentBoundariesInLanguageModelDictionary:v77 stringsTable:0];
              if ([v44 count])
              {
                v56 = MEMORY[0x277CCACA8];
                v57 = [v44 componentsJoinedByString:@" "];;
                v58 = [v56 stringWithFormat:@"Optional phrase crosses word boundary, see: %@.  Optional phrases must contain entire words, not just characters to be prepended to the following word or appended to the preceding word. Fix by expanding the optional phrases as additional variants separated by the '|' symbol.", v57];
                [v38 appendString:v58];

                v31 = v72;
                v32 = v70;
              }
            }

            array2 = v69;
          }

LABEL_69:
          if (v73 == 2)
          {
            v59 = MEMORY[0x277CBEB38];
            _commandStringsTable2 = [(SRCSCommandStringsTable *)self _commandStringsTable];
            v61 = [_commandStringsTable2 objectForKey:v34];
            v62 = [v59 dictionaryWithObjectsAndKeys:{v78, @"Identifier", v61, @"Text", v34, @"DatabaseKey", v36, @"TargetType", array2, @"Permutations", v38, @"Warning", 0}];
            [array addObject:v62];

            v31 = v72;
            v29 = v74;

            v32 = v70;
          }

          v35 = v78;
          v27 = v71;
        }

LABEL_72:

        ++v33;
      }

      while (v33 != v31);
      v31 = [v29 countByEnumeratingWithState:&v90 objects:v102 count:16];
    }

    while (v31);
LABEL_74:

    ++v73;
  }

  while (v73 != 3);

  v63 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __49__SRCSCommandStringsTable_rowDataForTargetTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[9] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22[0] = kSRCSCommandTargetTypeNone;
  v22[1] = kSRCSCommandTargetTypeOSX;
  v22[2] = kSRCSCommandTargetTypeiOS;
  v22[3] = kSRCSCommandTargetTypewatchOS;
  v22[4] = kSRCSCommandTargetTypeiPad;
  v22[5] = kSRCSCommandTargetTypeiPhone;
  v22[6] = kSRCSCommandTargetTypeCarPlay;
  v22[7] = kSRCSCommandTargetTypeRealityDevice;
  v22[8] = kSRCSCommandTargetTypetvOS;
  v6 = MEMORY[0x277CBEA60];
  v7 = a2;
  v8 = [v6 arrayWithObjects:v22 count:9];
  v9 = *(a1 + 32);
  v21 = 0;
  v10 = [v9 _rootCommandIdentifierFrom:v7 foundTargetType:&v21];

  v11 = v21;
  if (v11)
  {
    v12 = [v8 indexOfObject:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  v20 = 0;
  v14 = [v13 _rootCommandIdentifierFrom:v5 foundTargetType:&v20];
  v15 = v20;
  if (v15)
  {
    v16 = [v8 indexOfObject:v15];
  }

  else
  {
    v16 = 0;
  }

  if ([v10 isEqualToString:v14])
  {
    if (v12 >= v16)
    {
      v17 = v12 > v16;
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    v17 = [v10 caseInsensitiveCompare:v14];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)warningStringForText:(id)text identifier:(id)identifier textTable:(id)table
{
  textCopy = text;
  identifierCopy = identifier;
  tableCopy = table;
  lowercaseString = [textCopy lowercaseString];
  v11 = [tableCopy objectForKey:lowercaseString];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v11];
  }

  else
  {
    v12 = 0;
  }

  if ([textCopy length] && objc_msgSend(v11, "count") >= 2)
  {
    v13 = [v12 countForObject:identifierCopy];
    v14 = MEMORY[0x277CCACA8];
    if (v13 < 2)
    {
      v16 = [v11 componentsJoinedByString:{@", "}];
      identifierCopy = [v14 stringWithFormat:@"Redundant permutation (\"%@\"", textCopy, v16];

      if (identifierCopy)
      {
        goto LABEL_28;
      }
    }

    else
    {
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Redundant permutation (\"%@\"", textCopy, identifierCopy];
      if (identifierCopy)
      {
        goto LABEL_28;
      }
    }
  }

  if ([textCopy length] || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Empty permutation found in %@. Check if any optional phrases causes a permutation to be reduced to an empty string.", identifierCopy), (textCopy = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([textCopy length] && objc_msgSend(textCopy, "rangeOfString:", @"(") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(textCopy, "rangeOfString:", @"")) != 0x7FFFFFFFFFFFFFFFLL)
    {
      identifierCopy = @"Alternative words cannot be indicated using parentheses. Please use two separate command strings, adding another command string entry if necessary.";
      goto LABEL_28;
    }

    v17 = [textCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_287C0A5E8];
    if ([v17 rangeOfString:@"{BuiltInLM.NumberTwoThroughNinetyNine}{BuiltInLM.NumberTwoThroughNinetyNine.2}"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v17, "rangeOfString:", @"{BuiltInLM.KeyboardKeyName}{BuiltInLM.NumberTwoThroughNinetyNine}") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v17, "rangeOfString:", @"{BuiltInLM.OverlayLabel}{BuiltInLM.NumberTwoThroughNinetyNine}") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v17, "rangeOfString:", @"{BuiltInLM.OverlayLabel}{BuiltInLM.NumberZeroThroughOneHundred}") == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Two numbered parameters appear consecutively without an intervening word or phrase which may cause the following permutation to fail: %@", textCopy];

      if (identifierCopy)
      {
        goto LABEL_28;
      }
    }

    if (![textCopy length] || objc_msgSend(textCopy, "rangeOfString:", @"’") == 0x7FFFFFFFFFFFFFFFLL)
    {
      identifierCopy = 0;
      goto LABEL_28;
    }

    textCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Instead of using right single quotation mark (’)(U+2019) in translations e.g. in %@, please use apostrophe(')(U+0027).", textCopy];
  }

  identifierCopy = textCopy;
LABEL_28:
  if (identifierCopy)
  {
    v19 = identifierCopy;
  }

  else
  {
    v19 = &stru_287C0A5E8;
  }

  v20 = v19;

  return v19;
}

- (id)_commandStringsDictionaryForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SRCSCommandStringsTable commandStringsLoader];

  if (v4)
  {
    v5 = [SRCSCommandStringsTable componentsFromLocaleIdentifier:identifierCopy];
    v6 = [v5 objectForKey:*MEMORY[0x277CBE6C8]];

    if ([(__CFString *)v6 isEqualToString:@"nb"])
    {

      v6 = @"no";
    }

    v7 = +[SRCSCommandStringsTable commandStringsLoader];
    v8 = (v7)[2](v7, identifierCopy, v6);
  }

  else
  {
    v6 = +[SRCSSpokenCommandUtilities sharedSpokenCommandUtilities];
    v8 = [(__CFString *)v6 dictionaryForLocaleIdentifier:identifierCopy resourceFileName:@"CommandStrings" resourceFileExtension:@"strings"];
  }

  return v8;
}

+ (id)commandStringsLoader
{
  v2 = _Block_copy(sCommandStringsLoader);

  return v2;
}

+ (void)setCommandStringsLoader:(id)loader
{
  sCommandStringsLoader = _Block_copy(loader);

  MEMORY[0x2821F96F8]();
}

+ (id)formattedBuiltInCommandString:(id)string
{
  if (string)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = MEMORY[0x277CCA8D8];
    stringCopy = string;
    v6 = [v4 bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CommandParameter.GenericFormatString" value:&stru_287C0A5E8 table:0];
    stringCopy = [v3 stringWithFormat:v7, stringCopy];
  }

  else
  {
    stringCopy = 0;
  }

  return stringCopy;
}

@end