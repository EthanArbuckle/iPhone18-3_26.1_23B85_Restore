@interface SFStartLocalSearchFeedback
- (SFStartLocalSearchFeedback)initWithCoder:(id)a3;
- (SFStartLocalSearchFeedback)initWithEntityQueryCommand:(id)a3 triggerEvent:(unint64_t)a4 searchType:(unint64_t)a5 indexType:(unint64_t)a6 queryId:(unint64_t)a7 originatingApp:(id)a8;
- (SFStartLocalSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4 searchType:(unint64_t)a5 indexType:(unint64_t)a6 queryId:(unint64_t)a7;
- (SFStartLocalSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4 searchType:(unint64_t)a5 indexType:(unint64_t)a6 queryId:(unint64_t)a7 originatingApp:(id)a8;
- (SFStartLocalSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4 searchType:(unint64_t)a5 indexType:(unint64_t)a6 queryId:(unint64_t)a7 originatingApp:(id)a8 coreSpotlightIndexUsed:(int)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFStartLocalSearchFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFStartLocalSearchFeedback;
  v4 = a3;
  [(SFStartSearchFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_indexType forKey:{@"_indexType", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_indexState forKey:@"_indexState"];
  [v4 encodeInt32:self->_coreSpotlightIndexUsed forKey:@"_coreSpotlightIndexUsed"];
  [v4 encodeBool:self->_isPhotosScopedSearch forKey:@"_isPhotosScopedSearch"];
  [v4 encodeBool:self->_isSemanticSearchEligible forKey:@"_isSemanticSearchEligible"];
  [v4 encodeInt32:self->_spotlightInitialPageType forKey:@"_spotlightInitialPageType"];
  [v4 encodeInt32:self->_spotlightBrowsingSearchScope forKey:@"_spotlightBrowsingSearchScope"];
}

- (SFStartLocalSearchFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFStartLocalSearchFeedback;
  v5 = [(SFStartSearchFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_indexType = [v4 decodeIntegerForKey:@"_indexType"];
    v6 = [v4 decodeObjectForKey:@"_indexState"];
    indexState = v5->_indexState;
    v5->_indexState = v6;

    v5->_coreSpotlightIndexUsed = [v4 decodeInt32ForKey:@"_coreSpotlightIndexUsed"];
    v5->_isPhotosScopedSearch = [v4 decodeBoolForKey:@"_isPhotosScopedSearch"];
    v5->_isSemanticSearchEligible = [v4 decodeBoolForKey:@"_isSemanticSearchEligible"];
    v5->_spotlightInitialPageType = [v4 decodeInt32ForKey:@"_spotlightInitialPageType"];
    v5->_spotlightBrowsingSearchScope = [v4 decodeInt32ForKey:@"_spotlightBrowsingSearchScope"];
  }

  return v5;
}

- (SFStartLocalSearchFeedback)initWithEntityQueryCommand:(id)a3 triggerEvent:(unint64_t)a4 searchType:(unint64_t)a5 indexType:(unint64_t)a6 queryId:(unint64_t)a7 originatingApp:(id)a8
{
  v14 = a3;
  v15 = a8;
  v16 = [v14 searchString];
  v17 = [(SFStartLocalSearchFeedback *)self initWithInput:v16 triggerEvent:a4 searchType:a5 indexType:a6 queryId:a7 originatingApp:v15];

  if (v17)
  {
    [(SFStartLocalSearchFeedback *)v17 setEntityQueryCommand:v14];
  }

  return v17;
}

- (SFStartLocalSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4 searchType:(unint64_t)a5 indexType:(unint64_t)a6 queryId:(unint64_t)a7 originatingApp:(id)a8 coreSpotlightIndexUsed:(int)a9
{
  v9 = [(SFStartLocalSearchFeedback *)self initWithInput:a3 triggerEvent:a4 searchType:a5 indexType:a6 queryId:a7 originatingApp:a8];
  v10 = v9;
  if (v9)
  {
    [(SFStartLocalSearchFeedback *)v9 setCoreSpotlightIndexUsed:a9];
  }

  return v10;
}

- (SFStartLocalSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4 searchType:(unint64_t)a5 indexType:(unint64_t)a6 queryId:(unint64_t)a7 originatingApp:(id)a8
{
  v14 = a8;
  v15 = [(SFStartLocalSearchFeedback *)self initWithInput:a3 triggerEvent:a4 searchType:a5 indexType:a6 queryId:a7];
  v16 = v15;
  if (v15)
  {
    [(SFStartLocalSearchFeedback *)v15 setOriginatingApp:v14];
  }

  return v16;
}

- (SFStartLocalSearchFeedback)initWithInput:(id)a3 triggerEvent:(unint64_t)a4 searchType:(unint64_t)a5 indexType:(unint64_t)a6 queryId:(unint64_t)a7
{
  v13.receiver = self;
  v13.super_class = SFStartLocalSearchFeedback;
  v10 = [(SFStartSearchFeedback *)&v13 initWithInput:a3 triggerEvent:a4];
  v11 = v10;
  if (v10)
  {
    [(SFStartSearchFeedback *)v10 setSearchType:a5];
    [(SFStartLocalSearchFeedback *)v11 setIndexType:a6];
    [(SFFeedback *)v11 setQueryId:a7];
  }

  return v11;
}

@end