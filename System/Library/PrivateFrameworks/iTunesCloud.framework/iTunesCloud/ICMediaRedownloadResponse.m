@interface ICMediaRedownloadResponse
- (BOOL)authorized;
- (BOOL)shouldCancelPurchaseBatch;
- (ICMediaRedownloadResponse)initWithResponseDictionary:(id)a3 requestDate:(id)a4 urlBag:(id)a5;
- (ICStoreDialogResponse)dialog;
- (NSArray)items;
- (NSError)serverError;
- (NSString)jingleAction;
- (int64_t)status;
- (unsigned)downloadQueueItemCount;
@end

@implementation ICMediaRedownloadResponse

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
            v11 = [[ICStoreMediaResponseItem alloc] initWithItemResponseDictionary:v10 urlBag:self->_urlBag];
            v12 = [(NSDate *)self->_requestDate dateByAddingTimeInterval:7200.0];
            [(ICStoreMediaResponseItem *)v11 setAssetExpirationDate:v12];

            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v7 addObject:v11];
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

- (NSString)jingleAction
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"jingleAction"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unsigned)downloadQueueItemCount
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"download-queue-item-count"];
  if (_NSIsNSNumber())
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

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

- (int64_t)status
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"status"];
  if (_NSIsNSNumber())
  {
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldCancelPurchaseBatch
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"cancel-purchase-batch"];
  if (_NSIsNSNumber())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)authorized
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"authorized"];
  if (_NSIsNSNumber())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICMediaRedownloadResponse)initWithResponseDictionary:(id)a3 requestDate:(id)a4 urlBag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ICMediaRedownloadResponse;
  v11 = [(ICMediaRedownloadResponse *)&v17 init];
  if (v11)
  {
    v12 = [v9 copy];
    requestDate = v11->_requestDate;
    v11->_requestDate = v12;

    v14 = [v8 copy];
    responseDictionary = v11->_responseDictionary;
    v11->_responseDictionary = v14;

    objc_storeStrong(&v11->_urlBag, a5);
  }

  return v11;
}

@end