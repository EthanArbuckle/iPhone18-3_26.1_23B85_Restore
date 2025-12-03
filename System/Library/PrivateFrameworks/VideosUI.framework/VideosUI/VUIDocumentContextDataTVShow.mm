@interface VUIDocumentContextDataTVShow
- (BOOL)isEqual:(id)equal;
- (VUIDocumentContextDataTVShow)initWithAdamID:(id)d;
- (VUIDocumentContextDataTVShow)initWithShowID:(id)d episodeID:(id)iD;
- (id)jsonData;
@end

@implementation VUIDocumentContextDataTVShow

- (VUIDocumentContextDataTVShow)initWithAdamID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = VUIDocumentContextDataTVShow;
  v6 = [(VUIDocumentContextDataTVShow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_adamID, d);
    v7->_needsAdamIdToCanonicalIdConversion = 1;
  }

  return v7;
}

- (VUIDocumentContextDataTVShow)initWithShowID:(id)d episodeID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = VUIDocumentContextDataTVShow;
  v9 = [(VUIDocumentContextDataTVShow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_showID, d);
    objc_storeStrong(&v10->_episodeID, iD);
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

  extensionContextData = [(VUIDocumentContextData *)self extensionContextData];
  jsonData = [extensionContextData jsonData];
  [v3 setObject:jsonData forKeyedSubscript:@"tvExtensionConfig"];

  v9 = [v3 copy];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    showID = [(VUIDocumentContextDataTVShow *)self showID];
    showID2 = [v5 showID];
    if ([showID isEqual:showID2])
    {
      episodeID = [(VUIDocumentContextDataTVShow *)self episodeID];
      episodeID2 = [v5 episodeID];
      if ([episodeID isEqual:episodeID2])
      {
        adamID = [(VUIDocumentContextDataTVShow *)self adamID];
        adamID2 = [v5 adamID];
        if ([adamID isEqual:adamID2] && (v12 = -[VUIDocumentContextDataTVShow needsAdamIdToCanonicalIdConversion](self, "needsAdamIdToCanonicalIdConversion"), v12 == objc_msgSend(v5, "needsAdamIdToCanonicalIdConversion")))
        {
          extensionContextData = [(VUIDocumentContextData *)self extensionContextData];
          extensionContextData2 = [v5 extensionContextData];
          v13 = [extensionContextData isEqual:extensionContextData2];
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