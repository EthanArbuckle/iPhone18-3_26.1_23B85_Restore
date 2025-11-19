@interface TIConvertedCandidate
- (NSString)revertedInput;
- (TIConvertedCandidate)initWithCandidate:(id)a3;
- (TIConvertedCandidate)initWithCandidate:(id)a3 replacedAmbiguousPinyinSyllables:(id)a4 replacementUnambiguousPinyinSyllables:(id)a5 convertedInput:(id)a6;
@end

@implementation TIConvertedCandidate

- (NSString)revertedInput
{
  v2 = [(TIConvertedCandidate *)self candidate];
  v3 = [v2 input];

  return v3;
}

- (TIConvertedCandidate)initWithCandidate:(id)a3 replacedAmbiguousPinyinSyllables:(id)a4 replacementUnambiguousPinyinSyllables:(id)a5 convertedInput:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = TIConvertedCandidate;
  v15 = [(TIConvertedCandidate *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_candidate, a3);
    v17 = [v12 copy];
    replacedAmbiguousPinyinSyllables = v16->_replacedAmbiguousPinyinSyllables;
    v16->_replacedAmbiguousPinyinSyllables = v17;

    v19 = [v13 copy];
    replacementUnambiguousPinyinSyllables = v16->_replacementUnambiguousPinyinSyllables;
    v16->_replacementUnambiguousPinyinSyllables = v19;

    v21 = [v14 copy];
    convertedInput = v16->_convertedInput;
    v16->_convertedInput = v21;
  }

  return v16;
}

- (TIConvertedCandidate)initWithCandidate:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TIConvertedCandidate;
  v6 = [(TIConvertedCandidate *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_candidate, a3);
    v8 = [v5 input];
    v9 = [v8 copy];
    convertedInput = v7->_convertedInput;
    v7->_convertedInput = v9;
  }

  return v7;
}

@end