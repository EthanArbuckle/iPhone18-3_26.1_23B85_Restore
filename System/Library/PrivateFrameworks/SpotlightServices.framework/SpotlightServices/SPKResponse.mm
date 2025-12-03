@interface SPKResponse
- (SPKResponse)initWithQueryID:(unint64_t)d kind:(int)kind sourceKind:(int)sourceKind sections:(id)sections groupedResults:(id)results supportedFilters:(id)filters error:(id)error;
- (id)debugDescription;
- (id)description;
@end

@implementation SPKResponse

- (SPKResponse)initWithQueryID:(unint64_t)d kind:(int)kind sourceKind:(int)sourceKind sections:(id)sections groupedResults:(id)results supportedFilters:(id)filters error:(id)error
{
  v46 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  resultsCopy = results;
  filtersCopy = filters;
  errorCopy = error;
  v44.receiver = self;
  v44.super_class = SPKResponse;
  v19 = [(SPKResponse *)&v44 init];
  v20 = v19;
  if (v19)
  {
    v19->_queryId = d;
    v21 = [resultsCopy copy];
    groupedResults = v20->_groupedResults;
    v20->_groupedResults = v21;

    v20->_kind = kind;
    v20->_sourceKind = sourceKind;
    objc_storeStrong(&v20->_error, error);
    v23 = objc_opt_new();
    rankingConfiguration = v20->_rankingConfiguration;
    v20->_rankingConfiguration = v23;

    objc_storeStrong(&v20->_supportedFilters, filters);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = sectionsCopy;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v38 = errorCopy;
      v39 = filtersCopy;
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

          mutableDeepCopy = [v31 mutableDeepCopy];
          [(NSArray *)v28 addObject:mutableDeepCopy];
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v27);

      errorCopy = v38;
      filtersCopy = v39;
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
    userQueryString = [(SPKResponse *)self userQueryString];
    userQueryString3 = userQueryString;
    if (userQueryString)
    {
      v8 = userQueryString;
    }

    else
    {
      v8 = @"nil";
    }

    error = [(SPKResponse *)self error];
    [v4 stringWithFormat:@"<response:%@ userQueryString:%@ error:%@>", v5, v8, error];
    goto LABEL_7;
  }

  userQueryString2 = [(SPKResponse *)self userQueryString];

  v13 = MEMORY[0x1E696AEC0];
  v5 = SPKStringFromResponseKind([(SPKResponse *)self kind]);
  if (userQueryString2)
  {
    userQueryString3 = [(SPKResponse *)self userQueryString];
    error = [(SPKResponse *)self sections];
    [v13 stringWithFormat:@"<response:%@ userQueryString:%@ sections:%@>", v5, userQueryString3, error];
    v10 = LABEL_7:;

    goto LABEL_8;
  }

  userQueryString3 = [(SPKResponse *)self sections];
  v10 = [v13 stringWithFormat:@"<response:%@ sections:%@>", v5, userQueryString3];
LABEL_8:

  return v10;
}

- (id)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = SPKStringFromSourceKind([(SPKResponse *)self sourceKind]);
  v3 = SPKStringFromResponseKind([(SPKResponse *)self kind]);
  userQueryString = [(SPKResponse *)self userQueryString];
  queryId = [(SPKResponse *)self queryId];
  topHitIsIn = [(SPKResponse *)self topHitIsIn];
  noChangeInResultsSinceLastResponse = [(SPKResponse *)self noChangeInResultsSinceLastResponse];
  parsecFinished = [(SPKResponse *)self parsecFinished];
  metadataFinished = [(SPKResponse *)self metadataFinished];
  corespotlightFinished = [(SPKResponse *)self corespotlightFinished];
  queryResponseComplete = [(SPKResponse *)self queryResponseComplete];
  sections = [(SPKResponse *)self sections];
  v13 = [v16 stringWithFormat:@"<response:[%@][%@], userQuery:%@, queryId:%lu, topHitIsIn:%d, noChange:%d, parsec:%d, metadata:%d, corespotlight:%d, complete:%d, sections:%@>", v15, v3, userQueryString, queryId, topHitIsIn, noChangeInResultsSinceLastResponse, parsecFinished, metadataFinished, corespotlightFinished, queryResponseComplete, sections];

  return v13;
}

@end