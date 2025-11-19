@interface VIACacheHitContext
+ (VIACacheHitContext)contextWithDictionary:(id)a3 error:(id *)a4;
- (VIACacheHitContext)initWithQueryID:(unint64_t)a3 cachedResultQueryID:(unint64_t)a4 applicationIdentifier:(id)a5 engagementSuggestionType:(id)a6;
@end

@implementation VIACacheHitContext

- (VIACacheHitContext)initWithQueryID:(unint64_t)a3 cachedResultQueryID:(unint64_t)a4 applicationIdentifier:(id)a5 engagementSuggestionType:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = VIACacheHitContext;
  v12 = [(VIACacheHitContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_queryID = a3;
    v12->_cachedResultQueryID = a4;
    v14 = [v10 copy];
    applicationIdentifier = v13->_applicationIdentifier;
    v13->_applicationIdentifier = v14;

    objc_storeStrong(&v13->_engagementSuggestionType, a6);
  }

  return v13;
}

+ (VIACacheHitContext)contextWithDictionary:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v45[0] = @"com.apple.argos.cache_hit_context_key.query_id";
  v6 = objc_alloc_init(VIACacheHitContextQueryIDMapper);
  v46 = v6;
  v45[1] = @"com.apple.argos.cache_hit_context_key.cached_result_query_id";
  v7 = objc_alloc_init(VIACacheHitContextCachedResultQueryIDMapper);
  v47 = v7;
  v45[2] = @"com.apple.argos.cache_hit_context_key.application_id";
  v8 = objc_alloc_init(VIACacheHitContextApplicationIdentifierMapper);
  v48 = v8;
  v45[3] = @"com.apple.argos.cache_hit_context_key.engagement_suggestion_type";
  v9 = objc_alloc_init(VIACacheHitContextEngagementSuggestionTypeMapper);
  v49 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:v45 count:4];

  v11 = objc_alloc_init(VIACacheHitContextBuilder);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = MEMORY[0x1E695DFD8];
  v46 = @"com.apple.argos.cache_hit_context_key.query_id";
  v47 = @"com.apple.argos.cache_hit_context_key.cached_result_query_id";
  v48 = @"com.apple.argos.cache_hit_context_key.application_id";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:3];
  v14 = [v12 setWithArray:v13];

  v15 = [v14 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = [v5 objectForKeyedSubscript:v19];

        if (!v20)
        {
          if (a4)
          {
            *a4 = VIACacheHitContextMapperMissingValueError(v19);
          }

LABEL_27:

          v29 = 0;
          goto LABEL_28;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v16);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v5;
  v21 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = v21;
  v23 = *v34;
  while (2)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*v34 != v23)
      {
        objc_enumerationMutation(v14);
      }

      v25 = *(*(&v33 + 1) + 8 * j);
      v26 = [v10 objectForKeyedSubscript:v25];

      if (!v26)
      {
        if (!a4)
        {
          goto LABEL_27;
        }

        v41 = *MEMORY[0x1E696A578];
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unrecognized key: %@", v25];
        v42 = v30;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];

        v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.cache_hit_context.error_domain" code:1 userInfo:v28];
        goto LABEL_25;
      }

      v27 = [v10 objectForKeyedSubscript:v25];
      v28 = [v27 updateBuilder:v11 withDictionary:v14];

      if (v28)
      {
        if (!a4)
        {
LABEL_26:

          goto LABEL_27;
        }

        v31 = v28;
LABEL_25:
        *a4 = v31;
        goto LABEL_26;
      }
    }

    v22 = [v14 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v29 = [(VIACacheHitContextBuilder *)v11 build];
LABEL_28:

  return v29;
}

@end