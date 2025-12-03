@interface PRSRankingConfiguration
- (PRSRankingConfiguration)init;
- (double)queryDependentProbabilityForCategory:(id)category;
- (double)queryIndependentProbabilityForCategory:(id)category;
- (float)engagementProbabilityForCategory:(id)category;
- (float)maxEngagementProbability;
- (void)appendToExistingCEPBlocklist:(id)blocklist;
- (void)mergeWith:(id)with;
- (void)updateQueryDependentProbabilityAndBlocklistSetWith:(id)with;
@end

@implementation PRSRankingConfiguration

- (PRSRankingConfiguration)init
{
  v8.receiver = self;
  v8.super_class = PRSRankingConfiguration;
  v2 = [(PRSRankingConfiguration *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(PRSRankingConfiguration *)v2 setQueryDependentCategoryProbabilities:v3];

    v4 = objc_opt_new();
    [(PRSRankingConfiguration *)v2 setCepBlocklistSet:v4];

    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    -[PRSRankingConfiguration setAllow_coreduet_influence:](v2, "setAllow_coreduet_influence:", [v5 integerForKey:@"usedCount"] > 19);

    LODWORD(v6) = -1.0;
    [(PRSRankingConfiguration *)v2 setNumAppsDeduped:v6];
    v2->_mutex._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  rankingQueries = [(PRSRankingConfiguration *)self rankingQueries];
  selfCopy = withCopy;
  if (rankingQueries)
  {
    selfCopy = self;
  }

  rankingQueries2 = [(PRSRankingConfiguration *)selfCopy rankingQueries];
  [(PRSRankingConfiguration *)self setRankingQueries:rankingQueries2];

  parsecCategoryOrder = [(PRSRankingConfiguration *)self parsecCategoryOrder];
  selfCopy2 = withCopy;
  if (parsecCategoryOrder)
  {
    selfCopy2 = self;
  }

  parsecCategoryOrder2 = [(PRSRankingConfiguration *)selfCopy2 parsecCategoryOrder];
  [(PRSRankingConfiguration *)self setParsecCategoryOrder:parsecCategoryOrder2];

  if ([(PRSRankingConfiguration *)withCopy disableResultTruncation])
  {
    [(PRSRankingConfiguration *)self setDisableResultTruncation:[(PRSRankingConfiguration *)withCopy disableResultTruncation]];
  }

  sqfData = [(PRSRankingConfiguration *)withCopy sqfData];
  if (sqfData)
  {
    [(PRSRankingConfiguration *)self updateWithSQFData:sqfData];
    v11 = [sqfData objectForKey:@"local_result_quality_threshold"];
    localResultQualityThreshold = self->_localResultQualityThreshold;
    self->_localResultQualityThreshold = v11;
  }

  serverFeatures = [(PRSRankingConfiguration *)withCopy serverFeatures];

  if (serverFeatures)
  {
    serverFeatures2 = [(PRSRankingConfiguration *)withCopy serverFeatures];
    [(PRSRankingConfiguration *)self setServerFeatures:serverFeatures2];
  }

  queryIndependentCategoryProbabilities = [(PRSRankingConfiguration *)withCopy queryIndependentCategoryProbabilities];
  if (queryIndependentCategoryProbabilities)
  {
    v16 = queryIndependentCategoryProbabilities;
    queryIndependentCategoryProbabilities2 = [(PRSRankingConfiguration *)self queryIndependentCategoryProbabilities];

    if (!queryIndependentCategoryProbabilities2)
    {
      queryIndependentCategoryProbabilities3 = [(PRSRankingConfiguration *)withCopy queryIndependentCategoryProbabilities];
      [(PRSRankingConfiguration *)self setQueryIndependentCategoryProbabilities:queryIndependentCategoryProbabilities3];

      queryIndependentCategoryProbabilities4 = [(PRSRankingConfiguration *)self queryIndependentCategoryProbabilities];
      blocklist = [queryIndependentCategoryProbabilities4 blocklist];
      [(PRSRankingConfiguration *)self appendToExistingCEPBlocklist:blocklist];
    }
  }

  [(PRSRankingConfiguration *)self numAppsDeduped];
  selfCopy3 = withCopy;
  if (v22 != -1.0)
  {
    selfCopy3 = self;
  }

  [(PRSRankingConfiguration *)selfCopy3 numAppsDeduped];
  [(PRSRankingConfiguration *)self setNumAppsDeduped:?];
  serverRelevanceScores = [(PRSRankingConfiguration *)withCopy serverRelevanceScores];

  if (serverRelevanceScores)
  {
    serverRelevanceScores2 = [(PRSRankingConfiguration *)withCopy serverRelevanceScores];
    [(PRSRankingConfiguration *)self setServerRelevanceScores:serverRelevanceScores2];

    [(PRSRankingConfiguration *)withCopy serverRelevanceScoreThreshold];
    [(PRSRankingConfiguration *)self setServerRelevanceScoreThreshold:?];
  }

  iFunScores = [(PRSRankingConfiguration *)withCopy iFunScores];

  if (iFunScores)
  {
    iFunScores2 = [(PRSRankingConfiguration *)withCopy iFunScores];
    [(PRSRankingConfiguration *)self setIFunScores:iFunScores2];
  }
}

- (void)appendToExistingCEPBlocklist:(id)blocklist
{
  blocklistCopy = blocklist;
  [(PRSRankingConfiguration *)self lock];
  cepBlocklistSet = [(PRSRankingConfiguration *)self cepBlocklistSet];
  [cepBlocklistSet addObjectsFromArray:blocklistCopy];

  [(PRSRankingConfiguration *)self unlock];
}

- (void)updateQueryDependentProbabilityAndBlocklistSetWith:(id)with
{
  v32 = *MEMORY[0x1E69E9840];
  withCopy = with;
  [(PRSRankingConfiguration *)self lock];
  v24 = withCopy;
  v5 = [withCopy prs_dictionaryForKey:@"stats"];
  v6 = [v5 prs_arrayForKey:@"cep_long"];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    v7 = *v28;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 objectForKey:@"cid"];
        lowercaseString = [v10 lowercaseString];

        queryDependentCategoryProbabilities = [(PRSRankingConfiguration *)self queryDependentCategoryProbabilities];
        v13 = [v9 objectForKey:@"e"];
        [queryDependentCategoryProbabilities setObject:v13 forKey:lowercaseString];

        cepBlocklistSet = [v9 objectForKey:@"e"];
        [cepBlocklistSet doubleValue];
        if (v15 < 0.0)
        {
          v16 = [v9 objectForKey:@"cid"];
          [v16 lowercaseString];
          v17 = v7;
          v19 = v18 = self;
          v20 = [v19 hasPrefix:@"com.apple."];

          self = v18;
          v7 = v17;

          if (v20)
          {
            goto LABEL_10;
          }

          cepBlocklistSet = [(PRSRankingConfiguration *)self cepBlocklistSet];
          v21 = [v9 objectForKey:@"cid"];
          lowercaseString2 = [v21 lowercaseString];
          [cepBlocklistSet addObject:lowercaseString2];
        }

LABEL_10:
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  [(PRSRankingConfiguration *)self unlock];
  v23 = *MEMORY[0x1E69E9840];
}

- (float)engagementProbabilityForCategory:(id)category
{
  [(PRSRankingConfiguration *)self queryDependentProbabilityForCategory:category];
  v4 = v3;
  v5 = v3 == -1.0;
  result = -1.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)queryDependentProbabilityForCategory:(id)category
{
  categoryCopy = category;
  [(PRSRankingConfiguration *)self lock];
  queryDependentCategoryProbabilities = self->_queryDependentCategoryProbabilities;
  lowercaseString = [categoryCopy lowercaseString];

  v7 = [(NSMutableDictionary *)queryDependentCategoryProbabilities objectForKey:lowercaseString];

  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  [(PRSRankingConfiguration *)self unlock];

  return v9;
}

- (double)queryIndependentProbabilityForCategory:(id)category
{
  categoryCopy = category;
  [(SSPlistDataReader *)self->_queryIndependentCategoryProbabilities doubleValueForBundle:categoryCopy];
  v6 = v5;
  if (v5 < 0.0)
  {
    -[SSPlistDataReader doubleValueForKey:](self->_queryIndependentCategoryProbabilities, "doubleValueForKey:", [categoryCopy UTF8String]);
    if (v7 >= 0.0)
    {
      v6 = v7;
    }

    else
    {
      v6 = -1.0;
    }
  }

  return v6;
}

- (float)maxEngagementProbability
{
  v21 = *MEMORY[0x1E69E9840];
  [(PRSRankingConfiguration *)self lock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)self->_queryDependentCategoryProbabilities allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = -1.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [(NSMutableDictionary *)self->_queryDependentCategoryProbabilities objectForKey:*(*(&v16 + 1) + 8 * i)];
        v10 = v9;
        if (v9)
        {
          [v9 doubleValue];
          if (v11 > v7 && v11 >= 0.0)
          {
            v7 = v11;
          }
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
    v13 = v7;
  }

  else
  {
    v13 = -1.0;
  }

  [(PRSRankingConfiguration *)self unlock];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end