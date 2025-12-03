@interface SFStartLocalSearchFeedback
- (SFStartLocalSearchFeedback)initWithCoder:(id)coder;
- (SFStartLocalSearchFeedback)initWithEntityQueryCommand:(id)command triggerEvent:(unint64_t)event searchType:(unint64_t)type indexType:(unint64_t)indexType queryId:(unint64_t)id originatingApp:(id)app;
- (SFStartLocalSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event searchType:(unint64_t)type indexType:(unint64_t)indexType queryId:(unint64_t)id;
- (SFStartLocalSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event searchType:(unint64_t)type indexType:(unint64_t)indexType queryId:(unint64_t)id originatingApp:(id)app;
- (SFStartLocalSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event searchType:(unint64_t)type indexType:(unint64_t)indexType queryId:(unint64_t)id originatingApp:(id)app coreSpotlightIndexUsed:(int)used;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFStartLocalSearchFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFStartLocalSearchFeedback;
  coderCopy = coder;
  [(SFStartSearchFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_indexType forKey:{@"_indexType", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_indexState forKey:@"_indexState"];
  [coderCopy encodeInt32:self->_coreSpotlightIndexUsed forKey:@"_coreSpotlightIndexUsed"];
  [coderCopy encodeBool:self->_isPhotosScopedSearch forKey:@"_isPhotosScopedSearch"];
  [coderCopy encodeBool:self->_isSemanticSearchEligible forKey:@"_isSemanticSearchEligible"];
  [coderCopy encodeInt32:self->_spotlightInitialPageType forKey:@"_spotlightInitialPageType"];
  [coderCopy encodeInt32:self->_spotlightBrowsingSearchScope forKey:@"_spotlightBrowsingSearchScope"];
}

- (SFStartLocalSearchFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFStartLocalSearchFeedback;
  v5 = [(SFStartSearchFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_indexType = [coderCopy decodeIntegerForKey:@"_indexType"];
    v6 = [coderCopy decodeObjectForKey:@"_indexState"];
    indexState = v5->_indexState;
    v5->_indexState = v6;

    v5->_coreSpotlightIndexUsed = [coderCopy decodeInt32ForKey:@"_coreSpotlightIndexUsed"];
    v5->_isPhotosScopedSearch = [coderCopy decodeBoolForKey:@"_isPhotosScopedSearch"];
    v5->_isSemanticSearchEligible = [coderCopy decodeBoolForKey:@"_isSemanticSearchEligible"];
    v5->_spotlightInitialPageType = [coderCopy decodeInt32ForKey:@"_spotlightInitialPageType"];
    v5->_spotlightBrowsingSearchScope = [coderCopy decodeInt32ForKey:@"_spotlightBrowsingSearchScope"];
  }

  return v5;
}

- (SFStartLocalSearchFeedback)initWithEntityQueryCommand:(id)command triggerEvent:(unint64_t)event searchType:(unint64_t)type indexType:(unint64_t)indexType queryId:(unint64_t)id originatingApp:(id)app
{
  commandCopy = command;
  appCopy = app;
  searchString = [commandCopy searchString];
  v17 = [(SFStartLocalSearchFeedback *)self initWithInput:searchString triggerEvent:event searchType:type indexType:indexType queryId:id originatingApp:appCopy];

  if (v17)
  {
    [(SFStartLocalSearchFeedback *)v17 setEntityQueryCommand:commandCopy];
  }

  return v17;
}

- (SFStartLocalSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event searchType:(unint64_t)type indexType:(unint64_t)indexType queryId:(unint64_t)id originatingApp:(id)app coreSpotlightIndexUsed:(int)used
{
  v9 = [(SFStartLocalSearchFeedback *)self initWithInput:input triggerEvent:event searchType:type indexType:indexType queryId:id originatingApp:app];
  v10 = v9;
  if (v9)
  {
    [(SFStartLocalSearchFeedback *)v9 setCoreSpotlightIndexUsed:used];
  }

  return v10;
}

- (SFStartLocalSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event searchType:(unint64_t)type indexType:(unint64_t)indexType queryId:(unint64_t)id originatingApp:(id)app
{
  appCopy = app;
  v15 = [(SFStartLocalSearchFeedback *)self initWithInput:input triggerEvent:event searchType:type indexType:indexType queryId:id];
  v16 = v15;
  if (v15)
  {
    [(SFStartLocalSearchFeedback *)v15 setOriginatingApp:appCopy];
  }

  return v16;
}

- (SFStartLocalSearchFeedback)initWithInput:(id)input triggerEvent:(unint64_t)event searchType:(unint64_t)type indexType:(unint64_t)indexType queryId:(unint64_t)id
{
  v13.receiver = self;
  v13.super_class = SFStartLocalSearchFeedback;
  v10 = [(SFStartSearchFeedback *)&v13 initWithInput:input triggerEvent:event];
  v11 = v10;
  if (v10)
  {
    [(SFStartSearchFeedback *)v10 setSearchType:type];
    [(SFStartLocalSearchFeedback *)v11 setIndexType:indexType];
    [(SFFeedback *)v11 setQueryId:id];
  }

  return v11;
}

@end