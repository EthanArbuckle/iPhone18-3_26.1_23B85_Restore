@interface ATXBlendingModelUICacheUpdate
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXBlendingModelUICacheUpdate)initWithCoder:(id)coder;
- (ATXBlendingModelUICacheUpdate)initWithProto:(id)proto;
- (ATXBlendingModelUICacheUpdate)initWithProtoData:(id)data;
- (ATXBlendingModelUICacheUpdate)initWithUICache:(id)cache consumerSubType:(unsigned __int8)type clientModelCacheUpdateUUIDs:(id)ds uuid:(id)uuid cacheCreationDate:(id)date;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForint:(int)forint key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXBlendingModelUICacheUpdate:(id)update;
- (NSDate)cacheCreationDate;
- (id)_initWithCoder:(id)coder;
- (id)clientModelCacheUpdateUUIDsDictionaryFromProto:(id)proto;
- (id)clientModelCacheUpdateUUIDsFromCacheUpdates:(id)updates;
- (id)encodeAsProto;
- (id)encodeAsProtoForBiome;
- (id)json;
- (id)jsonRawData;
- (id)proto;
- (id)protoForBiome;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setClientModelCacheUpdateUUIDsDictionaryOnProto:(id)proto;
- (void)setUICacheObjectOnProto:(id)proto;
- (void)setUICacheObjectOnProtoForBiome:(id)biome;
@end

@implementation ATXBlendingModelUICacheUpdate

- (id)encodeAsProtoForBiome
{
  protoForBiome = [(ATXBlendingModelUICacheUpdate *)self protoForBiome];
  data = [protoForBiome data];

  return data;
}

- (id)protoForBiome
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBBlendingModelUICacheUpdate *)v3 setUuidString:uUIDString];

  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [(ATXPBBlendingModelUICacheUpdate *)v3 setConsumerSubTypeString:v5];

  [(ATXPBBlendingModelUICacheUpdate *)v3 setCacheCreationDate:?];
  [(ATXBlendingModelUICacheUpdate *)self setClientModelCacheUpdateUUIDsDictionaryOnProto:v3];
  [(ATXBlendingModelUICacheUpdate *)self setUICacheObjectOnProtoForBiome:v3];

  return v3;
}

- (id)clientModelCacheUpdateUUIDsFromCacheUpdates:(id)updates
{
  updatesCopy = updates;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__ATXBlendingModelUICacheUpdate_clientModelCacheUpdateUUIDsFromCacheUpdates___block_invoke;
  v7[3] = &unk_1E86A4D08;
  v5 = v4;
  v8 = v5;
  [updatesCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __77__ATXBlendingModelUICacheUpdate_clientModelCacheUpdateUUIDsFromCacheUpdates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 uuid];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (ATXBlendingModelUICacheUpdate)initWithUICache:(id)cache consumerSubType:(unsigned __int8)type clientModelCacheUpdateUUIDs:(id)ds uuid:(id)uuid cacheCreationDate:(id)date
{
  cacheCopy = cache;
  dsCopy = ds;
  uuidCopy = uuid;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = ATXBlendingModelUICacheUpdate;
  v17 = [(ATXBlendingModelUICacheUpdate *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uiCache, cache);
    v18->_consumerSubType = type;
    objc_storeStrong(&v18->_clientModelCacheUpdateUUIDs, ds);
    if (uuidCopy)
    {
      v19 = uuidCopy;
    }

    else
    {
      v19 = objc_opt_new();
    }

    uuid = v18->_uuid;
    v18->_uuid = v19;

    [dateCopy timeIntervalSince1970];
    v18->_absoluteCacheCreationDate = v21;
  }

  return v18;
}

- (NSDate)cacheCreationDate
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteCacheCreationDate];

  return v2;
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

- (BOOL)checkAndReportDecodingFailureIfNeededForint:(int)forint key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forint)
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
  encodeAsProto = [(ATXBlendingModelUICacheUpdate *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXBlendingModelUICacheUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];
  if (v5)
  {
    v6 = [(ATXBlendingModelUICacheUpdate *)self initWithProtoData:v5];
  }

  else
  {
    v6 = [(ATXBlendingModelUICacheUpdate *)self _initWithCoder:coderCopy];
  }

  v7 = v6;

  return v7;
}

- (id)_initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"codingKeyForUICache"];

  if (-[ATXBlendingModelUICacheUpdate checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForid:key:coder:errorDomain:errorCode:", v10, @"codingKeyForUICache", coderCopy, @"com.apple.proactive.BlendingModelUICacheUpdate", -1) || (v11 = [coderCopy decodeIntForKey:@"codingKeyForFeedbackMetadata"], -[ATXBlendingModelUICacheUpdate checkAndReportDecodingFailureIfNeededForint:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededForint:key:coder:errorDomain:errorCode:", v11, @"codingKeyForFeedbackMetadata", coderCopy, @"com.apple.proactive.BlendingModelUICacheUpdate", -1)))
  {
    selfCopy = 0;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 initWithObjects:{v15, v16, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v13);
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"codingKeyForClientModelCacheUpdateUUIDs"];

    if ([(ATXBlendingModelUICacheUpdate *)self checkAndReportDecodingFailureIfNeededForid:v18 key:@"codingKeyForClientModelCacheUpdateUUIDs" coder:coderCopy errorDomain:@"com.apple.proactive.BlendingModelUICacheUpdate" errorCode:-1])
    {
      selfCopy = 0;
    }

    else
    {
      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForUUID"];
      if ([(ATXBlendingModelUICacheUpdate *)self checkAndReportDecodingFailureIfNeededForid:v19 key:@"codingKeyForUUID" coder:coderCopy errorDomain:@"com.apple.proactive.BlendingModelUICacheUpdate" errorCode:-1])
      {
        selfCopy = 0;
      }

      else
      {
        v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
        self = [(ATXBlendingModelUICacheUpdate *)self initWithUICache:v10 consumerSubType:v11 clientModelCacheUpdateUUIDs:v18 uuid:v19 cacheCreationDate:v20];

        selfCopy = self;
      }
    }
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXBlendingModelUICacheUpdate *)self proto];
  data = [proto data];

  return data;
}

- (ATXBlendingModelUICacheUpdate)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBBlendingModelUICacheUpdate alloc] initWithData:dataCopy];

    self = [(ATXBlendingModelUICacheUpdate *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXBlendingModelUICacheUpdate)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_blending();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXBlendingModelUICacheUpdate initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_36;
    }

    v5 = protoCopy;
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    uuidString = [(ATXPBBlendingModelUICacheUpdate *)v5 uuidString];
    v8 = [v6 initWithUUIDString:uuidString];

    consumerSubTypeString = [(ATXPBBlendingModelUICacheUpdate *)v5 consumerSubTypeString];
    v53 = 0;
    v10 = [MEMORY[0x1E698B028] consumerSubtypeForString:consumerSubTypeString found:&v53];
    if (v53 != 1)
    {
      selfCopy = 0;
LABEL_35:

LABEL_36:
      goto LABEL_37;
    }

    v11 = v10;
    selfCopy = 0;
    if (!v10 || v10 == 50)
    {
      goto LABEL_35;
    }

    v13 = [(ATXBlendingModelUICacheUpdate *)self clientModelCacheUpdateUUIDsDictionaryFromProto:v5];
    if ([(ATXPBBlendingModelUICacheUpdate *)v5 hasSuggestionLayout]&& [(ATXPBBlendingModelUICacheUpdate *)v5 hasHomeScreenCachedSuggestion])
    {
      v14 = __atxlog_handle_blending();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(ATXBlendingModelUICacheUpdate *)v14 initWithProto:v15, v16, v17, v18, v19, v20, v21];
      }
    }

    else if ([(ATXPBBlendingModelUICacheUpdate *)v5 hasSuggestionLayout]&& [(ATXPBBlendingModelUICacheUpdate *)v5 hasSpotlightSuggestionLayout])
    {
      v14 = __atxlog_handle_blending();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(ATXBlendingModelUICacheUpdate *)v14 initWithProto:v22, v23, v24, v25, v26, v27, v28];
      }
    }

    else
    {
      if (![(ATXPBBlendingModelUICacheUpdate *)v5 hasHomeScreenCachedSuggestion]|| ![(ATXPBBlendingModelUICacheUpdate *)v5 hasSpotlightSuggestionLayout])
      {
        v52 = v13;
        suggestionLayout = [(ATXPBBlendingModelUICacheUpdate *)v5 suggestionLayout];
        if (suggestionLayout)
        {
          v37 = [ATXSuggestionLayout alloc];
          suggestionLayout2 = [(ATXPBBlendingModelUICacheUpdate *)v5 suggestionLayout];
          v14 = [(ATXSuggestionLayout *)v37 initWithProto:suggestionLayout2];
        }

        else
        {
          v14 = 0;
        }

        homeScreenCachedSuggestion = [(ATXPBBlendingModelUICacheUpdate *)v5 homeScreenCachedSuggestion];
        if (homeScreenCachedSuggestion)
        {
          v40 = [ATXHomeScreenCachedSuggestions alloc];
          homeScreenCachedSuggestion2 = [(ATXPBBlendingModelUICacheUpdate *)v5 homeScreenCachedSuggestion];
          v42 = [(ATXHomeScreenCachedSuggestions *)v40 initWithProto:homeScreenCachedSuggestion2];

          v14 = v42;
        }

        spotlightSuggestionLayout = [(ATXPBBlendingModelUICacheUpdate *)v5 spotlightSuggestionLayout];
        if (spotlightSuggestionLayout)
        {
          v44 = [ATXSpotlightSuggestionLayout alloc];
          spotlightSuggestionLayout2 = [(ATXPBBlendingModelUICacheUpdate *)v5 spotlightSuggestionLayout];
          v46 = [(ATXSpotlightSuggestionLayout *)v44 initWithProto:spotlightSuggestionLayout2];

          v14 = v46;
        }

        v13 = v52;

        hasCacheCreationDate = [(ATXPBBlendingModelUICacheUpdate *)v5 hasCacheCreationDate];
        v48 = MEMORY[0x1E695DF00];
        cacheCreationDate = 0.0;
        if (hasCacheCreationDate)
        {
          cacheCreationDate = [(ATXPBBlendingModelUICacheUpdate *)v5 cacheCreationDate];
        }

        v50 = [v48 dateWithTimeIntervalSince1970:{cacheCreationDate, v52}];
        self = [(ATXBlendingModelUICacheUpdate *)self initWithUICache:v14 consumerSubType:v11 clientModelCacheUpdateUUIDs:v13 uuid:v8 cacheCreationDate:v50];

        selfCopy = self;
        goto LABEL_34;
      }

      v14 = __atxlog_handle_blending();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(ATXBlendingModelUICacheUpdate *)v14 initWithProto:v29, v30, v31, v32, v33, v34, v35];
      }
    }

    selfCopy = 0;
LABEL_34:

    goto LABEL_35;
  }

  selfCopy = 0;
LABEL_37:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBBlendingModelUICacheUpdate *)v3 setUuidString:uUIDString];

  v5 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [(ATXPBBlendingModelUICacheUpdate *)v3 setConsumerSubTypeString:v5];

  [(ATXPBBlendingModelUICacheUpdate *)v3 setCacheCreationDate:?];
  [(ATXBlendingModelUICacheUpdate *)self setClientModelCacheUpdateUUIDsDictionaryOnProto:v3];
  [(ATXBlendingModelUICacheUpdate *)self setUICacheObjectOnProto:v3];

  return v3;
}

- (id)clientModelCacheUpdateUUIDsDictionaryFromProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_opt_new();
  clientModelIds = [(ATXPBBlendingModelUICacheUpdate *)protoCopy clientModelIds];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __80__ATXBlendingModelUICacheUpdate_clientModelCacheUpdateUUIDsDictionaryFromProto___block_invoke;
  v13 = &unk_1E86A47C0;
  v14 = protoCopy;
  v15 = v4;
  v6 = v4;
  v7 = protoCopy;
  [clientModelIds enumerateObjectsUsingBlock:&v10];

  v8 = [v6 copy];

  return v8;
}

void __80__ATXBlendingModelUICacheUpdate_clientModelCacheUpdateUUIDsDictionaryFromProto___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  v7 = [(ATXPBBlendingModelUICacheUpdate *)*(a1 + 32) clientModelCacheUpdateUUIDStrings];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v6 initWithUUIDString:v8];

  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
  }

  else
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __80__ATXBlendingModelUICacheUpdate_clientModelCacheUpdateUUIDsDictionaryFromProto___block_invoke_cold_1();
    }
  }
}

- (void)setClientModelCacheUpdateUUIDsDictionaryOnProto:(id)proto
{
  clientModelCacheUpdateUUIDs = self->_clientModelCacheUpdateUUIDs;
  protoCopy = proto;
  allKeys = [(NSDictionary *)clientModelCacheUpdateUUIDs allKeys];
  v7 = [allKeys mutableCopy];
  [(ATXPBBlendingModelUICacheUpdate *)protoCopy setClientModelIds:v7];

  allValues = [(NSDictionary *)self->_clientModelCacheUpdateUUIDs allValues];
  v8 = [allValues _pas_mappedArrayWithTransform:&__block_literal_global_17];
  v9 = [v8 mutableCopy];
  [(ATXPBBlendingModelUICacheUpdate *)protoCopy setClientModelCacheUpdateUUIDStrings:v9];
}

- (void)setUICacheObjectOnProto:(id)proto
{
  protoCopy = proto;
  uiCache = self->_uiCache;
  p_uiCache = &self->_uiCache;
  if (uiCache)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *p_uiCache;
    if (isKindOfClass)
    {
      proto = [*p_uiCache proto];
      [(ATXPBBlendingModelUICacheUpdate *)protoCopy setHomeScreenCachedSuggestion:proto];
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_class();
    v10 = objc_opt_isKindOfClass();
    v11 = *p_uiCache;
    if (v10)
    {
      proto = [*p_uiCache proto];
      [(ATXPBBlendingModelUICacheUpdate *)protoCopy setSuggestionLayout:proto];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      proto = [*p_uiCache proto];
      [(ATXPBBlendingModelUICacheUpdate *)protoCopy setSpotlightSuggestionLayout:proto];
      goto LABEL_8;
    }

    v12 = __atxlog_handle_blending();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXBlendingModelUICacheUpdate setUICacheObjectOnProto:?];
    }
  }

LABEL_9:
}

- (void)setUICacheObjectOnProtoForBiome:(id)biome
{
  biomeCopy = biome;
  uiCache = self->_uiCache;
  p_uiCache = &self->_uiCache;
  if (uiCache)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *p_uiCache;
    if (isKindOfClass)
    {
      protoForBiome = [*p_uiCache protoForBiome];
      [(ATXPBBlendingModelUICacheUpdate *)biomeCopy setHomeScreenCachedSuggestion:protoForBiome];
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_class();
    v10 = objc_opt_isKindOfClass();
    v11 = *p_uiCache;
    if (v10)
    {
      protoForBiome = [*p_uiCache proto];
      [(ATXPBBlendingModelUICacheUpdate *)biomeCopy setSuggestionLayout:protoForBiome];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      protoForBiome = [*p_uiCache proto];
      [(ATXPBBlendingModelUICacheUpdate *)biomeCopy setSpotlightSuggestionLayout:protoForBiome];
      goto LABEL_8;
    }

    v12 = __atxlog_handle_blending();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXBlendingModelUICacheUpdate setUICacheObjectOnProto:?];
    }
  }

LABEL_9:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBlendingModelUICacheUpdate *)self isEqualToATXBlendingModelUICacheUpdate:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBlendingModelUICacheUpdate:(id)update
{
  updateCopy = update;
  v5 = self->_uiCache;
  v6 = v5;
  if (v5 == updateCopy[3])
  {
  }

  else
  {
    v7 = [(ATXUICacheProtocol *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (self->_consumerSubType == *(updateCopy + 16))
  {
    v8 = self->_clientModelCacheUpdateUUIDs;
    v9 = v8;
    if (v8 == updateCopy[4])
    {
    }

    else
    {
      v10 = [(NSDictionary *)v8 isEqual:?];

      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v11 = self->_uuid;
    v12 = v11;
    if (v11 == updateCopy[5])
    {
    }

    else
    {
      v13 = [(NSUUID *)v11 isEqual:?];

      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v14 = self->_absoluteCacheCreationDate == *(updateCopy + 1);
    goto LABEL_13;
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(ATXUICacheProtocol *)self->_uiCache hash];
  v4 = self->_consumerSubType - v3 + 32 * v3;
  v5 = [(NSDictionary *)self->_clientModelCacheUpdateUUIDs hash]- v4 + 32 * v4;
  v6 = [(NSUUID *)self->_uuid hash];
  return self->_absoluteCacheCreationDate - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v12 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:self fromData:dataCopy error:&v12];
    v10 = v12;
    objc_autoreleasePoolPop(v8);
    v7 = 0;
    if (!v10)
    {
      v7 = v9;
    }
  }

  return v7;
}

- (id)jsonRawData
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_clientModelCacheUpdateUUIDs;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_clientModelCacheUpdateUUIDs objectForKeyedSubscript:v9, v19];
        uUIDString = [v10 UUIDString];
        [v3 setObject:uUIDString forKeyedSubscript:v9];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  uiCache = self->_uiCache;
  if (objc_opt_respondsToSelector())
  {
    v13 = [(ATXUICacheProtocol *)self->_uiCache performSelector:sel_jsonRawData];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  v23[0] = @"uuid";
  uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
  v24[0] = uUIDString2;
  v23[1] = @"consumerSubType";
  v15 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  v24[1] = v15;
  v24[2] = v3;
  v23[2] = @"clientModelCacheUUIDs";
  v23[3] = @"uiCache";
  v24[3] = v13;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonRawData = [(ATXBlendingModelUICacheUpdate *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:jsonRawData options:1 error:0];

  return v4;
}

- (void)initWithProto:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_11(&dword_1DEFC4000, v2, v3, "Unable to construct class %@ from ProtoBuf object", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __80__ATXBlendingModelUICacheUpdate_clientModelCacheUpdateUUIDsDictionaryFromProto___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_FAULT, "Unable to rebuild clientModelCacheUpdateUUIDs dictionary from protobuf data because value of dictionary was nil. Client Model Id %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)setUICacheObjectOnProto:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_11(&dword_1DEFC4000, v4, v5, "Attempted to encode ATXBlendingModelUICacheUpdate's UICache to protobuf, but it was of unexpected type: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end