@interface ATXPBHomeScreenCachedSuggestion
+ (uint64_t)cachedSuggestedWidgetLayoutListsType;
+ (uint64_t)cachedSuggestionWidgetIdsType;
+ (uint64_t)cachedSuggestionWidgetLayoutsType;
- (BOOL)hasUuidString;
- (BOOL)isEqual:(id)equal;
- (id)cachedAppPredictionPanelIdsAtIndex:(void *)index;
- (id)cachedAppPredictionPanelLayoutsAtIndex:(void *)index;
- (id)cachedSuggestedWidgetLayoutListKeysAtIndex:(void *)index;
- (id)cachedSuggestedWidgetLayoutListsAtIndex:(void *)index;
- (id)cachedSuggestionWidgetIdsAtIndex:(void *)index;
- (id)cachedSuggestionWidgetLayoutsAtIndex:(void *)index;
- (id)cachedTopOfStackLayoutKeysAtIndex:(void *)index;
- (id)cachedTopOfStackLayoutsAtIndex:(void *)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)fallbackSuggestionsAtIndex:(void *)index;
- (uint64_t)addCachedAppPredictionPanelIds:(uint64_t)ids;
- (uint64_t)addCachedAppPredictionPanelLayouts:(uint64_t)layouts;
- (uint64_t)addCachedSuggestedWidgetLayoutListKeys:(uint64_t)keys;
- (uint64_t)addCachedSuggestedWidgetLayoutLists:(uint64_t)lists;
- (uint64_t)addCachedSuggestionWidgetIds:(uint64_t)ids;
- (uint64_t)addCachedSuggestionWidgetLayouts:(uint64_t)layouts;
- (uint64_t)addCachedTopOfStackLayoutKeys:(uint64_t)keys;
- (uint64_t)addCachedTopOfStackLayouts:(uint64_t)layouts;
- (uint64_t)addFallbackSuggestions:(uint64_t)suggestions;
- (uint64_t)cachedAppPredictionPanelIds;
- (uint64_t)cachedAppPredictionPanelIdsCount;
- (uint64_t)cachedAppPredictionPanelLayouts;
- (uint64_t)cachedAppPredictionPanelLayoutsCount;
- (uint64_t)cachedSuggestedWidgetLayoutListKeys;
- (uint64_t)cachedSuggestedWidgetLayoutListKeysCount;
- (uint64_t)cachedSuggestedWidgetLayoutLists;
- (uint64_t)cachedSuggestedWidgetLayoutListsCount;
- (uint64_t)cachedSuggestionWidgetIds;
- (uint64_t)cachedSuggestionWidgetIdsCount;
- (uint64_t)cachedSuggestionWidgetLayouts;
- (uint64_t)cachedSuggestionWidgetLayoutsCount;
- (uint64_t)cachedTopOfStackLayoutKeys;
- (uint64_t)cachedTopOfStackLayoutKeysCount;
- (uint64_t)cachedTopOfStackLayouts;
- (uint64_t)cachedTopOfStackLayoutsCount;
- (uint64_t)clearCachedAppPredictionPanelIds;
- (uint64_t)clearCachedAppPredictionPanelLayouts;
- (uint64_t)clearCachedSuggestedWidgetLayoutListKeys;
- (uint64_t)clearCachedSuggestedWidgetLayoutLists;
- (uint64_t)clearCachedSuggestionWidgetIds;
- (uint64_t)clearCachedSuggestionWidgetLayouts;
- (uint64_t)clearCachedTopOfStackLayoutKeys;
- (uint64_t)clearCachedTopOfStackLayouts;
- (uint64_t)clearFallbackSuggestions;
- (uint64_t)fallbackSuggestions;
- (uint64_t)fallbackSuggestionsCount;
- (uint64_t)uuidString;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setCachedAppPredictionPanelIds:(uint64_t)ids;
- (void)setCachedAppPredictionPanelLayouts:(uint64_t)layouts;
- (void)setCachedSuggestedWidgetLayoutListKeys:(uint64_t)keys;
- (void)setCachedSuggestedWidgetLayoutLists:(uint64_t)lists;
- (void)setCachedSuggestionWidgetIds:(uint64_t)ids;
- (void)setCachedSuggestionWidgetLayouts:(uint64_t)layouts;
- (void)setCachedTopOfStackLayoutKeys:(uint64_t)keys;
- (void)setCachedTopOfStackLayouts:(uint64_t)layouts;
- (void)setFallbackSuggestions:(uint64_t)suggestions;
- (void)setUuidString:(uint64_t)string;
- (void)writeTo:(id)to;
@end

@implementation ATXPBHomeScreenCachedSuggestion

+ (uint64_t)cachedSuggestionWidgetIdsType
{
  objc_opt_self();

  return objc_opt_class();
}

+ (uint64_t)cachedSuggestionWidgetLayoutsType
{
  objc_opt_self();

  return objc_opt_class();
}

+ (uint64_t)cachedSuggestedWidgetLayoutListsType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBHomeScreenCachedSuggestion;
  v4 = [(ATXPBHomeScreenCachedSuggestion *)&v8 description];
  dictionaryRepresentation = [(ATXPBHomeScreenCachedSuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v72 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [dictionary setObject:uuidString forKey:@"uuidString"];
  }

  cachedSuggestionWidgetIds = self->_cachedSuggestionWidgetIds;
  if (cachedSuggestionWidgetIds)
  {
    [v4 setObject:cachedSuggestionWidgetIds forKey:@"cachedSuggestionWidgetIds"];
  }

  if ([(NSMutableArray *)self->_cachedSuggestionWidgetLayouts count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_cachedSuggestionWidgetLayouts, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v8 = self->_cachedSuggestionWidgetLayouts;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v64;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v64 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v63 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"cachedSuggestionWidgetLayouts"];
  }

  cachedTopOfStackLayoutKeys = self->_cachedTopOfStackLayoutKeys;
  if (cachedTopOfStackLayoutKeys)
  {
    [v4 setObject:cachedTopOfStackLayoutKeys forKey:@"cachedTopOfStackLayoutKeys"];
  }

  if ([(NSMutableArray *)self->_cachedTopOfStackLayouts count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_cachedTopOfStackLayouts, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v16 = self->_cachedTopOfStackLayouts;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v60;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v60 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation2 = [*(*(&v59 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation2];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v18);
    }

    [v4 setObject:v15 forKey:@"cachedTopOfStackLayouts"];
  }

  if ([(NSMutableArray *)self->_fallbackSuggestions count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_fallbackSuggestions, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v23 = self->_fallbackSuggestions;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v56;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v56 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation3 = [*(*(&v55 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation3];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"fallbackSuggestions"];
  }

  cachedAppPredictionPanelIds = self->_cachedAppPredictionPanelIds;
  if (cachedAppPredictionPanelIds)
  {
    [v4 setObject:cachedAppPredictionPanelIds forKey:@"cachedAppPredictionPanelIds"];
  }

  if ([(NSMutableArray *)self->_cachedAppPredictionPanelLayouts count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_cachedAppPredictionPanelLayouts, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v31 = self->_cachedAppPredictionPanelLayouts;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v51 objects:v68 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v52;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v52 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation4 = [*(*(&v51 + 1) + 8 * m) dictionaryRepresentation];
          [v30 addObject:dictionaryRepresentation4];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v51 objects:v68 count:16];
      }

      while (v33);
    }

    [v4 setObject:v30 forKey:@"cachedAppPredictionPanelLayouts"];
  }

  cachedSuggestedWidgetLayoutListKeys = self->_cachedSuggestedWidgetLayoutListKeys;
  if (cachedSuggestedWidgetLayoutListKeys)
  {
    [v4 setObject:cachedSuggestedWidgetLayoutListKeys forKey:@"cachedSuggestedWidgetLayoutListKeys"];
  }

  if ([(NSMutableArray *)self->_cachedSuggestedWidgetLayoutLists count])
  {
    v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_cachedSuggestedWidgetLayoutLists, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v39 = self->_cachedSuggestedWidgetLayoutLists;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v47 objects:v67 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v48;
      do
      {
        for (n = 0; n != v41; ++n)
        {
          if (*v48 != v42)
          {
            objc_enumerationMutation(v39);
          }

          dictionaryRepresentation5 = [*(*(&v47 + 1) + 8 * n) dictionaryRepresentation];
          [v38 addObject:dictionaryRepresentation5];
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v47 objects:v67 count:16];
      }

      while (v41);
    }

    [v4 setObject:v38 forKey:@"cachedSuggestedWidgetLayoutLists"];
  }

  v45 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v105 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v5 = self->_cachedSuggestionWidgetIds;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v93;
    do
    {
      v9 = 0;
      do
      {
        if (*v93 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v92 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v92 objects:v104 count:16];
    }

    while (v7);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v11 = self->_cachedSuggestionWidgetLayouts;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v88 objects:v103 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v89;
    do
    {
      v15 = 0;
      do
      {
        if (*v89 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v88 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v88 objects:v103 count:16];
    }

    while (v13);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v17 = self->_cachedTopOfStackLayoutKeys;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v84 objects:v102 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v85;
    do
    {
      v21 = 0;
      do
      {
        if (*v85 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v84 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v84 objects:v102 count:16];
    }

    while (v19);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v23 = self->_cachedTopOfStackLayouts;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v80 objects:v101 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v81;
    do
    {
      v27 = 0;
      do
      {
        if (*v81 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v80 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v80 objects:v101 count:16];
    }

    while (v25);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v29 = self->_fallbackSuggestions;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v76 objects:v100 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v77;
    do
    {
      v33 = 0;
      do
      {
        if (*v77 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v76 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v76 objects:v100 count:16];
    }

    while (v31);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v35 = self->_cachedAppPredictionPanelIds;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v72 objects:v99 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v73;
    do
    {
      v39 = 0;
      do
      {
        if (*v73 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v72 + 1) + 8 * v39);
        PBDataWriterWriteStringField();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v72 objects:v99 count:16];
    }

    while (v37);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v41 = self->_cachedAppPredictionPanelLayouts;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v68 objects:v98 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v69;
    do
    {
      v45 = 0;
      do
      {
        if (*v69 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v68 + 1) + 8 * v45);
        PBDataWriterWriteSubmessage();
        ++v45;
      }

      while (v43 != v45);
      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v68 objects:v98 count:16];
    }

    while (v43);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v47 = self->_cachedSuggestedWidgetLayoutListKeys;
  v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v64 objects:v97 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v65;
    do
    {
      v51 = 0;
      do
      {
        if (*v65 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v64 + 1) + 8 * v51);
        PBDataWriterWriteStringField();
        ++v51;
      }

      while (v49 != v51);
      v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v64 objects:v97 count:16];
    }

    while (v49);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v53 = self->_cachedSuggestedWidgetLayoutLists;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v60 objects:v96 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v61;
    do
    {
      v57 = 0;
      do
      {
        if (*v61 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v60 + 1) + 8 * v57);
        PBDataWriterWriteSubmessage();
        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v60 objects:v96 count:16];
    }

    while (v55);
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  v7 = v5[10];
  v5[10] = v6;

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v8 = self->_cachedSuggestionWidgetIds;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v96 objects:v108 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v97;
    do
    {
      v12 = 0;
      do
      {
        if (*v97 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v96 + 1) + 8 * v12) copyWithZone:zone];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addCachedSuggestionWidgetIds:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v96 objects:v108 count:16];
    }

    while (v10);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v14 = self->_cachedSuggestionWidgetLayouts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v92 objects:v107 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v93;
    do
    {
      v18 = 0;
      do
      {
        if (*v93 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v92 + 1) + 8 * v18) copyWithZone:zone];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addCachedSuggestionWidgetLayouts:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v92 objects:v107 count:16];
    }

    while (v16);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v20 = self->_cachedTopOfStackLayoutKeys;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v88 objects:v106 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v89;
    do
    {
      v24 = 0;
      do
      {
        if (*v89 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v88 + 1) + 8 * v24) copyWithZone:zone];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addCachedTopOfStackLayoutKeys:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v88 objects:v106 count:16];
    }

    while (v22);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v26 = self->_cachedTopOfStackLayouts;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v84 objects:v105 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v85;
    do
    {
      v30 = 0;
      do
      {
        if (*v85 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v84 + 1) + 8 * v30) copyWithZone:zone];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addCachedTopOfStackLayouts:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v84 objects:v105 count:16];
    }

    while (v28);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v32 = self->_fallbackSuggestions;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v80 objects:v104 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v81;
    do
    {
      v36 = 0;
      do
      {
        if (*v81 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v80 + 1) + 8 * v36) copyWithZone:zone];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addFallbackSuggestions:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v80 objects:v104 count:16];
    }

    while (v34);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v38 = self->_cachedAppPredictionPanelIds;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v76 objects:v103 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v77;
    do
    {
      v42 = 0;
      do
      {
        if (*v77 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v76 + 1) + 8 * v42) copyWithZone:zone];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addCachedAppPredictionPanelIds:v43];

        ++v42;
      }

      while (v40 != v42);
      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v76 objects:v103 count:16];
    }

    while (v40);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v44 = self->_cachedAppPredictionPanelLayouts;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v72 objects:v102 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v73;
    do
    {
      v48 = 0;
      do
      {
        if (*v73 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v72 + 1) + 8 * v48) copyWithZone:zone];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addCachedAppPredictionPanelLayouts:v49];

        ++v48;
      }

      while (v46 != v48);
      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v72 objects:v102 count:16];
    }

    while (v46);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v50 = self->_cachedSuggestedWidgetLayoutListKeys;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v68 objects:v101 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v69;
    do
    {
      v54 = 0;
      do
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [*(*(&v68 + 1) + 8 * v54) copyWithZone:zone];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addCachedSuggestedWidgetLayoutListKeys:v55];

        ++v54;
      }

      while (v52 != v54);
      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v68 objects:v101 count:16];
    }

    while (v52);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v56 = self->_cachedSuggestedWidgetLayoutLists;
  v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v64 objects:v100 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v65;
    do
    {
      v60 = 0;
      do
      {
        if (*v65 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = [*(*(&v64 + 1) + 8 * v60) copyWithZone:{zone, v64}];
        [(ATXPBHomeScreenCachedSuggestion *)v5 addCachedSuggestedWidgetLayoutLists:v61];

        ++v60;
      }

      while (v58 != v60);
      v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v64 objects:v100 count:16];
    }

    while (v58);
  }

  v62 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  uuidString = self->_uuidString;
  if (uuidString | equalCopy[10])
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_22;
    }
  }

  cachedSuggestionWidgetIds = self->_cachedSuggestionWidgetIds;
  if (cachedSuggestionWidgetIds | equalCopy[5] && ![(NSMutableArray *)cachedSuggestionWidgetIds isEqual:?])
  {
    goto LABEL_22;
  }

  if (((cachedSuggestionWidgetLayouts = self->_cachedSuggestionWidgetLayouts, !(cachedSuggestionWidgetLayouts | equalCopy[6])) || [(NSMutableArray *)cachedSuggestionWidgetLayouts isEqual:?]) && ((cachedTopOfStackLayoutKeys = self->_cachedTopOfStackLayoutKeys, !(cachedTopOfStackLayoutKeys | equalCopy[7])) || [(NSMutableArray *)cachedTopOfStackLayoutKeys isEqual:?]) && ((cachedTopOfStackLayouts = self->_cachedTopOfStackLayouts, !(cachedTopOfStackLayouts | equalCopy[8])) || [(NSMutableArray *)cachedTopOfStackLayouts isEqual:?]) && ((fallbackSuggestions = self->_fallbackSuggestions, !(fallbackSuggestions | equalCopy[9])) || [(NSMutableArray *)fallbackSuggestions isEqual:?]) && ((cachedAppPredictionPanelIds = self->_cachedAppPredictionPanelIds, !(cachedAppPredictionPanelIds | equalCopy[1])) || [(NSMutableArray *)cachedAppPredictionPanelIds isEqual:?]) && ((cachedAppPredictionPanelLayouts = self->_cachedAppPredictionPanelLayouts, !(cachedAppPredictionPanelLayouts | equalCopy[2])) || [(NSMutableArray *)cachedAppPredictionPanelLayouts isEqual:?]) && ((cachedSuggestedWidgetLayoutListKeys = self->_cachedSuggestedWidgetLayoutListKeys, !(cachedSuggestedWidgetLayoutListKeys | equalCopy[3])) || [(NSMutableArray *)cachedSuggestedWidgetLayoutListKeys isEqual:?]))
  {
    cachedSuggestedWidgetLayoutLists = self->_cachedSuggestedWidgetLayoutLists;
    if (cachedSuggestedWidgetLayoutLists | equalCopy[4])
    {
      v15 = [(NSMutableArray *)cachedSuggestedWidgetLayoutLists isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(NSMutableArray *)self->_cachedSuggestionWidgetIds hash]^ v3;
  v5 = [(NSMutableArray *)self->_cachedSuggestionWidgetLayouts hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_cachedTopOfStackLayoutKeys hash];
  v7 = [(NSMutableArray *)self->_cachedTopOfStackLayouts hash];
  v8 = v7 ^ [(NSMutableArray *)self->_fallbackSuggestions hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_cachedAppPredictionPanelIds hash];
  v10 = [(NSMutableArray *)self->_cachedAppPredictionPanelLayouts hash];
  v11 = v10 ^ [(NSMutableArray *)self->_cachedSuggestedWidgetLayoutListKeys hash];
  return v9 ^ v11 ^ [(NSMutableArray *)self->_cachedSuggestedWidgetLayoutLists hash];
}

- (BOOL)hasUuidString
{
  if (result)
  {
    return *(result + 80) != 0;
  }

  return result;
}

- (uint64_t)clearCachedSuggestionWidgetIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 40);
  }

  return result;
}

- (uint64_t)addCachedSuggestionWidgetIds:(uint64_t)ids
{
  v3 = a2;
  v4 = v3;
  if (ids)
  {
    v5 = OUTLINED_FUNCTION_13(40);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 40);
      v5 = *(ids + 40);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedSuggestionWidgetIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 40);
  }

  return result;
}

- (id)cachedSuggestionWidgetIdsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 40)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearCachedSuggestionWidgetLayouts
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 48);
  }

  return result;
}

- (uint64_t)addCachedSuggestionWidgetLayouts:(uint64_t)layouts
{
  v3 = a2;
  v4 = v3;
  if (layouts)
  {
    v5 = OUTLINED_FUNCTION_13(48);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 48);
      v5 = *(layouts + 48);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedSuggestionWidgetLayoutsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 48);
  }

  return result;
}

- (id)cachedSuggestionWidgetLayoutsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 48)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearCachedTopOfStackLayoutKeys
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 56);
  }

  return result;
}

- (uint64_t)addCachedTopOfStackLayoutKeys:(uint64_t)keys
{
  v3 = a2;
  v4 = v3;
  if (keys)
  {
    v5 = OUTLINED_FUNCTION_13(56);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 56);
      v5 = *(keys + 56);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedTopOfStackLayoutKeysCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 56);
  }

  return result;
}

- (id)cachedTopOfStackLayoutKeysAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 56)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearCachedTopOfStackLayouts
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 64);
  }

  return result;
}

- (uint64_t)addCachedTopOfStackLayouts:(uint64_t)layouts
{
  v3 = a2;
  v4 = v3;
  if (layouts)
  {
    v5 = OUTLINED_FUNCTION_13(64);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 64);
      v5 = *(layouts + 64);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedTopOfStackLayoutsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 64);
  }

  return result;
}

- (id)cachedTopOfStackLayoutsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 64)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearFallbackSuggestions
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 72);
  }

  return result;
}

- (uint64_t)addFallbackSuggestions:(uint64_t)suggestions
{
  v3 = a2;
  v4 = v3;
  if (suggestions)
  {
    v5 = OUTLINED_FUNCTION_13(72);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 72);
      v5 = *(suggestions + 72);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)fallbackSuggestionsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 72);
  }

  return result;
}

- (id)fallbackSuggestionsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 72)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearCachedAppPredictionPanelIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 8);
  }

  return result;
}

- (uint64_t)addCachedAppPredictionPanelIds:(uint64_t)ids
{
  v3 = a2;
  v4 = v3;
  if (ids)
  {
    v5 = OUTLINED_FUNCTION_13(8);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 8);
      v5 = *(ids + 8);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedAppPredictionPanelIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 8);
  }

  return result;
}

- (id)cachedAppPredictionPanelIdsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 8)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearCachedAppPredictionPanelLayouts
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 16);
  }

  return result;
}

- (uint64_t)addCachedAppPredictionPanelLayouts:(uint64_t)layouts
{
  v3 = a2;
  v4 = v3;
  if (layouts)
  {
    v5 = OUTLINED_FUNCTION_13(16);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 16);
      v5 = *(layouts + 16);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedAppPredictionPanelLayoutsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 16);
  }

  return result;
}

- (id)cachedAppPredictionPanelLayoutsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 16)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearCachedSuggestedWidgetLayoutListKeys
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 24);
  }

  return result;
}

- (uint64_t)addCachedSuggestedWidgetLayoutListKeys:(uint64_t)keys
{
  v3 = a2;
  v4 = v3;
  if (keys)
  {
    v5 = OUTLINED_FUNCTION_13(24);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 24);
      v5 = *(keys + 24);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedSuggestedWidgetLayoutListKeysCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 24);
  }

  return result;
}

- (id)cachedSuggestedWidgetLayoutListKeysAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 24)];
    v1 = vars8;
  }

  return index;
}

- (uint64_t)clearCachedSuggestedWidgetLayoutLists
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 32);
  }

  return result;
}

- (uint64_t)addCachedSuggestedWidgetLayoutLists:(uint64_t)lists
{
  v3 = a2;
  v4 = v3;
  if (lists)
  {
    v5 = OUTLINED_FUNCTION_13(32);
    if (!v5)
    {
      OUTLINED_FUNCTION_23(objc_alloc_init(MEMORY[0x1E695DF70]), 32);
      v5 = *(lists + 32);
    }

    v3 = [v5 addObject:v7];
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedSuggestedWidgetLayoutListsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_0(result, 32);
  }

  return result;
}

- (id)cachedSuggestedWidgetLayoutListsAtIndex:(void *)index
{
  if (index)
  {
    index = [OUTLINED_FUNCTION_14(index 32)];
    v1 = vars8;
  }

  return index;
}

- (void)copyTo:(uint64_t)to
{
  v106 = a2;
  if (to)
  {
    v4 = *(to + 80);
    if (v4)
    {
      [(ATXPBHomeScreenCachedSuggestion *)v106 setUuidString:v4];
    }

    if ([*(to + 40) count])
    {
      if (v106)
      {
        [v106[5] removeAllObjects];
      }

      if ([*(to + 40) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v5 = OUTLINED_FUNCTION_11();
          v6 = [ATXPBHomeScreenCachedSuggestion cachedSuggestionWidgetIdsAtIndex:v5];
          v14 = OUTLINED_FUNCTION_4(v6, v7, v8, v9, v10, v11, v12, v13, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v14 addCachedSuggestionWidgetIds:v15];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }

    if ([*(to + 48) count])
    {
      if (v106)
      {
        [v106[6] removeAllObjects];
      }

      if ([*(to + 48) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v17 = OUTLINED_FUNCTION_11();
          v18 = [ATXPBHomeScreenCachedSuggestion cachedSuggestionWidgetLayoutsAtIndex:v17];
          v26 = OUTLINED_FUNCTION_4(v18, v19, v20, v21, v22, v23, v24, v25, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v26 addCachedSuggestionWidgetLayouts:v27];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }

    if ([*(to + 56) count])
    {
      if (v106)
      {
        [v106[7] removeAllObjects];
      }

      if ([*(to + 56) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v28 = OUTLINED_FUNCTION_11();
          v29 = [ATXPBHomeScreenCachedSuggestion cachedTopOfStackLayoutKeysAtIndex:v28];
          v37 = OUTLINED_FUNCTION_4(v29, v30, v31, v32, v33, v34, v35, v36, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v37 addCachedTopOfStackLayoutKeys:v38];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }

    if ([*(to + 64) count])
    {
      if (v106)
      {
        [v106[8] removeAllObjects];
      }

      if ([*(to + 64) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v39 = OUTLINED_FUNCTION_11();
          v40 = [ATXPBHomeScreenCachedSuggestion cachedTopOfStackLayoutsAtIndex:v39];
          v48 = OUTLINED_FUNCTION_4(v40, v41, v42, v43, v44, v45, v46, v47, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v48 addCachedTopOfStackLayouts:v49];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }

    if ([*(to + 72) count])
    {
      if (v106)
      {
        [v106[9] removeAllObjects];
      }

      if ([*(to + 72) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v50 = OUTLINED_FUNCTION_11();
          v51 = [ATXPBHomeScreenCachedSuggestion fallbackSuggestionsAtIndex:v50];
          v59 = OUTLINED_FUNCTION_4(v51, v52, v53, v54, v55, v56, v57, v58, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v59 addFallbackSuggestions:v60];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }

    if ([*(to + 8) count])
    {
      if (v106)
      {
        [v106[1] removeAllObjects];
      }

      if ([*(to + 8) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v61 = OUTLINED_FUNCTION_11();
          v62 = [ATXPBHomeScreenCachedSuggestion cachedAppPredictionPanelIdsAtIndex:v61];
          v70 = OUTLINED_FUNCTION_4(v62, v63, v64, v65, v66, v67, v68, v69, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v70 addCachedAppPredictionPanelIds:v71];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }

    if ([*(to + 16) count])
    {
      if (v106)
      {
        [v106[2] removeAllObjects];
      }

      if ([*(to + 16) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v72 = OUTLINED_FUNCTION_11();
          v73 = [ATXPBHomeScreenCachedSuggestion cachedAppPredictionPanelLayoutsAtIndex:v72];
          v81 = OUTLINED_FUNCTION_4(v73, v74, v75, v76, v77, v78, v79, v80, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v81 addCachedAppPredictionPanelLayouts:v82];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }

    if ([*(to + 24) count])
    {
      if (v106)
      {
        [v106[3] removeAllObjects];
      }

      if ([*(to + 24) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v83 = OUTLINED_FUNCTION_11();
          v84 = [ATXPBHomeScreenCachedSuggestion cachedSuggestedWidgetLayoutListKeysAtIndex:v83];
          v92 = OUTLINED_FUNCTION_4(v84, v85, v86, v87, v88, v89, v90, v91, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v92 addCachedSuggestedWidgetLayoutListKeys:v93];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }

    if ([*(to + 32) count])
    {
      if (v106)
      {
        [v106[4] removeAllObjects];
      }

      if ([*(to + 32) count])
      {
        OUTLINED_FUNCTION_12();
        do
        {
          v94 = OUTLINED_FUNCTION_11();
          v95 = [ATXPBHomeScreenCachedSuggestion cachedSuggestedWidgetLayoutListsAtIndex:v94];
          v103 = OUTLINED_FUNCTION_4(v95, v96, v97, v98, v99, v100, v101, v102, v105, v106);
          [(ATXPBHomeScreenCachedSuggestion *)v103 addCachedSuggestedWidgetLayoutLists:v104];

          OUTLINED_FUNCTION_10();
        }

        while (!v16);
      }
    }
  }
}

- (void)setUuidString:(uint64_t)string
{
  if (string)
  {
    OUTLINED_FUNCTION_0_3(string, a2, 80);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v107 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (from)
  {
    v5 = v3[10];
    if (v5)
    {
      objc_storeStrong((from + 80), v5);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v6 = v4[5];
    if ([v6 countByEnumeratingWithState:&v94 objects:v106 count:16])
    {
      v7 = *v95;
      do
      {
        OUTLINED_FUNCTION_10_0(v95);
        if (!v8)
        {
          objc_enumerationMutation(v6);
        }

        v9 = OUTLINED_FUNCTION_8_0(*(&v94 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v9 addCachedSuggestionWidgetIds:v10];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v11, v12, &v94, v106));
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v13 = v4[6];
    if ([v13 countByEnumeratingWithState:&v90 objects:v105 count:16])
    {
      v14 = *v91;
      do
      {
        OUTLINED_FUNCTION_10_0(v91);
        if (!v8)
        {
          objc_enumerationMutation(v13);
        }

        v15 = OUTLINED_FUNCTION_8_0(*(&v90 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v15 addCachedSuggestionWidgetLayouts:v16];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v17, v18, &v90, v105));
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v19 = v4[7];
    if ([v19 countByEnumeratingWithState:&v86 objects:v104 count:16])
    {
      v20 = *v87;
      do
      {
        OUTLINED_FUNCTION_10_0(v87);
        if (!v8)
        {
          objc_enumerationMutation(v19);
        }

        v21 = OUTLINED_FUNCTION_8_0(*(&v86 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v21 addCachedTopOfStackLayoutKeys:v22];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v23, v24, &v86, v104));
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v25 = v4[8];
    if ([v25 countByEnumeratingWithState:&v82 objects:v103 count:16])
    {
      v26 = *v83;
      do
      {
        OUTLINED_FUNCTION_10_0(v83);
        if (!v8)
        {
          objc_enumerationMutation(v25);
        }

        v27 = OUTLINED_FUNCTION_8_0(*(&v82 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v27 addCachedTopOfStackLayouts:v28];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v29, v30, &v82, v103));
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v31 = v4[9];
    if ([v31 countByEnumeratingWithState:&v78 objects:v102 count:16])
    {
      v32 = *v79;
      do
      {
        OUTLINED_FUNCTION_10_0(v79);
        if (!v8)
        {
          objc_enumerationMutation(v31);
        }

        v33 = OUTLINED_FUNCTION_8_0(*(&v78 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v33 addFallbackSuggestions:v34];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v35, v36, &v78, v102));
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v37 = v4[1];
    if ([v37 countByEnumeratingWithState:&v74 objects:v101 count:16])
    {
      v38 = *v75;
      do
      {
        OUTLINED_FUNCTION_10_0(v75);
        if (!v8)
        {
          objc_enumerationMutation(v37);
        }

        v39 = OUTLINED_FUNCTION_8_0(*(&v74 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v39 addCachedAppPredictionPanelIds:v40];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v41, v42, &v74, v101));
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v43 = v4[2];
    if ([v43 countByEnumeratingWithState:&v70 objects:v100 count:16])
    {
      v44 = *v71;
      do
      {
        OUTLINED_FUNCTION_10_0(v71);
        if (!v8)
        {
          objc_enumerationMutation(v43);
        }

        v45 = OUTLINED_FUNCTION_8_0(*(&v70 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v45 addCachedAppPredictionPanelLayouts:v46];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v47, v48, &v70, v100));
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v49 = v4[3];
    if ([v49 countByEnumeratingWithState:&v66 objects:v99 count:16])
    {
      v50 = *v67;
      do
      {
        OUTLINED_FUNCTION_10_0(v67);
        if (!v8)
        {
          objc_enumerationMutation(v49);
        }

        v51 = OUTLINED_FUNCTION_8_0(*(&v66 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v51 addCachedSuggestedWidgetLayoutListKeys:v52];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v53, v54, &v66, v99));
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v55 = v4[4];
    if ([v55 countByEnumeratingWithState:&v62 objects:v98 count:16])
    {
      v56 = *v63;
      do
      {
        OUTLINED_FUNCTION_10_0(v63);
        if (!v8)
        {
          objc_enumerationMutation(v55);
        }

        v57 = OUTLINED_FUNCTION_8_0(*(&v62 + 1));
        [(ATXPBHomeScreenCachedSuggestion *)v57 addCachedSuggestedWidgetLayoutLists:v58];
        OUTLINED_FUNCTION_6_1();
      }

      while (!v8 || OUTLINED_FUNCTION_22(v59, v60, &v62, v98));
    }
  }

  v61 = *MEMORY[0x1E69E9840];
}

- (uint64_t)uuidString
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)cachedSuggestionWidgetIds
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)setCachedSuggestionWidgetIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_0_3(ids, a2, 40);
  }
}

- (uint64_t)cachedSuggestionWidgetLayouts
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)setCachedSuggestionWidgetLayouts:(uint64_t)layouts
{
  if (layouts)
  {
    OUTLINED_FUNCTION_0_3(layouts, a2, 48);
  }
}

- (uint64_t)cachedTopOfStackLayoutKeys
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)setCachedTopOfStackLayoutKeys:(uint64_t)keys
{
  if (keys)
  {
    OUTLINED_FUNCTION_0_3(keys, a2, 56);
  }
}

- (uint64_t)cachedTopOfStackLayouts
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setCachedTopOfStackLayouts:(uint64_t)layouts
{
  if (layouts)
  {
    OUTLINED_FUNCTION_0_3(layouts, a2, 64);
  }
}

- (uint64_t)fallbackSuggestions
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (void)setFallbackSuggestions:(uint64_t)suggestions
{
  if (suggestions)
  {
    OUTLINED_FUNCTION_0_3(suggestions, a2, 72);
  }
}

- (uint64_t)cachedAppPredictionPanelIds
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setCachedAppPredictionPanelIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_0_3(ids, a2, 8);
  }
}

- (uint64_t)cachedAppPredictionPanelLayouts
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setCachedAppPredictionPanelLayouts:(uint64_t)layouts
{
  if (layouts)
  {
    OUTLINED_FUNCTION_0_3(layouts, a2, 16);
  }
}

- (uint64_t)cachedSuggestedWidgetLayoutListKeys
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setCachedSuggestedWidgetLayoutListKeys:(uint64_t)keys
{
  if (keys)
  {
    OUTLINED_FUNCTION_0_3(keys, a2, 24);
  }
}

- (uint64_t)cachedSuggestedWidgetLayoutLists
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setCachedSuggestedWidgetLayoutLists:(uint64_t)lists
{
  if (lists)
  {
    OUTLINED_FUNCTION_0_3(lists, a2, 32);
  }
}

@end