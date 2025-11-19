@interface TPSAnalyticsEventSearchPerformed
+ (id)eventWithSearchID:(id)a3 searchTerm:(id)a4 invocationMethod:(id)a5;
- (TPSAnalyticsEventSearchPerformed)initWithCoder:(id)a3;
- (id)_initWithSearchID:(id)a3 searchTerm:(id)a4 invocationMethod:(id)a5;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAnalyticsEventSearchPerformed

- (TPSAnalyticsEventSearchPerformed)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TPSAnalyticsEventSearchPerformed;
  v5 = [(TPSAnalyticsEvent *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"search_id"];
    searchID = v5->_searchID;
    v5->_searchID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"search_term"];
    searchTerm = v5->_searchTerm;
    v5->_searchTerm = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invocation_method"];
    invocationMethod = v5->_invocationMethod;
    v5->_invocationMethod = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_id"];
    tipID = v5->_tipID;
    v5->_tipID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_id"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collection_id"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v18;

    [v4 decodeDoubleForKey:@"relevance"];
    v5->_relevance = v20;
    v5->_resultOrder = [v4 decodeIntegerForKey:@"result_place"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventSearchPerformed;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_searchID forKey:{@"search_id", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_searchTerm forKey:@"search_term"];
  [v4 encodeObject:self->_invocationMethod forKey:@"invocation_method"];
  [v4 encodeObject:self->_location forKey:@"location"];
  [v4 encodeObject:self->_tipID forKey:@"tip_id"];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_id"];
  [v4 encodeObject:self->_collectionID forKey:@"collection_id"];
  [v4 encodeDouble:@"relevance" forKey:self->_relevance];
  [v4 encodeInteger:self->_resultOrder forKey:@"result_place"];
}

- (id)_initWithSearchID:(id)a3 searchTerm:(id)a4 invocationMethod:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF00] date];
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventSearchPerformed;
  v13 = [(TPSAnalyticsEvent *)&v15 initWithDate:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_searchID, a3);
    objc_storeStrong(&v13->_searchTerm, a4);
    objc_storeStrong(&v13->_invocationMethod, a5);
  }

  return v13;
}

+ (id)eventWithSearchID:(id)a3 searchTerm:(id)a4 invocationMethod:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] _initWithSearchID:v10 searchTerm:v9 invocationMethod:v8];

  return v11;
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_searchID forKeyedSubscript:@"search_id"];
  [v3 setObject:self->_searchTerm forKeyedSubscript:@"search_term"];
  [v3 setObject:self->_invocationMethod forKeyedSubscript:@"invocation_method"];
  [v3 setObject:self->_tipID forKeyedSubscript:@"tip_id"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_id"];
  [v3 setObject:self->_location forKeyedSubscript:@"location"];
  [v3 setObject:self->_collectionID forKeyedSubscript:@"collection_id"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_relevance];
  [v3 setObject:v4 forKeyedSubscript:@"relevance"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resultOrder];
  [v3 setObject:v5 forKeyedSubscript:@"result_place"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v6 forKeyedSubscript:@"u65_flag"];

  return v3;
}

@end