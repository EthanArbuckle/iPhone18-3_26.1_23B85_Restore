@interface CACCommandRecognizerDictation
- (__RXLanguageObject)_adLibLanguageObjectFromLanguageModel:(__RXLanguageObject *)a3;
- (id)_attributedStringFromResult:(__RXLanguageObject *)a3;
- (void)handleDictation:(id)a3;
- (void)speechRecognizer:(id)a3 didRecognize:(id)a4;
@end

@implementation CACCommandRecognizerDictation

- (void)speechRecognizer:(id)a3 didRecognize:(id)a4
{
  v50[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 languageObject];
  if (v6)
  {
    v7 = v6;
    Type = RXLanguageObjectGetType();
    if (Type == 6)
    {
      v10 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v11 = [(CACCommandRecognizer *)self speechRecognizer];
      [v10 registerSignPostEndProcessingForSpeechRecognizer:v11 message:@"Close Result."];
      goto LABEL_17;
    }

    if (Type == 5 && RXLanguageObjectGetCount() == 1)
    {
      ObjectAtIndex = RXLanguageObjectGetObjectAtIndex();
      v10 = RXObjectCopyProperty();
      if (![CACSpokenCommandManager commandIdentifierIsDictation:v10])
      {
        [v10 isEqualToString:@"System.IgnoreSiriKeywordAndOptionalPhrase"];
        goto LABEL_18;
      }

      v11 = [(CACCommandRecognizerDictation *)self _attributedStringFromResult:v7];
      v12 = [v11 string];
      v13 = [v12 length];

      if (v13)
      {
        v36 = v10;
        v14 = CFCopyDescription(v7);
        v15 = +[CACMessageTracerUtilities sharedCACMessageTracerUtilities];
        v49[0] = @"Text";
        v37 = v11;
        v16 = [v11 string];
        v49[1] = @"RXResultDescription";
        v50[0] = v16;
        v35 = v14;
        v50[1] = v14;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
        [v15 setDictationProperties:v17];

        v18 = +[CACSpeechSystem speechSystem];
        v19 = [v18 resultLanguageModelFromRXLanguageObject:ObjectAtIndex];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = self->super._spokenCommandsCache;
        v20 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v43;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v42 + 1) + 8 * i);
              v25 = [v24 identifier];
              v26 = [v19 identifier];
              v27 = [v25 isEqualToString:v26];

              if (v27)
              {
                v28 = [(CACCommandRecognizer *)self commandParametersFromCACLanguageModel:v19];
                v46 = kCACCommandParameterAttributedText;
                v47 = v37;
                v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
                [v28 setObject:v29 forKey:*MEMORY[0x277D655C8]];

                v30 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                v31 = [v30 commandExecutionDispatchQueue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __63__CACCommandRecognizerDictation_speechRecognizer_didRecognize___block_invoke;
                block[3] = &unk_279CEB550;
                block[4] = v24;
                v32 = v28;
                v40 = v32;
                v41 = v5;
                dispatch_async(v31, block);

                v33 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                [v33 handleRecognizedCommand:v24];

                v34 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                LODWORD(v31) = [v34 dictationRecognizerMode];

                if (v31 == 3)
                {
                  +[CACCommandRecognizer suspendCloseMatchAccumulatorForCommand];
                }

                goto LABEL_24;
              }
            }

            v21 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_24:

        v10 = v36;
        v11 = v37;
      }

LABEL_17:

LABEL_18:
    }
  }
}

uint64_t __63__CACCommandRecognizerDictation_speechRecognizer_didRecognize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRecognizedParameters:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setLanguageObject:v3];
}

- (void)handleDictation:(id)a3
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CACSystemStatusManager sharedManager];
  v5 = [v4 isSystemDictationRunning];

  if (v5)
  {
    v6 = CACLogDictationCommands();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CACCommandRecognizerDictation handleDictation:v6];
    }

    goto LABEL_50;
  }

  v7 = objc_alloc(MEMORY[0x277CCAB48]);
  v72 = v3;
  v8 = [v3 recognizedParameters];
  v9 = [v8 objectForKey:*MEMORY[0x277D655C8]];
  v10 = [v9 objectForKey:kCACCommandParameterAttributedText];
  v6 = [v7 initWithAttributedString:v10];

  v11 = +[VCVocabularyObjC visibleVocabularyEntriesForActiveLocale];
  v12 = objc_opt_new();
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v98;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v98 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v97 + 1) + 8 * i);
        v18 = +[VCVocabularyObjC textKey];
        v19 = [v17 objectForKey:v18];
        [v12 addObject:v19];
      }

      v14 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
    }

    while (v14);
  }

  v3 = v72;
  v20 = [v72 recognizedParameters];
  v21 = [v20 objectForKey:kCACCommandParameterTextSequence];
  v22 = [v21 firstObject];
  v23 = [v22 objectForKey:kCACCommandParameterTextVariants];

  v24 = CACLogDictationCommands();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [(CACCommandRecognizerDictation *)v23 handleDictation:v24];
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v25 = v23;
  v77 = v25;
  v81 = [v25 countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (!v81)
  {
    v78 = 0;
    v42 = v25;
LABEL_35:

    goto LABEL_37;
  }

  v78 = 0;
  v79 = 0;
  v80 = *v94;
  v74 = v6;
  v75 = v12;
  do
  {
    for (j = 0; j != v81; ++j)
    {
      if (*v94 != v80)
      {
        objc_enumerationMutation(v25);
      }

      v27 = *(*(&v93 + 1) + 8 * j);
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v83 = v12;
      v28 = [v83 countByEnumeratingWithState:&v89 objects:v102 count:16];
      if (!v28)
      {
        v40 = v83;
        goto LABEL_28;
      }

      v29 = v28;
      v82 = j;
      v30 = 0;
      v31 = *v90;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v90 != v31)
          {
            objc_enumerationMutation(v83);
          }

          v33 = [MEMORY[0x277CCAC68] escapedPatternForString:*(*(&v89 + 1) + 8 * k)];
          v34 = MEMORY[0x277CCAC68];
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\b%@\\b", v33];
          v88 = 0;
          v36 = [v34 regularExpressionWithPattern:v35 options:64 error:&v88];
          v37 = v88;

          v38 = [v36 numberOfMatchesInString:v27 options:0 range:{0, objc_msgSend(v27, "length")}];
          v30 += v38;
        }

        v29 = [v83 countByEnumeratingWithState:&v89 objects:v102 count:16];
      }

      while (v29);

      if (v30 > v79)
      {
        v39 = v27;
        v25 = v77;
        v40 = v78;
        v78 = v39;
        v79 = v30;
        v6 = v74;
        v12 = v75;
        j = v82;
LABEL_28:

        continue;
      }

      v6 = v74;
      v12 = v75;
      v25 = v77;
      j = v82;
    }

    v81 = [v25 countByEnumeratingWithState:&v93 objects:v103 count:16];
  }

  while (v81);

  v3 = v72;
  if (v78)
  {
    v41 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v78];
    v42 = v6;
    v6 = v41;
    goto LABEL_35;
  }

  v78 = 0;
LABEL_37:
  v43 = [v3 languageObject];
  v44 = [v43 transcriptionResult];
  v45 = [v44 isPartialResult];

  if ((v45 & 1) == 0)
  {
    v46 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v47 = [v46 stagedTextInsertionSpecifier];
    [v47 setInsertedCategoryID:*MEMORY[0x277D655C8]];
  }

  v48 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v49 = [v48 dictationRecognizerMode];

  if ((v49 - 4) <= 0xFFFFFFFD)
  {
    v50 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v51 = [v50 doesCurrentLanguageSupportInterWordSpaces];

    if (v51)
    {
      v76 = v12;
      v52 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v53 = [v52 leadingTextForCurrentSelection];

      v54 = [v3 languageObject];
      v55 = [v54 transcriptionResult];
      v56 = [v55 preITN_nBestResults];
      v57 = [v56 firstObject];

      v58 = [MEMORY[0x277CBEB18] array];
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v59 = v57;
      v60 = [v59 countByEnumeratingWithState:&v84 objects:v101 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v85;
        do
        {
          for (m = 0; m != v61; ++m)
          {
            if (*v85 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = [*(*(&v84 + 1) + 8 * m) tokenName];
            [v58 addObject:v64];
          }

          v61 = [v59 countByEnumeratingWithState:&v84 objects:v101 count:16];
        }

        while (v61);
      }

      v65 = [v76 copy];
      v66 = +[CACSpeechSystem speechSystem];
      v67 = [v66 recognitionLocaleIdentifier];
      [v6 adjustCapsAndSpacingUsingLeadingText:v53 preITNTokens:v58 customVocabularies:v65 localeIdentifier:v67];

      v12 = v76;
      v3 = v72;
      v25 = v77;
    }
  }

  v68 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v69 = [v6 string];
  v70 = [v3 languageObject];
  v71 = [v70 transcriptionResult];
  [v68 insertDictatedString:v69 provisionally:{objc_msgSend(v71, "isPartialResult")}];

LABEL_50:
}

- (id)_attributedStringFromResult:(__RXLanguageObject *)a3
{
  v5 = objc_opt_new();
  if ([(CACCommandRecognizerDictation *)self _adLibLanguageObjectFromLanguageModel:a3])
  {
    v6 = +[CACSpeechSystem speechSystem];
    v7 = CFLocaleCreate(0, [v6 recognitionLocaleIdentifier]);

    v8 = RXObjectCopyPropertyWithLocale();
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];
      [v5 appendAttributedString:v9];
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v5;
}

- (__RXLanguageObject)_adLibLanguageObjectFromLanguageModel:(__RXLanguageObject *)a3
{
  v3 = a3;
  if (a3 && RXLanguageObjectGetType() != 4)
  {
    Count = RXLanguageObjectGetCount();
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        v8 = [(CACCommandRecognizerDictation *)self _adLibLanguageObjectFromLanguageModel:RXLanguageObjectGetObjectAtIndex()];
        if (v8)
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      return v8;
    }
  }

  return v3;
}

- (void)handleDictation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_26B354000, a2, OS_LOG_TYPE_DEBUG, "[handleDictation] textVariants: %@", &v2, 0xCu);
}

@end