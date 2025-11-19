@interface PRWordLanguageModel
+ (id)languageModelWithLocalization:(id)a3 appIdentifier:(id)a4 lexicon:(id)a5;
- (PRWordLanguageModel)initWithLocalization:(id)a3 appIdentifier:(id)a4 lexicon:(id)a5;
- (id)_descriptionForTokenSequence:(const unsigned int *)a3 length:(unint64_t)a4;
- (id)description;
- (id)stringForTokenID:(unsigned int)a3;
- (void)dealloc;
- (void)enumerateEntriesForString:(id)a3 withBlock:(id)a4;
- (void)enumeratePredictionsForContext:(const unsigned int *)a3 length:(unint64_t)a4 maxPredictions:(unint64_t)a5 maxTokensPerPrediction:(unint64_t)a6 withBlock:(id)a7;
@end

@implementation PRWordLanguageModel

- (PRWordLanguageModel)initWithLocalization:(id)a3 appIdentifier:(id)a4 lexicon:(id)a5
{
  v9 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:a3];
  v10 = MEMORY[0x1E695DF90];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v12 = [v10 dictionaryWithObjectsAndKeys:{v11, *MEMORY[0x1E69778F0], v9, *MEMORY[0x1E6977900], 0}];
  v13 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a4, *MEMORY[0x1E69778E0], 0}];
  if (_kSuppressAdaptation == 1)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v15 = *MEMORY[0x1E69778D8];
    [v12 setObject:v14 forKey:*MEMORY[0x1E69778D8]];
    [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 0), v15}];
  }

  v16 = [MEMORY[0x1E6977A50] languageModelWithOptions:v12 error:0];
  v17 = [v16 sessionWithOptions:v13];
  v18 = [v16 tokenIDConverter];
  v21.receiver = self;
  v21.super_class = PRWordLanguageModel;
  v19 = [(PRWordLanguageModel *)&v21 init];
  if (v19)
  {
    v19->_localization = [a3 copy];
    v19->_appIdentifier = [a4 copy];
    v19->_model = v16;
    v19->_session = v17;
    v19->_converter = v18;
    v19->_lexicon = a5;
  }

  return v19;
}

+ (id)languageModelWithLocalization:(id)a3 appIdentifier:(id)a4 lexicon:(id)a5
{
  v5 = [[a1 alloc] initWithLocalization:a3 appIdentifier:a4 lexicon:a5];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRWordLanguageModel;
  [(PRWordLanguageModel *)&v3 dealloc];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PRWordLanguageModel;
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"%@(%@"), -[PRWordLanguageModel description](&v6, sel_description), self->_localization;
  v4 = v3;
  if (self->_appIdentifier)
  {
    [v3 appendFormat:@":%@", self->_appIdentifier];
  }

  if (self->_session)
  {
    [v4 appendFormat:@":%@", self->_session];
  }

  if (self->_lexicon)
  {
    [v4 appendFormat:@"+%@", self->_lexicon];
  }

  [v4 appendString:@""]);
  return v4;
}

- (id)stringForTokenID:(unsigned int)a3
{
  if (a3 < 0x1F4)
  {
    return 0;
  }

  else
  {
    return [(NLTokenIDConverter *)self->_converter stringForTokenID:?];
  }
}

- (id)_descriptionForTokenSequence:(const unsigned int *)a3 length:(unint64_t)a4
{
  v7 = [MEMORY[0x1E696AD60] string];
  if (a4)
  {
    v8 = 0;
    do
    {
      if (v8)
      {
        [v7 appendString:@" "];
      }

      [v7 appendFormat:@"%u <%@>", a3[v8], -[PRWordLanguageModel stringForTokenID:](self, "stringForTokenID:", a3[v8])];
      ++v8;
    }

    while (a4 != v8);
  }

  return v7;
}

- (void)enumeratePredictionsForContext:(const unsigned int *)a3 length:(unint64_t)a4 maxPredictions:(unint64_t)a5 maxTokensPerPrediction:(unint64_t)a6 withBlock:(id)a7
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  session = self->_session;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __109__PRWordLanguageModel_enumeratePredictionsForContext_length_maxPredictions_maxTokensPerPrediction_withBlock___block_invoke;
  v8[3] = &unk_1E84053C8;
  v8[5] = v9;
  v8[6] = a5;
  v8[4] = a7;
  [(NLLMLanguageModelSession *)session enumeratePredictionsForContextTokenIDs:a3 length:a4 maximumPredictions:a5 maximumTokensPerPrediction:a6 withBlock:v8];
  _Block_object_dispose(v9, 8);
}

void *__109__PRWordLanguageModel_enumeratePredictionsForContext_length_maxPredictions_maxTokensPerPrediction_withBlock___block_invoke(void *result, void *a2, _BYTE *a3)
{
  v4 = result;
  v12 = 0;
  v5 = *(result[5] + 8);
  v6 = *(v5 + 24);
  if (v6 >= result[6])
  {
    *(v5 + 24) = v6 + 1;
LABEL_5:
    if (*(*(v4[5] + 8) + 24) < v4[6])
    {
      return result;
    }

    goto LABEL_6;
  }

  v8 = result[4];
  v9 = [a2 tokenIDs];
  v10 = [a2 tokenIDLength];
  [objc_msgSend(a2 "probabilityInfo")];
  result = (*(v8 + 16))(v8, v9, v10, &v12);
  v11 = v12;
  ++*(*(v4[5] + 8) + 24);
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a3 = 1;
  return result;
}

- (void)enumerateEntriesForString:(id)a3 withBlock:(id)a4
{
  lexicon = self->_lexicon;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PRWordLanguageModel_enumerateEntriesForString_withBlock___block_invoke;
  v5[3] = &unk_1E8405178;
  v5[4] = a4;
  [(PRLexicon *)lexicon enumerateEntriesForString:a3 usingBlock:v5];
}

@end