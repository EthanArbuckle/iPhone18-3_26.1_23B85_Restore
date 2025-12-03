@interface TITypologyStatisticRankCandidatesAccepted
- (BOOL)isCandidatePrediction:(id)prediction;
- (TITypologyStatisticRankCandidatesAccepted)init;
- (id)structuredReport;
- (unint64_t)rankOfCandidate:(id)candidate;
- (void)addLengthOfSelectedCandidate:(id)candidate;
- (void)addLengthOfSelectedPrediction:(id)prediction;
- (void)countSelectedAutocorrection:(id)autocorrection;
- (void)countSelectedCandidate:(id)candidate withRank:(unint64_t)rank;
- (void)countSelectedInputString;
- (void)countSelectedInputStringToRejectAutocorrection;
- (void)countSelectedPrediction:(id)prediction withRank:(unint64_t)rank;
- (void)rankAndCountSelectedCandidate:(id)candidate;
- (void)visitRecordKeyboardInput:(id)input;
@end

@implementation TITypologyStatisticRankCandidatesAccepted

- (void)visitRecordKeyboardInput:(id)input
{
  inputCopy = input;
  input = [inputCopy input];
  acceptedCandidate = [input acceptedCandidate];

  input2 = [inputCopy input];

  LODWORD(inputCopy) = [input2 isSynthesizedByAcceptingCandidate];
  if (inputCopy)
  {
    [(TITypologyStatisticRankCandidatesAccepted *)self rankAndCountSelectedCandidate:acceptedCandidate];
  }
}

- (void)rankAndCountSelectedCandidate:(id)candidate
{
  candidateCopy = candidate;
  autocorrections = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
  if ([autocorrections shouldAcceptTopCandidate])
  {
    autocorrections2 = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
    candidates = [autocorrections2 candidates];
    firstObject = [candidates firstObject];
  }

  else
  {
    firstObject = 0;
  }

  if ([candidateCopy isAutocorrection])
  {
    if (firstObject && [candidateCopy isEqual:firstObject])
    {
      [(TITypologyStatisticRankCandidatesAccepted *)self countSelectedAutocorrection:candidateCopy];
    }

    else
    {
      [(TITypologyStatisticRankCandidatesAccepted *)self countSelectedCandidate:candidateCopy withRank:[(TITypologyStatisticRankCandidatesAccepted *)self rankOfCandidate:candidateCopy]];
    }
  }

  else
  {
    candidate = [candidateCopy candidate];
    input = [candidateCopy input];
    v10 = [candidate isEqualToString:input];

    if (v10)
    {
      if (firstObject && ([candidateCopy candidate], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(firstObject, "candidate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, (v13 & 1) == 0))
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

- (void)countSelectedCandidate:(id)candidate withRank:(unint64_t)rank
{
  candidateCopy = candidate;
  if (rank != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = candidateCopy;
    autocorrections = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
    shouldAcceptTopCandidate = [autocorrections shouldAcceptTopCandidate];

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (shouldAcceptTopCandidate)
    {
      rank = [v9 initWithFormat:@"%@ == %@%lu", @"Candidates Accepted With Rank", @"CA", rank];
    }

    else
    {
      rank = [v9 initWithFormat:@"%@ == %lu", @"Candidates Accepted With Rank", rank, v15];
    }

    v11 = rank;
    v12 = MEMORY[0x1E696AD98];
    v13 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:rank];
    v14 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue") + 1}];
    [(NSMutableDictionary *)self->_histogram setObject:v14 forKeyedSubscript:v11];

    if ([(TITypologyStatisticRankCandidatesAccepted *)self isCandidatePrediction:v16])
    {
      [(TITypologyStatisticRankCandidatesAccepted *)self countSelectedPrediction:v16 withRank:rank];
    }

    [(TITypologyStatisticRankCandidatesAccepted *)self addLengthOfSelectedCandidate:v16];

    candidateCopy = v16;
  }
}

- (void)countSelectedPrediction:(id)prediction withRank:(unint64_t)rank
{
  v6 = MEMORY[0x1E696AEC0];
  predictionCopy = prediction;
  rank = [[v6 alloc] initWithFormat:@"%@ == %@%lu", @"Candidates Accepted With Rank", @"NP", rank];
  v8 = MEMORY[0x1E696AD98];
  v9 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:rank];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "integerValue") + 1}];
  [(NSMutableDictionary *)self->_histogram setObject:v10 forKeyedSubscript:rank];

  [(TITypologyStatisticRankCandidatesAccepted *)self addLengthOfSelectedPrediction:predictionCopy];
}

- (BOOL)isCandidatePrediction:(id)prediction
{
  predictionCopy = prediction;
  if (isCandidatePrediction__onceToken != -1)
  {
    dispatch_once(&isCandidatePrediction__onceToken, &__block_literal_global_5541);
  }

  input = [predictionCopy input];
  v5 = [input length];

  if (v5)
  {
    input2 = [predictionCopy input];
    v7 = [input2 characterAtIndex:v5 - 1];

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

- (void)countSelectedAutocorrection:(id)autocorrection
{
  v4 = MEMORY[0x1E696AEC0];
  autocorrectionCopy = autocorrection;
  v9 = [[v4 alloc] initWithFormat:@"%@ == %@", @"Candidates Accepted With Rank", @"A"];
  v6 = MEMORY[0x1E696AD98];
  v7 = [(NSMutableDictionary *)self->_histogram objectForKeyedSubscript:v9];
  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "integerValue") + 1}];
  [(NSMutableDictionary *)self->_histogram setObject:v8 forKeyedSubscript:v9];

  [(TITypologyStatisticRankCandidatesAccepted *)self addLengthOfSelectedCandidate:autocorrectionCopy];
}

- (void)addLengthOfSelectedPrediction:(id)prediction
{
  candidate = [prediction candidate];
  self->_lengthOfSelectedPredictions += [candidate length];
}

- (void)addLengthOfSelectedCandidate:(id)candidate
{
  candidate = [candidate candidate];
  self->_lengthOfSelectedCandidates += [candidate length];
}

- (unint64_t)rankOfCandidate:(id)candidate
{
  candidateCopy = candidate;
  autocorrections = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
  candidates = [autocorrections candidates];

  autocorrections2 = [(TITypologyStatisticCurrentAutocorrections *)self autocorrections];
  LODWORD(autocorrections) = [autocorrections2 shouldAcceptTopCandidate];

  if (autocorrections)
  {
    v8 = [candidates subarrayWithRange:{1, objc_msgSend(candidates, "count") - 1}];

    candidates = v8;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__TITypologyStatisticRankCandidatesAccepted_rankOfCandidate___block_invoke;
  v12[3] = &unk_1E6F4C3E0;
  v13 = candidateCopy;
  v14 = &v15;
  v9 = candidateCopy;
  [candidates enumerateObjectsUsingBlock:v12];
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
  histogram = [(TITypologyStatisticRankCandidatesAccepted *)self histogram];
  v4 = [histogram mutableCopy];

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