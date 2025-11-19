@interface WLKContinuationMetadataBase
+ (int64_t)_contextForString:(id)a3;
+ (void)add:(id)a3 toCollection:(id)a4;
+ (void)remove:(id)a3 fromCollection:(id)a4;
- (WLKContinuationMetadataBase)initWithDictionary:(id)a3 context:(id)a4;
- (id)_mergingIdentifier;
- (id)description;
@end

@implementation WLKContinuationMetadataBase

- (id)_mergingIdentifier
{
  v3 = [(WLKContinuationMetadataBase *)self movieOrShowContent];
  v4 = [v3 canonicalID];

  v5 = [(WLKContinuationMetadataBase *)self movieOrShowContent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(WLKContinuationMetadataBase *)self movieOrShowContent];
    v8 = [v7 canonicalShowID];

    v4 = v8;
  }

  return v4;
}

+ (void)add:(id)a3 toCollection:(id)a4
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 _mergingIdentifier];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__WLKContinuationMetadataBase_Merging__add_toCollection___block_invoke;
  v23[3] = &unk_279E5E5D0;
  v8 = v7;
  v24 = v8;
  v9 = [v6 indexesOfObjectsPassingTest:v23];
  if ([v9 count])
  {
    v10 = [v9 firstIndex];
    if (v10 < [v6 count])
    {
      v11 = [v6 objectAtIndex:v10];
      v12 = [v5 timestamp];
      v13 = [v11 timestamp];
      v14 = [v12 compare:v13];

      if (v14 == 1)
      {
        v15 = [v5 isRental];
        if (v15 != [v11 isRental])
        {
          v16 = WLKSystemLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v5 isRental];
            v18 = [v11 isRental];
            *buf = 67109376;
            v26[0] = v17;
            LOWORD(v26[1]) = 1024;
            *(&v26[1] + 2) = v18;
            _os_log_impl(&dword_272A0F000, v16, OS_LOG_TYPE_DEFAULT, "WLKContinuationMetadata (Merging/Delta) - Mismatch in continuation.isRental=%d and existingContinuation.isRental=%d", buf, 0xEu);
          }

          [v5 setIsRental:{objc_msgSend(v11, "isRental")}];
        }

        [v6 replaceObjectAtIndex:v10 withObject:v5];
        v19 = WLKSystemLogObject();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        *buf = 138412290;
        *v26 = v8;
        v20 = "WLKContinuationMetadata (Merging/Delta) - Replacing existing item with delta. Newer timestamp. %@";
      }

      else
      {
        v19 = WLKSystemLogObject();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
LABEL_16:

          goto LABEL_17;
        }

        *buf = 138412290;
        *v26 = v8;
        v20 = "WLKContinuationMetadata (Merging/Delta) - Skipping addition for existing item, timestamp is not newer %@.";
      }

      _os_log_impl(&dword_272A0F000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
      goto LABEL_16;
    }
  }

  else
  {
    v21 = WLKSystemLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v26 = v8;
      _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "WLKContinuationMetadata (Merging/Delta) - Adding continuation %@", buf, 0xCu);
    }

    [v6 addObject:v5];
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __57__WLKContinuationMetadataBase_Merging__add_toCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 _mergingIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];
  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

+ (void)remove:(id)a3 fromCollection:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 _mergingIdentifier];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__WLKContinuationMetadataBase_Merging__remove_fromCollection___block_invoke;
  v13[3] = &unk_279E5E5D0;
  v7 = v6;
  v14 = v7;
  v8 = [v5 indexesOfObjectsPassingTest:v13];
  v9 = [v8 count];
  v10 = WLKSystemLogObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKContinuationMetadata (Merging/Delta) - Removing existing item: %@", buf, 0xCu);
    }

    [v5 removeObjectsAtIndexes:v8];
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKContinuationMetadata (Merging/Delta) - Skipping removal for non-matching-item: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __62__WLKContinuationMetadataBase_Merging__remove_fromCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 _mergingIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

- (WLKContinuationMetadataBase)initWithDictionary:(id)a3 context:(id)a4
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = WLKContinuationMetadataBase;
  v6 = [(WLKContinuationMetadataBase *)&v24 init];
  if (v6)
  {
    v7 = [v5 copy];
    dictionary = v6->_dictionary;
    v6->_dictionary = v7;

    v9 = [v5 wlk_dictionaryForKey:@"content"];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
      if (!v10)
      {
LABEL_6:
        v17 = [v5 wlk_stringForKey:@"context"];
        context = v6->_context;
        v6->_context = v17;

        v6->_contextEnum = [objc_opt_class() _contextForString:v6->_context];
        v19 = [v5 wlk_stringForKey:@"localizedContext"];
        localizedContext = v6->_localizedContext;
        v6->_localizedContext = v19;

        v6->_isRental = [v5 wlk_BOOLForKey:@"isRental" defaultValue:0];
        v6->_isPurchase = [v5 wlk_BOOLForKey:@"isPurchase" defaultValue:0];
        v21 = [v5 wlk_dateFromMillisecondsSince1970ForKey:@"timestamp"];
        timestamp = v6->_timestamp;
        v6->_timestamp = v21;

        goto LABEL_7;
      }
    }

    v11 = [[WLKBasicContentMetadata alloc] initWithDictionary:v10];
    movieOrShowContent = v6->_movieOrShowContent;
    v6->_movieOrShowContent = v11;

    v13 = MEMORY[0x277CBEBC0];
    v14 = [v10 wlk_stringForKey:@"url"];
    v15 = [v13 URLWithString:v14];
    contentTVAppDeeplinkURL = v6->_contentTVAppDeeplinkURL;
    v6->_contentTVAppDeeplinkURL = v15;

    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

+ (int64_t)_contextForString:(id)a3
{
  v3 = a3;
  if (_contextForString__onceToken != -1)
  {
    +[WLKContinuationMetadataBase _contextForString:];
  }

  v4 = [_contextForString___sContextLookup objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __49__WLKContinuationMetadataBase__contextForString___block_invoke()
{
  v0 = _contextForString___sContextLookup;
  _contextForString___sContextLookup = &unk_288222DD8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WLKContinuationMetadataBase;
  v4 = [(WLKContinuationMetadataBase *)&v8 description];
  v5 = [(WLKContinuationMetadataBase *)self movieOrShowContent];
  v6 = [v3 stringWithFormat:@"%@ content:%@", v4, v5];

  return v6;
}

@end