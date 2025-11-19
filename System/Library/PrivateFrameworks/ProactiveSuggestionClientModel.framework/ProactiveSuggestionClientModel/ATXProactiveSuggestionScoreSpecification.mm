@interface ATXProactiveSuggestionScoreSpecification
+ (id)stringForSuggestedConfidenceCategory:(int64_t)a3;
- (ATXProactiveSuggestionScoreSpecification)initWithCoder:(id)a3;
- (ATXProactiveSuggestionScoreSpecification)initWithProto:(id)a3;
- (ATXProactiveSuggestionScoreSpecification)initWithProtoData:(id)a3;
- (ATXProactiveSuggestionScoreSpecification)initWithRawScore:(double)a3 suggestedConfidenceCategory:(int64_t)a4;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)fuzzyIsEqualToScoreSpecification:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [(ATXProactiveSuggestionScoreSpecification *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXProactiveSuggestionScoreSpecification)initWithRawScore:(double)a3 suggestedConfidenceCategory:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = ATXProactiveSuggestionScoreSpecification;
  result = [(ATXProactiveSuggestionScoreSpecification *)&v7 init];
  if (result)
  {
    result->_rawScore = a3;
    result->_suggestedConfidenceCategory = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXProactiveSuggestionScoreSpecification allocWithZone:a3];
  rawScore = self->_rawScore;
  suggestedConfidenceCategory = self->_suggestedConfidenceCategory;

  return [(ATXProactiveSuggestionScoreSpecification *)v4 initWithRawScore:suggestedConfidenceCategory suggestedConfidenceCategory:rawScore];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (BOOL)fuzzyIsEqualToScoreSpecification:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ATXProactiveSuggestionScoreSpecification *)v4 suggestedConfidenceCategory]== self->_suggestedConfidenceCategory;
  }

  return v5;
}

+ (id)stringForSuggestedConfidenceCategory:(int64_t)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", a3];
  }

  else
  {
    v4 = off_1E86A4AA8[a3];
  }

  return v4;
}

- (ATXProactiveSuggestionScoreSpecification)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBProactiveSuggestionScoreSpecification alloc] initWithData:v4];

    self = [(ATXProactiveSuggestionScoreSpecification *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXProactiveSuggestionScoreSpecification)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_8:
    v10 = 0;
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

  v5 = v4;
  v6 = [(ATXPBProactiveSuggestionScoreSpecification *)v5 rawScore];
  v7 = [(ATXPBProactiveSuggestionScoreSpecification *)v5 suggestedConfidenceCategory];
  if (v7 >= 5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
  }

  else
  {
    v8 = off_1E86A4AA8[v7];
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

  self = [(ATXProactiveSuggestionScoreSpecification *)self initWithRawScore:v12 suggestedConfidenceCategory:v6];
  v10 = self;
LABEL_22:

  return v10;
}

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXProactiveSuggestionScoreSpecification *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXProactiveSuggestionScoreSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

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