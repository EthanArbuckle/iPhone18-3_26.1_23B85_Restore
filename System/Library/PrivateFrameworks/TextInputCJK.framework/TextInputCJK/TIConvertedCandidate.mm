@interface TIConvertedCandidate
- (NSString)revertedInput;
- (TIConvertedCandidate)initWithCandidate:(id)candidate;
- (TIConvertedCandidate)initWithCandidate:(id)candidate replacedAmbiguousPinyinSyllables:(id)syllables replacementUnambiguousPinyinSyllables:(id)pinyinSyllables convertedInput:(id)input;
@end

@implementation TIConvertedCandidate

- (NSString)revertedInput
{
  candidate = [(TIConvertedCandidate *)self candidate];
  input = [candidate input];

  return input;
}

- (TIConvertedCandidate)initWithCandidate:(id)candidate replacedAmbiguousPinyinSyllables:(id)syllables replacementUnambiguousPinyinSyllables:(id)pinyinSyllables convertedInput:(id)input
{
  candidateCopy = candidate;
  syllablesCopy = syllables;
  pinyinSyllablesCopy = pinyinSyllables;
  inputCopy = input;
  v24.receiver = self;
  v24.super_class = TIConvertedCandidate;
  v15 = [(TIConvertedCandidate *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_candidate, candidate);
    v17 = [syllablesCopy copy];
    replacedAmbiguousPinyinSyllables = v16->_replacedAmbiguousPinyinSyllables;
    v16->_replacedAmbiguousPinyinSyllables = v17;

    v19 = [pinyinSyllablesCopy copy];
    replacementUnambiguousPinyinSyllables = v16->_replacementUnambiguousPinyinSyllables;
    v16->_replacementUnambiguousPinyinSyllables = v19;

    v21 = [inputCopy copy];
    convertedInput = v16->_convertedInput;
    v16->_convertedInput = v21;
  }

  return v16;
}

- (TIConvertedCandidate)initWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  v12.receiver = self;
  v12.super_class = TIConvertedCandidate;
  v6 = [(TIConvertedCandidate *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_candidate, candidate);
    input = [candidateCopy input];
    v9 = [input copy];
    convertedInput = v7->_convertedInput;
    v7->_convertedInput = v9;
  }

  return v7;
}

@end