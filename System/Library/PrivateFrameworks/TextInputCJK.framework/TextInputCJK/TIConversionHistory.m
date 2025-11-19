@interface TIConversionHistory
- (BOOL)shouldRevertConvertedCandidateOnDeletionFromMarkedText:(id)a3;
- (NSString)convertedCandidateText;
- (TIConversionHistory)init;
- (TIConvertedCandidate)lastConvertedCandidate;
- (unint64_t)convertedLength;
- (void)addCandidate:(id)a3 candidateRef:(id)a4 replacedAmbiguousPinyinSyllables:(id)a5 replacementUnambiguousPinyinSyllables:(id)a6 convertedInput:(id)a7;
- (void)clear;
- (void)didRevertLastConvertedCandidate;
@end

@implementation TIConversionHistory

- (TIConvertedCandidate)lastConvertedCandidate
{
  v2 = [(TIConversionHistory *)self convertedCandidates];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)shouldRevertConvertedCandidateOnDeletionFromMarkedText:(id)a3
{
  v4 = a3;
  if (-[TIConversionHistory invalid](self, "invalid") || ![v4 length] || -[TIConversionHistory revertCount](self, "revertCount") || (-[TIConversionHistory mutableConvertedCandidateText](self, "mutableConvertedCandidateText"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "hasPrefix:", v5), v5, !v6))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v7 = [v4 length];
    if (v7 == [(TIConversionHistory *)self convertedLength])
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = ![(TIConversionHistory *)self inputChangedSinceLastConversion];
    }
  }

  return v8;
}

- (void)didRevertLastConvertedCandidate
{
  if (![(TIConversionHistory *)self invalid])
  {
    v3 = [(TIConversionHistory *)self lastConvertedCandidate];
    v4 = [v3 candidate];
    v9 = [v4 candidate];

    v5 = [(TIConversionHistory *)self convertedCandidates];
    [v5 removeLastObject];

    v6 = [(TIConversionHistory *)self mutableConvertedCandidateRefs];
    [v6 removeLastObject];

    v7 = [(TIConversionHistory *)self mutableConvertedCandidateText];
    v8 = [(TIConversionHistory *)self mutableConvertedCandidateText];
    [v7 deleteCharactersInRange:{objc_msgSend(v8, "length") - objc_msgSend(v9, "length"), objc_msgSend(v9, "length")}];

    [(TIConversionHistory *)self setInputChangedSinceLastConversion:0];
    [(TIConversionHistory *)self setRevertCount:[(TIConversionHistory *)self revertCount]+ 1];
  }
}

- (void)addCandidate:(id)a3 candidateRef:(id)a4 replacedAmbiguousPinyinSyllables:(id)a5 replacementUnambiguousPinyinSyllables:(id)a6 convertedInput:(id)a7
{
  v21 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (![(TIConversionHistory *)self invalid])
  {
    v16 = [[TIConvertedCandidate alloc] initWithCandidate:v21 replacedAmbiguousPinyinSyllables:v13 replacementUnambiguousPinyinSyllables:v14 convertedInput:v15];
    v17 = [(TIConversionHistory *)self convertedCandidates];
    [v17 addObject:v16];

    v18 = [(TIConversionHistory *)self mutableConvertedCandidateRefs];
    [v18 addObject:v12];

    v19 = [(TIConversionHistory *)self mutableConvertedCandidateText];
    v20 = [v21 candidate];
    [v19 appendString:v20];

    [(TIConversionHistory *)self setInputChangedSinceLastConversion:0];
    [(TIConversionHistory *)self setRevertCount:0];
  }
}

- (NSString)convertedCandidateText
{
  v2 = [(TIConversionHistory *)self mutableConvertedCandidateText];
  v3 = [v2 copy];

  return v3;
}

- (unint64_t)convertedLength
{
  v2 = [(TIConversionHistory *)self mutableConvertedCandidateText];
  v3 = [v2 length];

  return v3;
}

- (void)clear
{
  v3 = [(TIConversionHistory *)self convertedCandidates];
  [v3 removeAllObjects];

  v4 = [(TIConversionHistory *)self mutableConvertedCandidateRefs];
  [v4 removeAllObjects];

  v5 = [(TIConversionHistory *)self mutableConvertedCandidateText];
  [v5 setString:&stru_287EBF4E8];

  *&self->_inputChangedSinceLastConversion = 0;

  [(TIConversionHistory *)self setRevertCount:0];
}

- (TIConversionHistory)init
{
  v10.receiver = self;
  v10.super_class = TIConversionHistory;
  v2 = [(TIConversionHistory *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    convertedCandidates = v2->_convertedCandidates;
    v2->_convertedCandidates = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableConvertedCandidateRefs = v2->_mutableConvertedCandidateRefs;
    v2->_mutableConvertedCandidateRefs = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mutableConvertedCandidateText = v2->_mutableConvertedCandidateText;
    v2->_mutableConvertedCandidateText = v7;
  }

  return v2;
}

@end