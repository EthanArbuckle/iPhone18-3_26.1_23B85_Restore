@interface SPCachedResult
- (SPCachedResult)initWithContactName:(id)name contactIdentifier:(id)identifier score:(id)score searchString:(id)string;
- (SPCachedResult)initWithEngagedResult:(id)result;
- (SPCachedResult)initWithPersonName:(id)name personQueryIdentifier:(id)identifier score:(id)score searchString:(id)string;
- (SPCachedResult)initWithResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class searchString:(id)string;
- (SPCachedResult)initWithResult:(id)result topic:(id)topic title:(id)title searchString:(id)string;
- (SPCachedResult)initWithTitle:(id)title type:(int)type score:(id)score searchString:(id)string;
- (id)recentTopic;
- (id)searchResult;
- (void)recentTopic;
@end

@implementation SPCachedResult

- (SPCachedResult)initWithResult:(id)result topic:(id)topic title:(id)title searchString:(id)string
{
  resultCopy = result;
  topicCopy = topic;
  titleCopy = title;
  stringCopy = string;
  v31.receiver = self;
  v31.super_class = SPCachedResult;
  v14 = [(SPCachedResult *)&v31 init];
  if (v14)
  {
    v15 = truncatedTitle(titleCopy);
    title = v14->_title;
    v14->_title = v15;

    v17 = truncatedSearchString(stringCopy);
    searchString = v14->_searchString;
    v14->_searchString = v17;

    v14->_type = [resultCopy type];
    [resultCopy rankingScore];
    v14->_score = v19;
    v20 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v14->_engagementTime;
    v14->_engagementTime = v20;

    v22 = topicCopy;
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
        [SPCachedResult initWithResult:resultCopy topic:? title:? searchString:?];
      }

LABEL_12:

      goto LABEL_13;
    }

    type = [resultCopy type];
    if ((type - 28) >= 2)
    {
      if (type != 8)
      {
        goto LABEL_11;
      }

      v24 = [SPLocalTopic localTopicWithDictionaryResult:resultCopy];
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

- (SPCachedResult)initWithResult:(id)result identifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class searchString:(id)string
{
  resultCopy = result;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  classCopy = class;
  stringCopy = string;
  v35.receiver = self;
  v35.super_class = SPCachedResult;
  v17 = [(SPCachedResult *)&v35 init];
  if (v17)
  {
    v18 = truncatedTitle(bundleIdentifierCopy);
    title = v17->_title;
    v17->_title = v18;

    v20 = truncatedSearchString(stringCopy);
    searchString = v17->_searchString;
    v17->_searchString = v20;

    v17->_type = [resultCopy type];
    [resultCopy rankingScore];
    v17->_score = v22;
    v23 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v17->_engagementTime;
    v17->_engagementTime = v23;

    v33 = identifierCopy;
    v25 = topicIdentifierWithIdentifierAndDetail(identifierCopy, bundleIdentifierCopy, classCopy, 0, v17->_type, 1);
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
        [SPCachedResult initWithResult:resultCopy identifier:? bundleIdentifier:? protectionClass:? searchString:?];
      }
    }

    identifierCopy = v33;
  }

  return v17;
}

- (SPCachedResult)initWithPersonName:(id)name personQueryIdentifier:(id)identifier score:(id)score searchString:(id)string
{
  nameCopy = name;
  identifierCopy = identifier;
  scoreCopy = score;
  stringCopy = string;
  v37.receiver = self;
  v37.super_class = SPCachedResult;
  v14 = [(SPCachedResult *)&v37 init];
  if (v14)
  {
    v15 = truncatedTitle(nameCopy);
    title = v14->_title;
    v14->_title = v15;

    v17 = truncatedSearchString(stringCopy);
    searchString = v14->_searchString;
    v14->_searchString = v17;

    v14->_type = 38;
    [scoreCopy doubleValue];
    v14->_score = v19;
    v20 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v14->_engagementTime;
    v14->_engagementTime = v20;

    v22 = topicIdentifierWithPersonQueryIdentifierAndDetail(identifierCopy, 0, v14->_type, 1);
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

- (SPCachedResult)initWithContactName:(id)name contactIdentifier:(id)identifier score:(id)score searchString:(id)string
{
  nameCopy = name;
  identifierCopy = identifier;
  scoreCopy = score;
  stringCopy = string;
  v38.receiver = self;
  v38.super_class = SPCachedResult;
  v14 = [(SPCachedResult *)&v38 init];
  if (v14)
  {
    v15 = truncatedTitle(nameCopy);
    title = v14->_title;
    v14->_title = v15;

    v17 = truncatedSearchString(stringCopy);
    searchString = v14->_searchString;
    v14->_searchString = v17;

    v14->_type = 32;
    [scoreCopy doubleValue];
    v14->_score = v19;
    v20 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v14->_engagementTime;
    v14->_engagementTime = v20;

    if (![identifierCopy length] || nameCopy && (objc_msgSend(identifierCopy, "isEqualToString:", nameCopy) & 1) != 0)
    {
      v14->_type = 38;
      v22 = topicIdentifierWithContactInfoAndDetail(nameCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], 0, 0x26u, 1u);
    }

    else
    {
      v22 = topicIdentifierWithContactIdentifierAndDetail(nameCopy, identifierCopy, 0, v14->_type, 1);
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

- (SPCachedResult)initWithTitle:(id)title type:(int)type score:(id)score searchString:(id)string
{
  titleCopy = title;
  scoreCopy = score;
  stringCopy = string;
  v37.receiver = self;
  v37.super_class = SPCachedResult;
  v13 = [(SPCachedResult *)&v37 init];
  if (v13)
  {
    v14 = truncatedTitle(titleCopy);
    title = v13->_title;
    v13->_title = v14;

    v16 = truncatedSearchString(stringCopy);
    searchString = v13->_searchString;
    v13->_searchString = v16;

    v13->_type = type;
    [scoreCopy doubleValue];
    v13->_score = v18;
    v19 = [MEMORY[0x277CBEAA8] now];
    engagementTime = v13->_engagementTime;
    v13->_engagementTime = v19;

    if (type <= 0x1F && ((1 << type) & 0xF0018000) != 0)
    {
      type = v13->_type;
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v13->_score];
      v23 = [SPLocalTopic localTopicWithTitle:titleCopy type:type score:v22 isCached:1];
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

- (SPCachedResult)initWithEngagedResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = SPCachedResult;
  v5 = [(SPCachedResult *)&v15 init];
  if (v5)
  {
    title = [resultCopy title];
    title = v5->_title;
    v5->_title = title;

    v5->_type = [resultCopy type];
    [resultCopy score];
    v5->_score = v8;
    [resultCopy freshnessScore];
    v5->_freshnessScore = v9;
    engagementTime = [resultCopy engagementTime];
    engagementTime = v5->_engagementTime;
    v5->_engagementTime = engagementTime;

    encodedNormalizedTopic = [resultCopy encodedNormalizedTopic];
    encodedNormalizedTopic = v5->_encodedNormalizedTopic;
    v5->_encodedNormalizedTopic = encodedNormalizedTopic;
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
  engagementTime = [(SPCachedResult *)self engagementTime];
  v12 = [(SPRecentTopic *)v13 initWithTopic:v6 score:v15 engagementDate:engagementTime];

LABEL_14:

  return v12;
}

- (id)searchResult
{
  recentTopic = [(SPCachedResult *)self recentTopic];
  if (recentTopic && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    topic = [recentTopic topic];
    result = [topic result];
  }

  else
  {
    result = 0;
  }

  return result;
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
  selfCopy = self;
  _os_log_error_impl(&dword_26B79D000, a2, OS_LOG_TYPE_ERROR, "spotlight cache: could not encode generic topic. error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end