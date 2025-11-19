@interface TPSAnalyticsEventSearchResultSelected
+ (id)eventWithSearchID:(id)a3 searchTerm:(id)a4 tipID:(id)a5 collectionID:(id)a6 correlationID:(id)a7;
+ (id)eventWithSearchID:(id)a3 searchTerm:(id)a4 topicID:(id)a5 bookID:(id)a6 bookSlug:(id)a7;
- (TPSAnalyticsEventSearchResultSelected)initWithCoder:(id)a3;
- (id)_initWithSearchID:(id)a3 searchTerm:(id)a4 tipID:(id)a5 collectionID:(id)a6 correlationID:(id)a7;
- (id)_initWithSearchID:(id)a3 searchTerm:(id)a4 topic_id:(id)a5 book_id:(id)a6 book_slug:(id)a7;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventSearchResultSelected

- (TPSAnalyticsEventSearchResultSelected)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TPSAnalyticsEventSearchResultSelected;
  v5 = [(TPSAnalyticsEvent *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"search_id"];
    searchID = v5->_searchID;
    v5->_searchID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"search_term"];
    searchTerm = v5->_searchTerm;
    v5->_searchTerm = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_id"];
    tipID = v5->_tipID;
    v5->_tipID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collection_id"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_id"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic_id"];
    topicID = v5->_topicID;
    v5->_topicID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"book_id"];
    bookID = v5->_bookID;
    v5->_bookID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"book_slug"];
    bookSlug = v5->_bookSlug;
    v5->_bookSlug = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventSearchResultSelected;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_searchID forKey:{@"search_id", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_searchTerm forKey:@"search_term"];
  [v4 encodeObject:self->_tipID forKey:@"tip_id"];
  [v4 encodeObject:self->_location forKey:@"location"];
  [v4 encodeObject:self->_collectionID forKey:@"collection_id"];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_id"];
  [v4 encodeObject:self->_topicID forKey:@"topic_id"];
  [v4 encodeObject:self->_bookID forKey:@"book_id"];
  [v4 encodeObject:self->_bookSlug forKey:@"book_slug"];
}

- (id)_initWithSearchID:(id)a3 searchTerm:(id)a4 tipID:(id)a5 collectionID:(id)a6 correlationID:(id)a7
{
  v20 = a3;
  v19 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x1E695DF00] date];
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventSearchResultSelected;
  v17 = [(TPSAnalyticsEvent *)&v21 initWithDate:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_searchID, a3);
    objc_storeStrong(&v17->_searchTerm, a4);
    objc_storeStrong(&v17->_tipID, a5);
    objc_storeStrong(&v17->_collectionID, a6);
    objc_storeStrong(&v17->_correlationID, a7);
  }

  return v17;
}

- (id)_initWithSearchID:(id)a3 searchTerm:(id)a4 topic_id:(id)a5 book_id:(id)a6 book_slug:(id)a7
{
  v20 = a3;
  v19 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x1E695DF00] date];
  v21.receiver = self;
  v21.super_class = TPSAnalyticsEventSearchResultSelected;
  v17 = [(TPSAnalyticsEvent *)&v21 initWithDate:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_searchID, a3);
    objc_storeStrong(&v17->_searchTerm, a4);
    objc_storeStrong(&v17->_topicID, a5);
    objc_storeStrong(&v17->_bookID, a6);
    objc_storeStrong(&v17->_bookSlug, a7);
  }

  return v17;
}

+ (id)eventWithSearchID:(id)a3 searchTerm:(id)a4 tipID:(id)a5 collectionID:(id)a6 correlationID:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithSearchID:v16 searchTerm:v15 tipID:v14 collectionID:v13 correlationID:v12];

  return v17;
}

+ (id)eventWithSearchID:(id)a3 searchTerm:(id)a4 topicID:(id)a5 bookID:(id)a6 bookSlug:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithSearchID:v16 searchTerm:v15 topic_id:v14 book_id:v13 book_slug:v12];

  return v17;
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_searchID forKeyedSubscript:@"search_id"];
  [v3 setObject:self->_searchTerm forKeyedSubscript:@"search_term"];
  [v3 setObject:self->_location forKeyedSubscript:@"location"];
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_id"];
  [v3 setObject:self->_collectionID forKeyedSubscript:@"collection_id"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_id"];
  [v3 setObject:self->_topicID forKeyedSubscript:@"topic_id"];
  [v3 setObject:self->_bookID forKeyedSubscript:@"book_id"];
  [v3 setObject:self->_bookSlug forKeyedSubscript:@"book_slug"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v4 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end