@interface SFEndLocalSearchFeedback
- (SFEndLocalSearchFeedback)initWithCoder:(id)a3;
- (SFEndLocalSearchFeedback)initWithStartSearch:(id)a3;
- (SFEndLocalSearchFeedback)initWithStartSearch:(id)a3 queryUnderstandingParse:(id)a4;
- (SFEndLocalSearchFeedback)initWithStartSearch:(id)a3 queryUnderstandingParse:(id)a4 l1ToL2ResultCount:(unsigned int)a5 coreSpotlightIndexCount:(unsigned int)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFEndLocalSearchFeedback

- (SFEndLocalSearchFeedback)initWithStartSearch:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFEndLocalSearchFeedback;
  return [(SFEndSearchFeedback *)&v4 initWithStartSearch:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFEndLocalSearchFeedback;
  v4 = a3;
  [(SFEndSearchFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_quParse forKey:{@"query_understanding_parse", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_l1ToL2ResultCount forKey:@"_l1ToL2ResultCount"];
  [v4 encodeInt32:self->_coreSpotlightIndexCount forKey:@"_coreSpotlightIndexCount"];
  [v4 encodeObject:self->_photosRankingInfo forKey:@"_photosRankingInfo"];
  [v4 encodeObject:self->_embeddingState forKey:@"_embeddingState"];
}

- (SFEndLocalSearchFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFEndLocalSearchFeedback;
  v5 = [(SFEndSearchFeedback *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query_understanding_parse"];
    quParse = v5->_quParse;
    v5->_quParse = v6;

    v5->_l1ToL2ResultCount = [v4 decodeInt32ForKey:@"_l1ToL2ResultCount"];
    v5->_coreSpotlightIndexCount = [v4 decodeInt32ForKey:@"_coreSpotlightIndexCount"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_photosRankingInfo"];
    photosRankingInfo = v5->_photosRankingInfo;
    v5->_photosRankingInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_embeddingState"];
    embeddingState = v5->_embeddingState;
    v5->_embeddingState = v10;
  }

  return v5;
}

- (SFEndLocalSearchFeedback)initWithStartSearch:(id)a3 queryUnderstandingParse:(id)a4 l1ToL2ResultCount:(unsigned int)a5 coreSpotlightIndexCount:(unsigned int)a6
{
  result = [(SFEndLocalSearchFeedback *)self initWithStartSearch:a3 queryUnderstandingParse:a4];
  if (result)
  {
    result->_l1ToL2ResultCount = a5;
    result->_coreSpotlightIndexCount = a6;
  }

  return result;
}

- (SFEndLocalSearchFeedback)initWithStartSearch:(id)a3 queryUnderstandingParse:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SFEndLocalSearchFeedback;
  v8 = [(SFEndSearchFeedback *)&v11 initWithStartSearch:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_quParse, a4);
  }

  return v9;
}

@end