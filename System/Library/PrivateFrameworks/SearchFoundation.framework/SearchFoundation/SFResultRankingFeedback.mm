@interface SFResultRankingFeedback
- (SFResultRankingFeedback)initWithCoder:(id)a3;
- (SFResultRankingFeedback)initWithResult:(id)a3 hiddenResults:(id)a4 duplicateResults:(id)a5 localResultPosition:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFResultRankingFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFResultRankingFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"_personalizationScore" forKey:{self->_personalizationScore, v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_localResultPosition forKey:@"_localResultPosition"];
  [v4 encodeObject:self->_result forKey:@"_result"];
  [v4 encodeObject:self->_hiddenResults forKey:@"_hiddenResults"];
  [v4 encodeObject:self->_duplicateResults forKey:@"_duplicateResults"];
}

- (SFResultRankingFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SFResultRankingFeedback;
  v5 = [(SFFeedback *)&v17 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_personalizationScore"];
    v5->_personalizationScore = v6;
    v5->_localResultPosition = [v4 decodeIntegerForKey:@"_localResultPosition"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_result"];
    v8 = v5->_result;
    v5->_result = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_hiddenResults"];
    hiddenResults = v5->_hiddenResults;
    v5->_hiddenResults = v12;

    v14 = [v4 decodeObjectOfClasses:v11 forKey:@"_duplicateResults"];
    duplicateResults = v5->_duplicateResults;
    v5->_duplicateResults = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = SFResultRankingFeedback;
  v4 = [(SFFeedback *)&v16 copyWithZone:a3];
  v5 = [(SFResultRankingFeedback *)self result];
  v6 = [v5 copy];
  v7 = v4[3];
  v4[3] = v6;

  v8 = [(SFResultRankingFeedback *)self hiddenResults];
  v9 = [v8 copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(SFResultRankingFeedback *)self duplicateResults];
  v12 = [v11 copy];
  v13 = v4[5];
  v4[5] = v12;

  v4[6] = [(SFResultRankingFeedback *)self localResultPosition];
  [(SFResultRankingFeedback *)self personalizationScore];
  v4[7] = v14;
  return v4;
}

- (SFResultRankingFeedback)initWithResult:(id)a3 hiddenResults:(id)a4 duplicateResults:(id)a5 localResultPosition:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v22.receiver = self;
  v22.super_class = SFResultRankingFeedback;
  v14 = [(SFFeedback *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_result, a3);
    v16 = [v12 copy];
    hiddenResults = v15->_hiddenResults;
    v15->_hiddenResults = v16;

    v18 = [v13 copy];
    duplicateResults = v15->_duplicateResults;
    v15->_duplicateResults = v18;

    v15->_localResultPosition = a6;
    [v11 personalizationScore];
    v15->_personalizationScore = v20;
  }

  return v15;
}

@end