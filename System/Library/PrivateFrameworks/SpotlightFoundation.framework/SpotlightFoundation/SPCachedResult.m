@interface SPCachedResult
- (SPCachedResult)initWithContactName:(id)a3 contactIdentifier:(id)a4 score:(id)a5 searchString:(id)a6;
- (SPCachedResult)initWithEngagedResult:(id)a3;
- (SPCachedResult)initWithPersonName:(id)a3 personQueryIdentifier:(id)a4 score:(id)a5 searchString:(id)a6;
- (SPCachedResult)initWithResult:(id)a3 identifier:(id)a4 bundleIdentifier:(id)a5 protectionClass:(id)a6 searchString:(id)a7;
- (SPCachedResult)initWithResult:(id)a3 topic:(id)a4 title:(id)a5 searchString:(id)a6;
- (SPCachedResult)initWithTitle:(id)a3 type:(int)a4 score:(id)a5 searchString:(id)a6;
- (id)recentTopic;
- (id)searchResult;
- (void)recentTopic;
@end

@implementation SPCachedResult

- (SPCachedResult)initWithResult:(id)a3 topic:(id)a4 title:(id)a5 searchString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = SPCachedResult;
  v14 = [(SPCachedResult *)&v31 init];
  if (v14)
  {
    v15 = truncatedTitle(v12);
    title = v14->_title;
    v14->_title = v15;

    v17 = truncatedSearchString(v13);
    searchString = v14->_searchString;
    v14->_searchString = v17;

    v14->_type = [v10 type];
    [v10 rankingScore];
    v14->_score = v19;
    v20 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v14->_engagementTime;
    v14->_engagementTime = v20;

    v22 = v11;
    if (v22)
    {
LABEL_8:
      v30 = 0;
      v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v30];
      v26 = v30;
      encodedNormalizedTopic = v14->_encodedNormalizedTopic;
      v14->_encodedNormalizedTopic = v25;

      if (!v26)
      {
LABEL_13:

        goto LABEL_14;
      }

      p_super = logForSPLogCategoryCaching();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [SPCachedResult initWithResult:v10 topic:? title:? searchString:?];
      }

LABEL_12:

      goto LABEL_13;
    }

    v23 = [v10 type];
    if ((v23 - 28) >= 2)
    {
      if (v23 != 8)
      {
        goto LABEL_11;
      }

      v24 = [SPLocalTopic localTopicWithDictionaryResult:v10];
    }

    else
    {
      v24 = [objc_alloc(MEMORY[0x277D4C558]) initWithType:8 query:v14->_title identifier:&stru_287C3D120];
    }

    v22 = v24;
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = 0;
    v26 = 0;
    p_super = &v14->_encodedNormalizedTopic->super;
    v14->_encodedNormalizedTopic = 0;
    goto LABEL_12;
  }

LABEL_14:

  return v14;
}

- (SPCachedResult)initWithResult:(id)a3 identifier:(id)a4 bundleIdentifier:(id)a5 protectionClass:(id)a6 searchString:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v35.receiver = self;
  v35.super_class = SPCachedResult;
  v17 = [(SPCachedResult *)&v35 init];
  if (v17)
  {
    v18 = truncatedTitle(v14);
    title = v17->_title;
    v17->_title = v18;

    v20 = truncatedSearchString(v16);
    searchString = v17->_searchString;
    v17->_searchString = v20;

    v17->_type = [v12 type];
    [v12 rankingScore];
    v17->_score = v22;
    v23 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v17->_engagementTime;
    v17->_engagementTime = v23;

    v33 = v13;
    v25 = topicIdentifierWithIdentifierAndDetail(v13, v14, v15, 0, v17->_type, 1);
    v26 = searchResultWithTopicIdentifier(v25, v17->_score);
    v27 = [objc_alloc(MEMORY[0x277D4C428]) initWithResult:v26 identifier:v25];
    v34 = 0;
    v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v34];
    v29 = v34;
    encodedNormalizedTopic = v17->_encodedNormalizedTopic;
    v17->_encodedNormalizedTopic = v28;

    if (v29)
    {
      v31 = logForSPLogCategoryCaching();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [SPCachedResult initWithResult:v12 identifier:? bundleIdentifier:? protectionClass:? searchString:?];
      }
    }

    v13 = v33;
  }

  return v17;
}

- (SPCachedResult)initWithPersonName:(id)a3 personQueryIdentifier:(id)a4 score:(id)a5 searchString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v37.receiver = self;
  v37.super_class = SPCachedResult;
  v14 = [(SPCachedResult *)&v37 init];
  if (v14)
  {
    v15 = truncatedTitle(v10);
    title = v14->_title;
    v14->_title = v15;

    v17 = truncatedSearchString(v13);
    searchString = v14->_searchString;
    v14->_searchString = v17;

    v14->_type = 38;
    [v12 doubleValue];
    v14->_score = v19;
    v20 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v14->_engagementTime;
    v14->_engagementTime = v20;

    v22 = topicIdentifierWithPersonQueryIdentifierAndDetail(v11, 0, v14->_type, 1);
    v23 = [SPLocalTopic localTopicWithTopicIdentifier:v22];
    v36 = 0;
    v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v36];
    v25 = v36;
    encodedNormalizedTopic = v14->_encodedNormalizedTopic;
    v14->_encodedNormalizedTopic = v24;

    if (v25)
    {
      v27 = logForSPLogCategoryCaching();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(SPCachedResult *)v27 initWithPersonName:v28 personQueryIdentifier:v29 score:v30 searchString:v31, v32, v33, v34];
      }
    }
  }

  return v14;
}

- (SPCachedResult)initWithContactName:(id)a3 contactIdentifier:(id)a4 score:(id)a5 searchString:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v38.receiver = self;
  v38.super_class = SPCachedResult;
  v14 = [(SPCachedResult *)&v38 init];
  if (v14)
  {
    v15 = truncatedTitle(v10);
    title = v14->_title;
    v14->_title = v15;

    v17 = truncatedSearchString(v13);
    searchString = v14->_searchString;
    v14->_searchString = v17;

    v14->_type = 32;
    [v12 doubleValue];
    v14->_score = v19;
    v20 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v14->_engagementTime;
    v14->_engagementTime = v20;

    if (![v11 length] || v10 && (objc_msgSend(v11, "isEqualToString:", v10) & 1) != 0)
    {
      v14->_type = 38;
      v22 = topicIdentifierWithContactInfoAndDetail(v10, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], 0, 0x26u, 1u);
    }

    else
    {
      v22 = topicIdentifierWithContactIdentifierAndDetail(v10, v11, 0, v14->_type, 1);
    }

    v23 = v22;
    v24 = [SPLocalTopic localTopicWithTopicIdentifier:v22];
    v37 = 0;
    v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v37];
    v26 = v37;
    encodedNormalizedTopic = v14->_encodedNormalizedTopic;
    v14->_encodedNormalizedTopic = v25;

    if (v26)
    {
      v28 = logForSPLogCategoryCaching();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(SPCachedResult *)v28 initWithContactName:v29 contactIdentifier:v30 score:v31 searchString:v32, v33, v34, v35];
      }
    }
  }

  return v14;
}

- (SPCachedResult)initWithTitle:(id)a3 type:(int)a4 score:(id)a5 searchString:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v37.receiver = self;
  v37.super_class = SPCachedResult;
  v13 = [(SPCachedResult *)&v37 init];
  if (v13)
  {
    v14 = truncatedTitle(v10);
    title = v13->_title;
    v13->_title = v14;

    v16 = truncatedSearchString(v12);
    searchString = v13->_searchString;
    v13->_searchString = v16;

    v13->_type = a4;
    [v11 doubleValue];
    v13->_score = v18;
    v19 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v13->_engagementTime;
    v13->_engagementTime = v19;

    if (a4 <= 0x1F && ((1 << a4) & 0xF0018000) != 0)
    {
      type = v13->_type;
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v13->_score];
      v23 = [SPLocalTopic localTopicWithTitle:v10 type:type score:v22 isCached:1];
    }

    else
    {
      v23 = [objc_alloc(MEMORY[0x277D4C558]) initWithType:7 query:v13->_title identifier:&stru_287C3D120];
    }

    v36 = 0;
    v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v36];
    v25 = v36;
    encodedNormalizedTopic = v13->_encodedNormalizedTopic;
    v13->_encodedNormalizedTopic = v24;

    if (v25)
    {
      v27 = logForSPLogCategoryCaching();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(SPCachedResult *)v27 initWithTitle:v28 type:v29 score:v30 searchString:v31, v32, v33, v34];
      }
    }
  }

  return v13;
}

- (SPCachedResult)initWithEngagedResult:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SPCachedResult;
  v5 = [(SPCachedResult *)&v15 init];
  if (v5)
  {
    v6 = [v4 title];
    title = v5->_title;
    v5->_title = v6;

    v5->_type = [v4 type];
    [v4 score];
    v5->_score = v8;
    [v4 freshnessScore];
    v5->_freshnessScore = v9;
    v10 = [v4 engagementTime];
    engagementTime = v5->_engagementTime;
    v5->_engagementTime = v10;

    v12 = [v4 encodedNormalizedTopic];
    encodedNormalizedTopic = v5->_encodedNormalizedTopic;
    v5->_encodedNormalizedTopic = v12;
  }

  return v5;
}

- (id)recentTopic
{
  if (self->_encodedNormalizedTopic)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = objc_opt_class();
    encodedNormalizedTopic = self->_encodedNormalizedTopic;
    v18 = 0;
    v6 = [v3 unarchivedObjectOfClass:v4 fromData:encodedNormalizedTopic error:&v18];
    v7 = v18;
    v8 = v6 == 0;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v10 = v7;
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v8 = 1;
  }

  v11 = logForSPLogCategoryCaching();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(SPCachedResult *)v10 recentTopic];
  }

  if (v8)
  {
    v12 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v13 = [SPRecentTopic alloc];
  v14 = MEMORY[0x277CCABB0];
  [(SPCachedResult *)self freshnessScore];
  v15 = [v14 numberWithDouble:?];
  v16 = [(SPCachedResult *)self engagementTime];
  v12 = [(SPRecentTopic *)v13 initWithTopic:v6 score:v15 engagementDate:v16];

LABEL_14:

  return v12;
}

- (id)searchResult
{
  v2 = [(SPCachedResult *)self recentTopic];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 topic];
    v4 = [v3 result];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)initWithResult:(void *)a1 topic:title:searchString:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 type];
  OUTLINED_FUNCTION_2(&dword_26B79D000, v1, v2, "spotlight cache: could not encode cached topic: %d", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithResult:(void *)a1 identifier:bundleIdentifier:protectionClass:searchString:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 type];
  OUTLINED_FUNCTION_2(&dword_26B79D000, v1, v2, "spotlight cache: could not encode local cached topic: %d", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)recentTopic
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B79D000, a2, OS_LOG_TYPE_ERROR, "spotlight cache: could not encode generic topic. error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end