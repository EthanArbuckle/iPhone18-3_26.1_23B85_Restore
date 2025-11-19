@interface ATXProactiveSuggestionClientModelSpecification
- (ATXProactiveSuggestionClientModelSpecification)initWithClientModelId:(id)a3 clientModelVersion:(id)a4 engagementResetPolicy:(unint64_t)a5;
- (ATXProactiveSuggestionClientModelSpecification)initWithCoder:(id)a3;
- (ATXProactiveSuggestionClientModelSpecification)initWithProto:(id)a3;
- (ATXProactiveSuggestionClientModelSpecification)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXProactiveSuggestionClientModelSpecification

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Client Model: %@ (version: %@)   Recently Engaged Policy: %lu", self->_clientModelId, self->_clientModelVersion, self->_engagementResetPolicy];

  return v2;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBProactiveSuggestionClientModelSpecification *)v3 setClientModelId:?];
  [(ATXPBProactiveSuggestionClientModelSpecification *)v3 setClientModelVersion:?];
  engagementResetPolicy = self->_engagementResetPolicy;
  if (engagementResetPolicy)
  {
    if (engagementResetPolicy == 1)
    {
      v5 = @"WhenNotPredicted";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_engagementResetPolicy];
    }
  }

  else
  {
    v5 = @"OnCacheUpdate";
  }

  v6 = v5;
  if (([(__CFString *)v6 isEqualToString:@"OnCacheUpdate"]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(__CFString *)v6 isEqualToString:@"WhenNotPredicted"];
  }

  [(ATXPBProactiveSuggestionClientModelSpecification *)v3 setEngagementResetPolicy:v7];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientModelId hash];
  v4 = [(NSString *)self->_clientModelVersion hash];
  return self->_engagementResetPolicy - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
}

- (id)encodeAsProto
{
  v2 = [(ATXProactiveSuggestionClientModelSpecification *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXProactiveSuggestionClientModelSpecification)initWithClientModelId:(id)a3 clientModelVersion:(id)a4 engagementResetPolicy:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ATXProactiveSuggestionClientModelSpecification;
  v10 = [(ATXProactiveSuggestionClientModelSpecification *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    clientModelId = v10->_clientModelId;
    v10->_clientModelId = v11;

    v13 = [v9 copy];
    clientModelVersion = v10->_clientModelVersion;
    v10->_clientModelVersion = v13;

    v10->_engagementResetPolicy = a5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXProactiveSuggestionClientModelSpecification allocWithZone:a3];
  v5 = [(NSString *)self->_clientModelId copy];
  v6 = [(NSString *)self->_clientModelVersion copy];
  v7 = [(ATXProactiveSuggestionClientModelSpecification *)v4 initWithClientModelId:v5 clientModelVersion:v6 engagementResetPolicy:self->_engagementResetPolicy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_clientModelId;
      v7 = v6;
      if (v6 == v5->_clientModelId)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v10 = self->_clientModelVersion;
      v11 = v10;
      if (v10 == v5->_clientModelVersion)
      {
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
LABEL_11:
          v9 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      engagementResetPolicy = self->_engagementResetPolicy;
      v9 = engagementResetPolicy == [(ATXProactiveSuggestionClientModelSpecification *)v5 engagementResetPolicy];
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (ATXProactiveSuggestionClientModelSpecification)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBProactiveSuggestionClientModelSpecification alloc] initWithData:v4];

    self = [(ATXProactiveSuggestionClientModelSpecification *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXProactiveSuggestionClientModelSpecification)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestion initWithProto:];
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = [(ATXPBProactiveSuggestionClientModelSpecification *)v5 clientModelId];
  v7 = [(ATXPBProactiveSuggestionClientModelSpecification *)v5 clientModelVersion];
  v8 = [(ATXPBProactiveSuggestionClientModelSpecification *)v5 engagementResetPolicy];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = @"WhenNotPredicted";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }
  }

  else
  {
    v9 = @"OnCacheUpdate";
  }

  v12 = v9;
  if (([(__CFString *)v12 isEqualToString:@"OnCacheUpdate"]& 1) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(__CFString *)v12 isEqualToString:@"WhenNotPredicted"];
  }

  self = [(ATXProactiveSuggestionClientModelSpecification *)self initWithClientModelId:v6 clientModelVersion:v7 engagementResetPolicy:v13];
  v11 = self;
LABEL_16:

  return v11;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
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
  v5 = [(ATXProactiveSuggestionClientModelSpecification *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXProactiveSuggestionClientModelSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionClientModelSpecification *)self initWithProtoData:v5];
  return v6;
}

- (id)jsonRawData
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"clientModelId";
  v6[1] = @"clientModelVersion";
  clientModelVersion = self->_clientModelVersion;
  v7[0] = self->_clientModelId;
  v7[1] = clientModelVersion;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end