@interface SFSearchSuggestion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSearchSuggestion)initWithCoder:(id)coder;
- (SFSearchSuggestion)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSearchSuggestion

- (SFSearchSuggestion)initWithProtobuf:(id)protobuf
{
  v47 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v45.receiver = self;
  v45.super_class = SFSearchSuggestion;
  v5 = [(SFSearchSuggestion *)&v45 init];
  if (v5)
  {
    identifier = [protobufCopy identifier];

    if (identifier)
    {
      identifier2 = [protobufCopy identifier];
      [(SFSearchSuggestion *)v5 setIdentifier:identifier2];
    }

    suggestion = [protobufCopy suggestion];

    if (suggestion)
    {
      suggestion2 = [protobufCopy suggestion];
      [(SFSearchSuggestion *)v5 setSuggestion:suggestion2];
    }

    query = [protobufCopy query];

    if (query)
    {
      query2 = [protobufCopy query];
      [(SFSearchSuggestion *)v5 setQuery:query2];
    }

    score = [protobufCopy score];

    if (score)
    {
      score2 = [protobufCopy score];
      [score2 doubleValue];
      [(SFSearchSuggestion *)v5 setScore:?];
    }

    if ([protobufCopy type])
    {
      -[SFSearchSuggestion setType:](v5, "setType:", [protobufCopy type]);
    }

    duplicateSuggestions = [protobufCopy duplicateSuggestions];
    if (duplicateSuggestions)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    duplicateSuggestions2 = [protobufCopy duplicateSuggestions];
    v17 = [duplicateSuggestions2 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(duplicateSuggestions2);
          }

          v21 = [[SFSearchSuggestion alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [duplicateSuggestions2 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v18);
    }

    [(SFSearchSuggestion *)v5 setDuplicateSuggestions:v15];
    topicIdentifier = [protobufCopy topicIdentifier];

    if (topicIdentifier)
    {
      topicIdentifier2 = [protobufCopy topicIdentifier];
      [(SFSearchSuggestion *)v5 setTopicIdentifier:topicIdentifier2];
    }

    bundleIdentifier = [protobufCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [protobufCopy bundleIdentifier];
      [(SFSearchSuggestion *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    if ([protobufCopy previouslyEngaged])
    {
      -[SFSearchSuggestion setPreviouslyEngaged:](v5, "setPreviouslyEngaged:", [protobufCopy previouslyEngaged]);
    }

    v26 = [protobufCopy fbr];

    if (v26)
    {
      v27 = [protobufCopy fbr];
      [(SFSearchSuggestion *)v5 setFbr:v27];
    }

    scopedSearchApplicationBundleIdentifier = [protobufCopy scopedSearchApplicationBundleIdentifier];

    if (scopedSearchApplicationBundleIdentifier)
    {
      scopedSearchApplicationBundleIdentifier2 = [protobufCopy scopedSearchApplicationBundleIdentifier];
      [(SFSearchSuggestion *)v5 setScopedSearchApplicationBundleIdentifier:scopedSearchApplicationBundleIdentifier2];
    }

    utteranceText = [protobufCopy utteranceText];

    if (utteranceText)
    {
      utteranceText2 = [protobufCopy utteranceText];
      [(SFSearchSuggestion *)v5 setUtteranceText:utteranceText2];
    }

    detailText = [protobufCopy detailText];

    if (detailText)
    {
      detailText2 = [protobufCopy detailText];
      [(SFSearchSuggestion *)v5 setDetailText:detailText2];
    }

    serverFeatures = [protobufCopy serverFeatures];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __60__SFSearchSuggestion_ProtobufInitializer__initWithProtobuf___block_invoke;
    v39[3] = &unk_1E7ACDB40;
    v35 = v5;
    v40 = v35;
    [serverFeatures enumerateKeysAndObjectsUsingBlock:v39];

    v36 = v35;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

void __60__SFSearchSuggestion_ProtobufInitializer__initWithProtobuf___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 serverFeatures];
  [v7 setObject:v5 forKey:v6];
}

- (unint64_t)hash
{
  identifier = [(SFSearchSuggestion *)self identifier];
  v3 = [identifier hash];
  suggestion = [(SFSearchSuggestion *)self suggestion];
  v28 = [suggestion hash] ^ v3;
  query = [(SFSearchSuggestion *)self query];
  v27 = [query hash];
  [(SFSearchSuggestion *)self score];
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  *v5.i64 = round(v4);
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v29 = (*vbslq_s8(vnegq_f64(v7), v6, v5).i64 * 2654435760.0) + vcvtd_n_u64_f64(v4 - *v5.i64, 0x40uLL);
  type = [(SFSearchSuggestion *)self type];
  duplicateSuggestions = [(SFSearchSuggestion *)self duplicateSuggestions];
  v23 = [duplicateSuggestions hash];
  topicIdentifier = [(SFSearchSuggestion *)self topicIdentifier];
  v22 = [topicIdentifier hash];
  bundleIdentifier = [(SFSearchSuggestion *)self bundleIdentifier];
  v21 = [bundleIdentifier hash];
  previouslyEngaged = [(SFSearchSuggestion *)self previouslyEngaged];
  v9 = [(SFSearchSuggestion *)self fbr];
  v10 = [v9 hash];
  scopedSearchApplicationBundleIdentifier = [(SFSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  v12 = [scopedSearchApplicationBundleIdentifier hash];
  utteranceText = [(SFSearchSuggestion *)self utteranceText];
  v14 = [utteranceText hash];
  detailText = [(SFSearchSuggestion *)self detailText];
  v16 = [detailText hash];
  serverFeatures = [(SFSearchSuggestion *)self serverFeatures];
  v18 = v28 ^ v27 ^ type ^ v23 ^ v22 ^ v21 ^ previouslyEngaged ^ v10 ^ v12 ^ v14 ^ v16 ^ [serverFeatures hash];

  return v18 ^ v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_76;
  }

  if (![(SFSearchSuggestion *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_76;
  }

  v5 = equalCopy;
  identifier = [(SFSearchSuggestion *)self identifier];
  identifier2 = [(SFSearchSuggestion *)v5 identifier];
  v119 = identifier2 == 0;
  v120 = identifier != 0;
  if (v120 == v119)
  {
    v117 = 0uLL;
    memset(v118, 0, sizeof(v118));
    v10 = 0;
    memset(v115, 0, sizeof(v115));
    v116 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v123, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  identifier3 = [(SFSearchSuggestion *)self identifier];
  v8 = identifier3 != 0;
  v114 = identifier3;
  if (identifier3)
  {
    identifier4 = [(SFSearchSuggestion *)self identifier];
    identifier5 = [(SFSearchSuggestion *)v5 identifier];
    v109 = identifier4;
    if (![identifier4 isEqual:?])
    {
      v117 = 0uLL;
      memset(v118, 0, 28);
      v10 = 0;
      memset(v115, 0, sizeof(v115));
      v116 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v123, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      HIDWORD(v118[3]) = 1;
      goto LABEL_15;
    }
  }

  suggestion = [(SFSearchSuggestion *)self suggestion];
  suggestion2 = [(SFSearchSuggestion *)v5 suggestion];
  HIDWORD(v118[3]) = v8;
  if ((suggestion != 0) == (suggestion2 == 0))
  {
    v118[0] = 0;
    *(&v118[2] + 4) = 0;
    v116 = 0;
    v117 = 0uLL;
    *(&v118[1] + 4) = 0;
    v10 = 0;
    memset(v115, 0, sizeof(v115));
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v123, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v118[1]) = 1;
    goto LABEL_15;
  }

  suggestion3 = [(SFSearchSuggestion *)self suggestion];
  v21 = suggestion3 != 0;
  v107 = suggestion3;
  if (suggestion3)
  {
    suggestion4 = [(SFSearchSuggestion *)self suggestion];
    suggestion5 = [(SFSearchSuggestion *)v5 suggestion];
    v104 = suggestion4;
    if (![suggestion4 isEqual:?])
    {
      v117 = 0uLL;
      v10 = 0;
      memset(v115, 0, sizeof(v115));
      v116 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v123, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v118[1] = 1uLL;
      v118[0] = 0x100000000;
      LODWORD(v118[3]) = 1;
      goto LABEL_15;
    }

    LODWORD(v118[3]) = v21;
  }

  else
  {
    LODWORD(v118[3]) = 0;
  }

  query = [(SFSearchSuggestion *)self query];
  query2 = [(SFSearchSuggestion *)v5 query];
  if ((query != 0) == (query2 == 0))
  {
    v116 = 0;
    *&v117 = 0;
    *(&v117 + 1) = 0x100000000;
    v10 = 0;
    memset(v115, 0, sizeof(v115));
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v123, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *&v118[1] = 1uLL;
    v118[0] = 0x100000000;
    goto LABEL_15;
  }

  query3 = [(SFSearchSuggestion *)self query];
  v36 = query3 != 0;
  v102 = query3;
  if (query3)
  {
    query4 = [(SFSearchSuggestion *)self query];
    query5 = [(SFSearchSuggestion *)v5 query];
    v101 = query4;
    if (![query4 isEqual:?])
    {
      *(&v117 + 4) = 0;
      *(&v118[1] + 4) = 0;
      v10 = 0;
      memset(v115, 0, sizeof(v115));
      v116 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v123, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v118[1]) = 1;
      v118[0] = 0x100000000;
      HIDWORD(v117) = 1;
      LODWORD(v117) = 1;
      HIDWORD(v118[2]) = 1;
      goto LABEL_15;
    }
  }

  [(SFSearchSuggestion *)self score];
  v39 = v38;
  [(SFSearchSuggestion *)v5 score];
  HIDWORD(v118[2]) = v36;
  if (vabdd_f64(v39, v40) >= 2.22044605e-16 || (v41 = [(SFSearchSuggestion *)self type], v41 != [(SFSearchSuggestion *)v5 type]))
  {
    *(&v117 + 4) = 0;
    *(&v118[1] + 4) = 0;
    v10 = 0;
    memset(v115, 0, sizeof(v115));
    v116 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v123, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v118[1]) = 1;
    v118[0] = 0x100000000;
    HIDWORD(v117) = 1;
    LODWORD(v117) = 1;
    goto LABEL_15;
  }

  duplicateSuggestions = [(SFSearchSuggestion *)self duplicateSuggestions];
  duplicateSuggestions2 = [(SFSearchSuggestion *)v5 duplicateSuggestions];
  if ((duplicateSuggestions != 0) == (duplicateSuggestions2 == 0))
  {
    v118[0] = 0x100000000;
    *(&v118[1] + 4) = 0;
    v10 = 0;
    memset(v115, 0, sizeof(v115));
    v116 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v123, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v118[1]) = 1;
    HIDWORD(v117) = 1;
    LODWORD(v117) = 1;
    *(&v117 + 4) = 0x100000000;
    goto LABEL_15;
  }

  duplicateSuggestions3 = [(SFSearchSuggestion *)self duplicateSuggestions];
  v43 = duplicateSuggestions3 != 0;
  v97 = duplicateSuggestions3;
  if (duplicateSuggestions3)
  {
    duplicateSuggestions4 = [(SFSearchSuggestion *)self duplicateSuggestions];
    duplicateSuggestions5 = [(SFSearchSuggestion *)v5 duplicateSuggestions];
    v94 = duplicateSuggestions4;
    if (![duplicateSuggestions4 isEqual:?])
    {
      v10 = 0;
      memset(v115, 0, sizeof(v115));
      v116 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v123, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v118[1]) = 1;
      *(&v118[1] + 4) = 0x100000000;
      v118[0] = 0x100000001;
      *(&v117 + 1) = 0x100000001;
      *&v117 = 1;
      goto LABEL_15;
    }

    LODWORD(v118[2]) = v43;
  }

  else
  {
    LODWORD(v118[2]) = 0;
  }

  topicIdentifier = [(SFSearchSuggestion *)self topicIdentifier];
  topicIdentifier2 = [(SFSearchSuggestion *)v5 topicIdentifier];
  if ((topicIdentifier != 0) == (topicIdentifier2 == 0))
  {
    memset(v115, 0, sizeof(v115));
    v116 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v123, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v118[1] = 1;
    v118[0] = 0x100000001;
    *(&v117 + 1) = 0x100000001;
    *&v117 = 1;
    v10 = 1;
    goto LABEL_15;
  }

  topicIdentifier3 = [(SFSearchSuggestion *)self topicIdentifier];
  v46 = topicIdentifier3 != 0;
  v92 = topicIdentifier3;
  if (topicIdentifier3)
  {
    topicIdentifier4 = [(SFSearchSuggestion *)self topicIdentifier];
    topicIdentifier5 = [(SFSearchSuggestion *)v5 topicIdentifier];
    v89 = topicIdentifier4;
    if (![topicIdentifier4 isEqual:?])
    {
      memset(v115, 0, sizeof(v115));
      v116 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      memset(v123, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v118[1] = 0x100000001;
      *(&v117 + 1) = 0x100000001;
      *&v117 = 0x100000001;
      v118[0] = 0x100000001;
      v10 = 1;
      goto LABEL_15;
    }

    HIDWORD(v118[1]) = v46;
  }

  else
  {
    HIDWORD(v118[1]) = 0;
  }

  bundleIdentifier = [(SFSearchSuggestion *)self bundleIdentifier];
  bundleIdentifier2 = [(SFSearchSuggestion *)v5 bundleIdentifier];
  if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
  {
    *&v115[4] = 0;
    v116 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    memset(v123, 0, 20);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v118[1]) = 1;
    *(&v117 + 1) = 0x100000001;
    *&v117 = 0x100000001;
    v118[0] = 0x100000001;
    v10 = 1;
    *v115 = 1;
    goto LABEL_15;
  }

  bundleIdentifier3 = [(SFSearchSuggestion *)self bundleIdentifier];
  LODWORD(v123[2]) = bundleIdentifier3 != 0;
  v87 = bundleIdentifier3;
  if (bundleIdentifier3)
  {
    bundleIdentifier4 = [(SFSearchSuggestion *)self bundleIdentifier];
    bundleIdentifier5 = [(SFSearchSuggestion *)v5 bundleIdentifier];
    v86 = bundleIdentifier4;
    if (![bundleIdentifier4 isEqual:?])
    {
      v11 = 0;
      v123[1] = 0;
      *&v115[4] = 0;
      v12 = 0;
      v13 = 0;
      v123[0] = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v118[1]) = 1;
      *(&v117 + 1) = 0x100000001;
      *&v117 = 0x100000001;
      v118[0] = 0x100000001;
      v10 = 1;
      *v115 = 1;
      v116 = 1;
      LODWORD(v123[2]) = 1;
      goto LABEL_15;
    }
  }

  previouslyEngaged = [(SFSearchSuggestion *)self previouslyEngaged];
  if (previouslyEngaged != [(SFSearchSuggestion *)v5 previouslyEngaged])
  {
    v11 = 0;
    v123[1] = 0;
    *&v115[4] = 0;
    v12 = 0;
    v13 = 0;
    v123[0] = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v118[1]) = 1;
    *(&v117 + 1) = 0x100000001;
    *&v117 = 0x100000001;
    v118[0] = 0x100000001;
    v10 = 1;
    *v115 = 1;
    v116 = 1;
    goto LABEL_15;
  }

  v84 = [(SFSearchSuggestion *)self fbr];
  v113 = v5;
  v83 = [(SFSearchSuggestion *)v5 fbr];
  if ((v84 != 0) == (v83 == 0))
  {
    v11 = 0;
    v123[1] = 0;
    *&v115[4] = 0;
    v12 = 0;
    v13 = 0;
    v123[0] = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v118[1]) = 1;
    *(&v117 + 1) = 0x100000001;
    *&v117 = 0x100000001;
    v118[0] = 0x100000001;
    v10 = 1;
    *v115 = 1;
    v116 = 0x100000001;
  }

  else
  {
    v51 = [(SFSearchSuggestion *)self fbr];
    HIDWORD(v123[1]) = v51 != 0;
    v82 = v51;
    if (!v51 || (-[SFSearchSuggestion fbr](self, "fbr"), v52 = objc_claimAutoreleasedReturnValue(), -[SFSearchSuggestion fbr](v113, "fbr"), v78 = objc_claimAutoreleasedReturnValue(), v79 = v52, [v52 isEqual:?]))
    {
      scopedSearchApplicationBundleIdentifier = [(SFSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
      scopedSearchApplicationBundleIdentifier2 = [(SFSearchSuggestion *)v113 scopedSearchApplicationBundleIdentifier];
      if ((scopedSearchApplicationBundleIdentifier != 0) == (scopedSearchApplicationBundleIdentifier2 == 0))
      {
        v12 = 0;
        *(v123 + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        LODWORD(v123[0]) = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        LODWORD(v118[1]) = 1;
        *(&v117 + 1) = 0x100000001;
        *&v117 = 0x100000001;
        v118[0] = 0x100000001;
        v10 = 1;
        *v115 = 0x100000001;
        *&v115[8] = 0;
        v116 = 0x100000001;
        v11 = 1;
      }

      else
      {
        scopedSearchApplicationBundleIdentifier3 = [(SFSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
        LODWORD(v123[1]) = scopedSearchApplicationBundleIdentifier3 != 0;
        v77 = scopedSearchApplicationBundleIdentifier3;
        if (!scopedSearchApplicationBundleIdentifier3 || (-[SFSearchSuggestion scopedSearchApplicationBundleIdentifier](self, "scopedSearchApplicationBundleIdentifier"), v54 = objc_claimAutoreleasedReturnValue(), -[SFSearchSuggestion scopedSearchApplicationBundleIdentifier](v113, "scopedSearchApplicationBundleIdentifier"), v73 = objc_claimAutoreleasedReturnValue(), v74 = v54, [v54 isEqual:?]))
        {
          utteranceText = [(SFSearchSuggestion *)self utteranceText];
          utteranceText2 = [(SFSearchSuggestion *)v113 utteranceText];
          if ((utteranceText != 0) == (utteranceText2 == 0))
          {
            v13 = 0;
            v123[0] = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            LODWORD(v118[1]) = 1;
            *(&v117 + 1) = 0x100000001;
            *&v117 = 0x100000001;
            v118[0] = 0x100000001;
            v10 = 1;
            *v115 = 0x100000001;
            v116 = 0x100000001;
            v11 = 1;
            v12 = 1;
            *&v115[8] = 1;
          }

          else
          {
            utteranceText3 = [(SFSearchSuggestion *)self utteranceText];
            HIDWORD(v123[0]) = utteranceText3 != 0;
            v72 = utteranceText3;
            if (!utteranceText3 || (-[SFSearchSuggestion utteranceText](self, "utteranceText"), v56 = objc_claimAutoreleasedReturnValue(), -[SFSearchSuggestion utteranceText](v113, "utteranceText"), v68 = objc_claimAutoreleasedReturnValue(), v69 = v56, [v56 isEqual:?]))
            {
              detailText = [(SFSearchSuggestion *)self detailText];
              detailText2 = [(SFSearchSuggestion *)v113 detailText];
              if ((detailText != 0) == (detailText2 == 0))
              {
                v15 = 0;
                LODWORD(v123[0]) = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                LODWORD(v118[1]) = 1;
                *(&v117 + 1) = 0x100000001;
                *&v117 = 0x100000001;
                v118[0] = 0x100000001;
                v10 = 1;
                *v115 = 0x100000001;
                v116 = 0x100000001;
                v11 = 1;
                v12 = 1;
                *&v115[8] = 1;
                v13 = 1;
                v14 = 1;
              }

              else
              {
                detailText3 = [(SFSearchSuggestion *)self detailText];
                LODWORD(v123[0]) = detailText3 != 0;
                v67 = detailText3;
                if (!detailText3 || (-[SFSearchSuggestion detailText](self, "detailText"), v58 = objc_claimAutoreleasedReturnValue(), -[SFSearchSuggestion detailText](v113, "detailText"), v63 = objc_claimAutoreleasedReturnValue(), v64 = v58, [v58 isEqual:?]))
                {
                  serverFeatures = [(SFSearchSuggestion *)self serverFeatures];
                  serverFeatures2 = [(SFSearchSuggestion *)v113 serverFeatures];
                  if ((serverFeatures != 0) == (serverFeatures2 == 0))
                  {
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    LODWORD(v118[1]) = 1;
                    *(&v117 + 1) = 0x100000001;
                    *&v117 = 0x100000001;
                    v118[0] = 0x100000001;
                    v10 = 1;
                    *v115 = 0x100000001;
                    v116 = 0x100000001;
                    v11 = 1;
                    v12 = 1;
                    *&v115[8] = 1;
                    v13 = 1;
                    v14 = 1;
                    v15 = 1;
                    v16 = 1;
                  }

                  else
                  {
                    serverFeatures3 = [(SFSearchSuggestion *)self serverFeatures];
                    if (serverFeatures3)
                    {
                      serverFeatures4 = [(SFSearchSuggestion *)self serverFeatures];
                      v5 = v113;
                      serverFeatures5 = [(SFSearchSuggestion *)v113 serverFeatures];
                      v61 = serverFeatures4;
                      v19 = [serverFeatures4 isEqual:serverFeatures5];
                      v6 = serverFeatures5;
                      v18 = 1;
                      LODWORD(v118[1]) = 1;
                      *(&v117 + 1) = 0x100000001;
                      *&v117 = 0x100000001;
                      v118[0] = 0x100000001;
                      v10 = 1;
                      *v115 = 0x100000001;
                      v116 = 0x100000001;
                      v11 = 1;
                      v12 = 1;
                      *&v115[8] = 1;
                      v13 = 1;
                      v14 = 1;
                      v15 = 1;
                      v16 = 1;
                      v17 = 1;
                      goto LABEL_15;
                    }

                    serverFeatures3 = 0;
                    v18 = 0;
                    LODWORD(v118[1]) = 1;
                    *(&v117 + 1) = 0x100000001;
                    *&v117 = 0x100000001;
                    v118[0] = 0x100000001;
                    v10 = 1;
                    *v115 = 0x100000001;
                    v116 = 0x100000001;
                    v11 = 1;
                    v12 = 1;
                    *&v115[8] = 1;
                    v13 = 1;
                    v14 = 1;
                    v15 = 1;
                    v16 = 1;
                    v17 = 1;
                    v19 = 1;
                  }
                }

                else
                {
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  LODWORD(v118[1]) = 1;
                  *(&v117 + 1) = 0x100000001;
                  *&v117 = 0x100000001;
                  v118[0] = 0x100000001;
                  v10 = 1;
                  *v115 = 0x100000001;
                  v116 = 0x100000001;
                  v11 = 1;
                  v12 = 1;
                  *&v115[8] = 1;
                  v13 = 1;
                  v14 = 1;
                  v15 = 1;
                  LODWORD(v123[0]) = 1;
                }
              }
            }

            else
            {
              v14 = 0;
              v15 = 0;
              v123[0] = 0x100000000;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              LODWORD(v118[1]) = 1;
              *(&v117 + 1) = 0x100000001;
              *&v117 = 0x100000001;
              v118[0] = 0x100000001;
              v10 = 1;
              *v115 = 0x100000001;
              v116 = 0x100000001;
              v11 = 1;
              v12 = 1;
              *&v115[8] = 1;
              v13 = 1;
            }
          }
        }

        else
        {
          v13 = 0;
          v123[0] = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          LODWORD(v118[1]) = 1;
          *(&v117 + 1) = 0x100000001;
          *&v117 = 0x100000001;
          v118[0] = 0x100000001;
          v10 = 1;
          *v115 = 0x100000001;
          *&v115[8] = 0;
          v116 = 0x100000001;
          v11 = 1;
          v12 = 1;
          LODWORD(v123[1]) = 1;
        }
      }
    }

    else
    {
      *&v115[4] = 0;
      v12 = 0;
      *(v123 + 4) = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      LODWORD(v123[0]) = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      LODWORD(v118[1]) = 1;
      *(&v117 + 1) = 0x100000001;
      *&v117 = 0x100000001;
      v118[0] = 0x100000001;
      v10 = 1;
      *v115 = 1;
      v116 = 0x100000001;
      v11 = 1;
      HIDWORD(v123[1]) = 1;
    }
  }

  v5 = v113;
LABEL_15:
  if (v18)
  {
    v112 = equalCopy;
    v23 = v19;
    v24 = v14;
    v25 = v10;
    v26 = v5;
    v27 = v12;
    v28 = v13;
    v29 = v11;
    v30 = v16;
    v31 = v15;
    v32 = v17;

    v33 = v32;
    v15 = v31;
    v16 = v30;
    v11 = v29;
    v13 = v28;
    v12 = v27;
    v5 = v26;
    v10 = v25;
    v14 = v24;
    v19 = v23;
    equalCopy = v112;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  else if (!v17)
  {
LABEL_17:
    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v16)
  {
LABEL_18:
  }

LABEL_19:
  if (LODWORD(v123[0]))
  {

    if (!v15)
    {
      goto LABEL_21;
    }

LABEL_81:

    if (!v14)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v15)
  {
    goto LABEL_81;
  }

LABEL_21:
  if (v14)
  {
LABEL_22:
  }

LABEL_23:
  if (HIDWORD(v123[0]))
  {
  }

  if (v13)
  {
  }

  if (*&v115[8])
  {
  }

  if (LODWORD(v123[1]))
  {
  }

  if (v12)
  {
  }

  if (*&v115[4])
  {
  }

  if (HIDWORD(v123[1]))
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v116))
  {
  }

  if (LODWORD(v123[2]))
  {
  }

  if (v116)
  {
  }

  if (*v115)
  {
  }

  if (HIDWORD(v118[1]))
  {
  }

  if (DWORD1(v117))
  {
  }

  if (v10)
  {
  }

  if (LODWORD(v118[2]))
  {
  }

  if (LODWORD(v118[0]))
  {
  }

  if (DWORD2(v117))
  {
  }

  if (HIDWORD(v118[2]))
  {
  }

  if (v117)
  {
  }

  if (HIDWORD(v117))
  {
  }

  if (LODWORD(v118[3]))
  {
  }

  if (HIDWORD(v118[0]))
  {
  }

  if (LODWORD(v118[1]))
  {
  }

  if (HIDWORD(v118[3]))
  {
  }

  if (v120 != v119)
  {
  }

LABEL_76:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  identifier = [(SFSearchSuggestion *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  suggestion = [(SFSearchSuggestion *)self suggestion];
  v8 = [suggestion copy];
  [v4 setSuggestion:v8];

  query = [(SFSearchSuggestion *)self query];
  v10 = [query copy];
  [v4 setQuery:v10];

  [(SFSearchSuggestion *)self score];
  [v4 setScore:?];
  [v4 setType:{-[SFSearchSuggestion type](self, "type")}];
  duplicateSuggestions = [(SFSearchSuggestion *)self duplicateSuggestions];
  v12 = [duplicateSuggestions copy];
  [v4 setDuplicateSuggestions:v12];

  topicIdentifier = [(SFSearchSuggestion *)self topicIdentifier];
  v14 = [topicIdentifier copy];
  [v4 setTopicIdentifier:v14];

  bundleIdentifier = [(SFSearchSuggestion *)self bundleIdentifier];
  v16 = [bundleIdentifier copy];
  [v4 setBundleIdentifier:v16];

  [v4 setPreviouslyEngaged:{-[SFSearchSuggestion previouslyEngaged](self, "previouslyEngaged")}];
  v17 = [(SFSearchSuggestion *)self fbr];
  v18 = [v17 copy];
  [v4 setFbr:v18];

  scopedSearchApplicationBundleIdentifier = [(SFSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  v20 = [scopedSearchApplicationBundleIdentifier copy];
  [v4 setScopedSearchApplicationBundleIdentifier:v20];

  utteranceText = [(SFSearchSuggestion *)self utteranceText];
  v22 = [utteranceText copy];
  [v4 setUtteranceText:v22];

  detailText = [(SFSearchSuggestion *)self detailText];
  v24 = [detailText copy];
  [v4 setDetailText:v24];

  serverFeatures = [(SFSearchSuggestion *)self serverFeatures];
  v26 = [serverFeatures copy];
  [v4 setServerFeatures:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSearchSuggestion alloc] initWithFacade:self];
  jsonData = [(_SFPBSearchSuggestion *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSearchSuggestion alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSearchSuggestion *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBSearchSuggestion alloc] initWithFacade:self];
  data = [(_SFPBSearchSuggestion *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSearchSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSearchSuggestion alloc] initWithData:v5];
  v7 = [(SFSearchSuggestion *)self initWithProtobuf:v6];

  return v7;
}

@end