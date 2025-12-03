@interface ATXProactiveSuggestionClientModelSpecification
- (ATXProactiveSuggestionClientModelSpecification)initWithClientModelId:(id)id clientModelVersion:(id)version engagementResetPolicy:(unint64_t)policy;
- (ATXProactiveSuggestionClientModelSpecification)initWithCoder:(id)coder;
- (ATXProactiveSuggestionClientModelSpecification)initWithProto:(id)proto;
- (ATXProactiveSuggestionClientModelSpecification)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  proto = [(ATXProactiveSuggestionClientModelSpecification *)self proto];
  data = [proto data];

  return data;
}

- (ATXProactiveSuggestionClientModelSpecification)initWithClientModelId:(id)id clientModelVersion:(id)version engagementResetPolicy:(unint64_t)policy
{
  idCopy = id;
  versionCopy = version;
  v16.receiver = self;
  v16.super_class = ATXProactiveSuggestionClientModelSpecification;
  v10 = [(ATXProactiveSuggestionClientModelSpecification *)&v16 init];
  if (v10)
  {
    v11 = [idCopy copy];
    clientModelId = v10->_clientModelId;
    v10->_clientModelId = v11;

    v13 = [versionCopy copy];
    clientModelVersion = v10->_clientModelVersion;
    v10->_clientModelVersion = v13;

    v10->_engagementResetPolicy = policy;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXProactiveSuggestionClientModelSpecification allocWithZone:zone];
  v5 = [(NSString *)self->_clientModelId copy];
  v6 = [(NSString *)self->_clientModelVersion copy];
  v7 = [(ATXProactiveSuggestionClientModelSpecification *)v4 initWithClientModelId:v5 clientModelVersion:v6 engagementResetPolicy:self->_engagementResetPolicy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (ATXProactiveSuggestionClientModelSpecification)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBProactiveSuggestionClientModelSpecification alloc] initWithData:dataCopy];

    self = [(ATXProactiveSuggestionClientModelSpecification *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXProactiveSuggestionClientModelSpecification)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_9:
    selfCopy = 0;
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

  v5 = protoCopy;
  clientModelId = [(ATXPBProactiveSuggestionClientModelSpecification *)v5 clientModelId];
  clientModelVersion = [(ATXPBProactiveSuggestionClientModelSpecification *)v5 clientModelVersion];
  engagementResetPolicy = [(ATXPBProactiveSuggestionClientModelSpecification *)v5 engagementResetPolicy];
  if (engagementResetPolicy)
  {
    if (engagementResetPolicy == 1)
    {
      v9 = @"WhenNotPredicted";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", engagementResetPolicy];
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

  self = [(ATXProactiveSuggestionClientModelSpecification *)self initWithClientModelId:clientModelId clientModelVersion:clientModelVersion engagementResetPolicy:v13];
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
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
  encodeAsProto = [(ATXProactiveSuggestionClientModelSpecification *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXProactiveSuggestionClientModelSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

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