@interface TITypologyStatisticRankCandidatesAccepted
- (BOOL)isCandidatePrediction:(id)a3;
- (TITypologyStatisticRankCandidatesAccepted)init;
- (id)structuredReport;
- (unint64_t)rankOfCandidate:(id)a3;
- (void)addLengthOfSelectedCandidate:(id)a3;
- (void)addLengthOfSelectedPrediction:(id)a3;
- (void)countSelectedAutocorrection:(id)a3;
- (void)countSelectedCandidate:(id)a3 withRank:(unint64_t)a4;
- (void)countSelectedInputString;
- (void)countSelectedInputStringToRejectAutocorrection;
- (void)countSelectedPrediction:(id)a3 withRank:(unint64_t)a4;
- (void)rankAndCountSelectedCandidate:(id)a3;
- (void)visitRecordKeyboardInput:(id)a3;
@end

@implementation TITypologyStatisticRankCandidatesAccepted

- (void)visitRecordKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [v4 input];
  v7 = [v5 acceptedCandidate];

  v6 = [v4 input];

  LODWORD(v4) = [v6 isSynthesizedByAcceptingCandidate];
  if (v4)
  {
    [(TITypologyStatisticRankCandidatesAccepted *)self rankAndCountSelectedCandidate:v7];
  }
}

- (void)rankAndCountSelectedCandidate:(id)a3
{
  v14 = a3;
  v4 = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
  if ([v4 shouldAcceptTopCandidate])
  {
    v5 = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
    v6 = [v5 candidates];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  if ([v14 isAutocorrection])
  {
    if (v7 && [v14 isEqual:v7])
    {
      [(TITypologyStatisticRankCandidatesAccepted *)self countSelectedAutocorrection:v14];
    }

    else
    {
      [(TITypologyStatisticRankCandidatesAccepted *)self countSelectedCandidate:v14 withRank:[(TITypologyStatisticRankCandidatesAccepted *)self rankOfCandidate:v14]];
    }
  }

  else
  {
    v8 = [v14 candidate];
    v9 = [v14 input];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      if (v7 && ([v14 candidate], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "candidate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, (v13 & 1) == 0))
      {
        [(TITypologyStatisticRankCandidatesAccepted *)self countSelectedInputStringToRejectAutocorrection];
      }

      else
      {
        [(TITypologyStatisticRankCandidatesAccepted *)self countSelectedInputString];
      }
    }
  }
}

- (void)countSelectedCandidate:(id)a3 withRank:(unint64_t)a4
{
  v6 = a3;
  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = v6;
    v7 = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
    v8 = [v7 shouldAcceptTopCandidate];

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v8)
    {
      v10 = [v9 initWithFormat:@"%@ == %@%lu", @"Candidates Accepted With Rank", @"CA", a4];
    }

    else
    {
      v10 = [v9 initWithFormat:@"%@ == %lu", @"Candidates Accepted With Rank", a4, v15];
    }

    v11 = v10;
    v12 = MEMORY[0x1E696AD98];
    v13 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v10];
    v14 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue") + 1}];
    [(NSMutableDictionary *)self->_histogram setObject:v14 forKeyedSubscript:v11];

    if ([(TITypologyStatisticRankCandidatesAccepted *)self isCandidatePrediction:v16])
    {
      [(TITypologyStatisticRankCandidatesAccepted *)self countSelectedPrediction:v16 withRank:a4];
    }

    [(TITypologyStatisticRankCandidatesAccepted *)self addLengthOfSelectedCandidate:v16];

    v6 = v16;
  }
}

- (void)countSelectedPrediction:(id)a3 withRank:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v11 = [[v6 alloc] initWithFormat:@"%@ == %@%lu", @"Candidates Accepted With Rank", @"NP", a4];
  v8 = MEMORY[0x1E696AD98];
  v9 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v11];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "integerValue") + 1}];
  [(NSMutableDictionary *)self->_histogram setObject:v10 forKeyedSubscript:v11];

  [(TITypologyStatisticRankCandidatesAccepted *)self addLengthOfSelectedPrediction:v7];
}

- (BOOL)isCandidatePrediction:(id)a3
{
  v3 = a3;
  if (isCandidatePrediction__onceToken != -1)
  {
    dispatch_once(&isCandidatePrediction__onceToken, &__block_literal_global_5541);
  }

  v4 = [v3 input];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 input];
    v7 = [v6 characterAtIndex:v5 - 1];

    v8 = [isCandidatePrediction__charactersAllowingNextWordPrediction characterIsMember:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t __67__TITypologyStatisticRankCandidatesAccepted_isCandidatePrediction___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@" \n\t(., ?!:)"}];;
  v1 = isCandidatePrediction__charactersAllowingNextWordPrediction;
  isCandidatePrediction__charactersAllowingNextWordPrediction = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)countSelectedInputStringToRejectAutocorrection
{
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ == %@", @"Candidates Accepted With Rank", @"R"];
  v3 = MEMORY[0x1E696AD98];
  v4 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v6];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "integerValue") + 1}];
  [(NSMutableDictionary *)self->_histogram setObject:v5 forKeyedSubscript:v6];
}

- (void)countSelectedInputString
{
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ == %@", @"Candidates Accepted With Rank", @"I"];
  v3 = MEMORY[0x1E696AD98];
  v4 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v6];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "integerValue") + 1}];
  [(NSMutableDictionary *)self->_histogram setObject:v5 forKeyedSubscript:v6];
}

- (void)countSelectedAutocorrection:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v9 = [[v4 alloc] initWithFormat:@"%@ == %@", @"Candidates Accepted With Rank", @"A"];
  v6 = MEMORY[0x1E696AD98];
  v7 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v9];
  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "integerValue") + 1}];
  [(NSMutableDictionary *)self->_histogram setObject:v8 forKeyedSubscript:v9];

  [(TITypologyStatisticRankCandidatesAccepted *)self addLengthOfSelectedCandidate:v5];
}

- (void)addLengthOfSelectedPrediction:(id)a3
{
  v4 = [a3 candidate];
  self->_lengthOfSelectedPredictions += [v4 length];
}

- (void)addLengthOfSelectedCandidate:(id)a3
{
  v4 = [a3 candidate];
  self->_lengthOfSelectedCandidates += [v4 length];
}

- (unint64_t)rankOfCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
  v6 = [v5 candidates];

  v7 = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
  LODWORD(v5) = [v7 shouldAcceptTopCandidate];

  if (v5)
  {
    v8 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];

    v6 = v8;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__TITypologyStatisticRankCandidatesAccepted_rankOfCandidate___block_invoke;
  v12[3] = &unk_1E6F4C3E0;
  v13 = v4;
  v14 = &v15;
  v9 = v4;
  [v6 enumerateObjectsUsingBlock:v12];
  v10 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v10;
}

uint64_t __61__TITypologyStatisticRankCandidatesAccepted_rankOfCandidate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isEqual:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)structuredReport
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(TITypologyStatisticRankCandidatesAccepted *)self histogram];
  v4 = [v3 mutableCopy];

  v9[0] = @"Length Accepted Candidates";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_lengthOfSelectedCandidates];
  v9[1] = @"Length Accepted Predictions";
  v10[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_lengthOfSelectedPredictions];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 addEntriesFromDictionary:v7];

  return v4;
}

- (TITypologyStatisticRankCandidatesAccepted)init
{
  v6.receiver = self;
  v6.super_class = TITypologyStatisticRankCandidatesAccepted;
  v2 = [(TITypologyStatisticRankCandidatesAccepted *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    histogram = v2->_histogram;
    v2->_histogram = v3;
  }

  return v2;
}

@end