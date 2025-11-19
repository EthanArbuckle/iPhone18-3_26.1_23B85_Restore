@interface SFSectionRankingFeedback
- (SFSectionRankingFeedback)initWithCoder:(id)a3;
- (SFSectionRankingFeedback)initWithResults:(id)a3 section:(id)a4 localSectionPosition:(unint64_t)a5 personalizationScore:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSectionRankingFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFSectionRankingFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_localSectionPosition forKey:{@"local_section_position", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_section forKey:@"section"];
  [v4 encodeObject:self->_results forKey:@"results"];
  [v4 encodeDouble:@"client_score" forKey:self->_personalizationScore];
}

- (SFSectionRankingFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFSectionRankingFeedback;
  v5 = [(SFFeedback *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v5->_localSectionPosition = [v4 decodeIntegerForKey:@"local_section_position"];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"section"];
    section = v5->_section;
    v5->_section = v10;

    v12 = [v4 decodeObjectOfClasses:v9 forKey:@"results"];
    results = v5->_results;
    v5->_results = v12;

    [v4 decodeDoubleForKey:@"client_score"];
    v5->_personalizationScore = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = SFSectionRankingFeedback;
  v4 = [(SFFeedback *)&v13 copyWithZone:a3];
  v5 = [(SFSectionRankingFeedback *)self results];
  v6 = [v5 copy];
  v7 = v4[3];
  v4[3] = v6;

  v8 = [(SFSectionRankingFeedback *)self section];
  v9 = [v8 copy];
  v10 = v4[4];
  v4[4] = v9;

  v4[5] = [(SFSectionRankingFeedback *)self localSectionPosition];
  [(SFSectionRankingFeedback *)self personalizationScore];
  v4[6] = v11;
  return v4;
}

- (SFSectionRankingFeedback)initWithResults:(id)a3 section:(id)a4 localSectionPosition:(unint64_t)a5 personalizationScore:(double)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = SFSectionRankingFeedback;
  v12 = [(SFFeedback *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    results = v12->_results;
    v12->_results = v13;

    v15 = [v11 copy];
    section = v12->_section;
    v12->_section = v15;

    v12->_localSectionPosition = a5;
    v12->_personalizationScore = a6;
  }

  return v12;
}

@end