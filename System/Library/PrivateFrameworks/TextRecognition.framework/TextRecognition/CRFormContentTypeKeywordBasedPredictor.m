@interface CRFormContentTypeKeywordBasedPredictor
+ (BOOL)_shouldPredictContentTypeForLabel:(id)a3 locale:(id)a4;
+ (id)_keywordMapForPriorityKeywords:(BOOL)a3;
+ (id)lookupLanguagesForLanguage:(id)a3;
+ (id)supportedLanguages;
+ (id)useKeywordTypes;
+ (unint64_t)_nonStructuralContentTypeFromType:(unint64_t)a3;
+ (unint64_t)predictContentTypeWithKeywordMatching:(id)a3 locale:(id)a4 keyword:(id *)a5 withPriorityKeywords:(BOOL)a6;
@end

@implementation CRFormContentTypeKeywordBasedPredictor

+ (id)supportedLanguages
{
  if (_MergedGlobals_11 != -1)
  {
    dispatch_once(&_MergedGlobals_11, &__block_literal_global_3);
  }

  [qword_1ED95FD68 addObject:@"unknown"];
  v2 = qword_1ED95FD68;

  return v2;
}

void __60__CRFormContentTypeKeywordBasedPredictor_supportedLanguages__block_invoke()
{
  v15[13] = *MEMORY[0x1E69E9840];
  v15[0] = @"de-DE";
  v15[1] = @"en-US";
  v15[2] = @"es-ES";
  v15[3] = @"fr-FR";
  v15[4] = @"it-IT";
  v15[5] = @"ja-JP";
  v15[6] = @"ko-KR";
  v15[7] = @"pt-BR";
  v15[8] = @"ru-RU";
  v15[9] = @"th-TH";
  v15[10] = @"uk-UA";
  v15[11] = @"vi-VT";
  v15[12] = @"zh-Hans";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:13];
  v1 = objc_opt_new();
  v2 = qword_1ED95FD68;
  qword_1ED95FD68 = v1;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v0;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{*(*(&v10 + 1) + 8 * v6), v10}];
        v8 = qword_1ED95FD68;
        v9 = [v7 languageCode];
        [v8 addObject:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [qword_1ED95FD68 addObject:@"unknown"];
}

+ (id)lookupLanguagesForLanguage:(id)a3
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v7 = &unk_1F2BF87D0;
    goto LABEL_14;
  }

  if ([v3 isEqualToString:@"ja"])
  {
    v13[0] = v4;
    v13[1] = @"unknown";
    v13[2] = @"zh";
    v13[3] = @"en";
    v5 = v13;
    v6 = 4;
  }

  else
  {
    if (![v4 isEqualToString:@"uk"])
    {
      if ([v4 isEqualToString:@"ru"])
      {
        v11[0] = v4;
        v11[1] = @"en";
        v11[2] = @"unknown";
        v5 = v11;
      }

      else
      {
        if ([v4 isEqualToString:@"fr"])
        {
          v10[0] = v4;
          v10[1] = @"es";
          v10[2] = @"it";
          v10[3] = @"unknown";
          v10[4] = @"en";
          v5 = v10;
          v6 = 5;
          goto LABEL_13;
        }

        v9[0] = v4;
        v9[1] = @"en";
        v9[2] = @"unknown";
        v5 = v9;
      }

      v6 = 3;
      goto LABEL_13;
    }

    v12[0] = v4;
    v12[1] = @"ru";
    v12[2] = @"unknown";
    v12[3] = @"en";
    v12[4] = @"de";
    v12[5] = @"es";
    v5 = v12;
    v12[6] = @"fr";
    v12[7] = @"it";
    v12[8] = @"pt";
    v6 = 9;
  }

LABEL_13:
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:v6];
LABEL_14:

  return v7;
}

+ (id)_keywordMapForPriorityKeywords:(BOOL)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CRFormContentTypeKeywordBasedPredictor__keywordMapForPriorityKeywords___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED95FD70 != -1)
  {
    dispatch_once(&qword_1ED95FD70, block);
  }

  v4 = 3;
  if (v3)
  {
    v4 = 4;
  }

  v5 = _MergedGlobals_11[v4];

  return v5;
}

void __73__CRFormContentTypeKeywordBasedPredictor__keywordMapForPriorityKeywords___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_new();
  v2 = qword_1ED95FD78;
  qword_1ED95FD78 = v1;

  v3 = objc_opt_new();
  v4 = qword_1ED95FD80;
  qword_1ED95FD80 = v3;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v65[0] = qword_1ED95FD78;
  v65[1] = qword_1ED95FD80;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v33 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v33)
  {
    v34 = *v59;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v59 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v58 + 1) + 8 * i);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v6 = [*(a1 + 32) supportedLanguages];
        v7 = [v6 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v7)
        {
          v8 = *v55;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v55 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v54 + 1) + 8 * j);
              v11 = objc_opt_new();
              [v5 setObject:v11 forKeyedSubscript:v10];
            }

            v7 = [v6 countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v7);
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v37 = getFormContentTypeMappings();
        v42 = [v37 countByEnumeratingWithState:&v50 objects:v63 count:16];
        if (v42)
        {
          v40 = *v51;
          do
          {
            for (k = 0; k != v42; ++k)
            {
              if (*v51 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v12 = *(*(&v50 + 1) + 8 * k);
              v13 = [v12 objectForKeyedSubscript:@"locale"];
              v45 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
              v14 = [*(a1 + 32) supportedLanguages];
              v15 = [v14 containsObject:v13];

              if (v15)
              {
                v16 = [v12 objectForKeyedSubscript:@"type"];
                v17 = [CRFormContentTypeUtilities contentTypeFromString:v16];

                v18 = @"keywords";
                if (v5 == qword_1ED95FD80)
                {
                  v18 = @"priorityKeywords";
                }

                v39 = v18;
                v19 = [v12 objectForKeyedSubscript:?];
                if (v19)
                {
                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v38 = v19;
                  v44 = v19;
                  v20 = [v44 countByEnumeratingWithState:&v46 objects:v62 count:16];
                  if (v20)
                  {
                    v21 = *v47;
                    do
                    {
                      for (m = 0; m != v20; ++m)
                      {
                        if (*v47 != v21)
                        {
                          objc_enumerationMutation(v44);
                        }

                        v23 = *(*(&v46 + 1) + 8 * m);
                        if (v45)
                        {
                          [v23 lowercaseStringWithLocale:?];
                        }

                        else
                        {
                          [v23 lowercaseString];
                        }
                        v24 = ;
                        v25 = [v5 objectForKeyedSubscript:v13];
                        v26 = [v25 allKeys];
                        v27 = [v26 containsObject:v24];

                        if ((v27 & 1) == 0)
                        {
                          v28 = [MEMORY[0x1E695DF70] array];
                          v29 = [v5 objectForKeyedSubscript:v13];
                          [v29 setObject:v28 forKeyedSubscript:v24];
                        }

                        v30 = [v5 objectForKeyedSubscript:v13];
                        v31 = [v30 objectForKeyedSubscript:v24];
                        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
                        [v31 addObject:v32];
                      }

                      v20 = [v44 countByEnumeratingWithState:&v46 objects:v62 count:16];
                    }

                    while (v20);
                  }

                  v19 = v38;
                }
              }
            }

            v42 = [v37 countByEnumeratingWithState:&v50 objects:v63 count:16];
          }

          while (v42);
        }
      }

      v33 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v33);
  }
}

+ (id)useKeywordTypes
{
  if (qword_1ED95FD90 != -1)
  {
    dispatch_once(&qword_1ED95FD90, &__block_literal_global_59);
  }

  v3 = qword_1ED95FD88;

  return v3;
}

void __57__CRFormContentTypeKeywordBasedPredictor_useKeywordTypes__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2BF87E8];
  v1 = qword_1ED95FD88;
  qword_1ED95FD88 = v0;
}

+ (unint64_t)predictContentTypeWithKeywordMatching:(id)a3 locale:(id)a4 keyword:(id *)a5 withPriorityKeywords:(BOOL)a6
{
  v6 = a6;
  v77[3] = *MEMORY[0x1E69E9840];
  v55 = a3;
  v58 = a4;
  if (qword_1ED95FD98 != -1)
  {
    dispatch_once(&qword_1ED95FD98, &__block_literal_global_84);
  }

  v52 = v6;
  v8 = [a1 _keywordMapForPriorityKeywords:v6];
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v58];
  v57 = v9;
  if (v9)
  {
    [v55 lowercaseStringWithLocale:v9];
  }

  else
  {
    [v55 lowercaseString];
  }
  v56 = ;
  v10 = [v57 languageCode];
  v61 = v10;
  v11 = &stru_1F2BB4348;
  if ([v10 isEqualToString:@"zh"])
  {
    v48 = &stru_1F2BB4348;
    v12 = &qword_1ED95FDA8;
    v13 = 1;
  }

  else
  {
    v14 = [v10 isEqualToString:@"ja"];
    v13 = v14;
    if ((v14 & 1) == 0)
    {
      v11 = @" ";
    }

    v48 = v11;
    v12 = &qword_1ED95FDA0;
    if (v14)
    {
      v12 = &qword_1ED95FDA8;
    }
  }

  v15 = [v56 _crStringByReplacingCharactersInSet:*v12 withString:@" "];
  v77[0] = v15;
  v16 = 8;
  if (v13)
  {
    v16 = 9;
  }

  v17 = [v56 _crStringByReplacingCharactersInSet:_MergedGlobals_11[v16] withString:&stru_1F2BB4348];
  v47 = v13;
  v77[1] = v17;
  v77[2] = v56;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v18;
  v19 = v61;
  v46 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v46)
  {
    v51 = *v71;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v71 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v70 + 1) + 8 * i);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v21 = [a1 lookupLanguagesForLanguage:v19];
        v22 = [v21 countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (v22)
        {
          v23 = *v67;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v67 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v66 + 1) + 8 * j);
              v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@$", v20];
              v27 = [v8 objectForKeyedSubscript:v25];
              v28 = [v27 objectForKey:v26];

              if (v28)
              {
                v41 = [v28 firstObject];
                v40 = [v41 unsignedIntegerValue];

                if (a5)
                {
                  v42 = v26;
                  *a5 = v26;
                }

LABEL_61:

                goto LABEL_62;
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v66 objects:v75 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        if (v47)
        {
          v21 = [v20 _crArrayOfComposedCharacters];
          v29 = 5;
        }

        else
        {
          v21 = [v20 componentsSeparatedByString:@" "];
          v29 = 6;
        }

        v30 = [v21 count];
        if (v30 >= 1)
        {
          if (v30 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v30;
          }

          v49 = v31;
          do
          {
            for (k = 0; k + v49 <= [v21 count]; ++k)
            {
              v32 = [v61 isEqualToString:@"ja"] ^ 1;
              if (v49 > 2)
              {
                LOBYTE(v32) = 1;
              }

              if ((v32 & 1) != 0 || k + v49 == [v21 count])
              {
                v33 = [v21 subarrayWithRange:{k, v49}];
                v26 = [v33 componentsJoinedByString:v48];

                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v28 = [a1 lookupLanguagesForLanguage:v61];
                v34 = [v28 countByEnumeratingWithState:&v62 objects:v74 count:16];
                if (v34)
                {
                  v35 = *v63;
                  while (2)
                  {
                    for (m = 0; m != v34; ++m)
                    {
                      if (*v63 != v35)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v37 = [v8 objectForKeyedSubscript:*(*(&v62 + 1) + 8 * m)];
                      v38 = [v37 objectForKey:v26];

                      if (v38)
                      {
                        v43 = [v38 firstObject];
                        v40 = [v43 unsignedIntegerValue];

                        if (a5)
                        {
                          v44 = v26;
                          *a5 = v26;
                        }

                        goto LABEL_61;
                      }
                    }

                    v34 = [v28 countByEnumeratingWithState:&v62 objects:v74 count:16];
                    if (v34)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }
            }
          }

          while (v49-- >= 2);
        }

        v19 = v61;
      }

      v46 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v46);
  }

  v40 = !v52;
LABEL_62:

  return v40;
}

void __116__CRFormContentTypeKeywordBasedPredictor_predictContentTypeWithKeywordMatching_locale_keyword_withPriorityKeywords___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@":., -—_/()[]<>"}];;
  v1 = qword_1ED95FDA0;
  qword_1ED95FDA0 = v0;

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@":：., -—_()[]<>"}];;
  v3 = qword_1ED95FDA8;
  qword_1ED95FDA8 = v2;
}

+ (BOOL)_shouldPredictContentTypeForLabel:(id)a3 locale:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6 || ![CRImageReader languageIsChinese:v6]&& ![CRImageReader languageIsJapanese:v6]&& ![CRImageReader languageIsKorean:v6])
  {
    v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v9 = [v5 componentsSeparatedByCharactersInSet:v8];
    v10 = [v9 count];

    if (v10 > 0x10)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  if ([v5 length] <= 0x10)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 0;
LABEL_9:

  return v7;
}

+ (unint64_t)_nonStructuralContentTypeFromType:(unint64_t)a3
{
  if (qword_1ED95FDB8 != -1)
  {
    dispatch_once(&qword_1ED95FDB8, &__block_literal_global_104);
  }

  v4 = qword_1ED95FDB0;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    a3 = [v6 unsignedIntegerValue];
  }

  return a3;
}

void __76__CRFormContentTypeKeywordBasedPredictor__nonStructuralContentTypeFromType___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2BF82C0;
  v2[1] = &unk_1F2BF82F0;
  v3[0] = &unk_1F2BF82D8;
  v3[1] = &unk_1F2BF82D8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = qword_1ED95FDB0;
  qword_1ED95FDB0 = v0;
}

@end