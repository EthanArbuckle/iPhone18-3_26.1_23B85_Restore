@interface TPSAnalyticsEventSearchResultSelected
+ (id)eventWithSearchID:(id)d searchTerm:(id)term tipID:(id)iD collectionID:(id)collectionID correlationID:(id)correlationID;
+ (id)eventWithSearchID:(id)d searchTerm:(id)term topicID:(id)iD bookID:(id)bookID bookSlug:(id)slug;
- (TPSAnalyticsEventSearchResultSelected)initWithCoder:(id)coder;
- (id)_initWithSearchID:(id)d searchTerm:(id)term tipID:(id)iD collectionID:(id)collectionID correlationID:(id)correlationID;
- (id)_initWithSearchID:(id)d searchTerm:(id)term topic_id:(id)topic_id book_id:(id)book_id book_slug:(id)book_slug;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventSearchResultSelected

- (TPSAnalyticsEventSearchResultSelected)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = TPSAnalyticsEventSearchResultSelected;
  v5 = [(TPSAnalyticsEvent *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"search_id"];
    searchID = v5->_searchID;
    v5->_searchID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"search_term"];
    searchTerm = v5->_searchTerm;
    v5->_searchTerm = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_id"];
    tipID = v5->_tipID;
    v5->_tipID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_id"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_id"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic_id"];
    topicID = v5->_topicID;
    v5->_topicID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"book_id"];
    bookID = v5->_bookID;
    v5->_bookID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"book_slug"];
    bookSlug = v5->_bookSlug;
    v5->_bookSlug = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventSearchResultSelected;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchID forKey:{@"search_id", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_searchTerm forKey:@"search_term"];
  [coderCopy encodeObject:self->_tipID forKey:@"tip_id"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_id"];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_id"];
  [coderCopy encodeObject:self->_topicID forKey:@"topic_id"];
  [coderCopy encodeObject:self->_bookID forKey:@"book_id"];
  [coderCopy encodeObject:self->_bookSlug forKey:@"book_slug"];
}

- (id)_initWithSearchID:(id)d searchTerm:(id)term tipID:(id)iD collectionID:(id)collectionID correlationID:(id)correlationID
{
  dCopy = d;
  termCopy = term;
  iDCopy = iD;
  collectionIDCopy = collectionID;
  correlationIDCopy = correlationID;
  date = [MEMORY[0x1E695DF00] date];
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventSearchResultSelected;
  v17 = [(TPSAnalyticsEvent *)&v21 initWithDate:date];

  if (v17)
  {
    objc_storeStrong(&v17->_searchID, d);
    objc_storeStrong(&v17->_searchTerm, term);
    objc_storeStrong(&v17->_tipID, iD);
    objc_storeStrong(&v17->_collectionID, collectionID);
    objc_storeStrong(&v17->_correlationID, correlationID);
  }

  return v17;
}

- (id)_initWithSearchID:(id)d searchTerm:(id)term topic_id:(id)topic_id book_id:(id)book_id book_slug:(id)book_slug
{
  dCopy = d;
  termCopy = term;
  topic_idCopy = topic_id;
  book_idCopy = book_id;
  book_slugCopy = book_slug;
  date = [MEMORY[0x1E695DF00] date];
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventSearchResultSelected;
  v17 = [(TPSAnalyticsEvent *)&v21 initWithDate:date];

  if (v17)
  {
    objc_storeStrong(&v17->_searchID, d);
    objc_storeStrong(&v17->_searchTerm, term);
    objc_storeStrong(&v17->_topicID, topic_id);
    objc_storeStrong(&v17->_bookID, book_id);
    objc_storeStrong(&v17->_bookSlug, book_slug);
  }

  return v17;
}

+ (id)eventWithSearchID:(id)d searchTerm:(id)term tipID:(id)iD collectionID:(id)collectionID correlationID:(id)correlationID
{
  correlationIDCopy = correlationID;
  collectionIDCopy = collectionID;
  iDCopy = iD;
  termCopy = term;
  dCopy = d;
  v17 = [[self alloc] _initWithSearchID:dCopy searchTerm:termCopy tipID:iDCopy collectionID:collectionIDCopy correlationID:correlationIDCopy];

  return v17;
}

+ (id)eventWithSearchID:(id)d searchTerm:(id)term topicID:(id)iD bookID:(id)bookID bookSlug:(id)slug
{
  slugCopy = slug;
  bookIDCopy = bookID;
  iDCopy = iD;
  termCopy = term;
  dCopy = d;
  v17 = [[self alloc] _initWithSearchID:dCopy searchTerm:termCopy topic_id:iDCopy book_id:bookIDCopy book_slug:slugCopy];

  return v17;
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_searchID forKeyedSubscript:@"search_id"];
  [dictionary setObject:self->_searchTerm forKeyedSubscript:@"search_term"];
  [dictionary setObject:self->_location forKeyedSubscript:@"location"];
  [dictionary setObject:self->_tipID forKeyedSubscript:@"tip_id"];
  [dictionary setObject:self->_collectionID forKeyedSubscript:@"collection_id"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_id"];
  [dictionary setObject:self->_topicID forKeyedSubscript:@"topic_id"];
  [dictionary setObject:self->_bookID forKeyedSubscript:@"book_id"];
  [dictionary setObject:self->_bookSlug forKeyedSubscript:@"book_slug"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v4 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end