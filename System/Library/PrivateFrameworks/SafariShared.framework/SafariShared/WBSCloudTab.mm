@interface WBSCloudTab
+ (id)_dictionaryWithParameters:(id)parameters;
- (BOOL)hasSameUUIDAndURLAsTab:(id)tab;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)dictionaryRepresentationForUserActivityUserInfo;
- (NSString)description;
- (WBSCloudTab)initWithDictionary:(id)dictionary;
- (WBSCloudTab)initWithDictionaryFromUserActivityUserInfo:(id)info;
- (WBSCloudTab)initWithParameters:(id)parameters;
- (WBSCloudTab)initWithURL:(id)l uuid:(id)uuid title:(id)title isShowingReader:(BOOL)reader readerScrollPosition:(id)position isPinned:(BOOL)pinned;
- (WBSCloudTab)initWithURL:(id)l uuid:(id)uuid title:(id)title isShowingReader:(BOOL)reader readerScrollPosition:(id)position sceneID:(id)d;
@end

@implementation WBSCloudTab

- (WBSCloudTab)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26.receiver = self;
    v26.super_class = WBSCloudTab;
    self = [(WBSCloudTab *)&v26 init];
    if (self)
    {
      v5 = MEMORY[0x1E695DFF8];
      v6 = [dictionaryCopy safari_stringForKey:@"URL"];
      v7 = [v5 safari_URLWithUserTypedString:v6];
      safari_originalDataAsString = [v7 safari_originalDataAsString];

      if (([safari_originalDataAsString length] - 8193) < 0xFFFFFFFFFFFFE000 || (objc_msgSend(MEMORY[0x1E695DFF8], "safari_URLWithDataAsString:", safari_originalDataAsString), v9 = objc_claimAutoreleasedReturnValue(), url = self->_url, self->_url = v9, url, !self->_url))
      {
        selfCopy = 0;
LABEL_15:

        goto LABEL_16;
      }

      v11 = [dictionaryCopy safari_stringForKey:@"Title"];
      v12 = [v11 length];
      if (v12 < 0x81)
      {
        if (v12)
        {
LABEL_12:
          objc_storeStrong(&self->_title, v11);
          v15 = [dictionaryCopy safari_stringForKey:@"UUID"];
          if (v15)
          {
            v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];
            uuid = self->_uuid;
            self->_uuid = v16;
          }

          v18 = [dictionaryCopy safari_stringForKey:@"OwningSceneID"];
          v19 = [v18 copy];
          sceneID = self->_sceneID;
          self->_sceneID = v19;

          self->_showingReader = [dictionaryCopy safari_BOOLForKey:@"IsShowingReader"];
          v21 = [dictionaryCopy safari_dictionaryForKey:@"ReaderScrollPosition"];
          readerScrollPositionDictionary = self->_readerScrollPositionDictionary;
          self->_readerScrollPositionDictionary = v21;

          self->_pinned = [dictionaryCopy safari_BOOLForKey:@"IsPinned"];
          v23 = [dictionaryCopy safari_numberForKey:@"DateLastViewed"];
          [v23 doubleValue];
          self->_lastViewedTime = v24;

          selfCopy = self;
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

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (WBSCloudTab)initWithDictionaryFromUserActivityUserInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [infoCopy safari_dictionaryForKey:@"com.apple.Safari.CloudTab"];
    self = [(WBSCloudTab *)self initWithDictionary:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WBSCloudTab)initWithURL:(id)l uuid:(id)uuid title:(id)title isShowingReader:(BOOL)reader readerScrollPosition:(id)position sceneID:(id)d
{
  readerCopy = reader;
  dCopy = d;
  positionCopy = position;
  titleCopy = title;
  uuidCopy = uuid;
  lCopy = l;
  v19 = [[WBSCloudTabParameters alloc] initWithURL:lCopy];

  [(WBSCloudTabParameters *)v19 setUuid:uuidCopy];
  [(WBSCloudTabParameters *)v19 setTitle:titleCopy];

  [(WBSCloudTabParameters *)v19 setShowingReader:readerCopy];
  [(WBSCloudTabParameters *)v19 setReaderScrollPosition:positionCopy];

  [(WBSCloudTabParameters *)v19 setSceneID:dCopy];
  v20 = [(WBSCloudTab *)self initWithParameters:v19];

  return v20;
}

- (WBSCloudTab)initWithURL:(id)l uuid:(id)uuid title:(id)title isShowingReader:(BOOL)reader readerScrollPosition:(id)position isPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  readerCopy = reader;
  positionCopy = position;
  titleCopy = title;
  uuidCopy = uuid;
  lCopy = l;
  v18 = [[WBSCloudTabParameters alloc] initWithURL:lCopy];

  [(WBSCloudTabParameters *)v18 setUuid:uuidCopy];
  [(WBSCloudTabParameters *)v18 setTitle:titleCopy];

  [(WBSCloudTabParameters *)v18 setShowingReader:readerCopy];
  [(WBSCloudTabParameters *)v18 setReaderScrollPosition:positionCopy];

  [(WBSCloudTabParameters *)v18 setPinned:pinnedCopy];
  v19 = [(WBSCloudTab *)self initWithParameters:v18];

  return v19;
}

- (WBSCloudTab)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [objc_opt_class() _dictionaryWithParameters:parametersCopy];

  v6 = [(WBSCloudTab *)self initWithDictionary:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dictionaryRepresentation = [(WBSCloudTab *)self dictionaryRepresentation];
      dictionaryRepresentation2 = [(WBSCloudTab *)equalCopy dictionaryRepresentation];
      v7 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasSameUUIDAndURLAsTab:(id)tab
{
  tabCopy = tab;
  uuidString = [tabCopy uuidString];
  uuidString2 = [(WBSCloudTab *)self uuidString];
  v7 = [uuidString isEqualToString:uuidString2];

  if (v7)
  {
    v8 = [tabCopy url];
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
  dictionaryRepresentation = [(WBSCloudTab *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation mutableCopy];

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
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v9 = [v3 stringWithFormat:@"<%@: %p title = %@; url = %@; uuid = %@; showingReader = %d; readerScrollPositionDictionary = %@; isPinned = %d; sceneID = %@>", v5, self, title, url, uUIDString, self->_showingReader, self->_readerScrollPositionDictionary, self->_pinned, self->_sceneID];;

  return v9;
}

+ (id)_dictionaryWithParameters:(id)parameters
{
  v21[2] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v4 = [parametersCopy url];
  uuid = [parametersCopy uuid];
  title = [parametersCopy title];
  isShowingReader = [parametersCopy isShowingReader];
  readerScrollPosition = [parametersCopy readerScrollPosition];
  isPinned = [parametersCopy isPinned];
  sceneID = [parametersCopy sceneID];
  [parametersCopy lastViewedTime];
  v12 = v11;

  if ([v4 safari_isURLTooLongToDisplay])
  {
    v13 = 0;
  }

  else
  {
    safari_userVisibleString = [v4 safari_userVisibleString];
    v15 = safari_userVisibleString;
    if (safari_userVisibleString)
    {
      if (!title)
      {
        title = &stru_1F3A5E418;
      }

      v20[0] = @"URL";
      v20[1] = @"Title";
      v21[0] = safari_userVisibleString;
      v21[1] = title;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v13 = [v16 mutableCopy];

      if (uuid)
      {
        uUIDString = [uuid UUIDString];
        [v13 setObject:uUIDString forKeyedSubscript:@"UUID"];
      }

      if (isPinned)
      {
        [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPinned"];
      }

      if (sceneID)
      {
        [v13 setObject:sceneID forKeyedSubscript:@"OwningSceneID"];
      }

      if (v12 != 0.0)
      {
        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        [v13 setObject:v18 forKeyedSubscript:@"DateLastViewed"];
      }

      if (isShowingReader)
      {
        [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsShowingReader"];
        if ([readerScrollPosition count])
        {
          [v13 setObject:readerScrollPosition forKeyedSubscript:@"ReaderScrollPosition"];
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