@interface SFEndLocalSearchFeedback
- (SFEndLocalSearchFeedback)initWithCoder:(id)coder;
- (SFEndLocalSearchFeedback)initWithStartSearch:(id)search;
- (SFEndLocalSearchFeedback)initWithStartSearch:(id)search queryUnderstandingParse:(id)parse;
- (SFEndLocalSearchFeedback)initWithStartSearch:(id)search queryUnderstandingParse:(id)parse l1ToL2ResultCount:(unsigned int)count coreSpotlightIndexCount:(unsigned int)indexCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEndLocalSearchFeedback

- (SFEndLocalSearchFeedback)initWithStartSearch:(id)search
{
  v4.receiver = self;
  v4.super_class = SFEndLocalSearchFeedback;
  return [(SFEndSearchFeedback *)&v4 initWithStartSearch:search];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFEndLocalSearchFeedback;
  coderCopy = coder;
  [(SFEndSearchFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_quParse forKey:{@"query_understanding_parse", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_l1ToL2ResultCount forKey:@"_l1ToL2ResultCount"];
  [coderCopy encodeInt32:self->_coreSpotlightIndexCount forKey:@"_coreSpotlightIndexCount"];
  [coderCopy encodeObject:self->_photosRankingInfo forKey:@"_photosRankingInfo"];
  [coderCopy encodeObject:self->_embeddingState forKey:@"_embeddingState"];
}

- (SFEndLocalSearchFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFEndLocalSearchFeedback;
  v5 = [(SFEndSearchFeedback *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query_understanding_parse"];
    quParse = v5->_quParse;
    v5->_quParse = v6;

    v5->_l1ToL2ResultCount = [coderCopy decodeInt32ForKey:@"_l1ToL2ResultCount"];
    v5->_coreSpotlightIndexCount = [coderCopy decodeInt32ForKey:@"_coreSpotlightIndexCount"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_photosRankingInfo"];
    photosRankingInfo = v5->_photosRankingInfo;
    v5->_photosRankingInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_embeddingState"];
    embeddingState = v5->_embeddingState;
    v5->_embeddingState = v10;
  }

  return v5;
}

- (SFEndLocalSearchFeedback)initWithStartSearch:(id)search queryUnderstandingParse:(id)parse l1ToL2ResultCount:(unsigned int)count coreSpotlightIndexCount:(unsigned int)indexCount
{
  result = [(SFEndLocalSearchFeedback *)self initWithStartSearch:search queryUnderstandingParse:parse];
  if (result)
  {
    result->_l1ToL2ResultCount = count;
    result->_coreSpotlightIndexCount = indexCount;
  }

  return result;
}

- (SFEndLocalSearchFeedback)initWithStartSearch:(id)search queryUnderstandingParse:(id)parse
{
  parseCopy = parse;
  v11.receiver = self;
  v11.super_class = SFEndLocalSearchFeedback;
  v8 = [(SFEndSearchFeedback *)&v11 initWithStartSearch:search];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_quParse, parse);
  }

  return v9;
}

@end