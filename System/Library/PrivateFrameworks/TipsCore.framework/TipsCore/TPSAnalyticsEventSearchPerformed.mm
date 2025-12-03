@interface TPSAnalyticsEventSearchPerformed
+ (id)eventWithSearchID:(id)d searchTerm:(id)term invocationMethod:(id)method;
- (TPSAnalyticsEventSearchPerformed)initWithCoder:(id)coder;
- (id)_initWithSearchID:(id)d searchTerm:(id)term invocationMethod:(id)method;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAnalyticsEventSearchPerformed

- (TPSAnalyticsEventSearchPerformed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = TPSAnalyticsEventSearchPerformed;
  v5 = [(TPSAnalyticsEvent *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"search_id"];
    searchID = v5->_searchID;
    v5->_searchID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"search_term"];
    searchTerm = v5->_searchTerm;
    v5->_searchTerm = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invocation_method"];
    invocationMethod = v5->_invocationMethod;
    v5->_invocationMethod = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_id"];
    tipID = v5->_tipID;
    v5->_tipID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_id"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_id"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v18;

    [coderCopy decodeDoubleForKey:@"relevance"];
    v5->_relevance = v20;
    v5->_resultOrder = [coderCopy decodeIntegerForKey:@"result_place"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TPSAnalyticsEventSearchPerformed;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchID forKey:{@"search_id", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_searchTerm forKey:@"search_term"];
  [coderCopy encodeObject:self->_invocationMethod forKey:@"invocation_method"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_tipID forKey:@"tip_id"];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_id"];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_id"];
  [coderCopy encodeDouble:@"relevance" forKey:self->_relevance];
  [coderCopy encodeInteger:self->_resultOrder forKey:@"result_place"];
}

- (id)_initWithSearchID:(id)d searchTerm:(id)term invocationMethod:(id)method
{
  dCopy = d;
  termCopy = term;
  methodCopy = method;
  date = [MEMORY[0x1E695DF00] date];
  v15.receiver = self;
  v15.super_class = TPSAnalyticsEventSearchPerformed;
  v13 = [(TPSAnalyticsEvent *)&v15 initWithDate:date];

  if (v13)
  {
    objc_storeStrong(&v13->_searchID, d);
    objc_storeStrong(&v13->_searchTerm, term);
    objc_storeStrong(&v13->_invocationMethod, method);
  }

  return v13;
}

+ (id)eventWithSearchID:(id)d searchTerm:(id)term invocationMethod:(id)method
{
  methodCopy = method;
  termCopy = term;
  dCopy = d;
  v11 = [[self alloc] _initWithSearchID:dCopy searchTerm:termCopy invocationMethod:methodCopy];

  return v11;
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_searchID forKeyedSubscript:@"search_id"];
  [dictionary setObject:self->_searchTerm forKeyedSubscript:@"search_term"];
  [dictionary setObject:self->_invocationMethod forKeyedSubscript:@"invocation_method"];
  [dictionary setObject:self->_tipID forKeyedSubscript:@"tip_id"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_id"];
  [dictionary setObject:self->_location forKeyedSubscript:@"location"];
  [dictionary setObject:self->_collectionID forKeyedSubscript:@"collection_id"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_relevance];
  [dictionary setObject:v4 forKeyedSubscript:@"relevance"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_resultOrder];
  [dictionary setObject:v5 forKeyedSubscript:@"result_place"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v6 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

@end