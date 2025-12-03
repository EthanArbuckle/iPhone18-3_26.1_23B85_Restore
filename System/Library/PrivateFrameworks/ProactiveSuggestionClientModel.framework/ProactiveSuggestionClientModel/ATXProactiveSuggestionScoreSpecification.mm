@interface ATXProactiveSuggestionScoreSpecification
+ (id)stringForSuggestedConfidenceCategory:(int64_t)category;
- (ATXProactiveSuggestionScoreSpecification)initWithCoder:(id)coder;
- (ATXProactiveSuggestionScoreSpecification)initWithProto:(id)proto;
- (ATXProactiveSuggestionScoreSpecification)initWithProtoData:(id)data;
- (ATXProactiveSuggestionScoreSpecification)initWithRawScore:(double)score suggestedConfidenceCategory:(int64_t)category;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)fuzzyIsEqualToScoreSpecification:(id)specification;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXProactiveSuggestionScoreSpecification

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Raw score: %.2f   Confidence category: %ld    ", *&self->_rawScore, self->_suggestedConfidenceCategory];

  return v2;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBProactiveSuggestionScoreSpecification *)v3 setRawScore:?];
  suggestedConfidenceCategory = self->_suggestedConfidenceCategory;
  if (suggestedConfidenceCategory >= 5)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_suggestedConfidenceCategory];
  }

  else
  {
    v5 = off_1E86A4AA8[suggestedConfidenceCategory];
  }

  v6 = v5;
  if (([(__CFString *)v6 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v7 = 0;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Fallback"]& 1) != 0)
  {
    v7 = 1;
  }

  else if (([(__CFString *)v6 isEqualToString:@"LowConfidence"]& 1) != 0)
  {
    v7 = 2;
  }

  else if (([(__CFString *)v6 isEqualToString:@"MediumConfidence"]& 1) != 0)
  {
    v7 = 3;
  }

  else if ([(__CFString *)v6 isEqualToString:@"HighConfidence"])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  [(ATXPBProactiveSuggestionScoreSpecification *)v3 setSuggestedConfidenceCategory:v7];

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXProactiveSuggestionScoreSpecification *)self proto];
  data = [proto data];

  return data;
}

- (ATXProactiveSuggestionScoreSpecification)initWithRawScore:(double)score suggestedConfidenceCategory:(int64_t)category
{
  v7.receiver = self;
  v7.super_class = ATXProactiveSuggestionScoreSpecification;
  result = [(ATXProactiveSuggestionScoreSpecification *)&v7 init];
  if (result)
  {
    result->_rawScore = score;
    result->_suggestedConfidenceCategory = category;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXProactiveSuggestionScoreSpecification allocWithZone:zone];
  rawScore = self->_rawScore;
  suggestedConfidenceCategory = self->_suggestedConfidenceCategory;

  return [(ATXProactiveSuggestionScoreSpecification *)v4 initWithRawScore:suggestedConfidenceCategory suggestedConfidenceCategory:rawScore];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(ATXProactiveSuggestionScoreSpecification *)v5 rawScore];
      v7 = v6 == self->_rawScore && [(ATXProactiveSuggestionScoreSpecification *)v5 suggestedConfidenceCategory]== self->_suggestedConfidenceCategory;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)fuzzyIsEqualToScoreSpecification:(id)specification
{
  specificationCopy = specification;
  if (self == specificationCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ATXProactiveSuggestionScoreSpecification *)specificationCopy suggestedConfidenceCategory]== self->_suggestedConfidenceCategory;
  }

  return v5;
}

+ (id)stringForSuggestedConfidenceCategory:(int64_t)category
{
  if (category >= 5)
  {
    category = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", category];
  }

  else
  {
    category = off_1E86A4AA8[category];
  }

  return category;
}

- (ATXProactiveSuggestionScoreSpecification)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBProactiveSuggestionScoreSpecification alloc] initWithData:dataCopy];

    self = [(ATXProactiveSuggestionScoreSpecification *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestionScoreSpecification)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestionUISpecification initWithProto:];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  rawScore = [(ATXPBProactiveSuggestionScoreSpecification *)v5 rawScore];
  suggestedConfidenceCategory = [(ATXPBProactiveSuggestionScoreSpecification *)v5 suggestedConfidenceCategory];
  if (suggestedConfidenceCategory >= 5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", suggestedConfidenceCategory];
  }

  else
  {
    v8 = off_1E86A4AA8[suggestedConfidenceCategory];
  }

  v11 = v8;
  if (([(__CFString *)v11 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v12 = 0;
  }

  else if (([(__CFString *)v11 isEqualToString:@"Fallback"]& 1) != 0)
  {
    v12 = 1;
  }

  else if (([(__CFString *)v11 isEqualToString:@"LowConfidence"]& 1) != 0)
  {
    v12 = 2;
  }

  else if (([(__CFString *)v11 isEqualToString:@"MediumConfidence"]& 1) != 0)
  {
    v12 = 3;
  }

  else if ([(__CFString *)v11 isEqualToString:@"HighConfidence"])
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  self = [(ATXProactiveSuggestionScoreSpecification *)self initWithRawScore:v12 suggestedConfidenceCategory:rawScore];
  selfCopy = self;
LABEL_22:

  return selfCopy;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXProactiveSuggestionScoreSpecification *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXProactiveSuggestionScoreSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionScoreSpecification *)self initWithProtoData:v5];
  return v6;
}

- (id)jsonRawData
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"rawScore";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_rawScore];
  v8[1] = @"suggestedConfidence";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_suggestedConfidenceCategory];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end