@interface CRNamedEntityRecognizer
+ (id)_NLLanguageFromLocale:(id)locale;
- (CRNamedEntityRecognizer)initWithNameGazetteerURL:(id)l lastNameGazetteerURL:(id)rL;
- (double)personNameScoreForStringWithGazetteers:(id)gazetteers locale:(id)locale useLastNameGazetteer:(BOOL)gazetteer;
- (double)personNameScoreForStringWithTagger:(id)tagger locale:(id)locale;
- (id)_labelForString:(id)string useLastNameGazetteer:(BOOL)gazetteer;
- (id)_nameCandidateTokensFromString:(id)string;
- (id)_tokenizeString:(id)string;
@end

@implementation CRNamedEntityRecognizer

- (CRNamedEntityRecognizer)initWithNameGazetteerURL:(id)l lastNameGazetteerURL:(id)rL
{
  v20[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v19.receiver = self;
  v19.super_class = CRNamedEntityRecognizer;
  v8 = [(CRNamedEntityRecognizer *)&v19 init];
  if (v8)
  {
    v20[0] = *MEMORY[0x1E69779D0];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v10 = [objc_alloc(MEMORY[0x1E6977A40]) initWithContentsOfURL:lCopy error:0];
    nameGazetteer = v8->_nameGazetteer;
    v8->_nameGazetteer = v10;

    v12 = [objc_alloc(MEMORY[0x1E6977A40]) initWithContentsOfURL:rLCopy error:0];
    lastNameGazetteer = v8->_lastNameGazetteer;
    v8->_lastNameGazetteer = v12;

    v14 = [objc_alloc(MEMORY[0x1E6977A80]) initWithTagSchemes:v9];
    tagger = v8->_tagger;
    v8->_tagger = v14;

    v16 = [objc_alloc(MEMORY[0x1E6977A88]) initWithUnit:0];
    tokenizer = v8->_tokenizer;
    v8->_tokenizer = v16;
  }

  return v8;
}

- (id)_tokenizeString:(id)string
{
  tokenizer = self->_tokenizer;
  stringCopy = string;
  [(NLTokenizer *)tokenizer setString:stringCopy];
  v6 = self->_tokenizer;
  v7 = [stringCopy length];

  v8 = [(NLTokenizer *)v6 tokensForRange:0, v7];
  [(NLTokenizer *)self->_tokenizer setString:&stru_1F2BB4348];

  return v8;
}

- (id)_labelForString:(id)string useLastNameGazetteer:(BOOL)gazetteer
{
  gazetteerCopy = gazetteer;
  stringCopy = string;
  if (qword_1ED95FE78 != -1)
  {
    dispatch_once(&qword_1ED95FE78, &__block_literal_global_5);
  }

  lowercaseString = [stringCopy lowercaseString];
  if ([_MergedGlobals_13 containsObject:lowercaseString])
  {
    v8 = @"PersonName";
  }

  else if ([qword_1ED95FE70 containsObject:lowercaseString])
  {
    v8 = 0;
  }

  else
  {
    v9 = 8;
    if (gazetteerCopy)
    {
      v9 = 16;
    }

    v8 = [*(&self->super.isa + v9) labelForString:stringCopy];
  }

  return v8;
}

void __64__CRNamedEntityRecognizer__labelForString_useLastNameGazetteer___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2BF8818];
  v1 = _MergedGlobals_13;
  _MergedGlobals_13 = v0;

  v2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2BF8830];
  v3 = qword_1ED95FE70;
  qword_1ED95FE70 = v2;
}

+ (id)_NLLanguageFromLocale:(id)locale
{
  v3 = qword_1ED95FE88;
  localeCopy = locale;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED95FE88, &__block_literal_global_28);
  }

  v5 = [qword_1ED95FE80 valueForKey:localeCopy];

  return v5;
}

void __49__CRNamedEntityRecognizer__NLLanguageFromLocale___block_invoke()
{
  v8[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6977768];
  v7[0] = @"de-DE";
  v7[1] = @"en-US";
  v1 = *MEMORY[0x1E6977748];
  v8[0] = v0;
  v8[1] = v1;
  v2 = *MEMORY[0x1E6977860];
  v7[2] = @"es-ES";
  v7[3] = @"fr-FR";
  v3 = *MEMORY[0x1E6977758];
  v8[2] = v2;
  v8[3] = v3;
  v7[4] = @"it-IT";
  v7[5] = @"pt-BR";
  v4 = *MEMORY[0x1E6977820];
  v8[4] = *MEMORY[0x1E69777A8];
  v8[5] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v6 = qword_1ED95FE80;
  qword_1ED95FE80 = v5;
}

- (id)_nameCandidateTokensFromString:(id)string
{
  stringCopy = string;
  if (qword_1ED95FE90 != -1)
  {
    dispatch_once(&qword_1ED95FE90, &__block_literal_global_31);
  }

  v4 = [stringCopy componentsSeparatedByString:@" "];
  if ([v4 count] < 2 || objc_msgSend(v4, "count") > 4)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v6 = objc_opt_new();
  if (![v4 count])
  {
LABEL_18:
    v5 = v6;
    goto LABEL_20;
  }

  v7 = 0;
  while (1)
  {
    v8 = [v4 objectAtIndexedSubscript:v7];
    if (v7 && v7 < [v4 count] - 1 && objc_msgSend(v8, "length") == 2)
    {
      uppercaseLetterCharacterSet = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
      if ([uppercaseLetterCharacterSet characterIsMember:{objc_msgSend(v8, "characterAtIndex:", 0)}])
      {
        v10 = [v8 characterAtIndex:1];

        if (v10 == 46)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    v11 = qword_1ED95FE98;
    lowercaseString = [v8 lowercaseString];
    LOBYTE(v11) = [v11 containsObject:lowercaseString];

    if (v11)
    {
      break;
    }

    [v6 addObject:v8];
LABEL_17:

    if (++v7 >= [v4 count])
    {
      goto LABEL_18;
    }
  }

  v5 = 0;
LABEL_20:

LABEL_21:

  return v5;
}

void __58__CRNamedEntityRecognizer__nameCandidateTokensFromString___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2BF8848];
  v1 = qword_1ED95FE98;
  qword_1ED95FE98 = v0;
}

- (double)personNameScoreForStringWithGazetteers:(id)gazetteers locale:(id)locale useLastNameGazetteer:(BOOL)gazetteer
{
  gazetteerCopy = gazetteer;
  v27 = *MEMORY[0x1E69E9840];
  lowercaseString = [gazetteers lowercaseString];
  v8 = [(CRNamedEntityRecognizer *)self _nameCandidateTokensFromString:lowercaseString];
  v9 = v8;
  if (v8)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [(CRNamedEntityRecognizer *)self _labelForString:v15 useLastNameGazetteer:0, v22];
          if (v16)
          {
          }

          else
          {
            v17 = -1.0;
            if (!gazetteerCopy)
            {
              goto LABEL_17;
            }

            lastObject = [v10 lastObject];
            v19 = lastObject;
            if (v15 != lastObject)
            {

              goto LABEL_17;
            }

            v20 = [(CRNamedEntityRecognizer *)self _labelForString:v15 useLastNameGazetteer:1];

            if (!v20)
            {
              goto LABEL_17;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = 1.0;
LABEL_17:
  }

  else
  {
    v17 = -1.0;
  }

  return v17;
}

- (double)personNameScoreForStringWithTagger:(id)tagger locale:(id)locale
{
  taggerCopy = tagger;
  localeCopy = locale;
  v8 = [(CRNamedEntityRecognizer *)self _nameCandidateTokensFromString:taggerCopy];
  if (v8)
  {
    v9 = [objc_opt_class() _NLLanguageFromLocale:localeCopy];
    v10 = v9;
    if (!self->_tagger || !v9)
    {
      goto LABEL_7;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v11 = [v8 componentsJoinedByString:@" "];
    [(NLTagger *)self->_tagger setString:v11];
    -[NLTagger setLanguage:range:](self->_tagger, "setLanguage:range:", v10, 0, [v11 length]);
    tagger = self->_tagger;
    v13 = [v11 length];
    v14 = *MEMORY[0x1E69779D0];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__CRNamedEntityRecognizer_personNameScoreForStringWithTagger_locale___block_invoke;
    v21[3] = &unk_1E7BC2670;
    v21[4] = &v22;
    [(NLTagger *)tagger enumerateTagsInRange:0 unit:v13 scheme:0 options:v14 usingBlock:0, v21];
    v15 = v23[3];
    v16 = [v8 count];
    v17 = 3;
    if (v16 > 3)
    {
      v17 = v16;
    }

    v18 = v17 - 1;

    _Block_object_dispose(&v22, 8);
    v19 = 1.0;
    if (v15 < v18)
    {
LABEL_7:
      v19 = -1.0;
    }
  }

  else
  {
    v19 = -1.0;
  }

  return v19;
}

uint64_t __69__CRNamedEntityRecognizer_personNameScoreForStringWithTagger_locale___block_invoke(uint64_t result, uint64_t a2)
{
  if (*MEMORY[0x1E6977988] == a2)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

@end