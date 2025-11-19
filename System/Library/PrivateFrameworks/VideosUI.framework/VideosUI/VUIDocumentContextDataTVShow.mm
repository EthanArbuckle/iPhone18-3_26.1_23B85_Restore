@interface VUIDocumentContextDataTVShow
- (BOOL)isEqual:(id)a3;
- (VUIDocumentContextDataTVShow)initWithAdamID:(id)a3;
- (VUIDocumentContextDataTVShow)initWithShowID:(id)a3 episodeID:(id)a4;
- (id)jsonData;
@end

@implementation VUIDocumentContextDataTVShow

- (VUIDocumentContextDataTVShow)initWithAdamID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIDocumentContextDataTVShow;
  v6 = [(VUIDocumentContextDataTVShow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adamID, a3);
    v7->_needsAdamIdToCanonicalIdConversion = 1;
  }

  return v7;
}

- (VUIDocumentContextDataTVShow)initWithShowID:(id)a3 episodeID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VUIDocumentContextDataTVShow;
  v9 = [(VUIDocumentContextDataTVShow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_showID, a3);
    objc_storeStrong(&v10->_episodeID, a4);
    v10->_needsAdamIdToCanonicalIdConversion = 0;
  }

  return v10;
}

- (id)jsonData
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if ([(NSString *)self->_episodeID length])
  {
    [v3 setObject:self->_episodeID forKeyedSubscript:@"id"];
    [v3 setObject:@"Episode" forKeyedSubscript:@"type"];
    if (![(NSString *)self->_showID length])
    {
      goto LABEL_9;
    }

    showID = self->_showID;
    v5 = @"showId";
  }

  else if ([(NSString *)self->_showID length])
  {
    [v3 setObject:self->_showID forKeyedSubscript:@"id"];
    showID = @"Show";
    v5 = @"type";
  }

  else
  {
    if (![(NSString *)self->_adamID length])
    {
      goto LABEL_9;
    }

    showID = self->_adamID;
    v5 = @"adamId";
  }

  [v3 setObject:showID forKeyedSubscript:v5];
LABEL_9:
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_needsAdamIdToCanonicalIdConversion];
  [v3 setObject:v6 forKeyedSubscript:@"needsAdamIdToCanonicalIdConversion"];

  v7 = [(VUIDocumentContextData *)self extensionContextData];
  v8 = [v7 jsonData];
  [v3 setObject:v8 forKeyedSubscript:@"tvExtensionConfig"];

  v9 = [v3 copy];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(VUIDocumentContextDataTVShow *)self showID];
    v7 = [v5 showID];
    if ([v6 isEqual:v7])
    {
      v8 = [(VUIDocumentContextDataTVShow *)self episodeID];
      v9 = [v5 episodeID];
      if ([v8 isEqual:v9])
      {
        v10 = [(VUIDocumentContextDataTVShow *)self adamID];
        v11 = [v5 adamID];
        if ([v10 isEqual:v11] && (v12 = -[VUIDocumentContextDataTVShow needsAdamIdToCanonicalIdConversion](self, "needsAdamIdToCanonicalIdConversion"), v12 == objc_msgSend(v5, "needsAdamIdToCanonicalIdConversion")))
        {
          v16 = [(VUIDocumentContextData *)self extensionContextData];
          v14 = [v5 extensionContextData];
          v13 = [v16 isEqual:v14];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end