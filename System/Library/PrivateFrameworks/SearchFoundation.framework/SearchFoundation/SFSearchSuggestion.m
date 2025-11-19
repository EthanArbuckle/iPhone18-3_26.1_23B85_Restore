@interface SFSearchSuggestion
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSearchSuggestion)initWithCoder:(id)a3;
- (SFSearchSuggestion)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSearchSuggestion

- (SFSearchSuggestion)initWithProtobuf:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = SFSearchSuggestion;
  v5 = [(SFSearchSuggestion *)&v45 init];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(SFSearchSuggestion *)v5 setIdentifier:v7];
    }

    v8 = [v4 suggestion];

    if (v8)
    {
      v9 = [v4 suggestion];
      [(SFSearchSuggestion *)v5 setSuggestion:v9];
    }

    v10 = [v4 query];

    if (v10)
    {
      v11 = [v4 query];
      [(SFSearchSuggestion *)v5 setQuery:v11];
    }

    v12 = [v4 score];

    if (v12)
    {
      v13 = [v4 score];
      [v13 doubleValue];
      [(SFSearchSuggestion *)v5 setScore:?];
    }

    if ([v4 type])
    {
      -[SFSearchSuggestion setType:](v5, "setType:", [v4 type]);
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

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v16 = [v4 duplicateSuggestions];
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [[SFSearchSuggestion alloc] initWithProtobuf:*(*(&v41 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v18);
    }

    [(SFSearchSuggestion *)v5 setDuplicateSuggestions:v15];
    v22 = [v4 topicIdentifier];

    if (v22)
    {
      v23 = [v4 topicIdentifier];
      [(SFSearchSuggestion *)v5 setTopicIdentifier:v23];
    }

    v24 = [v4 bundleIdentifier];

    if (v24)
    {
      v25 = [v4 bundleIdentifier];
      [(SFSearchSuggestion *)v5 setBundleIdentifier:v25];
    }

    if ([v4 previouslyEngaged])
    {
      -[SFSearchSuggestion setPreviouslyEngaged:](v5, "setPreviouslyEngaged:", [v4 previouslyEngaged]);
    }

    v26 = [v4 fbr];

    if (v26)
    {
      v27 = [v4 fbr];
      [(SFSearchSuggestion *)v5 setFbr:v27];
    }

    v28 = [v4 scopedSearchApplicationBundleIdentifier];

    if (v28)
    {
      v29 = [v4 scopedSearchApplicationBundleIdentifier];
      [(SFSearchSuggestion *)v5 setScopedSearchApplicationBundleIdentifier:v29];
    }

    v30 = [v4 utteranceText];

    if (v30)
    {
      v31 = [v4 utteranceText];
      [(SFSearchSuggestion *)v5 setUtteranceText:v31];
    }

    v32 = [v4 detailText];

    if (v32)
    {
      v33 = [v4 detailText];
      [(SFSearchSuggestion *)v5 setDetailText:v33];
    }

    v34 = [v4 serverFeatures];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __60__SFSearchSuggestion_ProtobufInitializer__initWithProtobuf___block_invoke;
    v39[3] = &unk_1E7ACDB40;
    v35 = v5;
    v40 = v35;
    [v34 enumerateKeysAndObjectsUsingBlock:v39];

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
  v32 = [(SFSearchSuggestion *)self identifier];
  v3 = [v32 hash];
  v31 = [(SFSearchSuggestion *)self suggestion];
  v28 = [v31 hash] ^ v3;
  v30 = [(SFSearchSuggestion *)self query];
  v27 = [v30 hash];
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
  v24 = [(SFSearchSuggestion *)self type];
  v26 = [(SFSearchSuggestion *)self duplicateSuggestions];
  v23 = [v26 hash];
  v25 = [(SFSearchSuggestion *)self topicIdentifier];
  v22 = [v25 hash];
  v8 = [(SFSearchSuggestion *)self bundleIdentifier];
  v21 = [v8 hash];
  v20 = [(SFSearchSuggestion *)self previouslyEngaged];
  v9 = [(SFSearchSuggestion *)self fbr];
  v10 = [v9 hash];
  v11 = [(SFSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  v12 = [v11 hash];
  v13 = [(SFSearchSuggestion *)self utteranceText];
  v14 = [v13 hash];
  v15 = [(SFSearchSuggestion *)self detailText];
  v16 = [v15 hash];
  v17 = [(SFSearchSuggestion *)self serverFeatures];
  v18 = v28 ^ v27 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v10 ^ v12 ^ v14 ^ v16 ^ [v17 hash];

  return v18 ^ v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_76;
  }

  if (![(SFSearchSuggestion *)v4 isMemberOfClass:objc_opt_class()])
  {
    v19 = 0;
    goto LABEL_76;
  }

  v5 = v4;
  v122 = [(SFSearchSuggestion *)self identifier];
  v121 = [(SFSearchSuggestion *)v5 identifier];
  v119 = v121 == 0;
  v120 = v122 != 0;
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

  v7 = [(SFSearchSuggestion *)self identifier];
  v8 = v7 != 0;
  v114 = v7;
  if (v7)
  {
    v9 = [(SFSearchSuggestion *)self identifier];
    v108 = [(SFSearchSuggestion *)v5 identifier];
    v109 = v9;
    if (![v9 isEqual:?])
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

  v111 = [(SFSearchSuggestion *)self suggestion];
  v110 = [(SFSearchSuggestion *)v5 suggestion];
  HIDWORD(v118[3]) = v8;
  if ((v111 != 0) == (v110 == 0))
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

  v20 = [(SFSearchSuggestion *)self suggestion];
  v21 = v20 != 0;
  v107 = v20;
  if (v20)
  {
    v22 = [(SFSearchSuggestion *)self suggestion];
    v103 = [(SFSearchSuggestion *)v5 suggestion];
    v104 = v22;
    if (![v22 isEqual:?])
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

  v106 = [(SFSearchSuggestion *)self query];
  v105 = [(SFSearchSuggestion *)v5 query];
  if ((v106 != 0) == (v105 == 0))
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

  v35 = [(SFSearchSuggestion *)self query];
  v36 = v35 != 0;
  v102 = v35;
  if (v35)
  {
    v37 = [(SFSearchSuggestion *)self query];
    v100 = [(SFSearchSuggestion *)v5 query];
    v101 = v37;
    if (![v37 isEqual:?])
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

  v99 = [(SFSearchSuggestion *)self duplicateSuggestions];
  v98 = [(SFSearchSuggestion *)v5 duplicateSuggestions];
  if ((v99 != 0) == (v98 == 0))
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

  v42 = [(SFSearchSuggestion *)self duplicateSuggestions];
  v43 = v42 != 0;
  v97 = v42;
  if (v42)
  {
    v44 = [(SFSearchSuggestion *)self duplicateSuggestions];
    v93 = [(SFSearchSuggestion *)v5 duplicateSuggestions];
    v94 = v44;
    if (![v44 isEqual:?])
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

  v96 = [(SFSearchSuggestion *)self topicIdentifier];
  v95 = [(SFSearchSuggestion *)v5 topicIdentifier];
  if ((v96 != 0) == (v95 == 0))
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

  v45 = [(SFSearchSuggestion *)self topicIdentifier];
  v46 = v45 != 0;
  v92 = v45;
  if (v45)
  {
    v47 = [(SFSearchSuggestion *)self topicIdentifier];
    v88 = [(SFSearchSuggestion *)v5 topicIdentifier];
    v89 = v47;
    if (![v47 isEqual:?])
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

  v91 = [(SFSearchSuggestion *)self bundleIdentifier];
  v90 = [(SFSearchSuggestion *)v5 bundleIdentifier];
  if ((v91 != 0) == (v90 == 0))
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

  v48 = [(SFSearchSuggestion *)self bundleIdentifier];
  LODWORD(v123[2]) = v48 != 0;
  v87 = v48;
  if (v48)
  {
    v49 = [(SFSearchSuggestion *)self bundleIdentifier];
    v85 = [(SFSearchSuggestion *)v5 bundleIdentifier];
    v86 = v49;
    if (![v49 isEqual:?])
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

  v50 = [(SFSearchSuggestion *)self previouslyEngaged];
  if (v50 != [(SFSearchSuggestion *)v5 previouslyEngaged])
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
      v81 = [(SFSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
      v80 = [(SFSearchSuggestion *)v113 scopedSearchApplicationBundleIdentifier];
      if ((v81 != 0) == (v80 == 0))
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
        v53 = [(SFSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
        LODWORD(v123[1]) = v53 != 0;
        v77 = v53;
        if (!v53 || (-[SFSearchSuggestion scopedSearchApplicationBundleIdentifier](self, "scopedSearchApplicationBundleIdentifier"), v54 = objc_claimAutoreleasedReturnValue(), -[SFSearchSuggestion scopedSearchApplicationBundleIdentifier](v113, "scopedSearchApplicationBundleIdentifier"), v73 = objc_claimAutoreleasedReturnValue(), v74 = v54, [v54 isEqual:?]))
        {
          v76 = [(SFSearchSuggestion *)self utteranceText];
          v75 = [(SFSearchSuggestion *)v113 utteranceText];
          if ((v76 != 0) == (v75 == 0))
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
            v55 = [(SFSearchSuggestion *)self utteranceText];
            HIDWORD(v123[0]) = v55 != 0;
            v72 = v55;
            if (!v55 || (-[SFSearchSuggestion utteranceText](self, "utteranceText"), v56 = objc_claimAutoreleasedReturnValue(), -[SFSearchSuggestion utteranceText](v113, "utteranceText"), v68 = objc_claimAutoreleasedReturnValue(), v69 = v56, [v56 isEqual:?]))
            {
              v71 = [(SFSearchSuggestion *)self detailText];
              v70 = [(SFSearchSuggestion *)v113 detailText];
              if ((v71 != 0) == (v70 == 0))
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
                v57 = [(SFSearchSuggestion *)self detailText];
                LODWORD(v123[0]) = v57 != 0;
                v67 = v57;
                if (!v57 || (-[SFSearchSuggestion detailText](self, "detailText"), v58 = objc_claimAutoreleasedReturnValue(), -[SFSearchSuggestion detailText](v113, "detailText"), v63 = objc_claimAutoreleasedReturnValue(), v64 = v58, [v58 isEqual:?]))
                {
                  v66 = [(SFSearchSuggestion *)self serverFeatures];
                  v65 = [(SFSearchSuggestion *)v113 serverFeatures];
                  if ((v66 != 0) == (v65 == 0))
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
                    v62 = [(SFSearchSuggestion *)self serverFeatures];
                    if (v62)
                    {
                      v59 = [(SFSearchSuggestion *)self serverFeatures];
                      v5 = v113;
                      v60 = [(SFSearchSuggestion *)v113 serverFeatures];
                      v61 = v59;
                      v19 = [v59 isEqual:v60];
                      v6 = v60;
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

                    v62 = 0;
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
    v112 = v4;
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
    v4 = v112;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFSearchSuggestion *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  v7 = [(SFSearchSuggestion *)self suggestion];
  v8 = [v7 copy];
  [v4 setSuggestion:v8];

  v9 = [(SFSearchSuggestion *)self query];
  v10 = [v9 copy];
  [v4 setQuery:v10];

  [(SFSearchSuggestion *)self score];
  [v4 setScore:?];
  [v4 setType:{-[SFSearchSuggestion type](self, "type")}];
  v11 = [(SFSearchSuggestion *)self duplicateSuggestions];
  v12 = [v11 copy];
  [v4 setDuplicateSuggestions:v12];

  v13 = [(SFSearchSuggestion *)self topicIdentifier];
  v14 = [v13 copy];
  [v4 setTopicIdentifier:v14];

  v15 = [(SFSearchSuggestion *)self bundleIdentifier];
  v16 = [v15 copy];
  [v4 setBundleIdentifier:v16];

  [v4 setPreviouslyEngaged:{-[SFSearchSuggestion previouslyEngaged](self, "previouslyEngaged")}];
  v17 = [(SFSearchSuggestion *)self fbr];
  v18 = [v17 copy];
  [v4 setFbr:v18];

  v19 = [(SFSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  v20 = [v19 copy];
  [v4 setScopedSearchApplicationBundleIdentifier:v20];

  v21 = [(SFSearchSuggestion *)self utteranceText];
  v22 = [v21 copy];
  [v4 setUtteranceText:v22];

  v23 = [(SFSearchSuggestion *)self detailText];
  v24 = [v23 copy];
  [v4 setDetailText:v24];

  v25 = [(SFSearchSuggestion *)self serverFeatures];
  v26 = [v25 copy];
  [v4 setServerFeatures:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSearchSuggestion alloc] initWithFacade:self];
  v3 = [(_SFPBSearchSuggestion *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSearchSuggestion alloc] initWithFacade:self];
  v3 = [(_SFPBSearchSuggestion *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBSearchSuggestion alloc] initWithFacade:self];
  v5 = [(_SFPBSearchSuggestion *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFSearchSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSearchSuggestion alloc] initWithData:v5];
  v7 = [(SFSearchSuggestion *)self initWithProtobuf:v6];

  return v7;
}

@end