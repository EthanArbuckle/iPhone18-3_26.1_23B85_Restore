@interface WBSCloudTab
+ (id)_dictionaryWithParameters:(id)a3;
- (BOOL)hasSameUUIDAndURLAsTab:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)dictionaryRepresentationForUserActivityUserInfo;
- (NSString)description;
- (WBSCloudTab)initWithDictionary:(id)a3;
- (WBSCloudTab)initWithDictionaryFromUserActivityUserInfo:(id)a3;
- (WBSCloudTab)initWithParameters:(id)a3;
- (WBSCloudTab)initWithURL:(id)a3 uuid:(id)a4 title:(id)a5 isShowingReader:(BOOL)a6 readerScrollPosition:(id)a7 isPinned:(BOOL)a8;
- (WBSCloudTab)initWithURL:(id)a3 uuid:(id)a4 title:(id)a5 isShowingReader:(BOOL)a6 readerScrollPosition:(id)a7 sceneID:(id)a8;
@end

@implementation WBSCloudTab

- (WBSCloudTab)initWithDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26.receiver = self;
    v26.super_class = WBSCloudTab;
    self = [(WBSCloudTab *)&v26 init];
    if (self)
    {
      v5 = MEMORY[0x1E695DFF8];
      v6 = [v4 safari_stringForKey:@"URL"];
      v7 = [v5 safari_URLWithUserTypedString:v6];
      v8 = [v7 safari_originalDataAsString];

      if (([v8 length] - 8193) < 0xFFFFFFFFFFFFE000 || (objc_msgSend(MEMORY[0x1E695DFF8], "safari_URLWithDataAsString:", v8), v9 = objc_claimAutoreleasedReturnValue(), url = self->_url, self->_url = v9, url, !self->_url))
      {
        v14 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v11 = [v4 safari_stringForKey:@"Title"];
      v12 = [v11 length];
      if (v12 < 0x81)
      {
        if (v12)
        {
LABEL_12:
          objc_storeStrong(&self->_title, v11);
          v15 = [v4 safari_stringForKey:@"UUID"];
          if (v15)
          {
            v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];
            uuid = self->_uuid;
            self->_uuid = v16;
          }

          v18 = [v4 safari_stringForKey:@"OwningSceneID"];
          v19 = [v18 copy];
          sceneID = self->_sceneID;
          self->_sceneID = v19;

          self->_showingReader = [v4 safari_BOOLForKey:@"IsShowingReader"];
          v21 = [v4 safari_dictionaryForKey:@"ReaderScrollPosition"];
          readerScrollPositionDictionary = self->_readerScrollPositionDictionary;
          self->_readerScrollPositionDictionary = v21;

          self->_pinned = [v4 safari_BOOLForKey:@"IsPinned"];
          v23 = [v4 safari_numberForKey:@"DateLastViewed"];
          [v23 doubleValue];
          self->_lastViewedTime = v24;

          v14 = self;
          goto LABEL_15;
        }

        v13 = &stru_1F3A5E418;
      }

      else
      {
        v13 = [v11 substringToIndex:128];
      }

      v11 = v13;
      goto LABEL_12;
    }
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (WBSCloudTab)initWithDictionaryFromUserActivityUserInfo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 safari_dictionaryForKey:@"com.apple.Safari.CloudTab"];
    self = [(WBSCloudTab *)self initWithDictionary:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WBSCloudTab)initWithURL:(id)a3 uuid:(id)a4 title:(id)a5 isShowingReader:(BOOL)a6 readerScrollPosition:(id)a7 sceneID:(id)a8
{
  v9 = a6;
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[WBSCloudTabParameters alloc] initWithURL:v18];

  [(WBSCloudTabParameters *)v19 setUuid:v17];
  [(WBSCloudTabParameters *)v19 setTitle:v16];

  [(WBSCloudTabParameters *)v19 setShowingReader:v9];
  [(WBSCloudTabParameters *)v19 setReaderScrollPosition:v15];

  [(WBSCloudTabParameters *)v19 setSceneID:v14];
  v20 = [(WBSCloudTab *)self initWithParameters:v19];

  return v20;
}

- (WBSCloudTab)initWithURL:(id)a3 uuid:(id)a4 title:(id)a5 isShowingReader:(BOOL)a6 readerScrollPosition:(id)a7 isPinned:(BOOL)a8
{
  v8 = a8;
  v9 = a6;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[WBSCloudTabParameters alloc] initWithURL:v17];

  [(WBSCloudTabParameters *)v18 setUuid:v16];
  [(WBSCloudTabParameters *)v18 setTitle:v15];

  [(WBSCloudTabParameters *)v18 setShowingReader:v9];
  [(WBSCloudTabParameters *)v18 setReaderScrollPosition:v14];

  [(WBSCloudTabParameters *)v18 setPinned:v8];
  v19 = [(WBSCloudTab *)self initWithParameters:v18];

  return v19;
}

- (WBSCloudTab)initWithParameters:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _dictionaryWithParameters:v4];

  v6 = [(WBSCloudTab *)self initWithDictionary:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WBSCloudTab *)self dictionaryRepresentation];
      v6 = [(WBSCloudTab *)v4 dictionaryRepresentation];
      v7 = [v5 isEqualToDictionary:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasSameUUIDAndURLAsTab:(id)a3
{
  v4 = a3;
  v5 = [v4 uuidString];
  v6 = [(WBSCloudTab *)self uuidString];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 url];
    v9 = [v8 isEqual:self->_url];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [[WBSCloudTabParameters alloc] initWithURL:self->_url];
  [(WBSCloudTabParameters *)v3 setUuid:self->_uuid];
  [(WBSCloudTabParameters *)v3 setTitle:self->_title];
  [(WBSCloudTabParameters *)v3 setShowingReader:self->_showingReader];
  [(WBSCloudTabParameters *)v3 setReaderScrollPosition:self->_readerScrollPositionDictionary];
  [(WBSCloudTabParameters *)v3 setPinned:self->_pinned];
  [(WBSCloudTabParameters *)v3 setSceneID:self->_sceneID];
  [(WBSCloudTabParameters *)v3 setLastViewedTime:self->_lastViewedTime];
  v4 = [objc_opt_class() _dictionaryWithParameters:v3];

  return v4;
}

- (NSDictionary)dictionaryRepresentationForUserActivityUserInfo
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(WBSCloudTab *)self dictionaryRepresentation];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    [v3 removeObjectForKey:@"Title"];
    [v3 removeObjectForKey:@"UUID"];
    [v3 removeObjectForKey:@"IsPinned"];
    [v3 removeObjectForKey:@"DateLastViewed"];
    v6 = @"com.apple.Safari.CloudTab";
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = self->_title;
  url = self->_url;
  v8 = [(NSUUID *)self->_uuid UUIDString];
  v9 = [v3 stringWithFormat:@"<%@: %p title = %@; url = %@; uuid = %@; showingReader = %d; readerScrollPositionDictionary = %@; isPinned = %d; sceneID = %@>", v5, self, title, url, v8, self->_showingReader, self->_readerScrollPositionDictionary, self->_pinned, self->_sceneID];;

  return v9;
}

+ (id)_dictionaryWithParameters:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 url];
  v5 = [v3 uuid];
  v6 = [v3 title];
  v7 = [v3 isShowingReader];
  v8 = [v3 readerScrollPosition];
  v9 = [v3 isPinned];
  v10 = [v3 sceneID];
  [v3 lastViewedTime];
  v12 = v11;

  if ([v4 safari_isURLTooLongToDisplay])
  {
    v13 = 0;
  }

  else
  {
    v14 = [v4 safari_userVisibleString];
    v15 = v14;
    if (v14)
    {
      if (!v6)
      {
        v6 = &stru_1F3A5E418;
      }

      v20[0] = @"URL";
      v20[1] = @"Title";
      v21[0] = v14;
      v21[1] = v6;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v13 = [v16 mutableCopy];

      if (v5)
      {
        v17 = [v5 UUIDString];
        [v13 setObject:v17 forKeyedSubscript:@"UUID"];
      }

      if (v9)
      {
        [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPinned"];
      }

      if (v10)
      {
        [v13 setObject:v10 forKeyedSubscript:@"OwningSceneID"];
      }

      if (v12 != 0.0)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        [v13 setObject:v18 forKeyedSubscript:@"DateLastViewed"];
      }

      if (v7)
      {
        [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsShowingReader"];
        if ([v8 count])
        {
          [v13 setObject:v8 forKeyedSubscript:@"ReaderScrollPosition"];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end