@interface PRSRankingConfiguration
- (PRSRankingConfiguration)init;
- (double)queryDependentProbabilityForCategory:(id)a3;
- (double)queryIndependentProbabilityForCategory:(id)a3;
- (float)engagementProbabilityForCategory:(id)a3;
- (float)maxEngagementProbability;
- (void)appendToExistingCEPBlocklist:(id)a3;
- (void)mergeWith:(id)a3;
- (void)updateQueryDependentProbabilityAndBlocklistSetWith:(id)a3;
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

- (void)mergeWith:(id)a3
{
  v27 = a3;
  v4 = [(PRSRankingConfiguration *)self rankingQueries];
  v5 = v27;
  if (v4)
  {
    v5 = self;
  }

  v6 = [(PRSRankingConfiguration *)v5 rankingQueries];
  [(PRSRankingConfiguration *)self setRankingQueries:v6];

  v7 = [(PRSRankingConfiguration *)self parsecCategoryOrder];
  v8 = v27;
  if (v7)
  {
    v8 = self;
  }

  v9 = [(PRSRankingConfiguration *)v8 parsecCategoryOrder];
  [(PRSRankingConfiguration *)self setParsecCategoryOrder:v9];

  if ([(PRSRankingConfiguration *)v27 disableResultTruncation])
  {
    [(PRSRankingConfiguration *)self setDisableResultTruncation:[(PRSRankingConfiguration *)v27 disableResultTruncation]];
  }

  v10 = [(PRSRankingConfiguration *)v27 sqfData];
  if (v10)
  {
    [(PRSRankingConfiguration *)self updateWithSQFData:v10];
    v11 = [v10 objectForKey:@"local_result_quality_threshold"];
    localResultQualityThreshold = self->_localResultQualityThreshold;
    self->_localResultQualityThreshold = v11;
  }

  v13 = [(PRSRankingConfiguration *)v27 serverFeatures];

  if (v13)
  {
    v14 = [(PRSRankingConfiguration *)v27 serverFeatures];
    [(PRSRankingConfiguration *)self setServerFeatures:v14];
  }

  v15 = [(PRSRankingConfiguration *)v27 queryIndependentCategoryProbabilities];
  if (v15)
  {
    v16 = v15;
    v17 = [(PRSRankingConfiguration *)self queryIndependentCategoryProbabilities];

    if (!v17)
    {
      v18 = [(PRSRankingConfiguration *)v27 queryIndependentCategoryProbabilities];
      [(PRSRankingConfiguration *)self setQueryIndependentCategoryProbabilities:v18];

      v19 = [(PRSRankingConfiguration *)self queryIndependentCategoryProbabilities];
      v20 = [v19 blocklist];
      [(PRSRankingConfiguration *)self appendToExistingCEPBlocklist:v20];
    }
  }

  [(PRSRankingConfiguration *)self numAppsDeduped];
  v21 = v27;
  if (v22 != -1.0)
  {
    v21 = self;
  }

  [(PRSRankingConfiguration *)v21 numAppsDeduped];
  [(PRSRankingConfiguration *)self setNumAppsDeduped:?];
  v23 = [(PRSRankingConfiguration *)v27 serverRelevanceScores];

  if (v23)
  {
    v24 = [(PRSRankingConfiguration *)v27 serverRelevanceScores];
    [(PRSRankingConfiguration *)self setServerRelevanceScores:v24];

    [(PRSRankingConfiguration *)v27 serverRelevanceScoreThreshold];
    [(PRSRankingConfiguration *)self setServerRelevanceScoreThreshold:?];
  }

  v25 = [(PRSRankingConfiguration *)v27 iFunScores];

  if (v25)
  {
    v26 = [(PRSRankingConfiguration *)v27 iFunScores];
    [(PRSRankingConfiguration *)self setIFunScores:v26];
  }
}

- (void)appendToExistingCEPBlocklist:(id)a3
{
  v4 = a3;
  [(PRSRankingConfiguration *)self lock];
  v5 = [(PRSRankingConfiguration *)self cepBlocklistSet];
  [v5 addObjectsFromArray:v4];

  [(PRSRankingConfiguration *)self unlock];
}

- (void)updateQueryDependentProbabilityAndBlocklistSetWith:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PRSRankingConfiguration *)self lock];
  v24 = v4;
  v5 = [v4 prs_dictionaryForKey:@"stats"];
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
        v11 = [v10 lowercaseString];

        v12 = [(PRSRankingConfiguration *)self queryDependentCategoryProbabilities];
        v13 = [v9 objectForKey:@"e"];
        [v12 setObject:v13 forKey:v11];

        v14 = [v9 objectForKey:@"e"];
        [v14 doubleValue];
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

          v14 = [(PRSRankingConfiguration *)self cepBlocklistSet];
          v21 = [v9 objectForKey:@"cid"];
          v22 = [v21 lowercaseString];
          [v14 addObject:v22];
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

- (float)engagementProbabilityForCategory:(id)a3
{
  [(PRSRankingConfiguration *)self queryDependentProbabilityForCategory:a3];
  v4 = v3;
  v5 = v3 == -1.0;
  result = -1.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)queryDependentProbabilityForCategory:(id)a3
{
  v4 = a3;
  [(PRSRankingConfiguration *)self lock];
  queryDependentCategoryProbabilities = self->_queryDependentCategoryProbabilities;
  v6 = [v4 lowercaseString];

  v7 = [(NSMutableDictionary *)queryDependentCategoryProbabilities objectForKey:v6];

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

- (double)queryIndependentProbabilityForCategory:(id)a3
{
  v4 = a3;
  [(SSPlistDataReader *)self->_queryIndependentCategoryProbabilities doubleValueForBundle:v4];
  v6 = v5;
  if (v5 < 0.0)
  {
    -[SSPlistDataReader doubleValueForKey:](self->_queryIndependentCategoryProbabilities, "doubleValueForKey:", [v4 UTF8String]);
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
  v3 = [(NSMutableDictionary *)self->_queryDependentCategoryProbabilities allKeys];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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