@interface RCRequestInfo
- (BOOL)isEqual:(id)equal;
- (NSDictionary)allAdditionalFields;
- (RCRequestInfo)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l requestType:(unint64_t)type additionalChangeTags:(id)tags requestCacheKey:(id)cacheKey;
- (RCRequestInfo)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l requestType:(unint64_t)type additionalChangeTags:(id)tags requestCacheKey:(id)cacheKey cachePolicy:(id)policy;
- (RCRequestInfo)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l requestType:(unint64_t)type additionalChangeTags:(id)tags requestFeedType:(unint64_t)feedType;
- (RCRequestInfo)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l requestType:(unint64_t)type additionalChangeTags:(id)tags requestFeedType:(unint64_t)feedType cachePolicy:(id)policy;
- (id)description;
- (unint64_t)hash;
- (void)setValue:(id)value forAdditionalField:(id)field;
@end

@implementation RCRequestInfo

- (RCRequestInfo)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l requestType:(unint64_t)type additionalChangeTags:(id)tags requestFeedType:(unint64_t)feedType
{
  tagsCopy = tags;
  lCopy = l;
  responseKeyCopy = responseKey;
  keyCopy = key;
  v18 = +[RCCachePolicy defaultCachePolicy];
  v19 = [(RCRequestInfo *)self initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy requestType:type additionalChangeTags:tagsCopy requestFeedType:feedType cachePolicy:v18];

  return v19;
}

- (RCRequestInfo)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l requestType:(unint64_t)type additionalChangeTags:(id)tags requestFeedType:(unint64_t)feedType cachePolicy:(id)policy
{
  keyCopy = key;
  responseKeyCopy = responseKey;
  lCopy = l;
  tagsCopy = tags;
  policyCopy = policy;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCRequestInfo(News) initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestFeedType:cachePolicy:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCRequestInfo(News) initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestFeedType:cachePolicy:];
  }

LABEL_6:
  if (feedType == 1)
  {
    v20 = @"premium";
  }

  else
  {
    if (feedType != 2)
    {
      v21 = keyCopy;
      v20 = 0;
      v22 = 0;
      goto LABEL_12;
    }

    v20 = @"premium_lite";
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", keyCopy, v20];
  v22 = 1;
LABEL_12:
  v23 = [(RCRequestInfo *)self initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy requestType:type additionalChangeTags:tagsCopy requestCacheKey:v21 cachePolicy:policyCopy];
  v24 = v23;
  if (v22 && v23)
  {
    [(RCRequestInfo *)v23 setValue:v20 forAdditionalField:@"feedType"];
  }

  return v24;
}

- (RCRequestInfo)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l requestType:(unint64_t)type additionalChangeTags:(id)tags requestCacheKey:(id)cacheKey
{
  cacheKeyCopy = cacheKey;
  tagsCopy = tags;
  lCopy = l;
  responseKeyCopy = responseKey;
  keyCopy = key;
  v19 = +[RCCachePolicy defaultCachePolicy];
  v20 = [(RCRequestInfo *)self initWithRequestKey:keyCopy responseKey:responseKeyCopy fallbackURL:lCopy requestType:type additionalChangeTags:tagsCopy requestCacheKey:cacheKeyCopy cachePolicy:v19];

  return v20;
}

- (RCRequestInfo)initWithRequestKey:(id)key responseKey:(id)responseKey fallbackURL:(id)l requestType:(unint64_t)type additionalChangeTags:(id)tags requestCacheKey:(id)cacheKey cachePolicy:(id)policy
{
  keyCopy = key;
  responseKeyCopy = responseKey;
  lCopy = l;
  tagsCopy = tags;
  cacheKeyCopy = cacheKey;
  policyCopy = policy;
  if (!keyCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCRequestInfo initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestCacheKey:cachePolicy:];
    if (responseKeyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (responseKeyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCRequestInfo initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestCacheKey:cachePolicy:];
  }

LABEL_6:
  v39.receiver = self;
  v39.super_class = RCRequestInfo;
  v21 = [(RCRequestInfo *)&v39 init];
  if (v21)
  {
    v22 = [keyCopy copy];
    requestKey = v21->_requestKey;
    v21->_requestKey = v22;

    v24 = [responseKeyCopy copy];
    responseKey = v21->_responseKey;
    v21->_responseKey = v24;

    v26 = [lCopy copy];
    fallbackURL = v21->_fallbackURL;
    v21->_fallbackURL = v26;

    v21->_requestType = type;
    v28 = [tagsCopy copy];
    additionalChangeTags = v21->_additionalChangeTags;
    v21->_additionalChangeTags = v28;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mutableAdditionalFields = v21->_mutableAdditionalFields;
    v21->_mutableAdditionalFields = dictionary;

    v32 = [cacheKeyCopy copy];
    requestCacheKey = v21->_requestCacheKey;
    v21->_requestCacheKey = v32;

    v34 = [policyCopy copy];
    cachePolicy = v21->_cachePolicy;
    v21->_cachePolicy = v34;

    v36 = objc_alloc_init(RCUnfairLock);
    accessLock = v21->_accessLock;
    v21->_accessLock = v36;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    requestKey = [(RCRequestInfo *)self requestKey];
    requestKey2 = [v5 requestKey];
    if ([requestKey isEqualToString:requestKey2])
    {
      responseKey = [(RCRequestInfo *)self responseKey];
      responseKey2 = [v5 responseKey];
      if ([responseKey isEqualToString:responseKey2])
      {
        fallbackURL = [(RCRequestInfo *)self fallbackURL];
        fallbackURL2 = [v5 fallbackURL];
        if ([fallbackURL isEqual:fallbackURL2] && (v12 = -[RCRequestInfo requestType](self, "requestType"), v12 == objc_msgSend(v5, "requestType")))
        {
          v28 = MEMORY[0x277D82BB8];
          additionalChangeTags = [(RCRequestInfo *)self additionalChangeTags];
          additionalChangeTags2 = [v5 additionalChangeTags];
          v15 = v28;
          v27 = additionalChangeTags2;
          v29 = additionalChangeTags;
          if ([v15 rc_object:additionalChangeTags isEqualToObject:?])
          {
            requestCacheKey = [(RCRequestInfo *)self requestCacheKey];
            requestCacheKey2 = [v5 requestCacheKey];
            v26 = requestCacheKey;
            if (requestCacheKey == requestCacheKey2)
            {
              v25 = requestCacheKey2;
              allAdditionalFields = [(RCRequestInfo *)self allAdditionalFields];
              allAdditionalFields2 = [v5 allAdditionalFields];
              if ([allAdditionalFields isEqualToDictionary:?])
              {
                cachePolicy = [(RCRequestInfo *)self cachePolicy];
                [v5 cachePolicy];
                v20 = v23 = allAdditionalFields;
                v18 = [cachePolicy isEqual:v20];

                allAdditionalFields = v23;
              }

              else
              {
                v18 = 0;
              }

              requestCacheKey2 = v25;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  requestKey = [(RCRequestInfo *)self requestKey];
  v4 = [requestKey hash];
  responseKey = [(RCRequestInfo *)self responseKey];
  v6 = [responseKey hash] ^ v4;
  fallbackURL = [(RCRequestInfo *)self fallbackURL];
  v8 = v6 ^ [fallbackURL hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCRequestInfo requestType](self, "requestType")}];
  v10 = [v9 hash];
  additionalChangeTags = [(RCRequestInfo *)self additionalChangeTags];
  v12 = v8 ^ [additionalChangeTags hash];
  requestCacheKey = [(RCRequestInfo *)self requestCacheKey];
  v14 = v12 ^ [requestCacheKey hash];
  allAdditionalFields = [(RCRequestInfo *)self allAdditionalFields];
  v16 = v14 ^ [allAdditionalFields hash] ^ v10;
  cachePolicy = [(RCRequestInfo *)self cachePolicy];
  v18 = [cachePolicy hash];

  return v16 ^ v18;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  requestKey = [(RCRequestInfo *)self requestKey];
  responseKey = [(RCRequestInfo *)self responseKey];
  fallbackURL = [(RCRequestInfo *)self fallbackURL];
  requestType = [(RCRequestInfo *)self requestType];
  additionalChangeTags = [(RCRequestInfo *)self additionalChangeTags];
  requestCacheKey = [(RCRequestInfo *)self requestCacheKey];
  allAdditionalFields = [(RCRequestInfo *)self allAdditionalFields];
  cachePolicy = [(RCRequestInfo *)self cachePolicy];
  v12 = [v14 stringWithFormat:@"<%@: %p requestKey: %@ responseKey: %@ fallbackURL: %@ requestType: %lu, additionalChangeTags: %@, cacheKey: %@, additionalFields: %@ cachePolicy: %@>", v3, self, requestKey, responseKey, fallbackURL, requestType, additionalChangeTags, requestCacheKey, allAdditionalFields, cachePolicy];;

  return v12;
}

- (void)setValue:(id)value forAdditionalField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  accessLock = [(RCRequestInfo *)self accessLock];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__RCRequestInfo_setValue_forAdditionalField___block_invoke;
  v11[3] = &unk_27822FE40;
  v12 = valueCopy;
  selfCopy = self;
  v14 = fieldCopy;
  v9 = fieldCopy;
  v10 = valueCopy;
  [accessLock performWithLockSync:v11];
}

void __45__RCRequestInfo_setValue_forAdditionalField___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) mutableAdditionalFields];
  v4 = *(a1 + 48);
  v5 = v3;
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

- (NSDictionary)allAdditionalFields
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  accessLock = [(RCRequestInfo *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__RCRequestInfo_allAdditionalFields__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [accessLock performWithLockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__RCRequestInfo_allAdditionalFields__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableAdditionalFields];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestCacheKey:cachePolicy:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "requestKey"];
  *buf = 136315906;
  v3 = "[RCRequestInfo initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestCacheKey:cachePolicy:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCRequestInfo.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestCacheKey:cachePolicy:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "responseKey"];
  *buf = 136315906;
  v3 = "[RCRequestInfo initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestCacheKey:cachePolicy:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCRequestInfo.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end