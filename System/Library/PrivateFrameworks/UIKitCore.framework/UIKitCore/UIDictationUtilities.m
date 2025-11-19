@interface UIDictationUtilities
+ (BOOL)_isAutomaticKeyboardDownDictationDisabled;
+ (BOOL)_isDictationAssetAvailableForCurrentInputModeDictationLanguage;
+ (BOOL)_isDictationAssetAvailableForLocale:(id)a3;
+ (BOOL)needsLeadingSpaceForPhrases:(id)a3 secureInput:(BOOL)a4;
+ (BOOL)needsLeadingSpaceForText:(id)a3 secureInput:(BOOL)a4;
+ (BOOL)needsLeadingSpaceForText:(id)a3 secureInput:(BOOL)a4 previousCharacter:(unsigned __int16)a5 selectionStartIsStartOfParagraph:(BOOL)a6;
+ (BOOL)needsTrailingSpaceForPhrases:(id)a3 secureInput:(BOOL)a4;
+ (BOOL)needsTrailingSpaceForText:(id)a3 secureInput:(BOOL)a4;
+ (BOOL)shouldInsertSpaceBetweenStringA:(id)a3 andStringB:(id)a4;
+ (BOOL)shouldLogCorrectionInfoForCurrentBundleId;
+ (BOOL)supportsDictationVoiceEditingUIForBundleIdentifier:(id)a3;
+ (BOOL)utilizeInputContextHistory;
+ (_NSRange)searchStringWithWordBoundariesValidation:(id)a3 substring:(id)a4 reverse:(BOOL)a5;
+ (id)_normalizeToSpeechString:(id)a3;
+ (id)_properNameForString:(id)a3;
+ (id)_remapDictationLocaleFromLanguage:(id)a3;
+ (id)_unsupportedAppsForVoiceEditing;
+ (id)activeMultilingualKeyboardDictationMappings;
+ (id)applySmartPunctuationToString:(id)a3;
+ (id)attributedStringForDictationResult:(id)a3 andCorrectionIdentifier:(id)a4 capturePrefixAndPostfixWordCount:(unint64_t)a5;
+ (id)bestInterpretationForDictationResult:(id)a3;
+ (id)bestInterpretationForPhrases:(id)a3;
+ (id)capitalizeFirstWord:(id)a3;
+ (id)dictationPhrasesFromPhraseArray:(id)a3;
+ (id)dictationPhrasesFromTokenMatrix:(id)a3;
+ (id)dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:(id)a3;
+ (id)interpretationFromAFInterpretation:(id)a3;
+ (id)interpretationFromAFTokens:(id)a3;
+ (id)metadataDictionaryForCorrectionIdentifier:(id)a3;
+ (id)phraseFromAFPhrase:(id)a3;
+ (id)rangesForSearchStringWithWordBoundariesValidation:(id)a3 substring:(id)a4 reverse:(BOOL)a5;
+ (id)tokenFromAFToken:(id)a3;
+ (id)trackingPunctuations;
+ (id)voiceCommandParameterFromAFVoiceCommandGrammarParamMatch:(id)a3;
+ (int64_t)updateCharacterModificationCount:(id)a3 delta:(int)a4;
+ (unint64_t)characterDeletionCount:(id)a3;
+ (unint64_t)characterInsertionCount:(id)a3;
+ (unint64_t)characterSubstitutionCount:(id)a3;
+ (unint64_t)maxLoggableLengthOfInsertionBySubstitution:(id)a3;
+ (unint64_t)maxLoggableLengthOfInsertionWithDeletion:(id)a3;
+ (unint64_t)maxLoggableLengthOfInsertionWithoutDeletion:(id)a3;
+ (unint64_t)updateCharacterDeletionCount:(id)a3 delta:(int)a4;
+ (unint64_t)updateCharacterInsertionCount:(id)a3 delta:(int)a4;
+ (unint64_t)updateCharacterSubstitutionCount:(id)a3 delta:(int)a4;
+ (void)attributedString:(id)a3 withIdentifiersBlock:(id)a4;
+ (void)logSpeechAlternativeReplacement:(id)a3 originalText:(id)a4 replacementText:(id)a5 index:(unint64_t)a6;
+ (void)searchString:(id)a3 contextBefore:(id)a4 contextAfter:(id)a5 completionHandler:(id)a6;
+ (void)selectionStartInfoWithBlock:(id)a3;
+ (void)setActiveMultilingualKeyboardDictationMappings:(id)a3 activeDictationlanguage:(id)a4;
+ (void)trackDeletion:(id)a3 text:(id)a4 range:(_NSRange)a5;
+ (void)trackInsertion:(id)a3 text:(id)a4 range:(_NSRange)a5;
+ (void)trackSubstitution:(id)a3 originalText:(id)a4 originalTextRange:(_NSRange)a5 replacementText:(id)a6 replacementTextRange:(_NSRange)a7;
@end

@implementation UIDictationUtilities

+ (BOOL)shouldLogCorrectionInfoForCurrentBundleId
{
  if (qword_1ED49F288 != -1)
  {
    dispatch_once(&qword_1ED49F288, &__block_literal_global_237_0);
  }

  return byte_1ED49F249;
}

void __65__UIDictationUtilities_shouldLogCorrectionInfoForCurrentBundleId__block_invoke()
{
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.tencent.xin", @"net.whatsapp.WhatsApp", @"jp.naver.line", @"com.facebook.Messenger", @"com.burbn.instagram", @"com.tencent.mqq", @"com.zhiliaoapp.musically", @"com.ss.iphone.ugc.Aweme", @"com.facebook.Facebook", @"ph.telegra.Telegraph", @"org.whispersystems.signal", @"com.toyopagroup.picaboo", @"com.roblox.robloxmobile", 0}];
  v0 = _UIMainBundleIdentifier();
  byte_1ED49F249 = [v1 containsObject:v0];
}

+ (id)tokenFromAFToken:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 confidenceScore];
    }

    v5 = [UIDictationScoredToken alloc];
    v6 = [v3 text];
    v7 = -[UIDictationScoredToken initWithText:removeSpaceBefore:removeSpaceAfter:confidenceScore:](v5, "initWithText:removeSpaceBefore:removeSpaceAfter:confidenceScore:", v6, [v3 removeSpaceBefore], objc_msgSend(v3, "removeSpaceAfter"), v4 / 1000.0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)interpretationFromAFInterpretation:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getAFSpeechInterpretationClass_softClass;
  v14 = getAFSpeechInterpretationClass_softClass;
  if (!getAFSpeechInterpretationClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getAFSpeechInterpretationClass_block_invoke;
    v10[3] = &unk_1E70F2F20;
    v10[4] = &v11;
    __getAFSpeechInterpretationClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 tokens];
    v8 = [a1 interpretationFromAFTokens:v7];

    [v8 setAverageConfidenceScore:{objc_msgSend(v4, "averageConfidenceScore") / 1000.0}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)interpretationFromAFTokens:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = 0.0;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [a1 tokenFromAFToken:{*(*(&v24 + 1) + 8 * i), v24}];
        if (!v12)
        {

          v15 = 0;
          goto LABEL_17;
        }

        v13 = v12;
        [v5 addObject:v12];
        [v13 confidenceScore];
        v10 = v10 + v14;
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0.0;
  }

  if ([v5 count])
  {
    v16 = [v5 count];
    v17 = [v5 lastObject];
    v18 = [v17 text];
    v19 = [v18 hasSuffix:@" "];

    if (v19)
    {
      v20 = [v17 text];
      v21 = [v17 text];
      v22 = [v20 substringToIndex:{objc_msgSend(v21, "length") - 1}];
      [v17 setText:v22];
    }

    v10 = v10 / v16;
  }

  v15 = [[UIDictationInterpretation alloc] initWithTokens:v5 score:v10];
LABEL_17:

  return v15;
}

+ (id)phraseFromAFPhrase:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  getAFSpeechPhraseClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v4 interpretations];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 interpretationFromAFInterpretation:*(*(&v15 + 1) + 8 * i)];
          if (!v11)
          {

            v13 = 0;
            goto LABEL_13;
          }

          v12 = v11;
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = -[UIDictationInterpretationGroup initWithInterpretations:isLowConfidence:]([UIDictationInterpretationGroup alloc], "initWithInterpretations:isLowConfidence:", v5, [v4 isLowConfidence]);
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)dictationPhrasesFromTokenMatrix:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__127;
  v12 = __Block_byref_object_dispose__127;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__UIDictationUtilities_dictationPhrasesFromTokenMatrix___block_invoke;
  v7[3] = &unk_1E7115760;
  v7[4] = &v8;
  [v3 enumerateObjectsUsingBlock:v7];
  v4 = [UIDictationSerializableResults alloc];
  v5 = [(UIDictationSerializableResults *)v4 initWithPhrases:v9[5]];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __56__UIDictationUtilities_dictationPhrasesFromTokenMatrix___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = [UIDictationUtilities interpretationFromAFTokens:a2];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  if (v6)
  {
    v9 = [UIDictationInterpretationGroup alloc];
    v12[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v11 = [(UIDictationInterpretationGroup *)v9 initWithInterpretations:v10];
    [v8 addObject:v11];
  }

  else
  {
    *(v7 + 40) = 0;

    *a4 = 1;
  }
}

+ (id)dictationPhrasesFromPhraseArray:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 lastObject];
    getAFSpeechPhraseClass();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = __Block_byref_object_copy__127;
      v15 = __Block_byref_object_dispose__127;
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __56__UIDictationUtilities_dictationPhrasesFromPhraseArray___block_invoke;
      v10[3] = &unk_1E7115788;
      v10[4] = &v11;
      [v3 enumerateObjectsUsingBlock:v10];
      v6 = [UIDictationSerializableResults alloc];
      v7 = [(UIDictationSerializableResults *)v6 initWithPhrases:v12[5]];
      _Block_object_dispose(&v11, 8);

      goto LABEL_7;
    }

    v8 = [UIDictationUtilities dictationPhrasesFromTokenMatrix:v3];
  }

  else
  {
    v8 = objc_alloc_init(UIDictationSerializableResults);
  }

  v7 = v8;
LABEL_7:

  return v7;
}

void __56__UIDictationUtilities_dictationPhrasesFromPhraseArray___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [UIDictationUtilities phraseFromAFPhrase:a2];
  v9 = v6;
  if (v6)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }

  else
  {
    *a4 = 1;
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

+ (id)bestInterpretationForDictationResult:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      v9 = &stru_1EFB14550;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if ([v11 count])
        {
          v12 = [v11 objectAtIndex:0];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = v9;

            goto LABEL_20;
          }

          v13 = [(__CFString *)v9 stringByAppendingString:v12];

          v9 = v13;
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_18;
        }
      }

      v14 = v9;
LABEL_20:

      goto LABEL_21;
    }

    v9 = &stru_1EFB14550;
LABEL_18:

    v9 = v9;
LABEL_21:
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  return v9;
}

+ (id)bestInterpretationForPhrases:(id)a3
{
  v3 = a3;
  v4 = [v3 indexPathOfInterpretations];
  [v3 setIndexPathOfInterpretations:0];
  v5 = [v3 text];
  [v3 setIndexPathOfInterpretations:v4];

  return v5;
}

+ (id)attributedStringForDictationResult:(id)a3 andCorrectionIdentifier:(id)a4 capturePrefixAndPostfixWordCount:(unint64_t)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v68 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v67 = [v6 dictationPhraseArray];
  v8 = [v6 bestTextForMultilingualAlternatives];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v66 = [v6 multilingualResultsByLanguageCode];
  v12 = [MEMORY[0x1E695DF70] array];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v78;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v78 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v77 + 1) + 8 * i) objectForKey:@"text"];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v15);
  }

  v72 = v13;
  v65 = v12;
  if ([v6 showMultilingualAlternatives])
  {
    v19 = [v13 count];
    v20 = v19 != 0;
    if ([v6 lowConfidenceAboutLanguageDetection] && v19)
    {
      v21 = [v6 bestText];
      v22 = [off_1E70ECBA0 attributedText:v21 withAlternativeTexts:v12 style:1];

      [v7 appendAttributedString:v22];
      v23 = [a1 metadataDictionaryForCorrectionIdentifier:v68];
      v24 = a5;
LABEL_26:
      v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "lowConfidenceAboutLanguageDetection")}];
      [v23 setObject:v36 forKey:@"multilingualIsLowConfidence"];

      [v23 setObject:v13 forKey:@"bestAlternatives"];
      v37 = [v6 bestText];
      [v23 setObject:v37 forKey:@"bestText"];

      [v23 setObject:v66 forKey:@"multilingualResultsForAlternateRecognitions"];
      goto LABEL_27;
    }
  }

  else
  {
    [v6 lowConfidenceAboutLanguageDetection];
    v20 = 0;
  }

  v62 = v20;
  v25 = v7;
  v63 = v6;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v26 = v67;
  v27 = [v26 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v74;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v74 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v73 + 1) + 8 * j);
        v32 = [v31 text];

        if (v32)
        {
          v33 = [v31 text];
          v34 = [v31 alternativeInterpretations];
          v35 = [off_1E70ECBA0 attributedText:v33 withAlternativeTexts:v34 style:{objc_msgSend(v31, "style")}];
          [v25 appendAttributedString:v35];

          v13 = v72;
        }

        else
        {
          v33 = [MEMORY[0x1E696AAA8] currentHandler];
          [v33 handleFailureInMethod:a2 object:a1 file:@"UIDictationUtilities.m" lineNumber:288 description:@"All dictation phrases should have at least one interpretation."];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v28);
  }

  v23 = [a1 metadataDictionaryForCorrectionIdentifier:v68];
  v6 = v63;
  v24 = a5;
  v7 = v25;
  v12 = v65;
  if (v62)
  {
    goto LABEL_26;
  }

LABEL_27:
  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = [v7 string];
  [v38 setObject:v39 forKey:@"recognizedText"];

  v40 = [v7 length];
  if ([v6 addTrailingSpace])
  {
    v41 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v7 appendAttributedString:v41];
  }

  if (v24)
  {
    v42 = +[UIDictationController sharedInstance];
    v43 = v7;
    +[UIKeyboardImpl sharedInstance];
    v44 = v71 = v40;
    v45 = [v44 inputDelegate];
    v46 = [v42 prefixTextForInputDelegate:v45 wordCount:v24];

    v47 = +[UIDictationController sharedInstance];
    v48 = +[UIKeyboardImpl sharedInstance];
    v49 = [v48 inputDelegate];
    v50 = [v47 postfixTextForInputDelegate:v49 wordCount:v24];

    v51 = MEMORY[0x1E696AEC0];
    v52 = [v43 string];
    v53 = [v51 stringWithFormat:@"%@%@%@", v46, v52, v50];

    [v38 setObject:v53 forKey:@"relevantTextAfterDictationResult"];
    v54 = MEMORY[0x1E696B098];
    v55 = v46;
    v56 = [v46 length];
    v57 = [v43 string];
    v58 = [v57 length];
    v59 = v56;
    v40 = v71;
    v60 = [v54 valueWithRange:{v59, v58}];

    [v38 setObject:v60 forKey:@"recognizedTextPosition"];
    v7 = v43;
    v12 = v65;
  }

  [v23 setObject:v38 forKey:@"recognizedTextInfo"];
  [v7 addAttribute:@"_UITextInputDictationResultMetadata" value:v23 range:{0, v40}];

  return v7;
}

+ (id)voiceCommandParameterFromAFVoiceCommandGrammarParamMatch:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UIDictationVoiceCommandParameter);
  v5 = [v3 text];

  [(UIDictationVoiceCommandParameter *)v4 setText:v5];

  return v4;
}

+ (id)dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 paramMatches];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__UIDictationUtilities_dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate___block_invoke;
  v10[3] = &unk_1E71157B0;
  v7 = v5;
  v11 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  if ([v7 count])
  {
    v8 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __95__UIDictationUtilities_dictationVoiceCommandParametersFromAFVoiceCommandGrammarParseCandidate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [UIDictationUtilities voiceCommandParameterFromAFVoiceCommandGrammarParamMatch:a3];
  [*(a1 + 32) setObject:v6 forKey:v5];
}

+ (id)_unsupportedAppsForVoiceEditing
{
  if (qword_1ED49F250 != -1)
  {
    dispatch_once(&qword_1ED49F250, &__block_literal_global_369);
  }

  v3 = qword_1ED49F258;

  return v3;
}

void __55__UIDictationUtilities__unsupportedAppsForVoiceEditing__block_invoke()
{
  v0 = +[_UIDictationSettingsDomain rootSettings];
  v1 = [v0 voiceCommandsInIWorkEnabled];

  if ((v1 & 1) == 0)
  {
    v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.Numbers", @"com.apple.Keynote", @"com.apple.Pages", 0}];
    v3 = qword_1ED49F258;
    qword_1ED49F258 = v2;
  }
}

+ (BOOL)supportsDictationVoiceEditingUIForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _unsupportedAppsForVoiceEditing];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

+ (id)metadataDictionaryForCorrectionIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKey:@"correctionIdentifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v5 setObject:v6 forKey:@"alternativesSelectedCount"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:0];
  [v5 setObject:v7 forKey:@"characterModificationCount"];

  v8 = +[UIDictationController sharedInstance];
  v9 = [v8 interactionIdentifier];

  if (v9)
  {
    [v5 setObject:v9 forKey:@"dictationUIInteractionIdentifier"];
  }

  v10 = +[UIDictationController sharedInstance];
  v11 = [v10 currentInstrumentationContext];

  if (v11)
  {
    [v5 setObject:v11 forKey:@"dictationInstrumentationContext"];
  }

  v12 = +[UIDictationController sharedInstance];
  v13 = [v12 initialDictationLanguage];

  if (v13)
  {
    [v5 setObject:v13 forKey:@"dictationLanguage"];
  }

  v14 = +[UIDictationController sharedInstance];
  v15 = [v14 localSpeechRecognitionForced];
  v16 = UITextInputDictationResultSpeechRecognitionSourceLocal;
  if (!v15)
  {
    v16 = UITextInputDictationResultSpeechRecognitionSourceServer;
  }

  [v5 setObject:*v16 forKey:@"speechRecognitionSource"];

  return v5;
}

+ (BOOL)needsLeadingSpaceForPhrases:(id)a3 secureInput:(BOOL)a4
{
  if (a4)
  {
    return 0;
  }

  v6 = [a3 phrases];
  v7 = [v6 firstObject];
  v8 = [v7 bestInterpretation];

  v9 = [v8 tokens];
  v10 = [v9 objectAtIndex:0];

  v11 = [v10 text];
  LOBYTE(a1) = [a1 needsLeadingSpaceForText:v11 secureInput:0];

  return a1;
}

+ (BOOL)needsLeadingSpaceForText:(id)a3 secureInput:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (!a4)
  {
    if ([v5 length])
    {
      v8 = [v6 characterAtIndex:0];
    }

    else
    {
      v8 = 0;
    }

    v9 = +[UIKeyboardImpl sharedInstance];
    v10 = [v9 inputDelegate];

    if ([v10 _usesAsynchronousProtocol])
    {
      v11 = +[UIDictationController activeInstance];
      v12 = [v11 selectionStartWasInitiallyAtParagraphBoundaryForAsyncDelegate];
      v13 = [v11 initialPreviousCharacterForAsyncDelegate];

      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v14 = [v10 tokenizer];
      v15 = [v10 selectedTextRange];
      v16 = [v15 start];
      v17 = [v14 isPosition:v16 atBoundary:3 inDirection:1];

      v18 = [v10 _characterInRelationToRangedSelection:0xFFFFFFFFLL];
      if (v17)
      {
        goto LABEL_12;
      }

      v13 = v18;
    }

    if (([MEMORY[0x1E69E2FB8] isCharacterSmartReplaceExempt:v13 isPreviousCharacter:1] & 1) == 0)
    {
      v7 = [MEMORY[0x1E69E2FB8] isCharacterSmartReplaceExempt:v8 isPreviousCharacter:0] ^ 1;
      goto LABEL_14;
    }

LABEL_12:
    LOBYTE(v7) = 0;
LABEL_14:

    goto LABEL_15;
  }

  LOBYTE(v7) = 0;
LABEL_15:

  return v7;
}

+ (void)selectionStartInfoWithBlock:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl sharedInstance];
  v11 = [v4 inputDelegate];

  if ([v11 _usesAsynchronousProtocol])
  {
    v5 = +[UIDictationController activeInstance];
    v6 = [v5 selectionStartWasInitiallyAtParagraphBoundaryForAsyncDelegate];
    v7 = [v5 initialPreviousCharacterForAsyncDelegate];
  }

  else
  {
    v8 = [v11 tokenizer];
    v9 = [v11 selectedTextRange];
    v10 = [v9 start];
    v6 = [v8 isPosition:v10 atBoundary:3 inDirection:1];

    v7 = [v11 _characterInRelationToRangedSelection:0xFFFFFFFFLL];
  }

  v3[2](v3, v7, v6);
}

+ (BOOL)needsLeadingSpaceForText:(id)a3 secureInput:(BOOL)a4 previousCharacter:(unsigned __int16)a5 selectionStartIsStartOfParagraph:(BOOL)a6
{
  v7 = a5;
  v9 = a3;
  v10 = v9;
  if (a4)
  {
    goto LABEL_7;
  }

  if ([v9 length])
  {
    v11 = [v10 characterAtIndex:0];
    if (a6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (a6)
    {
      goto LABEL_7;
    }
  }

  if (([MEMORY[0x1E69E2FB8] isCharacterSmartReplaceExempt:v7 isPreviousCharacter:1] & 1) == 0)
  {
    v12 = [MEMORY[0x1E69E2FB8] isCharacterSmartReplaceExempt:v11 isPreviousCharacter:0] ^ 1;
    goto LABEL_8;
  }

LABEL_7:
  LOBYTE(v12) = 0;
LABEL_8:

  return v12;
}

+ (BOOL)needsTrailingSpaceForPhrases:(id)a3 secureInput:(BOOL)a4
{
  if (a4)
  {
    return 0;
  }

  v6 = [a3 phrases];
  v7 = [v6 lastObject];
  v8 = [v7 bestInterpretation];

  v9 = [v8 tokens];
  v10 = [v9 lastObject];

  v11 = [v10 text];
  LOBYTE(a1) = [a1 needsTrailingSpaceForText:v11 secureInput:0];

  return a1;
}

+ (BOOL)needsTrailingSpaceForText:(id)a3 secureInput:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (!a4)
  {
    if ([v5 length])
    {
      v8 = [v6 characterAtIndex:{objc_msgSend(v6, "length") - 1}];
    }

    else
    {
      v8 = 0;
    }

    v9 = +[UIKeyboardImpl sharedInstance];
    v10 = [v9 inputDelegate];

    if ([v10 _usesAsynchronousProtocol])
    {
      v11 = +[UIDictationController activeInstance];
      v12 = [v11 selectionEndWasInitiallyAtParagraphBoundaryForAsyncDelegate];
      v13 = [v11 initialCharacterAfterSelectionForAsyncDelegate];

      if (v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = [v10 tokenizer];
      v15 = [v10 selectedTextRange];
      v16 = [v15 end];
      v17 = [v14 isPosition:v16 atBoundary:3 inDirection:0];

      v18 = [v10 tokenizer];
      v7 = [v10 selectedTextRange];
      v19 = [v7 end];
      v20 = [v18 isPosition:v19 atBoundary:5 inDirection:0];

      v21 = [v10 _characterInRelationToRangedSelection:0];
      LOBYTE(v7) = 0;
      if (v17 & 1) != 0 || (v20)
      {
        goto LABEL_15;
      }

      v13 = v21;
    }

    if (([MEMORY[0x1E69E2FB8] isCharacterSmartReplaceExempt:v8 isPreviousCharacter:1] & 1) == 0)
    {
      LODWORD(v7) = [MEMORY[0x1E69E2FB8] isCharacterSmartReplaceExempt:v13 isPreviousCharacter:0] ^ 1;
      goto LABEL_15;
    }

LABEL_13:
    LOBYTE(v7) = 0;
LABEL_15:

    goto LABEL_16;
  }

  LOBYTE(v7) = 0;
LABEL_16:

  return v7;
}

+ (id)_properNameForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_1ED49F268 == -1)
  {
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_once(&qword_1ED49F268, &__block_literal_global_102_2);
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  v5 = [qword_1ED49F260 firstObject];
  if ([v5 caseInsensitiveCompare:v4] == -1)
  {
    v6 = [qword_1ED49F260 lastObject];
    v7 = [v6 caseInsensitiveCompare:v4];

    if (v7 == 1)
    {
      v8 = 0;
      v9 = [qword_1ED49F260 count] - 1;
      do
      {
        v10 = (v9 + v8) >> 1;
        v11 = [qword_1ED49F260 objectAtIndex:v10];
        v12 = [v11 caseInsensitiveCompare:v4];
        switch(v12)
        {
          case -1:
            v8 = v10 + 1;
            break;
          case 1:
            v9 = v10 - 1;
            break;
          case 0:
            goto LABEL_15;
        }
      }

      while (v8 <= v9);
    }
  }

  else
  {
  }

LABEL_14:
  v11 = 0;
LABEL_15:

  return v11;
}

void __45__UIDictationUtilities__properNameForString___block_invoke()
{
  v0 = [&unk_1EFE2CA90 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v1 = qword_1ED49F260;
  qword_1ED49F260 = v0;
}

+ (unint64_t)characterInsertionCount:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKey:@"characterInsertionCount"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 valueForKey:@"characterInsertionCount"];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)characterDeletionCount:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKey:@"characterDeletionCount"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 valueForKey:@"characterDeletionCount"];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)characterSubstitutionCount:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKey:@"characterSubstitutionCount"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 valueForKey:@"characterSubstitutionCount"];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)updateCharacterDeletionCount:(id)a3 delta:(int)a4
{
  LODWORD(v5) = a4;
  v4 = a3;
  v5 = v5;
  v6 = [v4 valueForKey:@"characterDeletionCount"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 valueForKey:@"characterDeletionCount"];
    v5 = [v8 unsignedIntegerValue] + v5;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  [v4 setObject:v9 forKey:@"characterDeletionCount"];

  return v5;
}

+ (unint64_t)updateCharacterSubstitutionCount:(id)a3 delta:(int)a4
{
  LODWORD(v5) = a4;
  v4 = a3;
  v5 = v5;
  v6 = [v4 valueForKey:@"characterSubstitutionCount"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 valueForKey:@"characterSubstitutionCount"];
    v5 = [v8 unsignedIntegerValue] + v5;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  [v4 setObject:v9 forKey:@"characterSubstitutionCount"];

  return v5;
}

+ (unint64_t)updateCharacterInsertionCount:(id)a3 delta:(int)a4
{
  LODWORD(v5) = a4;
  v4 = a3;
  v5 = v5;
  v6 = [v4 valueForKey:@"characterInsertionCount"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 valueForKey:@"characterInsertionCount"];
    v5 = [v8 unsignedIntegerValue] + v5;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  [v4 setObject:v9 forKey:@"characterInsertionCount"];

  return v5;
}

+ (int64_t)updateCharacterModificationCount:(id)a3 delta:(int)a4
{
  LODWORD(v5) = a4;
  v4 = a3;
  v5 = v5;
  v6 = [v4 valueForKey:@"characterModificationCount"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v4 valueForKey:@"characterModificationCount"];
    v5 = [v8 integerValue] + v5;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  [v4 setObject:v9 forKey:@"characterModificationCount"];

  return v5;
}

+ (void)trackInsertion:(id)a3 text:(id)a4 range:(_NSRange)a5
{
  location = a5.location;
  v29[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 valueForKey:@"insertion"];

  if (v9)
  {
    v10 = [v7 objectForKey:@"insertion"];
    v11 = [v10 objectForKey:@"end"];
    v12 = [v11 unsignedIntegerValue] + 1;

    if (location == v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
      [v10 setObject:v13 forKey:@"end"];

      v14 = MEMORY[0x1E696AEC0];
      v15 = [v10 objectForKey:@"text"];
      v16 = [v14 stringWithFormat:@"%@%@", v15, v8];

      [v10 setObject:v16 forKey:@"text"];
    }

    else
    {
      v20 = [v7 objectForKey:@"insertions"];

      if (v20)
      {
        v21 = MEMORY[0x1E695DF70];
        v22 = [v7 objectForKey:@"insertions"];
        v23 = [v21 arrayWithArray:v22];

        [v23 addObject:v10];
        v24 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
      }

      else
      {
        v29[0] = v10;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      }

      [v7 setObject:v24 forKey:@"insertions"];
      v28 = MEMORY[0x1E695DF90];
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{location + objc_msgSend(v8, "length") - 1}];
      v27 = [v28 dictionaryWithObjectsAndKeys:{v8, @"text", v25, @"start", v26, @"end", 0}];

      v10 = v27;
    }
  }

  else
  {
    v17 = MEMORY[0x1E695DF90];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{location + objc_msgSend(v8, "length") - 1}];
    v10 = [v17 dictionaryWithObjectsAndKeys:{v8, @"text", v18, @"start", v19, @"end", 0}];
  }

  [v7 setObject:v10 forKey:@"insertion"];
}

+ (void)trackDeletion:(id)a3 text:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 valueForKey:@"deletion"];

  if (v10)
  {
    v11 = [v8 objectForKey:@"deletion"];
    v12 = [v11 objectForKey:@"start"];
    v13 = [v12 unsignedIntegerValue] - 1;

    if (location == v13)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
      [v11 setObject:v14 forKey:@"start"];

      v15 = MEMORY[0x1E696AEC0];
      if (v9)
      {
        v16 = v9;
      }

      else
      {
        v16 = &stru_1EFB14550;
      }

      v17 = [v11 objectForKey:@"text"];
      v18 = [v15 stringWithFormat:@"%@%@", v16, v17];

      [v11 setObject:v18 forKey:@"text"];
    }

    else
    {
      v23 = [v8 objectForKey:@"deletions"];

      v34 = v9;
      if (v23)
      {
        v24 = MEMORY[0x1E695DF70];
        v25 = [v8 objectForKey:@"deletions"];
        v26 = [v24 arrayWithArray:v25];

        [v26 addObject:v11];
        v27 = [MEMORY[0x1E695DEC8] arrayWithArray:v26];
      }

      else
      {
        v35[0] = v11;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
      }

      v33 = v27;
      [v8 setObject:v27 forKey:@"deletions"];
      v28 = MEMORY[0x1E695DF90];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
      if (length <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = length;
      }

      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location + v30 - 1];
      v9 = v34;
      v32 = [v28 dictionaryWithObjectsAndKeys:{v34, @"text", v29, @"start", v31, @"end", 0}];

      v11 = v32;
    }
  }

  else
  {
    v19 = MEMORY[0x1E695DF90];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
    if (length <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = length;
    }

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location + v21 - 1];
    v11 = [v19 dictionaryWithObjectsAndKeys:{v9, @"text", v20, @"start", v22, @"end", 0}];
  }

  [v8 setObject:v11 forKey:@"deletion"];
}

+ (void)trackSubstitution:(id)a3 originalText:(id)a4 originalTextRange:(_NSRange)a5 replacementText:(id)a6 replacementTextRange:(_NSRange)a7
{
  length = a5.length;
  location = a5.location;
  v35[3] = *MEMORY[0x1E69E9840];
  v27 = a3;
  v11 = a4;
  v12 = a6;
  v13 = &stru_1EFB14550;
  if (v11)
  {
    v13 = v11;
  }

  v35[0] = v13;
  v34[0] = @"text";
  v34[1] = @"start";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{location, v27}];
  v35[1] = v14;
  v34[2] = @"end";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length + location - 1];
  v35[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];

  v17 = &stru_1EFB14550;
  if (v12)
  {
    v17 = v12;
  }

  v33[0] = v17;
  v32[0] = @"text";
  v32[1] = @"start";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7.location];
  v33[1] = v18;
  v32[2] = @"end";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7.length + a7.location - 1];
  v33[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];

  v30[0] = @"original";
  v30[1] = @"replacement";
  v31[0] = v16;
  v31[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v22 = [v28 objectForKey:@"substitutions"];

  if (v22)
  {
    v23 = MEMORY[0x1E695DF70];
    v24 = [v28 objectForKey:@"substitutions"];
    v25 = [v23 arrayWithArray:v24];

    [v25 addObject:v21];
    v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v25];
  }

  else
  {
    v29 = v21;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  }

  [v28 setObject:v26 forKey:@"substitutions"];
}

+ (void)logSpeechAlternativeReplacement:(id)a3 originalText:(id)a4 replacementText:(id)a5 index:(unint64_t)a6
{
  v28[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27[0] = @"index";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6 + 1];
  v28[0] = v12;
  v28[1] = v10;
  v27[1] = @"originalText";
  v27[2] = @"replacementText";
  v28[2] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

  v14 = [v9 objectForKey:@"alternativesSelected"];

  if (v14)
  {
    v15 = MEMORY[0x1E695DF70];
    v16 = [v9 objectForKey:@"alternativesSelected"];
    v17 = [v15 arrayWithArray:v16];

    [v17 addObject:v13];
    v18 = [MEMORY[0x1E695DEC8] arrayWithArray:v17];
    [v9 setObject:v18 forKey:@"alternativesSelected"];
  }

  else
  {
    v26 = v13;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    [v9 setObject:v17 forKey:@"alternativesSelected"];
  }

  v19 = [v9 objectForKey:@"correctionIdentifier"];
  v20 = [v9 objectForKey:@"dictationUIInteractionIdentifier"];
  v21 = +[UIDictationController activeInstance];
  [v21 logAlternativeSelected:v13 correctionIdentifier:v19 interactionIdentifier:v20];

  v22 = [v9 objectForKey:@"alternativesAvailableCount"];
  v23 = [v22 integerValue];

  v24 = [v9 objectForKey:@"dictationLanguage"];
  v25 = [v9 objectForKey:@"dictationInstrumentationContext"];
  [UIDictationController instrumentationDictationAlternativeSelectedWithInstrumentationContext:v25 originalText:v10 replacementText:v11 replacementIndex:a6 alternativesAvailableCount:v23 dictationLanguage:v24];
}

+ (void)attributedString:(id)a3 withIdentifiersBlock:(id)a4
{
  v10 = a4;
  v5 = [a3 attribute:@"_UITextInputDictationResultMetadata" atIndex:0 effectiveRange:0];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 objectForKeyedSubscript:@"correctionIdentifier"];
    v7 = [v5 objectForKeyedSubscript:@"dictationUIInteractionIdentifier"];
    v8 = [v5 objectForKeyedSubscript:@"dictationInstrumentationContext"];
    v9 = [v5 objectForKeyedSubscript:@"dictationLanguage"];
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0;
  }

  v10[2](v10, v6, v7, v8, v9);
}

+ (unint64_t)maxLoggableLengthOfInsertionWithoutDeletion:(id)a3
{
  v3 = [a3 objectForKey:@"speechRecognitionSource"];
  if ([v3 isEqualToString:@"local"])
  {
    v4 = -1;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (unint64_t)maxLoggableLengthOfInsertionWithDeletion:(id)a3
{
  v3 = [a3 objectForKey:@"speechRecognitionSource"];
  if ([v3 isEqualToString:@"local"])
  {
    v4 = -1;
  }

  else
  {
    v4 = 12;
  }

  return v4;
}

+ (unint64_t)maxLoggableLengthOfInsertionBySubstitution:(id)a3
{
  v3 = [a3 objectForKey:@"speechRecognitionSource"];
  if ([v3 isEqualToString:@"local"])
  {
    v4 = -1;
  }

  else
  {
    v4 = 12;
  }

  return v4;
}

+ (id)trackingPunctuations
{
  if (qword_1ED49F278 != -1)
  {
    dispatch_once(&qword_1ED49F278, &__block_literal_global_202_0);
  }

  v3 = qword_1ED49F270;

  return v3;
}

void __44__UIDictationUtilities_trackingPunctuations__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@", ", @".", @"!", @"?", @"，", @"。", @"！", @"？", 0}];
  v1 = qword_1ED49F270;
  qword_1ED49F270 = v0;
}

+ (BOOL)utilizeInputContextHistory
{
  if (qword_1ED49F280 != -1)
  {
    dispatch_once(&qword_1ED49F280, &__block_literal_global_228_1);
  }

  return _MergedGlobals_1183;
}

void __50__UIDictationUtilities_utilizeInputContextHistory__block_invoke()
{
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.MobileSMS", @"com.apple.mobilemail", 0}];
  v0 = +[UIKeyboard keyboardBundleIdentifier];
  _MergedGlobals_1183 = [v1 containsObject:v0];
}

+ (BOOL)shouldInsertSpaceBetweenStringA:(id)a3 andStringB:(id)a4
{
  v5 = MEMORY[0x1E696AB08];
  v6 = a4;
  v7 = a3;
  v8 = [v5 punctuationCharacterSet];
  v9 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  v10 = [v6 characterAtIndex:0];

  v11 = [v7 characterAtIndex:{objc_msgSend(v7, "length") - 1}];
  LOBYTE(v7) = [v8 characterIsMember:v10];
  LOBYTE(v11) = v7 | [v9 characterIsMember:v11];

  return (v11 & 1) == 0;
}

+ (BOOL)_isAutomaticKeyboardDownDictationDisabled
{
  if (_isAutomaticKeyboardDownDictationDisabled_onceToken != -1)
  {
    dispatch_once(&_isAutomaticKeyboardDownDictationDisabled_onceToken, &__block_literal_global_279);
  }

  return 1;
}

void __65__UIDictationUtilities__isAutomaticKeyboardDownDictationDisabled__block_invoke()
{
  v1 = _UIKitUserDefaults();
  if (([v1 BOOLForKey:@"UIAutomaticKeyboardDownDictationDisabled"] & 1) == 0)
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v0 BOOLForKey:@"UIAutomaticKeyboardDownDictationDisabled"];
  }
}

+ (BOOL)_isDictationAssetAvailableForCurrentInputModeDictationLanguage
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 currentInputMode];
  v5 = [v4 dictationLanguage];
  LOBYTE(a1) = [a1 _isDictationAssetAvailableForLocale:v5];

  return a1;
}

+ (BOOL)_isDictationAssetAvailableForLocale:(id)a3
{
  v3 = a3;
  if (qword_1ED49F2A0 != -1)
  {
    dispatch_once(&qword_1ED49F2A0, &__block_literal_global_287_1);
  }

  v4 = SpeechLibrary();
  v5 = 0;
  if (v3 && v4)
  {
    v6 = [objc_opt_class() _remapDictationLocaleFromLanguage:v3];
    v7 = [v6 languageIdentifier];

    v8 = [getSFSpeechAssetManagerClass() languageCode:v7];
    if ([qword_1ED49F298 containsObject:v8])
    {
      v5 = 1;
    }

    else
    {
      v9 = qword_1ED49F298;
      v5 = 1;
      v10 = [getSFSpeechAssetManagerClass() installedLanguagesForTaskHint:1];
      [v9 unionSet:v10];

      if (([qword_1ED49F298 containsObject:v8] & 1) == 0)
      {
        if (([qword_1ED49F290 containsObject:v8] & 1) == 0)
        {
          v22 = 0;
          v23 = &v22;
          v24 = 0x2050000000;
          v11 = qword_1ED49F2C8;
          v25 = qword_1ED49F2C8;
          if (!qword_1ED49F2C8)
          {
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __getSFEntitledAssetConfigClass_block_invoke;
            v21[3] = &unk_1E70F2F20;
            v21[4] = &v22;
            __getSFEntitledAssetConfigClass_block_invoke(v21);
            v11 = v23[3];
          }

          v12 = v11;
          _Block_object_dispose(&v22, 8);
          v13 = [[v11 alloc] initWithLanguage:v8 taskHint:1];
          SFSpeechAssetManagerClass = getSFSpeechAssetManagerClass();
          v15 = [getSFSpeechAssetManagerClass() systemClientId];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __60__UIDictationUtilities__isDictationAssetAvailableForLocale___block_invoke_2;
          v19[3] = &unk_1E7105EF8;
          v20 = v8;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __60__UIDictationUtilities__isDictationAssetAvailableForLocale___block_invoke_3;
          v17[3] = &unk_1E71157D8;
          v18 = v20;
          [SFSpeechAssetManagerClass fetchAssetWithConfig:v13 clientIdentifier:v15 progress:v19 completion:v17];
        }

        v5 = 0;
      }
    }

    v3 = v7;
  }

  return v5;
}

void __60__UIDictationUtilities__isDictationAssetAvailableForLocale___block_invoke()
{
  v0 = [MEMORY[0x1E695DFA8] set];
  v1 = qword_1ED49F290;
  qword_1ED49F290 = v0;

  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = qword_1ED49F298;
  qword_1ED49F298 = v2;
}

void __60__UIDictationUtilities__isDictationAssetAvailableForLocale___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    [qword_1ED49F298 addObject:*(a1 + 32)];
  }

  if ([qword_1ED49F290 containsObject:*(a1 + 32)])
  {
    [qword_1ED49F290 removeObject:*(a1 + 32)];
  }
}

+ (id)_remapDictationLocaleFromLanguage:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"_"];
  v5 = [v4 componentsJoinedByString:@"-"];

  v6 = v5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = get_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCodeSymbolLoc_ptr;
  v18 = get_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCodeSymbolLoc_ptr;
  if (!get_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCodeSymbolLoc_ptr)
  {
    v8 = AssistantServicesLibrary_2();
    v16[3] = dlsym(v8, "_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode");
    get_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCodeSymbolLoc_ptr = v16[3];
    v7 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v7)
  {
    v9 = v7(v6);

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v3;
    }

    v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v10];

    return v11;
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *__AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode(NSString *__strong)"];
    [v13 handleFailureInFunction:v14 file:@"UIDictationUtilities.m" lineNumber:63 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)capitalizeFirstWord:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__127;
  v12 = __Block_byref_object_dispose__127;
  v13 = [v3 mutableCopy];
  v4 = [v3 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__UIDictationUtilities_capitalizeFirstWord___block_invoke;
  v7[3] = &unk_1E70FDB08;
  v7[4] = &v8;
  [v3 enumerateSubstringsInRange:0 options:v4 usingBlock:{3, v7}];
  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __44__UIDictationUtilities_capitalizeFirstWord___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v14 = a2;
  v11 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
  v12 = [v14 rangeOfCharacterFromSet:v11];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v14 capitalizedString];
    [*(*(*(a1 + 32) + 8) + 40) replaceCharactersInRange:a3 withString:{a4, v13}];
  }

  *a7 = 1;
}

+ (id)_normalizeToSpeechString:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (qword_1ED49F2B0 != -1)
  {
    dispatch_once(&qword_1ED49F2B0, &__block_literal_global_300);
  }

  v4 = v3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = qword_1ED49F2A8;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v7 = v4;
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    v7 = v4;
    do
    {
      v10 = 0;
      v11 = v7;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * v10);
        v13 = [qword_1ED49F2A8 objectForKeyedSubscript:{v12, v15}];
        v7 = [v11 stringByReplacingOccurrencesOfString:v12 withString:v13];

        ++v10;
        v11 = v7;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v7;
}

void __49__UIDictationUtilities__normalizeToSpeechString___block_invoke()
{
  v0 = qword_1ED49F2A8;
  qword_1ED49F2A8 = &unk_1EFE34450;
}

+ (id)applySmartPunctuationToString:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v5 = [v4 smartPunctuationController];

    v6 = [v5 smartPunctuationResultsForString:v3];
    if ([v6 count])
    {
      v20 = v5;
      v7 = [v3 mutableCopy];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            v14 = [v13 range];
            v16 = v15;
            v17 = [v13 replacementString];
            [v7 replaceCharactersInRange:v14 withString:{v16, v17}];
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }

      v18 = [v7 copy];
      v5 = v20;
    }

    else
    {
      v18 = v3;
    }
  }

  else
  {
    v18 = v3;
  }

  return v18;
}

+ (void)searchString:(id)a3 contextBefore:(id)a4 contextAfter:(id)a5 completionHandler:(id)a6
{
  v35 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (qword_1ED49F2C0 != -1)
  {
    dispatch_once(&qword_1ED49F2C0, &__block_literal_global_322);
  }

  v12 = +[UIDictationController sharedInstance];
  v13 = [v12 language];
  v14 = TIInputModeGetLanguage();
  v15 = v14;
  v16 = &stru_1EFB14550;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [qword_1ED49F2B8 containsObject:v17];
  v19 = [UIDictationUtilities _normalizeToSpeechString:v35];
  v20 = [UIDictationUtilities _normalizeToSpeechString:v9];
  v21 = [UIDictationUtilities _normalizeToSpeechString:v10];
  if (v18)
  {
    v22 = [v20 rangeOfString:v19 options:5];
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v23;
      if (v23)
      {
        v25 = v22;
        goto LABEL_21;
      }
    }

    v25 = [v21 rangeOfString:v19 options:1];
    v24 = v28;
  }

  else
  {
    v26 = [UIDictationUtilities searchStringWithWordBoundariesValidation:v20 substring:v19 reverse:1];
    if (v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v27;
      if (v27)
      {
        v25 = v26;
        goto LABEL_21;
      }
    }

    v30 = [UIDictationUtilities searchStringWithWordBoundariesValidation:v21 substring:v19 reverse:0];
    if (v30 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v31;
      if (v31)
      {
        v25 = v30;
        v29 = v9;
        v9 = 0;
        goto LABEL_20;
      }
    }

    v29 = objc_alloc_init(UIDictationWordsSeeker);
    v32 = [(UIDictationWordsSeeker *)v29 rangeOfSubstring:v19 fullString:v20 reverse:1];
    if (v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v33;
      if (v33)
      {
        v25 = v32;
        goto LABEL_20;
      }
    }

    v25 = [(UIDictationWordsSeeker *)v29 rangeOfSubstring:v19 fullString:v21 reverse:0];
    v24 = v34;
  }

  v29 = v9;
  v9 = 0;
LABEL_20:

LABEL_21:
  if (v11)
  {
    v11[2](v11, v9, v25, v24);
  }
}

void __82__UIDictationUtilities_searchString_contextBefore_contextAfter_completionHandler___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"ja", @"zh", @"wuu", @"yue", 0}];
  v1 = qword_1ED49F2B8;
  qword_1ED49F2B8 = v0;
}

+ (_NSRange)searchStringWithWordBoundariesValidation:(id)a3 substring:(id)a4 reverse:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 rangeOfString:v7];
  v11 = v10;
  v12 = [[UIDictationWordsSeeker alloc] initWithString:v7 substring:v8 reverse:v5];
  if (v5)
  {
    v13 = 5;
  }

  else
  {
    v13 = 1;
  }

  if (v11)
  {
    v14 = v11;
    while (1)
    {
      v15 = [v7 rangeOfString:v8 options:v13 range:{v9, v14}];
      v17 = v16;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v18 = v15;
      if (![(UIDictationWordsSeeker *)v12 validateWordBoundariesInRange:v15, v16])
      {
        v9 = v5 ? 0 : v18 + v17;
        v14 = v5 ? v18 : v11 - (v18 + v17);
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  v19 = v18;
  v20 = v17;
  result.length = v20;
  result.location = v19;
  return result;
}

+ (id)rangesForSearchStringWithWordBoundariesValidation:(id)a3 substring:(id)a4 reverse:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  [MEMORY[0x1E695DF70] array];
  v26 = v25 = v7;
  v9 = [UIDictationUtilities _normalizeToSpeechString:v7];
  v10 = [UIDictationUtilities _normalizeToSpeechString:v8];
  v11 = [v9 rangeOfString:v9];
  v13 = v12;
  v14 = [[UIDictationWordsSeeker alloc] initWithString:v9 substring:v10 reverse:v5];
  if (v5)
  {
    v15 = 5;
  }

  else
  {
    v15 = 1;
  }

  if (v13)
  {
    v16 = v13;
    do
    {
      v17 = [v9 rangeOfString:v10 options:v15 range:{v11, v16}];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      if ([(UIDictationWordsSeeker *)v14 validateWordBoundariesInRange:v17, v18])
      {
        v21 = [MEMORY[0x1E696B098] valueWithRange:{v19, v20}];
        [v26 addObject:v21];
      }

      v22 = v13 - (v19 + v20);
      v11 = v5 ? 0 : v19 + v20;
      v16 = v5 ? v19 : v22;
    }

    while (v16);
  }

  v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v26];

  return v23;
}

+ (id)activeMultilingualKeyboardDictationMappings
{
  v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:*MEMORY[0x1E69D96E8]];

  return v3;
}

+ (void)setActiveMultilingualKeyboardDictationMappings:(id)a3 activeDictationlanguage:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v7 = [v8 preferencesActions];
  [v7 updateLastUsedDictionaryLanguageInMultilingualKeyboard:v6 activeDictationlanguage:v5];
}

@end