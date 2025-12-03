@interface SFSectionRankingFeedback
- (SFSectionRankingFeedback)initWithCoder:(id)coder;
- (SFSectionRankingFeedback)initWithResults:(id)results section:(id)section localSectionPosition:(unint64_t)position personalizationScore:(double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSectionRankingFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFSectionRankingFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_localSectionPosition forKey:{@"local_section_position", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_section forKey:@"section"];
  [coderCopy encodeObject:self->_results forKey:@"results"];
  [coderCopy encodeDouble:@"client_score" forKey:self->_personalizationScore];
}

- (SFSectionRankingFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SFSectionRankingFeedback;
  v5 = [(SFFeedback *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v5->_localSectionPosition = [coderCopy decodeIntegerForKey:@"local_section_position"];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"section"];
    section = v5->_section;
    v5->_section = v10;

    v12 = [coderCopy decodeObjectOfClasses:v9 forKey:@"results"];
    results = v5->_results;
    v5->_results = v12;

    [coderCopy decodeDoubleForKey:@"client_score"];
    v5->_personalizationScore = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = SFSectionRankingFeedback;
  v4 = [(SFFeedback *)&v13 copyWithZone:zone];
  results = [(SFSectionRankingFeedback *)self results];
  v6 = [results copy];
  v7 = v4[3];
  v4[3] = v6;

  section = [(SFSectionRankingFeedback *)self section];
  v9 = [section copy];
  v10 = v4[4];
  v4[4] = v9;

  v4[5] = [(SFSectionRankingFeedback *)self localSectionPosition];
  [(SFSectionRankingFeedback *)self personalizationScore];
  v4[6] = v11;
  return v4;
}

- (SFSectionRankingFeedback)initWithResults:(id)results section:(id)section localSectionPosition:(unint64_t)position personalizationScore:(double)score
{
  resultsCopy = results;
  sectionCopy = section;
  v18.receiver = self;
  v18.super_class = SFSectionRankingFeedback;
  v12 = [(SFFeedback *)&v18 init];
  if (v12)
  {
    v13 = [resultsCopy copy];
    results = v12->_results;
    v12->_results = v13;

    v15 = [sectionCopy copy];
    section = v12->_section;
    v12->_section = v15;

    v12->_localSectionPosition = position;
    v12->_personalizationScore = score;
  }

  return v12;
}

@end