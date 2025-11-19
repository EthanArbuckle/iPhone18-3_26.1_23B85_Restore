@interface SFRankingFeedback
- (SFRankingFeedback)initWithCoder:(id)a3;
- (SFRankingFeedback)initWithSections:(id)a3 blendingDuration:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRankingFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFRankingFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sections forKey:{@"sections", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"blending_duration" forKey:self->_blendingDuration];
  [v4 encodeObject:self->_l2ModelVersion forKey:@"l2ModelVersion"];
  [v4 encodeObject:self->_l3ModelVersion forKey:@"l3ModelVersion"];
  [v4 encodeObject:self->_l2ShadowModelVersion forKey:@"l2ShadowModelVersion"];
  [v4 encodeObject:self->_hiddenResults forKey:@"_hiddenResults"];
  [v4 encodeInt:self->_spotlightQueryIntent forKey:@"_spotlightQueryIntent"];
}

- (SFRankingFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SFRankingFeedback;
  v5 = [(SFFeedback *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v10;

    [v4 decodeDoubleForKey:@"blending_duration"];
    v5->_blendingDuration = v12;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"l2ModelVersion"];
    l2ModelVersion = v5->_l2ModelVersion;
    v5->_l2ModelVersion = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"l3ModelVersion"];
    l3ModelVersion = v5->_l3ModelVersion;
    v5->_l3ModelVersion = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"l2ShadowModelVersion"];
    l2ShadowModelVersion = v5->_l2ShadowModelVersion;
    v5->_l2ShadowModelVersion = v17;

    v19 = [v4 decodeObjectOfClasses:v9 forKey:@"_hiddenResults"];
    hiddenResults = v5->_hiddenResults;
    v5->_hiddenResults = v19;

    v5->_spotlightQueryIntent = [v4 decodeIntegerForKey:@"spotlightQueryIntent"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19.receiver = self;
  v19.super_class = SFRankingFeedback;
  v4 = [(SFFeedback *)&v19 copyWithZone:a3];
  v5 = [(SFRankingFeedback *)self sections];
  v6 = [v5 copy];
  v7 = v4[5];
  v4[5] = v6;

  [(SFRankingFeedback *)self blendingDuration];
  v4[4] = v8;
  v9 = [(NSString *)self->_l2ModelVersion copy];
  v10 = v4[6];
  v4[6] = v9;

  v11 = [(NSString *)self->_l3ModelVersion copy];
  v12 = v4[7];
  v4[7] = v11;

  v13 = [(NSString *)self->_l2ShadowModelVersion copy];
  v14 = v4[8];
  v4[8] = v13;

  v15 = [(SFRankingFeedback *)self hiddenResults];
  v16 = [v15 copy];
  v17 = v4[9];
  v4[9] = v16;

  *(v4 + 6) = [(SFRankingFeedback *)self spotlightQueryIntent];
  return v4;
}

- (SFRankingFeedback)initWithSections:(id)a3 blendingDuration:(double)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = SFRankingFeedback;
  v7 = [(SFFeedback *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    sections = v7->_sections;
    v7->_sections = v8;

    v7->_blendingDuration = a4;
    v10 = [(NSArray *)v7->_sections firstObject];
    v11 = [v10 results];
    v12 = [v11 firstObject];
    v7->super._queryId = [v12 queryId];
  }

  return v7;
}

@end