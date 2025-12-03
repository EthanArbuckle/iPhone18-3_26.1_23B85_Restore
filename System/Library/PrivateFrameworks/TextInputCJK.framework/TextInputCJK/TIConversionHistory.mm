@interface TIConversionHistory
- (BOOL)shouldRevertConvertedCandidateOnDeletionFromMarkedText:(id)text;
- (NSString)convertedCandidateText;
- (TIConversionHistory)init;
- (TIConvertedCandidate)lastConvertedCandidate;
- (unint64_t)convertedLength;
- (void)addCandidate:(id)candidate candidateRef:(id)ref replacedAmbiguousPinyinSyllables:(id)syllables replacementUnambiguousPinyinSyllables:(id)pinyinSyllables convertedInput:(id)input;
- (void)clear;
- (void)didRevertLastConvertedCandidate;
@end

@implementation TIConversionHistory

- (TIConvertedCandidate)lastConvertedCandidate
{
  convertedCandidates = [(TIConversionHistory *)self convertedCandidates];
  lastObject = [convertedCandidates lastObject];

  return lastObject;
}

- (BOOL)shouldRevertConvertedCandidateOnDeletionFromMarkedText:(id)text
{
  textCopy = text;
  if (-[TIConversionHistory invalid](self, "invalid") || ![textCopy length] || -[TIConversionHistory revertCount](self, "revertCount") || (-[TIConversionHistory mutableConvertedCandidateText](self, "mutableConvertedCandidateText"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(textCopy, "hasPrefix:", v5), v5, !v6))
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v7 = [textCopy length];
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
    lastConvertedCandidate = [(TIConversionHistory *)self lastConvertedCandidate];
    candidate = [lastConvertedCandidate candidate];
    v4Candidate = [candidate candidate];

    convertedCandidates = [(TIConversionHistory *)self convertedCandidates];
    [convertedCandidates removeLastObject];

    mutableConvertedCandidateRefs = [(TIConversionHistory *)self mutableConvertedCandidateRefs];
    [mutableConvertedCandidateRefs removeLastObject];

    mutableConvertedCandidateText = [(TIConversionHistory *)self mutableConvertedCandidateText];
    mutableConvertedCandidateText2 = [(TIConversionHistory *)self mutableConvertedCandidateText];
    [mutableConvertedCandidateText deleteCharactersInRange:{objc_msgSend(mutableConvertedCandidateText2, "length") - objc_msgSend(v4Candidate, "length"), objc_msgSend(v4Candidate, "length")}];

    [(TIConversionHistory *)self setInputChangedSinceLastConversion:0];
    [(TIConversionHistory *)self setRevertCount:[(TIConversionHistory *)self revertCount]+ 1];
  }
}

- (void)addCandidate:(id)candidate candidateRef:(id)ref replacedAmbiguousPinyinSyllables:(id)syllables replacementUnambiguousPinyinSyllables:(id)pinyinSyllables convertedInput:(id)input
{
  candidateCopy = candidate;
  refCopy = ref;
  syllablesCopy = syllables;
  pinyinSyllablesCopy = pinyinSyllables;
  inputCopy = input;
  if (![(TIConversionHistory *)self invalid])
  {
    v16 = [[TIConvertedCandidate alloc] initWithCandidate:candidateCopy replacedAmbiguousPinyinSyllables:syllablesCopy replacementUnambiguousPinyinSyllables:pinyinSyllablesCopy convertedInput:inputCopy];
    convertedCandidates = [(TIConversionHistory *)self convertedCandidates];
    [convertedCandidates addObject:v16];

    mutableConvertedCandidateRefs = [(TIConversionHistory *)self mutableConvertedCandidateRefs];
    [mutableConvertedCandidateRefs addObject:refCopy];

    mutableConvertedCandidateText = [(TIConversionHistory *)self mutableConvertedCandidateText];
    candidate = [candidateCopy candidate];
    [mutableConvertedCandidateText appendString:candidate];

    [(TIConversionHistory *)self setInputChangedSinceLastConversion:0];
    [(TIConversionHistory *)self setRevertCount:0];
  }
}

- (NSString)convertedCandidateText
{
  mutableConvertedCandidateText = [(TIConversionHistory *)self mutableConvertedCandidateText];
  v3 = [mutableConvertedCandidateText copy];

  return v3;
}

- (unint64_t)convertedLength
{
  mutableConvertedCandidateText = [(TIConversionHistory *)self mutableConvertedCandidateText];
  v3 = [mutableConvertedCandidateText length];

  return v3;
}

- (void)clear
{
  convertedCandidates = [(TIConversionHistory *)self convertedCandidates];
  [convertedCandidates removeAllObjects];

  mutableConvertedCandidateRefs = [(TIConversionHistory *)self mutableConvertedCandidateRefs];
  [mutableConvertedCandidateRefs removeAllObjects];

  mutableConvertedCandidateText = [(TIConversionHistory *)self mutableConvertedCandidateText];
  [mutableConvertedCandidateText setString:&stru_287EBF4E8];

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