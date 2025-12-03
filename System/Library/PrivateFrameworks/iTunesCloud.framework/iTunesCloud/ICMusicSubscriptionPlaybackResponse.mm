@interface ICMusicSubscriptionPlaybackResponse
- (ICMusicSubscriptionPlaybackResponse)initWithResponseDictionary:(id)dictionary requestDate:(id)date urlBag:(id)bag;
- (ICStoreDialogResponse)dialog;
- (NSArray)items;
- (NSData)leaseInfoData;
- (NSDate)leaseExpirationDate;
- (NSError)serverError;
- (NSString)householdID;
- (id)itemWithStoreAdamID:(int64_t)d;
@end

@implementation ICMusicSubscriptionPlaybackResponse

- (NSError)serverError
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"failureType"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICStoreServerError" code:objc_msgSend(v2 userInfo:{"integerValue"), 0}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSData)leaseInfoData
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"ckc"];
  if (_NSIsNSData())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  if (_NSIsNSString())
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:
  if ([(NSData *)v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)itemWithStoreAdamID:(int64_t)d
{
  v17 = *MEMORY[0x1E69E9840];
  [(ICMusicSubscriptionPlaybackResponse *)self items];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 storeAdamID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (NSArray)items
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"songList"];
  if (_NSIsNSArray())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v11 = [[ICMusicSubscriptionPlaybackResponseItem alloc] initWithItemResponseDictionary:v10 urlBag:self->_urlBag];
            v12 = [(NSDate *)self->_requestDate dateByAddingTimeInterval:7200.0];
            [(ICMusicSubscriptionPlaybackResponseItem *)v11 setAssetExpirationDate:v12];

            if (v11)
            {
              if (!v7)
              {
                v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v7 addObject:v11];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v3 = v14;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDate)leaseExpirationDate
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"ICMusicSubscriptionLeaseDurationInterval"];

  if (objc_opt_respondsToSelector())
  {
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v4 = [(NSDictionary *)self->_responseDictionary objectForKey:@"leaseDurationInSeconds"];
LABEL_6:
  if (objc_opt_respondsToSelector())
  {
    requestDate = self->_requestDate;
    [v4 doubleValue];
    v7 = requestDate;
  }

  else
  {
    serverError = [(ICMusicSubscriptionPlaybackResponse *)self serverError];

    if (serverError)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = self->_requestDate;
    v6 = 600.0;
  }

  v9 = [(NSDate *)v7 dateByAddingTimeInterval:v6];
LABEL_12:

  return v9;
}

- (NSString)householdID
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"householdId"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICStoreDialogResponse)dialog
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"dialog"];
  if (_NSIsNSDictionary())
  {
    v3 = [[ICStoreDialogResponse alloc] initWithResponseDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICMusicSubscriptionPlaybackResponse)initWithResponseDictionary:(id)dictionary requestDate:(id)date urlBag:(id)bag
{
  dictionaryCopy = dictionary;
  dateCopy = date;
  bagCopy = bag;
  v12 = [(ICMusicSubscriptionPlaybackResponse *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_responseDictionary, dictionary);
    objc_storeStrong(&v13->_requestDate, date);
    objc_storeStrong(&v13->_urlBag, bag);
  }

  return v13;
}

@end