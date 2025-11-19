@interface ATXHomeScreenCachedSuggestions
- (ATXHomeScreenCachedSuggestions)initWithCoder:(id)a3;
- (ATXHomeScreenCachedSuggestions)initWithProto:(id)a3;
- (ATXHomeScreenCachedSuggestions)initWithProtoData:(id)a3;
- (ATXHomeScreenCachedSuggestions)initWithUUID:(id)a3 suggestionWidgetLayouts:(id)a4 appPredictionPanelLayouts:(id)a5 topOfStackLayouts:(id)a6 suggestedWidgetLayouts:(id)a7 fallbackSuggestions:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_jsonRawDataForLayoutListMapping:(id)a3;
- (id)_jsonRawDataForWidgetLayoutMapping:(id)a3;
- (id)_layoutDictionaryWithKeys:(id)a3 protoLayouts:(id)a4;
- (id)_layoutListDictionaryWithKeys:(id)a3 protoLayoutLists:(id)a4;
- (id)_protoLayoutListsFromLayoutListDictionary:(id)a3 orderedByKeys:(id)a4;
- (id)_protoLayoutsFromLayoutDictionary:(id)a3 orderedByKeys:(id)a4;
- (id)allSuggestionsInCachedSuggestions;
- (id)compactDescription;
- (id)descriptionWithoutPreviews;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks;
- (id)proto;
- (id)protoForBiome;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHomeScreenCachedSuggestions

- (ATXHomeScreenCachedSuggestions)initWithUUID:(id)a3 suggestionWidgetLayouts:(id)a4 appPredictionPanelLayouts:(id)a5 topOfStackLayouts:(id)a6 suggestedWidgetLayouts:(id)a7 fallbackSuggestions:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = ATXHomeScreenCachedSuggestions;
  v20 = [(ATXHomeScreenCachedSuggestions *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    uuid = v20->_uuid;
    v20->_uuid = v21;

    v23 = [v15 copy];
    cachedSuggestionWidgetLayouts = v20->_cachedSuggestionWidgetLayouts;
    v20->_cachedSuggestionWidgetLayouts = v23;

    v25 = [v16 copy];
    cachedAppPredictionPanelLayouts = v20->_cachedAppPredictionPanelLayouts;
    v20->_cachedAppPredictionPanelLayouts = v25;

    v27 = [v17 copy];
    cachedTopOfStackLayouts = v20->_cachedTopOfStackLayouts;
    v20->_cachedTopOfStackLayouts = v27;

    v29 = [v18 copy];
    cachedSuggestedWidgetsLayouts = v20->_cachedSuggestedWidgetsLayouts;
    v20->_cachedSuggestedWidgetsLayouts = v29;

    v31 = [v19 copy];
    fallbackSuggestions = v20->_fallbackSuggestions;
    v20->_fallbackSuggestions = v31;
  }

  return v20;
}

- (id)allSuggestionsInCachedSuggestions
{
  v3 = objc_opt_new();
  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke;
  v23[3] = &unk_1E86A4720;
  v5 = v3;
  v24 = v5;
  [(NSDictionary *)cachedSuggestionWidgetLayouts enumerateKeysAndObjectsUsingBlock:v23];
  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_2;
  v21[3] = &unk_1E86A4720;
  v7 = v5;
  v22 = v7;
  [(NSDictionary *)cachedAppPredictionPanelLayouts enumerateKeysAndObjectsUsingBlock:v21];
  cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_3;
  v19[3] = &unk_1E86A4720;
  v9 = v7;
  v20 = v9;
  [(NSDictionary *)cachedTopOfStackLayouts enumerateKeysAndObjectsUsingBlock:v19];
  cachedSuggestedWidgetsLayouts = self->_cachedSuggestedWidgetsLayouts;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_4;
  v17 = &unk_1E86A4748;
  v18 = v9;
  v11 = v9;
  [(NSDictionary *)cachedSuggestedWidgetsLayouts enumerateKeysAndObjectsUsingBlock:&v14];
  [v11 addObjectsFromArray:{self->_fallbackSuggestions, v14, v15, v16, v17}];
  v12 = [v11 copy];

  return v12;
}

void __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allSuggestionsInLayout];
  [v3 addObjectsFromArray:v4];
}

void __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allSuggestionsInLayout];
  [v3 addObjectsFromArray:v4];
}

void __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allSuggestionsInLayout];
  [v3 addObjectsFromArray:v4];
}

void __67__ATXHomeScreenCachedSuggestions_allSuggestionsInCachedSuggestions__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        v10 = [*(*(&v12 + 1) + 8 * v8) allSuggestionsInLayout];
        [v9 addObjectsFromArray:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks
{
  v3 = objc_opt_new();
  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke;
  v23[3] = &unk_1E86A4720;
  v5 = v3;
  v24 = v5;
  [(NSDictionary *)cachedSuggestionWidgetLayouts enumerateKeysAndObjectsUsingBlock:v23];
  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_2;
  v21[3] = &unk_1E86A4720;
  v7 = v5;
  v22 = v7;
  [(NSDictionary *)cachedAppPredictionPanelLayouts enumerateKeysAndObjectsUsingBlock:v21];
  cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_3;
  v19[3] = &unk_1E86A4720;
  v9 = v7;
  v20 = v9;
  [(NSDictionary *)cachedTopOfStackLayouts enumerateKeysAndObjectsUsingBlock:v19];
  cachedSuggestedWidgetsLayouts = self->_cachedSuggestedWidgetsLayouts;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_4;
  v17 = &unk_1E86A4748;
  v18 = v9;
  v11 = v9;
  [(NSDictionary *)cachedSuggestedWidgetsLayouts enumerateKeysAndObjectsUsingBlock:&v14];
  v12 = [v11 copy];

  return v12;
}

void __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:*MEMORY[0x1E698AFC8]] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E698AFD0]) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E698AFD8]) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [v5 minSuggestionListInLayout];
    [v6 addObjectsFromArray:v7];
  }
}

void __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  if (([a2 isEqualToString:*MEMORY[0x1E698AF60]] & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [v7 minSuggestionListInLayout];
    [v5 addObjectsFromArray:v6];
  }
}

void __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 minSuggestionListInLayout];
  [v3 addObjectsFromArray:v4];
}

void __93__ATXHomeScreenCachedSuggestions_minSuggestionsInCachedSuggestionsWithoutPreviewsOrFallbacks__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 32);
        v10 = [*(*(&v12 + 1) + 8 * v8) minSuggestionListInLayout];
        [v9 addObjectsFromArray:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXHomeScreenCachedSuggestions *)self uuid];
      v7 = [(ATXHomeScreenCachedSuggestions *)v5 uuid];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)compactDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendFormat:@"\n\n=== HomeScreenCachedSuggestions (ID: %@) ===\n", v4];

  [v3 appendString:@"\n1. Layouts For Suggestion Widgets\n"]);
  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __45__ATXHomeScreenCachedSuggestions_description__block_invoke;
  v41[3] = &unk_1E86A4720;
  v6 = v3;
  v42 = v6;
  [(NSDictionary *)cachedSuggestionWidgetLayouts enumerateKeysAndObjectsUsingBlock:v41];
  [v6 appendString:@"\n2. Layouts for App Prediction Panels\n"]);
  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __45__ATXHomeScreenCachedSuggestions_description__block_invoke_2;
  v39[3] = &unk_1E86A4720;
  v8 = v6;
  v40 = v8;
  [(NSDictionary *)cachedAppPredictionPanelLayouts enumerateKeysAndObjectsUsingBlock:v39];
  [v8 appendString:@"\n3. Stack Suggestions\n"]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(NSDictionary *)self->_cachedTopOfStackLayouts allKeys];
  v9 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        [v8 appendFormat:@"\nStack ID: %@\n", v13];
        [v8 appendString:@"\n Top of Stack \n"];
        v14 = [(NSDictionary *)self->_cachedTopOfStackLayouts objectForKeyedSubscript:v13];
        v15 = [v14 description];
        [v8 appendString:v15];

        [v8 appendString:@"\n Suggested Widgets \n"];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = [(NSDictionary *)self->_cachedSuggestedWidgetsLayouts objectForKeyedSubscript:v13];
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v32;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v31 + 1) + 8 * j) description];
              [v8 appendString:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
          }

          while (v18);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v10);
  }

  [v8 appendString:@"\n4. Fallback Suggestions\n"]);
  fallbackSuggestions = self->_fallbackSuggestions;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __45__ATXHomeScreenCachedSuggestions_description__block_invoke_3;
  v29[3] = &unk_1E86A4770;
  v23 = v8;
  v30 = v23;
  [(NSArray *)fallbackSuggestions enumerateObjectsUsingBlock:v29];
  v24 = v30;
  v25 = v23;

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

void __45__ATXHomeScreenCachedSuggestions_description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendFormat:@"\nWidget ID: %@\n", a2];
  v7 = *(a1 + 32);
  v8 = [v6 description];

  [v7 appendString:v8];
}

void __45__ATXHomeScreenCachedSuggestions_description__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 appendFormat:@"\nApp Prediction Panel ID: %@\n", a2];
  v7 = *(a1 + 32);
  v8 = [v6 description];

  [v7 appendString:v8];
}

void __45__ATXHomeScreenCachedSuggestions_description__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 appendString:v3];
}

- (id)descriptionWithoutPreviews
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 appendFormat:@"\n\n=== HomeScreenCachedSuggestions (ID: %@) ===\n", v4];

  [v3 appendString:@"\n1. Layouts For Suggestion Widgets\n"]);
  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke;
  v41[3] = &unk_1E86A4720;
  v6 = v3;
  v42 = v6;
  [(NSDictionary *)cachedSuggestionWidgetLayouts enumerateKeysAndObjectsUsingBlock:v41];
  [v6 appendString:@"\n2. Layouts For App Prediction Panels\n"]);
  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke_2;
  v39[3] = &unk_1E86A4720;
  v8 = v6;
  v40 = v8;
  [(NSDictionary *)cachedAppPredictionPanelLayouts enumerateKeysAndObjectsUsingBlock:v39];
  [v8 appendString:@"\n3. Stack Suggestions\n"]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(NSDictionary *)self->_cachedTopOfStackLayouts allKeys];
  v9 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        [v8 appendFormat:@"\nStack ID: %@\n", v13];
        [v8 appendString:@"\n Top of Stack \n"];
        v14 = [(NSDictionary *)self->_cachedTopOfStackLayouts objectForKeyedSubscript:v13];
        v15 = [v14 description];
        [v8 appendString:v15];

        [v8 appendString:@"\n Suggested Widgets \n"];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = [(NSDictionary *)self->_cachedSuggestedWidgetsLayouts objectForKeyedSubscript:v13];
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v32;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v31 + 1) + 8 * j) description];
              [v8 appendString:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v31 objects:v43 count:16];
          }

          while (v18);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v10);
  }

  [v8 appendString:@"\n4. Fallback Suggestions\n"]);
  fallbackSuggestions = self->_fallbackSuggestions;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke_3;
  v29[3] = &unk_1E86A4770;
  v23 = v8;
  v30 = v23;
  [(NSArray *)fallbackSuggestions enumerateObjectsUsingBlock:v29];
  v24 = v30;
  v25 = v23;

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

void __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:*MEMORY[0x1E698AFC8]] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E698AFD0]) & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E698AFD8]) & 1) == 0)
  {
    [*(a1 + 32) appendFormat:@"\nWidget ID: %@\n", v8];
    v6 = *(a1 + 32);
    v7 = [v5 description];
    [v6 appendString:v7];
  }
}

void __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:*MEMORY[0x1E698AF60]] & 1) == 0)
  {
    [*(a1 + 32) appendFormat:@"\nApp Prediction Panel ID: %@\n", v8];
    v6 = *(a1 + 32);
    v7 = [v5 description];
    [v6 appendString:v7];
  }
}

void __60__ATXHomeScreenCachedSuggestions_descriptionWithoutPreviews__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 appendString:v3];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXHomeScreenCachedSuggestions *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXHomeScreenCachedSuggestions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXHomeScreenCachedSuggestions *)self initWithProtoData:v5];
  return v6;
}

- (ATXHomeScreenCachedSuggestions)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBHomeScreenCachedSuggestion alloc] initWithData:v4];

    self = [(ATXHomeScreenCachedSuggestions *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXHomeScreenCachedSuggestions *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXHomeScreenCachedSuggestions)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = __atxlog_handle_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenCachedSuggestions *)self initWithProto:v20];
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = [(ATXPBHomeScreenCachedSuggestion *)v5 fallbackSuggestions];
  v7 = [ATXProactiveSuggestion suggestionsFromProtoSuggestions:v6];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v26 = v9;

  v10 = objc_alloc(MEMORY[0x1E696AFB0]);
  v29 = [(ATXPBHomeScreenCachedSuggestion *)v5 uuidString];
  v23 = [v10 initWithUUIDString:v29];
  v28 = [(ATXPBHomeScreenCachedSuggestion *)v5 cachedSuggestionWidgetIds];
  v27 = [(ATXPBHomeScreenCachedSuggestion *)v5 cachedSuggestionWidgetLayouts];
  v11 = [(ATXHomeScreenCachedSuggestions *)self _layoutDictionaryWithKeys:v28 protoLayouts:v27];
  v25 = [(ATXPBHomeScreenCachedSuggestion *)v5 cachedAppPredictionPanelIds];
  v24 = [(ATXPBHomeScreenCachedSuggestion *)v5 cachedAppPredictionPanelLayouts];
  v12 = [(ATXHomeScreenCachedSuggestions *)self _layoutDictionaryWithKeys:v25 protoLayouts:v24];
  v22 = [(ATXPBHomeScreenCachedSuggestion *)v5 cachedTopOfStackLayoutKeys];
  v13 = [(ATXPBHomeScreenCachedSuggestion *)v5 cachedTopOfStackLayouts];
  v14 = [(ATXHomeScreenCachedSuggestions *)self _layoutDictionaryWithKeys:v22 protoLayouts:v13];
  v15 = [(ATXPBHomeScreenCachedSuggestion *)v5 cachedSuggestedWidgetLayoutListKeys];
  v16 = [(ATXPBHomeScreenCachedSuggestion *)v5 cachedSuggestedWidgetLayoutLists];

  v17 = [(ATXHomeScreenCachedSuggestions *)self _layoutListDictionaryWithKeys:v15 protoLayoutLists:v16];
  v18 = [(ATXHomeScreenCachedSuggestions *)self initWithUUID:v23 suggestionWidgetLayouts:v11 appPredictionPanelLayouts:v12 topOfStackLayouts:v14 suggestedWidgetLayouts:v17 fallbackSuggestions:v26];

  self = v18;
  v19 = self;
LABEL_10:

  return v19;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setUuidString:v4];

  v5 = [(NSDictionary *)self->_cachedSuggestionWidgetLayouts allKeys];
  v6 = [v5 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestionWidgetIds:v6];

  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v8 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetIds];
  v9 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedSuggestionWidgetLayouts orderedByKeys:v8];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestionWidgetLayouts:v9];

  v10 = [(NSDictionary *)self->_cachedTopOfStackLayouts allKeys];
  v11 = [v10 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedTopOfStackLayoutKeys:v11];

  cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts;
  v13 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedTopOfStackLayoutKeys];
  v14 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedTopOfStackLayouts orderedByKeys:v13];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedTopOfStackLayouts:v14];

  v15 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_fallbackSuggestions];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setFallbackSuggestions:v15];

  v16 = [(NSDictionary *)self->_cachedAppPredictionPanelLayouts allKeys];
  v17 = [v16 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedAppPredictionPanelIds:v17];

  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v19 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelIds];
  v20 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedAppPredictionPanelLayouts orderedByKeys:v19];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedAppPredictionPanelLayouts:v20];

  v21 = [(NSDictionary *)self->_cachedSuggestedWidgetsLayouts allKeys];
  v22 = [v21 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestedWidgetLayoutListKeys:v22];

  cachedSuggestedWidgetsLayouts = self->_cachedSuggestedWidgetsLayouts;
  v24 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestedWidgetLayoutListKeys];
  v25 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutListsFromLayoutListDictionary:cachedSuggestedWidgetsLayouts orderedByKeys:v24];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestedWidgetLayoutLists:v25];

  return v3;
}

- (id)protoForBiome
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setUuidString:v4];

  v5 = [(NSDictionary *)self->_cachedSuggestionWidgetLayouts allKeys];
  v6 = [v5 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestionWidgetIds:v6];

  cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts;
  v8 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetIds];
  v9 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedSuggestionWidgetLayouts orderedByKeys:v8];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestionWidgetLayouts:v9];

  v10 = objc_opt_new();
  v11 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetIds];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __47__ATXHomeScreenCachedSuggestions_protoForBiome__block_invoke;
  v42[3] = &unk_1E86A4798;
  v43 = v10;
  v12 = v10;
  [v11 enumerateObjectsUsingBlock:v42];

  v13 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetIds];
  [v13 removeObjectsAtIndexes:v12];

  v14 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestionWidgetLayouts];
  [v14 removeObjectsAtIndexes:v12];

  v15 = [(NSDictionary *)self->_cachedTopOfStackLayouts allKeys];
  v16 = [v15 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedTopOfStackLayoutKeys:v16];

  cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts;
  v18 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedTopOfStackLayoutKeys];
  v19 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedTopOfStackLayouts orderedByKeys:v18];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedTopOfStackLayouts:v19];

  v20 = [(NSDictionary *)self->_cachedSuggestedWidgetsLayouts allKeys];
  v21 = [v20 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestedWidgetLayoutListKeys:v21];

  cachedSuggestedWidgetsLayouts = self->_cachedSuggestedWidgetsLayouts;
  v23 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedSuggestedWidgetLayoutListKeys];
  v24 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutListsFromLayoutListDictionary:cachedSuggestedWidgetsLayouts orderedByKeys:v23];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedSuggestedWidgetLayoutLists:v24];

  v25 = [ATXProactiveSuggestion protoSuggestionsFromSuggestions:self->_fallbackSuggestions];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setFallbackSuggestions:v25];

  v26 = objc_opt_new();
  v27 = [(NSDictionary *)self->_cachedAppPredictionPanelLayouts allKeys];
  v28 = [v27 mutableCopy];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedAppPredictionPanelIds:v28];

  cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts;
  v30 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelIds];
  v31 = [(ATXHomeScreenCachedSuggestions *)self _protoLayoutsFromLayoutDictionary:cachedAppPredictionPanelLayouts orderedByKeys:v30];
  [(ATXPBHomeScreenCachedSuggestion *)v3 setCachedAppPredictionPanelLayouts:v31];

  v32 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelIds];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __47__ATXHomeScreenCachedSuggestions_protoForBiome__block_invoke_2;
  v40 = &unk_1E86A4798;
  v41 = v26;
  v33 = v26;
  [v32 enumerateObjectsUsingBlock:&v37];

  v34 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelIds];
  [v34 removeObjectsAtIndexes:{v33, v37, v38, v39, v40}];

  v35 = [(ATXPBHomeScreenCachedSuggestion *)v3 cachedAppPredictionPanelLayouts];
  [v35 removeObjectsAtIndexes:v33];

  return v3;
}

void __47__ATXHomeScreenCachedSuggestions_protoForBiome__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 isEqualToString:*MEMORY[0x1E698AFC8]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E698AFD0]) & 1) != 0 || objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E698AFD8]))
  {
    [*(a1 + 32) addIndex:a3];
  }
}

uint64_t __47__ATXHomeScreenCachedSuggestions_protoForBiome__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 isEqualToString:*MEMORY[0x1E698AF60]];
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 addIndex:a3];
  }

  return result;
}

- (id)_layoutDictionaryWithKeys:(id)a3 protoLayouts:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__ATXHomeScreenCachedSuggestions__layoutDictionaryWithKeys_protoLayouts___block_invoke;
  v14[3] = &unk_1E86A47C0;
  v15 = v5;
  v9 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __73__ATXHomeScreenCachedSuggestions__layoutDictionaryWithKeys_protoLayouts___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [ATXSuggestionLayout alloc];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = [(ATXSuggestionLayout *)v6 initWithProto:v7];

  if (v8)
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __73__ATXHomeScreenCachedSuggestions__layoutDictionaryWithKeys_protoLayouts___block_invoke_cold_1(v9, v10, v11);
    }
  }
}

- (id)_protoLayoutsFromLayoutDictionary:(id)a3 orderedByKeys:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__ATXHomeScreenCachedSuggestions__protoLayoutsFromLayoutDictionary_orderedByKeys___block_invoke;
  v14[3] = &unk_1E86A47C0;
  v15 = v5;
  v9 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __82__ATXHomeScreenCachedSuggestions__protoLayoutsFromLayoutDictionary_orderedByKeys___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v3 proto];

  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __82__ATXHomeScreenCachedSuggestions__protoLayoutsFromLayoutDictionary_orderedByKeys___block_invoke_cold_1(v5, v6, v7);
    }
  }
}

- (id)_layoutListDictionaryWithKeys:(id)a3 protoLayoutLists:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__ATXHomeScreenCachedSuggestions__layoutListDictionaryWithKeys_protoLayoutLists___block_invoke;
  v14[3] = &unk_1E86A47C0;
  v15 = v5;
  v9 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __81__ATXHomeScreenCachedSuggestions__layoutListDictionaryWithKeys_protoLayoutLists___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:-[ATXPBSuggestionLayoutList layoutsCount](v4)];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(ATXPBSuggestionLayoutList *)v4 layouts];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[ATXSuggestionLayout alloc] initWithProto:*(*(&v18 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = __atxlog_handle_default();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            __81__ATXHomeScreenCachedSuggestions__layoutListDictionaryWithKeys_protoLayoutLists___block_invoke_cold_1(&v16, v17, v12);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [*(a1 + 40) setObject:v5 forKeyedSubscript:v15];
  v13 = *MEMORY[0x1E69E9840];
}

- (id)_protoLayoutListsFromLayoutListDictionary:(id)a3 orderedByKeys:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v7 = a4;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__ATXHomeScreenCachedSuggestions__protoLayoutListsFromLayoutListDictionary_orderedByKeys___block_invoke;
  v14[3] = &unk_1E86A47C0;
  v15 = v5;
  v9 = v8;
  v16 = v9;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __90__ATXHomeScreenCachedSuggestions__protoLayoutListsFromLayoutListDictionary_orderedByKeys___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) proto];
        if (v10)
        {
          [(ATXPBSuggestionLayoutList *)v4 addLayout:v10];
        }

        else
        {
          v11 = __atxlog_handle_default();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            __90__ATXHomeScreenCachedSuggestions__protoLayoutListsFromLayoutListDictionary_orderedByKeys___block_invoke_cold_1(&v13, v14, v11);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) addObject:v4];
  v12 = *MEMORY[0x1E69E9840];
}

- (id)_jsonRawDataForWidgetLayoutMapping:(id)a3
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x1E698AFD0];
  v20[0] = *MEMORY[0x1E698AFC8];
  v20[1] = v6;
  v7 = *MEMORY[0x1E698AF60];
  v20[2] = *MEMORY[0x1E698AFD8];
  v20[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v9 = [v5 initWithArray:v8];

  v10 = objc_opt_new();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__ATXHomeScreenCachedSuggestions__jsonRawDataForWidgetLayoutMapping___block_invoke;
  v17[3] = &unk_1E86A47E8;
  v18 = v9;
  v11 = v10;
  v19 = v11;
  v12 = v9;
  [v4 enumerateKeysAndObjectsUsingBlock:v17];

  v13 = v19;
  v14 = v11;

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void __69__ATXHomeScreenCachedSuggestions__jsonRawDataForWidgetLayoutMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    v6 = [v5 jsonRawData];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)_jsonRawDataForLayoutListMapping:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ATXHomeScreenCachedSuggestions__jsonRawDataForLayoutListMapping___block_invoke;
  v7[3] = &unk_1E86A4748;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __67__ATXHomeScreenCachedSuggestions__jsonRawDataForLayoutListMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_14];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)jsonRawData
{
  v13[6] = *MEMORY[0x1E69E9840];
  v12[0] = @"uuid";
  v3 = [(NSUUID *)self->_uuid UUIDString];
  v13[0] = v3;
  v12[1] = @"cachedSuggestionWidgetLayouts";
  v4 = [(ATXHomeScreenCachedSuggestions *)self _jsonRawDataForWidgetLayoutMapping:self->_cachedSuggestionWidgetLayouts];
  v13[1] = v4;
  v12[2] = @"cachedAppPredictionPanelLayouts";
  v5 = [(ATXHomeScreenCachedSuggestions *)self _jsonRawDataForWidgetLayoutMapping:self->_cachedAppPredictionPanelLayouts];
  v13[2] = v5;
  v12[3] = @"cachedTopOfStackLayouts";
  v6 = [(ATXHomeScreenCachedSuggestions *)self _jsonRawDataForWidgetLayoutMapping:self->_cachedTopOfStackLayouts];
  v13[3] = v6;
  v12[4] = @"cachedSuggestedWidgetsLayouts";
  v7 = [(ATXHomeScreenCachedSuggestions *)self _jsonRawDataForLayoutListMapping:self->_cachedSuggestedWidgetsLayouts];
  v13[4] = v7;
  v12[5] = @"fallbackSuggestions";
  v8 = [(NSArray *)self->_fallbackSuggestions _pas_mappedArrayWithTransform:&__block_literal_global_83_0];
  v13[5] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "ATXHomeScreenCachedSuggestions: Unable to construct class %@ from ProtoBuf object", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void __81__ATXHomeScreenCachedSuggestions__layoutListDictionaryWithKeys_protoLayoutLists___block_invoke_cold_1(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_7(&dword_1DEFC4000, a3, a3, "ATXHomeScreenCachedSuggestions: Unable to construct class ATXSuggestionLayout from ProtoBuf object", a1);
}

void __90__ATXHomeScreenCachedSuggestions__protoLayoutListsFromLayoutListDictionary_orderedByKeys___block_invoke_cold_1(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_7(&dword_1DEFC4000, a3, a3, "ATXHomeScreenCachedSuggestions: Unable to construct ProtoBuf object from ATXSuggestionLayout", a1);
}

@end