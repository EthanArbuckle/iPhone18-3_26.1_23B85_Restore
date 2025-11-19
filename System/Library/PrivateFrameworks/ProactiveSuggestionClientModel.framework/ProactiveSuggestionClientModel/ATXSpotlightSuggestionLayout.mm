@interface ATXSpotlightSuggestionLayout
+ (BOOL)isValidInputWithCollections:(id)a3 scores:(id)a4;
- (ATXProactiveSuggestion)highestConfidenceSuggestion;
- (ATXSpotlightSuggestionLayout)initWithCoder:(id)a3;
- (ATXSpotlightSuggestionLayout)initWithCollections:(id)a3 scores:(id)a4 uuid:(id)a5;
- (ATXSpotlightSuggestionLayout)initWithProto:(id)a3;
- (ATXSpotlightSuggestionLayout)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSpotlightSuggestionLayout:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
- (void)proto;
@end

@implementation ATXSpotlightSuggestionLayout

- (ATXSpotlightSuggestionLayout)initWithCollections:(id)a3 scores:(id)a4 uuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ATXSpotlightSuggestionLayout;
  v11 = [(ATXSpotlightSuggestionLayout *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    collections = v11->_collections;
    v11->_collections = v12;

    v14 = [v9 copy];
    scores = v11->_scores;
    v11->_scores = v14;

    objc_storeStrong(&v11->_uuid, a5);
  }

  return v11;
}

- (ATXProactiveSuggestion)highestConfidenceSuggestion
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_collections;
  v24 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  v3 = 0;
  v4 = 0;
  if (v24)
  {
    v5 = 0;
    v23 = *v32;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v31 + 1) + 8 * v6);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v26 = [v7 suggestions];
        v8 = [v26 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
LABEL_8:
          v11 = 0;
          while (1)
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v26);
            }

            v12 = *(*(&v27 + 1) + 8 * v11);
            if (v5 >= [(NSArray *)self->_scores count])
            {
              break;
            }

            v13 = [(NSArray *)self->_scores objectAtIndexedSubscript:v5];
            v14 = v13;
            if (!v4 || ([v13 doubleValue], v16 = v15, objc_msgSend(v4, "doubleValue"), v16 > v17))
            {
              v18 = v14;

              v19 = v12;
              v3 = v19;
              v4 = v18;
            }

            ++v5;

            if (v9 == ++v11)
            {
              v9 = [v26 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v9)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)isValidInputWithCollections:(id)a3 scores:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) suggestions];
        v9 += [v12 count];
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v13 = v9 == [v6 count];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXSpotlightSuggestionLayout allocWithZone:a3];
  collections = self->_collections;
  scores = self->_scores;
  uuid = self->_uuid;

  return [(ATXSpotlightSuggestionLayout *)v4 initWithCollections:collections scores:scores uuid:uuid];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSpotlightSuggestionLayout *)self isEqualToATXSpotlightSuggestionLayout:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSpotlightSuggestionLayout:(id)a3
{
  v4 = a3;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_collections;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_13;
    }
  }

  v12 = self->_scores;
  v13 = v12;
  if (v12 == v4[3])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSArray *)v12 isEqual:?];
  }

LABEL_13:
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXSpotlightSuggestionLayout *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXSpotlightSuggestionLayout)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"protobufData" withCoder:v5 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXSpotlightSuggestionLayout" errorCode:-1 logHandle:v7];

  v9 = [(ATXSpotlightSuggestionLayout *)self initWithProtoData:v8];
  return v9;
}

- (id)encodeAsProto
{
  v2 = [(ATXSpotlightSuggestionLayout *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXSpotlightSuggestionLayout)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 collections];
      v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_19];

      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v5 scoresCount])
      {
        v9 = 0;
        do
        {
          [v5 scoresAtIndex:v9];
          v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v8 addObject:v10];

          ++v9;
        }

        while ([v5 scoresCount]> v9);
      }

      if ([ATXSpotlightSuggestionLayout isValidInputWithCollections:v7 scores:v8])
      {
        v11 = objc_alloc(MEMORY[0x1E696AFB0]);
        v12 = [v5 uuidString];
        v13 = [v11 initWithUUIDString:v12];
        self = [(ATXSpotlightSuggestionLayout *)self initWithCollections:v7 scores:v8 uuid:v13];

        v14 = self;
      }

      else
      {
        v15 = __atxlog_handle_blending();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          [ATXSpotlightSuggestionLayout initWithProto:v15];
        }

        v14 = 0;
      }
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXLightweightClientModelCacheUpdate *)self initWithProto:v5];
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

ATXSpotlightSuggestionCollection *__46__ATXSpotlightSuggestionLayout_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXSpotlightSuggestionCollection alloc] initWithProto:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46__ATXSpotlightSuggestionLayout_initWithProto___block_invoke_cold_1(v5);
    }
  }

  return v3;
}

- (ATXSpotlightSuggestionLayout)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBSpotlightSuggestionLayout alloc] initWithData:v4];

    self = [(ATXSpotlightSuggestionLayout *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuidString:v4];

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_collections, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = self->_collections;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v27 + 1) + 8 * v10) proto];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = __atxlog_handle_default();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            [(ATXSpotlightSuggestionLayout *)&buf proto];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  [v3 setCollections:v13];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_scores;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v21 + 1) + 8 * i) doubleValue];
        [v3 addScores:?];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)proto
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Unable to construct class ProtoBuf object from ATXProactiveSuggestion. Archived suggestion was nil.", buf, 2u);
}

@end