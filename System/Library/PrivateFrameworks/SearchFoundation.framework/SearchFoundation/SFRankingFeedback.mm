@interface SFRankingFeedback
- (SFRankingFeedback)initWithCoder:(id)coder;
- (SFRankingFeedback)initWithSections:(id)sections blendingDuration:(double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRankingFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFRankingFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sections forKey:{@"sections", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"blending_duration" forKey:self->_blendingDuration];
  [coderCopy encodeObject:self->_l2ModelVersion forKey:@"l2ModelVersion"];
  [coderCopy encodeObject:self->_l3ModelVersion forKey:@"l3ModelVersion"];
  [coderCopy encodeObject:self->_l2ShadowModelVersion forKey:@"l2ShadowModelVersion"];
  [coderCopy encodeObject:self->_hiddenResults forKey:@"_hiddenResults"];
  [coderCopy encodeInt:self->_spotlightQueryIntent forKey:@"_spotlightQueryIntent"];
}

- (SFRankingFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SFRankingFeedback;
  v5 = [(SFFeedback *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v10;

    [coderCopy decodeDoubleForKey:@"blending_duration"];
    v5->_blendingDuration = v12;
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"l2ModelVersion"];
    l2ModelVersion = v5->_l2ModelVersion;
    v5->_l2ModelVersion = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"l3ModelVersion"];
    l3ModelVersion = v5->_l3ModelVersion;
    v5->_l3ModelVersion = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"l2ShadowModelVersion"];
    l2ShadowModelVersion = v5->_l2ShadowModelVersion;
    v5->_l2ShadowModelVersion = v17;

    v19 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_hiddenResults"];
    hiddenResults = v5->_hiddenResults;
    v5->_hiddenResults = v19;

    v5->_spotlightQueryIntent = [coderCopy decodeIntegerForKey:@"spotlightQueryIntent"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19.receiver = self;
  v19.super_class = SFRankingFeedback;
  v4 = [(SFFeedback *)&v19 copyWithZone:zone];
  sections = [(SFRankingFeedback *)self sections];
  v6 = [sections copy];
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

  hiddenResults = [(SFRankingFeedback *)self hiddenResults];
  v16 = [hiddenResults copy];
  v17 = v4[9];
  v4[9] = v16;

  *(v4 + 6) = [(SFRankingFeedback *)self spotlightQueryIntent];
  return v4;
}

- (SFRankingFeedback)initWithSections:(id)sections blendingDuration:(double)duration
{
  sectionsCopy = sections;
  v14.receiver = self;
  v14.super_class = SFRankingFeedback;
  v7 = [(SFFeedback *)&v14 init];
  if (v7)
  {
    v8 = [sectionsCopy copy];
    sections = v7->_sections;
    v7->_sections = v8;

    v7->_blendingDuration = duration;
    firstObject = [(NSArray *)v7->_sections firstObject];
    results = [firstObject results];
    firstObject2 = [results firstObject];
    v7->super._queryId = [firstObject2 queryId];
  }

  return v7;
}

@end