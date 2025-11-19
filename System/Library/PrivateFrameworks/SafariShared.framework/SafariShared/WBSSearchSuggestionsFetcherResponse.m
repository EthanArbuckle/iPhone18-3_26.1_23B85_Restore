@interface WBSSearchSuggestionsFetcherResponse
- (WBSSearchSuggestionsFetcherResponse)initWithCoder:(id)a3;
- (WBSSearchSuggestionsFetcherResponse)initWithSuggestions:(id)a3 postFixSuggestions:(id)a4 prefixNavigationalIntent:(id)a5 sizeInBytes:(int64_t)a6 statusCode:(int64_t)a7 timingData:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSSearchSuggestionsFetcherResponse

- (WBSSearchSuggestionsFetcherResponse)initWithSuggestions:(id)a3 postFixSuggestions:(id)a4 prefixNavigationalIntent:(id)a5 sizeInBytes:(int64_t)a6 statusCode:(int64_t)a7 timingData:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v27.receiver = self;
  v27.super_class = WBSSearchSuggestionsFetcherResponse;
  v18 = [(WBSSearchSuggestionsFetcherResponse *)&v27 init];
  if (v18)
  {
    v19 = [v14 copy];
    suggestions = v18->_suggestions;
    v18->_suggestions = v19;

    v18->_sizeInBytes = a6;
    v18->_statusCode = a7;
    v21 = [v17 copy];
    timingData = v18->_timingData;
    v18->_timingData = v21;

    v23 = [v15 copy];
    postFixSuggestions = v18->_postFixSuggestions;
    v18->_postFixSuggestions = v23;

    objc_storeStrong(&v18->_prefixNavigationalIntent, a5);
    v25 = v18;
  }

  return v18;
}

- (WBSSearchSuggestionsFetcherResponse)initWithCoder:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"suggestions"];

  v24 = [v4 decodeInt64ForKey:@"sizeInBytes"];
  v23 = [v4 decodeIntegerForKey:@"statusCode"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"timingData"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [v4 decodeObjectOfClasses:v18 forKey:@"postFixSuggestions"];

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prefixNavigationalIntent"];

  v21 = [(WBSSearchSuggestionsFetcherResponse *)self initWithSuggestions:v7 postFixSuggestions:v19 prefixNavigationalIntent:v20 sizeInBytes:v24 statusCode:v23 timingData:v15];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  suggestions = self->_suggestions;
  v5 = a3;
  [v5 encodeObject:suggestions forKey:@"suggestions"];
  [v5 encodeInt64:self->_sizeInBytes forKey:@"sizeInBytes"];
  [v5 encodeInteger:self->_statusCode forKey:@"statusCode"];
  [v5 encodeObject:self->_timingData forKey:@"timingData"];
  [v5 encodeObject:self->_postFixSuggestions forKey:@"postFixSuggestions"];
  [v5 encodeObject:self->_prefixNavigationalIntent forKey:@"prefixNavigationalIntent"];
}

@end