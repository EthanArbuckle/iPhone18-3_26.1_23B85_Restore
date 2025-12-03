@interface SRCSCommandRecognitionSystem
- (SRCSCommandRecognitionSystem)initWithLocaleIdentifier:(id)identifier;
- (id)languageModelTreeForBuiltInLMIdentifier:(id)identifier;
- (id)spokenCommandFromRecognizedAFSpeechPhrases:(id)phrases;
- (id)spokenCommandFromRecognizedEARTokenSausage:(__CFArray *)sausage;
- (void)_initalizeLanguageModelTree;
- (void)_testWithPhrases:(id)phrases;
@end

@implementation SRCSCommandRecognitionSystem

- (SRCSCommandRecognitionSystem)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SRCSCommandRecognitionSystem;
  v6 = [(SRCSCommandRecognitionSystem *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_new();
    recognizers = v6->_recognizers;
    v6->_recognizers = v7;

    objc_storeStrong(&v6->_localeIdentifier, identifier);
    v9 = +[SRCSCommandStringsTable activeTargetTypes];
    targetTypes = v6->_targetTypes;
    v6->_targetTypes = v9;

    v11 = objc_opt_new();
    resolvedBuiltInIdentifiers = v6->_resolvedBuiltInIdentifiers;
    v6->_resolvedBuiltInIdentifiers = v11;

    [(SRCSCommandRecognitionSystem *)v6 _initalizeLanguageModelTree];
    if (initWithLocaleIdentifier__staticInitialization != -1)
    {
      [SRCSCommandRecognitionSystem initWithLocaleIdentifier:];
    }
  }

  return v6;
}

- (id)spokenCommandFromRecognizedEARTokenSausage:(__CFArray *)sausage
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  v5 = self->_recognizers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        spokenCommands = [v10 spokenCommands];
        v12 = [spokenCommands countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v25;
          do
          {
            v15 = 0;
            do
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(spokenCommands);
              }

              fstGrammar = [*(*(&v24 + 1) + 8 * v15) fstGrammar];
              if (fstGrammar)
              {
                [v4 addObject:fstGrammar];
              }

              ++v15;
            }

            while (v13 != v15);
            v13 = [spokenCommands countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v17 = [[CMDPResult alloc] initWithTokenSausage:sausage forLocaleIdentifier:selfCopy->_localeIdentifier];
  v22 = -1082130432;
  v23 = -1;
  [(CMDPResult *)v17 matchWithGrammars:v4 winningIndex:&v23 winningDistance:&v22];

  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)spokenCommandFromRecognizedAFSpeechPhrases:(id)phrases
{
  v85 = *MEMORY[0x277D85DE8];
  phrasesCopy = phrases;
  v4 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  selfCopy = self;
  v5 = self->_recognizers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v74 objects:v84 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v75;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v75 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v74 + 1) + 8 * i);
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        spokenCommands = [v10 spokenCommands];
        v12 = [spokenCommands countByEnumeratingWithState:&v70 objects:v83 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v71;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v71 != v14)
              {
                objc_enumerationMutation(spokenCommands);
              }

              fstGrammar = [*(*(&v70 + 1) + 8 * j) fstGrammar];
              if (fstGrammar)
              {
                [v4 addObject:fstGrammar];
              }
            }

            v13 = [spokenCommands countByEnumeratingWithState:&v70 objects:v83 count:16];
          }

          while (v13);
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v74 objects:v84 count:16];
    }

    while (v7);
  }

  v17 = [[CMDPResult alloc] initWithAFSpeechPhraseArray:phrasesCopy forLocaleIdentifier:selfCopy->_localeIdentifier];
  v69 = -1;
  v68 = -1082130432;
  v18 = [(CMDPResult *)v17 matchWithGrammars:v4 winningIndex:&v69 winningDistance:&v68];
  v19 = v18;
  v46 = v17;
  if (v18)
  {
    v20 = [v18 objectForKey:kCMDPMatchedCommandIdentifier[0]];
    if (v20)
    {
      v50 = v19;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = selfCopy->_recognizers;
      v52 = [(NSMutableArray *)obj countByEnumeratingWithState:&v64 objects:v82 count:16];
      v21 = 0;
      if (v52)
      {
        v51 = *v65;
        v49 = v20;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v65 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v64 + 1) + 8 * k);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            spokenCommands2 = [v23 spokenCommands];
            v24 = [spokenCommands2 countByEnumeratingWithState:&v60 objects:v81 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v61;
              while (2)
              {
                for (m = 0; m != v25; ++m)
                {
                  if (*v61 != v26)
                  {
                    objc_enumerationMutation(spokenCommands2);
                  }

                  v28 = *(*(&v60 + 1) + 8 * m);
                  identifier = [v28 identifier];
                  v30 = [identifier isEqualToString:v20];

                  if (v30)
                  {
                    v53 = k;
                    v31 = v28;

                    v32 = objc_opt_new();
                    v56 = 0u;
                    v57 = 0u;
                    v58 = 0u;
                    v59 = 0u;
                    v33 = [v50 objectForKey:kCMDPMatchedElements[0]];
                    v34 = [v33 countByEnumeratingWithState:&v56 objects:v80 count:16];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = *v57;
                      do
                      {
                        for (n = 0; n != v35; ++n)
                        {
                          if (*v57 != v36)
                          {
                            objc_enumerationMutation(v33);
                          }

                          v38 = *(*(&v56 + 1) + 8 * n);
                          v39 = [v38 objectForKey:kCMDPMatchedElementCategoryIdentifier];
                          if (v39)
                          {
                            v40 = [v38 objectForKey:kCMDPMatchedElementText[0]];
                            v41 = v40;
                            if (v40)
                            {
                              v78 = kSRCSCommandParameterText;
                              v79 = v40;
                              v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
                              [v32 setObject:v42 forKey:v39];
                            }

                            [v31 setRecognizedParameters:v32];
                          }
                        }

                        v35 = [v33 countByEnumeratingWithState:&v56 objects:v80 count:16];
                      }

                      while (v35);
                    }

                    v21 = v31;
                    v20 = v49;
                    k = v53;
                    goto LABEL_45;
                  }
                }

                v25 = [spokenCommands2 countByEnumeratingWithState:&v60 objects:v81 count:16];
                if (v25)
                {
                  continue;
                }

                break;
              }
            }

LABEL_45:
          }

          v52 = [(NSMutableArray *)obj countByEnumeratingWithState:&v64 objects:v82 count:16];
        }

        while (v52);
      }

      v19 = v50;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v43 = v21;

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)languageModelTreeForBuiltInLMIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_resolvedBuiltInIdentifiers;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_resolvedBuiltInIdentifiers objectForKey:identifierCopy];
  objc_sync_exit(v5);

  return v6;
}

- (void)_initalizeLanguageModelTree
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setObject:kSRCSCommandParameterTextSegmentCardinalNumber[0] forKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v3 setObject:v4 forKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];

  v5 = objc_opt_new();
  [v3 setObject:v5 forKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  for (i = 2; i != 201; ++i)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", i];
    v8 = objc_alloc(MEMORY[0x277CBEAC0]);
    v9 = [v8 initWithObjectsAndKeys:{v7, kSRCSCommandParseDictionaryKeyText[0], 0}];
    [v5 addObject:v9];
  }

  v10 = self->_resolvedBuiltInIdentifiers;
  objc_sync_enter(v10);
  [(NSMutableDictionary *)self->_resolvedBuiltInIdentifiers setObject:v3 forKey:kSRCSCommandParameterTextSegmentCardinalNumber[0]];
  objc_sync_exit(v10);

  v11 = objc_opt_new();
  [v11 setObject:kSRCSCommandParameterDeviceName[0] forKeyedSubscript:kSRCSCommandParseDictionaryKeyIdentifier[0]];
  [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
  v12 = objc_opt_new();
  [v11 setObject:v12 forKeyedSubscript:kSRCSCommandParseDictionaryKeyChildren[0]];
  v13 = +[SRCSCommandStringsTable deviceName];
  v33 = kSRCSCommandParseDictionaryKeyText[0];
  v34[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  [v12 addObject:v14];

  v15 = self->_resolvedBuiltInIdentifiers;
  objc_sync_enter(v15);
  [(NSMutableDictionary *)self->_resolvedBuiltInIdentifiers setObject:v11 forKey:kSRCSCommandParameterDeviceName[0]];
  objc_sync_exit(v15);

  v16 = objc_opt_new();
  [v16 setObject:kSRCSCommandParameterNumberTwoThroughNinetyNine[0] forKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v16 setObject:v17 forKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];

  v18 = objc_opt_new();
  [v16 setObject:v18 forKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  for (j = 2; j != 100; ++j)
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", j];
    v21 = objc_alloc(MEMORY[0x277CBEAC0]);
    v22 = [v21 initWithObjectsAndKeys:{v20, kSRCSCommandParseDictionaryKeyText[0], 0}];
    [v18 addObject:v22];
  }

  v23 = self->_resolvedBuiltInIdentifiers;
  objc_sync_enter(v23);
  [(NSMutableDictionary *)self->_resolvedBuiltInIdentifiers setObject:v16 forKey:kSRCSCommandParameterNumberTwoThroughNinetyNine[0]];
  objc_sync_exit(v23);

  v24 = objc_opt_new();
  [v24 setObject:kSRCSCommandParameterNumberTwoThroughNinetyNine2[0] forKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v24 setObject:v25 forKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];

  v26 = objc_opt_new();
  [v24 setObject:v26 forKey:kSRCSCommandParseDictionaryKeyChildren[0]];
  for (k = 2; k != 100; ++k)
  {
    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", k];
    v29 = objc_alloc(MEMORY[0x277CBEAC0]);
    v30 = [v29 initWithObjectsAndKeys:{v28, kSRCSCommandParseDictionaryKeyText[0], 0}];
    [v26 addObject:v30];
  }

  v31 = self->_resolvedBuiltInIdentifiers;
  objc_sync_enter(v31);
  [(NSMutableDictionary *)self->_resolvedBuiltInIdentifiers setObject:v24 forKey:kSRCSCommandParameterNumberTwoThroughNinetyNine2[0]];
  objc_sync_exit(v31);

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_testWithPhrases:(id)phrases
{
  phrasesCopy = phrases;
  v14 = [[SRCSCommandRecognitionSystem alloc] initWithLocaleIdentifier:@"en-US"];
  v4 = [[SRCSCommandRecognizer alloc] initWithCommandRecognitionSystem:v14 commandIdentifiers:&unk_287C0D660];
  [(SRCSCommandRecognizer *)v4 setActive:1];
  v5 = [(SRCSCommandRecognitionSystem *)v14 spokenCommandFromRecognizedAFSpeechPhrases:phrasesCopy];

  if (v5)
  {
    identifier = [v5 identifier];
    v7 = [identifier isEqualToString:@"Text.ChangePhrase"];

    if (v7)
    {
      recognizedParameters = [v5 recognizedParameters];
      v9 = [recognizedParameters objectForKey:kSRCSCommandParameterDictation[0]];
      identifier2 = [v9 objectForKey:kSRCSCommandParameterText];

      recognizedParameters2 = [v5 recognizedParameters];
      v12 = [recognizedParameters2 objectForKey:kSRCSCommandParameterDictation2[0]];
      v13 = [v12 objectForKey:kSRCSCommandParameterText];

      NSLog(&stru_287C0BDE8.isa, identifier2, v13);
    }

    else
    {
      identifier2 = [v5 identifier];
      [identifier2 isEqualToString:@"Text.SelectNextWord"];
    }
  }
}

@end