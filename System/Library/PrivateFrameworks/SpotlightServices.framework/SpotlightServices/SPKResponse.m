@interface SPKResponse
- (SPKResponse)initWithQueryID:(unint64_t)a3 kind:(int)a4 sourceKind:(int)a5 sections:(id)a6 groupedResults:(id)a7 supportedFilters:(id)a8 error:(id)a9;
- (id)debugDescription;
- (id)description;
@end

@implementation SPKResponse

- (SPKResponse)initWithQueryID:(unint64_t)a3 kind:(int)a4 sourceKind:(int)a5 sections:(id)a6 groupedResults:(id)a7 supportedFilters:(id)a8 error:(id)a9
{
  v46 = *MEMORY[0x1E69E9840];
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v44.receiver = self;
  v44.super_class = SPKResponse;
  v19 = [(SPKResponse *)&v44 init];
  v20 = v19;
  if (v19)
  {
    v19->_queryId = a3;
    v21 = [v16 copy];
    groupedResults = v20->_groupedResults;
    v20->_groupedResults = v21;

    v20->_kind = a4;
    v20->_sourceKind = a5;
    objc_storeStrong(&v20->_error, a9);
    v23 = objc_opt_new();
    rankingConfiguration = v20->_rankingConfiguration;
    v20->_rankingConfiguration = v23;

    objc_storeStrong(&v20->_supportedFilters, a8);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = v15;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v38 = v18;
      v39 = v17;
      v28 = 0;
      v29 = *v41;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v40 + 1) + 8 * i);
          if (!v28)
          {
            v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
          }

          v32 = [v31 mutableDeepCopy];
          [(NSArray *)v28 addObject:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v27);

      v18 = v38;
      v17 = v39;
      if (v28)
      {
        v33 = [(NSArray *)v28 copy];
        sections = v20->_sections;
        v20->_sections = v33;

LABEL_15:
        goto LABEL_16;
      }
    }

    else
    {
    }

    v35 = [v25 copy];
    v28 = v20->_sections;
    v20->_sections = v35;
    goto LABEL_15;
  }

LABEL_16:

  v36 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)description
{
  if (![(SPKResponse *)self kind]|| ([(SPKResponse *)self error], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = SPKStringFromResponseKind([(SPKResponse *)self kind]);
    v6 = [(SPKResponse *)self userQueryString];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"nil";
    }

    v9 = [(SPKResponse *)self error];
    [v4 stringWithFormat:@"<response:%@ userQueryString:%@ error:%@>", v5, v8, v9];
    goto LABEL_7;
  }

  v12 = [(SPKResponse *)self userQueryString];

  v13 = MEMORY[0x1E696AEC0];
  v5 = SPKStringFromResponseKind([(SPKResponse *)self kind]);
  if (v12)
  {
    v7 = [(SPKResponse *)self userQueryString];
    v9 = [(SPKResponse *)self sections];
    [v13 stringWithFormat:@"<response:%@ userQueryString:%@ sections:%@>", v5, v7, v9];
    v10 = LABEL_7:;

    goto LABEL_8;
  }

  v7 = [(SPKResponse *)self sections];
  v10 = [v13 stringWithFormat:@"<response:%@ sections:%@>", v5, v7];
LABEL_8:

  return v10;
}

- (id)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = SPKStringFromSourceKind([(SPKResponse *)self sourceKind]);
  v3 = SPKStringFromResponseKind([(SPKResponse *)self kind]);
  v4 = [(SPKResponse *)self userQueryString];
  v5 = [(SPKResponse *)self queryId];
  v6 = [(SPKResponse *)self topHitIsIn];
  v7 = [(SPKResponse *)self noChangeInResultsSinceLastResponse];
  v8 = [(SPKResponse *)self parsecFinished];
  v9 = [(SPKResponse *)self metadataFinished];
  v10 = [(SPKResponse *)self corespotlightFinished];
  v11 = [(SPKResponse *)self queryResponseComplete];
  v12 = [(SPKResponse *)self sections];
  v13 = [v16 stringWithFormat:@"<response:[%@][%@], userQuery:%@, queryId:%lu, topHitIsIn:%d, noChange:%d, parsec:%d, metadata:%d, corespotlight:%d, complete:%d, sections:%@>", v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end