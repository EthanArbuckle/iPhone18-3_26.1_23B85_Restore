@interface _SFPBSearchSuggestion
- (BOOL)getServerFeatures:(double *)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSearchSuggestion)initWithDictionary:(id)a3;
- (_SFPBSearchSuggestion)initWithFacade:(id)a3;
- (_SFPBSearchSuggestion)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDuplicateSuggestions:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setDetailText:(id)a3;
- (void)setDuplicateSuggestions:(id)a3;
- (void)setFbr:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setQuery:(id)a3;
- (void)setScopedSearchApplicationBundleIdentifier:(id)a3;
- (void)setServerFeatures:(double)a3 forKey:(id)a4;
- (void)setServerFeatures:(id)a3;
- (void)setSuggestion:(id)a3;
- (void)setTopicIdentifier:(id)a3;
- (void)setUtteranceText:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSearchSuggestion

- (_SFPBSearchSuggestion)initWithFacade:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSearchSuggestion *)self init];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(_SFPBSearchSuggestion *)v5 setIdentifier:v7];
    }

    v8 = [v4 suggestion];

    if (v8)
    {
      v9 = [v4 suggestion];
      [(_SFPBSearchSuggestion *)v5 setSuggestion:v9];
    }

    v10 = [v4 query];

    if (v10)
    {
      v11 = [v4 query];
      [(_SFPBSearchSuggestion *)v5 setQuery:v11];
    }

    if ([v4 hasScore])
    {
      v12 = [_SFPBGraphicalFloat alloc];
      [v4 score];
      v13 = [(_SFPBGraphicalFloat *)v12 initWithCGFloat:?];
      [(_SFPBSearchSuggestion *)v5 setScore:v13];
    }

    if ([v4 hasType])
    {
      -[_SFPBSearchSuggestion setType:](v5, "setType:", [v4 type]);
    }

    v14 = [v4 duplicateSuggestions];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = [v4 duplicateSuggestions];
    v17 = [v16 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v52;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v52 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBSearchSuggestion alloc] initWithFacade:*(*(&v51 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v18);
    }

    [(_SFPBSearchSuggestion *)v5 setDuplicateSuggestions:v15];
    v22 = [v4 topicIdentifier];

    if (v22)
    {
      v23 = [v4 topicIdentifier];
      [(_SFPBSearchSuggestion *)v5 setTopicIdentifier:v23];
    }

    v24 = [v4 bundleIdentifier];

    if (v24)
    {
      v25 = [v4 bundleIdentifier];
      [(_SFPBSearchSuggestion *)v5 setBundleIdentifier:v25];
    }

    if ([v4 hasPreviouslyEngaged])
    {
      -[_SFPBSearchSuggestion setPreviouslyEngaged:](v5, "setPreviouslyEngaged:", [v4 previouslyEngaged]);
    }

    v26 = [v4 fbr];

    if (v26)
    {
      v27 = [v4 fbr];
      [(_SFPBSearchSuggestion *)v5 setFbr:v27];
    }

    v28 = [v4 scopedSearchApplicationBundleIdentifier];

    if (v28)
    {
      v29 = [v4 scopedSearchApplicationBundleIdentifier];
      [(_SFPBSearchSuggestion *)v5 setScopedSearchApplicationBundleIdentifier:v29];
    }

    v30 = [v4 utteranceText];

    if (v30)
    {
      v31 = [v4 utteranceText];
      [(_SFPBSearchSuggestion *)v5 setUtteranceText:v31];
    }

    v32 = [v4 detailText];

    if (v32)
    {
      v33 = [v4 detailText];
      [(_SFPBSearchSuggestion *)v5 setDetailText:v33];
    }

    v34 = [v4 serverFeatures];
    v35 = v34;
    if (v34)
    {
      v36 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v34, "count")}];
    }

    else
    {
      v36 = 0;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v37 = v35;
    v38 = [v37 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v48;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v48 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v47 + 1) + 8 * j);
          v43 = [v37 objectForKey:{v42, v47}];
          if (v43)
          {
            [v36 setObject:v43 forKey:v42];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v39);
    }

    [(_SFPBSearchSuggestion *)v5 setServerFeatures:v36];
    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSearchSuggestion)initWithDictionary:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v74.receiver = self;
  v74.super_class = _SFPBSearchSuggestion;
  v5 = [(_SFPBSearchSuggestion *)&v74 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    v65 = v6;
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSearchSuggestion *)v5 setIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"suggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSearchSuggestion *)v5 setSuggestion:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"query"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSearchSuggestion *)v5 setQuery:v11];
    }

    v57 = v10;
    v12 = [v4 objectForKeyedSubscript:@"score"];
    objc_opt_class();
    v64 = v12;
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v12];
      [(_SFPBSearchSuggestion *)v5 setScore:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v63 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSearchSuggestion setType:](v5, "setType:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"duplicateSuggestions"];
    objc_opt_class();
    v62 = v15;
    v58 = v8;
    if (objc_opt_isKindOfClass())
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v70 objects:v76 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v71;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v71 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v70 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[_SFPBSearchSuggestion alloc] initWithDictionary:v21];
              [(_SFPBSearchSuggestion *)v5 addDuplicateSuggestions:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v70 objects:v76 count:16];
        }

        while (v18);
      }
    }

    v23 = [v4 objectForKeyedSubscript:@"topicIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(_SFPBSearchSuggestion *)v5 setTopicIdentifier:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v25 copy];
      [(_SFPBSearchSuggestion *)v5 setBundleIdentifier:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"previouslyEngaged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSearchSuggestion setPreviouslyEngaged:](v5, "setPreviouslyEngaged:", [v27 BOOLValue]);
    }

    v28 = [v4 objectForKeyedSubscript:@"fbr"];
    objc_opt_class();
    v61 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = v23;
      v30 = [v61 copy];
      [(_SFPBSearchSuggestion *)v5 setFbr:v30];

      v23 = v29;
    }

    v31 = [v4 objectForKeyedSubscript:@"scopedSearchApplicationBundleIdentifier"];
    objc_opt_class();
    v60 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = v25;
      v33 = [v60 copy];
      [(_SFPBSearchSuggestion *)v5 setScopedSearchApplicationBundleIdentifier:v33];

      v25 = v32;
    }

    v34 = [v4 objectForKeyedSubscript:@"utteranceText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      v36 = v34;
      v37 = v27;
      v38 = v35;
      [(_SFPBSearchSuggestion *)v5 setUtteranceText:v35];

      v27 = v37;
      v34 = v36;
    }

    v39 = [v4 objectForKeyedSubscript:@"detailText"];
    objc_opt_class();
    v59 = v39;
    if (objc_opt_isKindOfClass())
    {
      v40 = [v39 copy];
      [(_SFPBSearchSuggestion *)v5 setDetailText:v40];
    }

    v41 = [v4 objectForKeyedSubscript:@"serverFeatures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v34;
      v55 = v27;
      v56 = v25;
      v42 = [MEMORY[0x1E695DF90] dictionary];
      serverFeatures = v5->_serverFeatures;
      v5->_serverFeatures = v42;

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v44 = v41;
      v45 = [v44 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v67;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v67 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v66 + 1) + 8 * j);
            v50 = [v44 objectForKeyedSubscript:v49];
            [(NSDictionary *)v5->_serverFeatures setObject:v50 forKey:v49];
          }

          v46 = [v44 countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v46);
      }

      v8 = v58;
      v25 = v56;
      v34 = v54;
      v27 = v55;
    }

    v51 = v5;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSearchSuggestion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSearchSuggestion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSearchSuggestion *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bundleIdentifier)
  {
    v4 = [(_SFPBSearchSuggestion *)self bundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_detailText)
  {
    v6 = [(_SFPBSearchSuggestion *)self detailText];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"detailText"];
  }

  if ([(NSArray *)self->_duplicateSuggestions count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = self->_duplicateSuggestions;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v51;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          if (v14)
          {
            [v8 addObject:v14];
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
            [v8 addObject:v15];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"duplicateSuggestions"];
  }

  if (self->_fbr)
  {
    v16 = [(_SFPBSearchSuggestion *)self fbr];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"fbr"];
  }

  if (self->_identifier)
  {
    v18 = [(_SFPBSearchSuggestion *)self identifier];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"identifier"];
  }

  if (self->_previouslyEngaged)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSearchSuggestion previouslyEngaged](self, "previouslyEngaged")}];
    [v3 setObject:v20 forKeyedSubscript:@"previouslyEngaged"];
  }

  if (self->_query)
  {
    v21 = [(_SFPBSearchSuggestion *)self query];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"query"];
  }

  if (self->_scopedSearchApplicationBundleIdentifier)
  {
    v23 = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"scopedSearchApplicationBundleIdentifier"];
  }

  if (self->_score)
  {
    v25 = [(_SFPBSearchSuggestion *)self score];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"score"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"score"];
    }
  }

  v28 = [MEMORY[0x1E695DF90] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = self->_serverFeatures;
  v30 = [(NSDictionary *)v29 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v46 + 1) + 8 * j);
        v35 = [(NSDictionary *)self->_serverFeatures objectForKeyedSubscript:v34];
        [v28 setObject:v35 forKeyedSubscript:v34];
      }

      v31 = [(NSDictionary *)v29 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v31);
  }

  [v3 setObject:v28 forKeyedSubscript:@"serverFeatures"];
  if (self->_suggestion)
  {
    v36 = [(_SFPBSearchSuggestion *)self suggestion];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"suggestion"];
  }

  if (self->_topicIdentifier)
  {
    v38 = [(_SFPBSearchSuggestion *)self topicIdentifier];
    v39 = [v38 copy];
    [v3 setObject:v39 forKeyedSubscript:@"topicIdentifier"];
  }

  if (self->_type)
  {
    v40 = [(_SFPBSearchSuggestion *)self type];
    if (v40 >= 0x11)
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v40];
    }

    else
    {
      v41 = off_1E7ACE3C0[v40];
    }

    [v3 setObject:v41 forKeyedSubscript:@"type"];
  }

  if (self->_utteranceText)
  {
    v42 = [(_SFPBSearchSuggestion *)self utteranceText];
    v43 = [v42 copy];
    [v3 setObject:v43 forKeyedSubscript:@"utteranceText"];
  }

  v44 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_suggestion hash];
  v5 = [(NSString *)self->_query hash];
  v6 = [(_SFPBGraphicalFloat *)self->_score hash];
  v7 = 2654435761 * self->_type;
  v8 = [(NSArray *)self->_duplicateSuggestions hash];
  v9 = [(NSString *)self->_topicIdentifier hash];
  v10 = [(NSString *)self->_bundleIdentifier hash];
  if (self->_previouslyEngaged)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v7;
  v13 = v10 ^ v11 ^ [(NSString *)self->_fbr hash];
  v14 = v13 ^ [(NSString *)self->_scopedSearchApplicationBundleIdentifier hash];
  v15 = v12 ^ v14 ^ [(NSString *)self->_utteranceText hash];
  v16 = [(NSString *)self->_detailText hash];
  return v15 ^ v16 ^ [(NSDictionary *)self->_serverFeatures hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_64;
  }

  v5 = [(_SFPBSearchSuggestion *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v7 = [(_SFPBSearchSuggestion *)self identifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBSearchSuggestion *)self identifier];
    v10 = [v4 identifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self suggestion];
  v6 = [v4 suggestion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v12 = [(_SFPBSearchSuggestion *)self suggestion];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBSearchSuggestion *)self suggestion];
    v15 = [v4 suggestion];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self query];
  v6 = [v4 query];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v17 = [(_SFPBSearchSuggestion *)self query];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBSearchSuggestion *)self query];
    v20 = [v4 query];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self score];
  v6 = [v4 score];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v22 = [(_SFPBSearchSuggestion *)self score];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBSearchSuggestion *)self score];
    v25 = [v4 score];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_64;
  }

  v5 = [(_SFPBSearchSuggestion *)self duplicateSuggestions];
  v6 = [v4 duplicateSuggestions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v28 = [(_SFPBSearchSuggestion *)self duplicateSuggestions];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBSearchSuggestion *)self duplicateSuggestions];
    v31 = [v4 duplicateSuggestions];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self topicIdentifier];
  v6 = [v4 topicIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v33 = [(_SFPBSearchSuggestion *)self topicIdentifier];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBSearchSuggestion *)self topicIdentifier];
    v36 = [v4 topicIdentifier];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v38 = [(_SFPBSearchSuggestion *)self bundleIdentifier];
  if (v38)
  {
    v39 = v38;
    v40 = [(_SFPBSearchSuggestion *)self bundleIdentifier];
    v41 = [v4 bundleIdentifier];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  previouslyEngaged = self->_previouslyEngaged;
  if (previouslyEngaged != [v4 previouslyEngaged])
  {
    goto LABEL_64;
  }

  v5 = [(_SFPBSearchSuggestion *)self fbr];
  v6 = [v4 fbr];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v44 = [(_SFPBSearchSuggestion *)self fbr];
  if (v44)
  {
    v45 = v44;
    v46 = [(_SFPBSearchSuggestion *)self fbr];
    v47 = [v4 fbr];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  v6 = [v4 scopedSearchApplicationBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v49 = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  if (v49)
  {
    v50 = v49;
    v51 = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
    v52 = [v4 scopedSearchApplicationBundleIdentifier];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self utteranceText];
  v6 = [v4 utteranceText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v54 = [(_SFPBSearchSuggestion *)self utteranceText];
  if (v54)
  {
    v55 = v54;
    v56 = [(_SFPBSearchSuggestion *)self utteranceText];
    v57 = [v4 utteranceText];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self detailText];
  v6 = [v4 detailText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v59 = [(_SFPBSearchSuggestion *)self detailText];
  if (v59)
  {
    v60 = v59;
    v61 = [(_SFPBSearchSuggestion *)self detailText];
    v62 = [v4 detailText];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSearchSuggestion *)self serverFeatures];
  v6 = [v4 serverFeatures];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_63:

    goto LABEL_64;
  }

  v64 = [(_SFPBSearchSuggestion *)self serverFeatures];
  if (!v64)
  {

LABEL_67:
    v69 = 1;
    goto LABEL_65;
  }

  v65 = v64;
  v66 = [(_SFPBSearchSuggestion *)self serverFeatures];
  v67 = [v4 serverFeatures];
  v68 = [v66 isEqual:v67];

  if (v68)
  {
    goto LABEL_67;
  }

LABEL_64:
  v69 = 0;
LABEL_65:

  return v69;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSearchSuggestion *)self identifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBSearchSuggestion *)self suggestion];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBSearchSuggestion *)self query];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBSearchSuggestion *)self score];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBSearchSuggestion *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  v9 = [(_SFPBSearchSuggestion *)self duplicateSuggestions];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v15 = [(_SFPBSearchSuggestion *)self topicIdentifier];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBSearchSuggestion *)self bundleIdentifier];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSearchSuggestion *)self previouslyEngaged])
  {
    PBDataWriterWriteBOOLField();
  }

  v17 = [(_SFPBSearchSuggestion *)self fbr];
  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = [(_SFPBSearchSuggestion *)self utteranceText];
  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  v20 = [(_SFPBSearchSuggestion *)self detailText];
  if (v20)
  {
    PBDataWriterWriteStringField();
  }

  v21 = [(_SFPBSearchSuggestion *)self serverFeatures];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = self->_serverFeatures;
  v23 = [(NSDictionary *)v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v30 + 1) + 8 * j);
        PBDataWriterPlaceMark();
        PBDataWriterWriteStringField();
        v28 = [v21 objectForKeyedSubscript:v27];
        [v28 doubleValue];
        PBDataWriterWriteDoubleField();

        PBDataWriterRecallMark();
      }

      v24 = [(NSDictionary *)v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v24);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)setServerFeatures:(double)a3 forKey:(id)a4
{
  v10 = a4;
  serverFeatures = self->_serverFeatures;
  if (!serverFeatures)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_serverFeatures;
    self->_serverFeatures = v7;

    serverFeatures = self->_serverFeatures;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(NSDictionary *)serverFeatures setObject:v9 forKey:v10];
}

- (BOOL)getServerFeatures:(double *)a3 forKey:(id)a4
{
  v5 = [(NSDictionary *)self->_serverFeatures objectForKeyedSubscript:a4];
  v6 = v5;
  if (a3 && v5)
  {
    [v5 doubleValue];
    *a3 = v7;
  }

  return v6 != 0;
}

- (void)setServerFeatures:(id)a3
{
  v4 = [a3 copy];
  serverFeatures = self->_serverFeatures;
  self->_serverFeatures = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDetailText:(id)a3
{
  v4 = [a3 copy];
  detailText = self->_detailText;
  self->_detailText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUtteranceText:(id)a3
{
  v4 = [a3 copy];
  utteranceText = self->_utteranceText;
  self->_utteranceText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setScopedSearchApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  scopedSearchApplicationBundleIdentifier = self->_scopedSearchApplicationBundleIdentifier;
  self->_scopedSearchApplicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFbr:(id)a3
{
  v4 = [a3 copy];
  fbr = self->_fbr;
  self->_fbr = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTopicIdentifier:(id)a3
{
  v4 = [a3 copy];
  topicIdentifier = self->_topicIdentifier;
  self->_topicIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addDuplicateSuggestions:(id)a3
{
  v4 = a3;
  duplicateSuggestions = self->_duplicateSuggestions;
  v8 = v4;
  if (!duplicateSuggestions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_duplicateSuggestions;
    self->_duplicateSuggestions = v6;

    v4 = v8;
    duplicateSuggestions = self->_duplicateSuggestions;
  }

  [(NSArray *)duplicateSuggestions addObject:v4];
}

- (void)setDuplicateSuggestions:(id)a3
{
  v4 = [a3 copy];
  duplicateSuggestions = self->_duplicateSuggestions;
  self->_duplicateSuggestions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setQuery:(id)a3
{
  v4 = [a3 copy];
  query = self->_query;
  self->_query = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSuggestion:(id)a3
{
  v4 = [a3 copy];
  suggestion = self->_suggestion;
  self->_suggestion = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end