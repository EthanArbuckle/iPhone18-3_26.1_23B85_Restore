@interface RCRequestInfo
- (BOOL)isEqual:(id)a3;
- (NSDictionary)allAdditionalFields;
- (RCRequestInfo)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 requestType:(unint64_t)a6 additionalChangeTags:(id)a7 requestCacheKey:(id)a8;
- (RCRequestInfo)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 requestType:(unint64_t)a6 additionalChangeTags:(id)a7 requestCacheKey:(id)a8 cachePolicy:(id)a9;
- (RCRequestInfo)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 requestType:(unint64_t)a6 additionalChangeTags:(id)a7 requestFeedType:(unint64_t)a8;
- (RCRequestInfo)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 requestType:(unint64_t)a6 additionalChangeTags:(id)a7 requestFeedType:(unint64_t)a8 cachePolicy:(id)a9;
- (id)description;
- (unint64_t)hash;
- (void)setValue:(id)a3 forAdditionalField:(id)a4;
@end

@implementation RCRequestInfo

- (RCRequestInfo)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 requestType:(unint64_t)a6 additionalChangeTags:(id)a7 requestFeedType:(unint64_t)a8
{
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = +[RCCachePolicy defaultCachePolicy];
  v19 = [(RCRequestInfo *)self initWithRequestKey:v17 responseKey:v16 fallbackURL:v15 requestType:a6 additionalChangeTags:v14 requestFeedType:a8 cachePolicy:v18];

  return v19;
}

- (RCRequestInfo)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 requestType:(unint64_t)a6 additionalChangeTags:(id)a7 requestFeedType:(unint64_t)a8 cachePolicy:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a9;
  if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCRequestInfo(News) initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestFeedType:cachePolicy:];
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCRequestInfo(News) initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestFeedType:cachePolicy:];
  }

LABEL_6:
  if (a8 == 1)
  {
    v20 = @"premium";
  }

  else
  {
    if (a8 != 2)
    {
      v21 = v15;
      v20 = 0;
      v22 = 0;
      goto LABEL_12;
    }

    v20 = @"premium_lite";
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v15, v20];
  v22 = 1;
LABEL_12:
  v23 = [(RCRequestInfo *)self initWithRequestKey:v15 responseKey:v16 fallbackURL:v17 requestType:a6 additionalChangeTags:v18 requestCacheKey:v21 cachePolicy:v19];
  v24 = v23;
  if (v22 && v23)
  {
    [(RCRequestInfo *)v23 setValue:v20 forAdditionalField:@"feedType"];
  }

  return v24;
}

- (RCRequestInfo)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 requestType:(unint64_t)a6 additionalChangeTags:(id)a7 requestCacheKey:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[RCCachePolicy defaultCachePolicy];
  v20 = [(RCRequestInfo *)self initWithRequestKey:v18 responseKey:v17 fallbackURL:v16 requestType:a6 additionalChangeTags:v15 requestCacheKey:v14 cachePolicy:v19];

  return v20;
}

- (RCRequestInfo)initWithRequestKey:(id)a3 responseKey:(id)a4 fallbackURL:(id)a5 requestType:(unint64_t)a6 additionalChangeTags:(id)a7 requestCacheKey:(id)a8 cachePolicy:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCRequestInfo initWithRequestKey:responseKey:fallbackURL:requestType:additionalChangeTags:requestCacheKey:cachePolicy:];
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
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
    v22 = [v15 copy];
    requestKey = v21->_requestKey;
    v21->_requestKey = v22;

    v24 = [v16 copy];
    responseKey = v21->_responseKey;
    v21->_responseKey = v24;

    v26 = [v17 copy];
    fallbackURL = v21->_fallbackURL;
    v21->_fallbackURL = v26;

    v21->_requestType = a6;
    v28 = [v18 copy];
    additionalChangeTags = v21->_additionalChangeTags;
    v21->_additionalChangeTags = v28;

    v30 = [MEMORY[0x277CBEB38] dictionary];
    mutableAdditionalFields = v21->_mutableAdditionalFields;
    v21->_mutableAdditionalFields = v30;

    v32 = [v19 copy];
    requestCacheKey = v21->_requestCacheKey;
    v21->_requestCacheKey = v32;

    v34 = [v20 copy];
    cachePolicy = v21->_cachePolicy;
    v21->_cachePolicy = v34;

    v36 = objc_alloc_init(RCUnfairLock);
    accessLock = v21->_accessLock;
    v21->_accessLock = v36;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCRequestInfo *)self requestKey];
    v7 = [v5 requestKey];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(RCRequestInfo *)self responseKey];
      v9 = [v5 responseKey];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(RCRequestInfo *)self fallbackURL];
        v11 = [v5 fallbackURL];
        if ([v10 isEqual:v11] && (v12 = -[RCRequestInfo requestType](self, "requestType"), v12 == objc_msgSend(v5, "requestType")))
        {
          v28 = MEMORY[0x277D82BB8];
          v13 = [(RCRequestInfo *)self additionalChangeTags];
          v14 = [v5 additionalChangeTags];
          v15 = v28;
          v27 = v14;
          v29 = v13;
          if ([v15 rc_object:v13 isEqualToObject:?])
          {
            v16 = [(RCRequestInfo *)self requestCacheKey];
            v17 = [v5 requestCacheKey];
            v26 = v16;
            if (v16 == v17)
            {
              v25 = v17;
              v19 = [(RCRequestInfo *)self allAdditionalFields];
              v24 = [v5 allAdditionalFields];
              if ([v19 isEqualToDictionary:?])
              {
                v22 = [(RCRequestInfo *)self cachePolicy];
                [v5 cachePolicy];
                v20 = v23 = v19;
                v18 = [v22 isEqual:v20];

                v19 = v23;
              }

              else
              {
                v18 = 0;
              }

              v17 = v25;
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
  v3 = [(RCRequestInfo *)self requestKey];
  v4 = [v3 hash];
  v5 = [(RCRequestInfo *)self responseKey];
  v6 = [v5 hash] ^ v4;
  v7 = [(RCRequestInfo *)self fallbackURL];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCRequestInfo requestType](self, "requestType")}];
  v10 = [v9 hash];
  v11 = [(RCRequestInfo *)self additionalChangeTags];
  v12 = v8 ^ [v11 hash];
  v13 = [(RCRequestInfo *)self requestCacheKey];
  v14 = v12 ^ [v13 hash];
  v15 = [(RCRequestInfo *)self allAdditionalFields];
  v16 = v14 ^ [v15 hash] ^ v10;
  v17 = [(RCRequestInfo *)self cachePolicy];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(RCRequestInfo *)self requestKey];
  v5 = [(RCRequestInfo *)self responseKey];
  v6 = [(RCRequestInfo *)self fallbackURL];
  v7 = [(RCRequestInfo *)self requestType];
  v8 = [(RCRequestInfo *)self additionalChangeTags];
  v9 = [(RCRequestInfo *)self requestCacheKey];
  v10 = [(RCRequestInfo *)self allAdditionalFields];
  v11 = [(RCRequestInfo *)self cachePolicy];
  v12 = [v14 stringWithFormat:@"<%@: %p requestKey: %@ responseKey: %@ fallbackURL: %@ requestType: %lu, additionalChangeTags: %@, cacheKey: %@, additionalFields: %@ cachePolicy: %@>", v3, self, v4, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (void)setValue:(id)a3 forAdditionalField:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCRequestInfo *)self accessLock];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__RCRequestInfo_setValue_forAdditionalField___block_invoke;
  v11[3] = &unk_27822FE40;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performWithLockSync:v11];
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
  v3 = [(RCRequestInfo *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__RCRequestInfo_allAdditionalFields__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

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