@interface SFResultRankingFeedback
- (SFResultRankingFeedback)initWithCoder:(id)coder;
- (SFResultRankingFeedback)initWithResult:(id)result hiddenResults:(id)results duplicateResults:(id)duplicateResults localResultPosition:(unint64_t)position;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFResultRankingFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFResultRankingFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"_personalizationScore" forKey:{self->_personalizationScore, v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_localResultPosition forKey:@"_localResultPosition"];
  [coderCopy encodeObject:self->_result forKey:@"_result"];
  [coderCopy encodeObject:self->_hiddenResults forKey:@"_hiddenResults"];
  [coderCopy encodeObject:self->_duplicateResults forKey:@"_duplicateResults"];
}

- (SFResultRankingFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SFResultRankingFeedback;
  v5 = [(SFFeedback *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_personalizationScore"];
    v5->_personalizationScore = v6;
    v5->_localResultPosition = [coderCopy decodeIntegerForKey:@"_localResultPosition"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v8 = v5->_result;
    v5->_result = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_hiddenResults"];
    hiddenResults = v5->_hiddenResults;
    v5->_hiddenResults = v12;

    v14 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_duplicateResults"];
    duplicateResults = v5->_duplicateResults;
    v5->_duplicateResults = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = SFResultRankingFeedback;
  v4 = [(SFFeedback *)&v16 copyWithZone:zone];
  result = [(SFResultRankingFeedback *)self result];
  v6 = [result copy];
  v7 = v4[3];
  v4[3] = v6;

  hiddenResults = [(SFResultRankingFeedback *)self hiddenResults];
  v9 = [hiddenResults copy];
  v10 = v4[4];
  v4[4] = v9;

  duplicateResults = [(SFResultRankingFeedback *)self duplicateResults];
  v12 = [duplicateResults copy];
  v13 = v4[5];
  v4[5] = v12;

  v4[6] = [(SFResultRankingFeedback *)self localResultPosition];
  [(SFResultRankingFeedback *)self personalizationScore];
  v4[7] = v14;
  return v4;
}

- (SFResultRankingFeedback)initWithResult:(id)result hiddenResults:(id)results duplicateResults:(id)duplicateResults localResultPosition:(unint64_t)position
{
  resultCopy = result;
  resultsCopy = results;
  duplicateResultsCopy = duplicateResults;
  v22.receiver = self;
  v22.super_class = SFResultRankingFeedback;
  v14 = [(SFFeedback *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_result, result);
    v16 = [resultsCopy copy];
    hiddenResults = v15->_hiddenResults;
    v15->_hiddenResults = v16;

    v18 = [duplicateResultsCopy copy];
    duplicateResults = v15->_duplicateResults;
    v15->_duplicateResults = v18;

    v15->_localResultPosition = position;
    [resultCopy personalizationScore];
    v15->_personalizationScore = v20;
  }

  return v15;
}

@end