@interface WBSSearchSuggestionsFetcherResponse
- (WBSSearchSuggestionsFetcherResponse)initWithCoder:(id)coder;
- (WBSSearchSuggestionsFetcherResponse)initWithSuggestions:(id)suggestions postFixSuggestions:(id)fixSuggestions prefixNavigationalIntent:(id)intent sizeInBytes:(int64_t)bytes statusCode:(int64_t)code timingData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSSearchSuggestionsFetcherResponse

- (WBSSearchSuggestionsFetcherResponse)initWithSuggestions:(id)suggestions postFixSuggestions:(id)fixSuggestions prefixNavigationalIntent:(id)intent sizeInBytes:(int64_t)bytes statusCode:(int64_t)code timingData:(id)data
{
  suggestionsCopy = suggestions;
  fixSuggestionsCopy = fixSuggestions;
  intentCopy = intent;
  dataCopy = data;
  v27.receiver = self;
  v27.super_class = WBSSearchSuggestionsFetcherResponse;
  v18 = [(WBSSearchSuggestionsFetcherResponse *)&v27 init];
  if (v18)
  {
    v19 = [suggestionsCopy copy];
    suggestions = v18->_suggestions;
    v18->_suggestions = v19;

    v18->_sizeInBytes = bytes;
    v18->_statusCode = code;
    v21 = [dataCopy copy];
    timingData = v18->_timingData;
    v18->_timingData = v21;

    v23 = [fixSuggestionsCopy copy];
    postFixSuggestions = v18->_postFixSuggestions;
    v18->_postFixSuggestions = v23;

    objc_storeStrong(&v18->_prefixNavigationalIntent, intent);
    v25 = v18;
  }

  return v18;
}

- (WBSSearchSuggestionsFetcherResponse)initWithCoder:(id)coder
{
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"suggestions"];

  v24 = [coderCopy decodeInt64ForKey:@"sizeInBytes"];
  v23 = [coderCopy decodeIntegerForKey:@"statusCode"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"timingData"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"postFixSuggestions"];

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prefixNavigationalIntent"];

  v21 = [(WBSSearchSuggestionsFetcherResponse *)self initWithSuggestions:v7 postFixSuggestions:v19 prefixNavigationalIntent:v20 sizeInBytes:v24 statusCode:v23 timingData:v15];
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  suggestions = self->_suggestions;
  coderCopy = coder;
  [coderCopy encodeObject:suggestions forKey:@"suggestions"];
  [coderCopy encodeInt64:self->_sizeInBytes forKey:@"sizeInBytes"];
  [coderCopy encodeInteger:self->_statusCode forKey:@"statusCode"];
  [coderCopy encodeObject:self->_timingData forKey:@"timingData"];
  [coderCopy encodeObject:self->_postFixSuggestions forKey:@"postFixSuggestions"];
  [coderCopy encodeObject:self->_prefixNavigationalIntent forKey:@"prefixNavigationalIntent"];
}

@end