@interface WBSCloudTabCloseRequest
+ (BOOL)isCloudTabCloseRequestDictionary:(id)dictionary;
+ (id)_dictionaryWithURL:(id)l tabUUIDString:(id)string lastModified:(id)modified sourceDeviceUUID:(id)d destinationDeviceUUID:(id)iD;
+ (id)destinationDeviceUUIDInDictionary:(id)dictionary;
- (BOOL)matchesCloudTab:(id)tab;
- (NSDictionary)dictionaryRepresentation;
- (WBSCloudTabCloseRequest)initWithDictionary:(id)dictionary requestUUID:(id)d;
- (WBSCloudTabCloseRequest)initWithURL:(id)l tabUUIDString:(id)string lastModified:(id)modified sourceDeviceUUID:(id)d destinationDeviceUUID:(id)iD requestUUID:(id)uID;
- (id)description;
@end

@implementation WBSCloudTabCloseRequest

- (WBSCloudTabCloseRequest)initWithDictionary:(id)dictionary requestUUID:(id)d
{
  dictionaryCopy = dictionary;
  dCopy = d;
  if (dictionaryCopy && (v26.receiver = self, v26.super_class = WBSCloudTabCloseRequest, (self = [(WBSCloudTabCloseRequest *)&v26 init]) != 0))
  {
    v8 = [dictionaryCopy safari_stringForKey:@"TabURL"];
    safari_bestURLStringForUserTypedString = [v8 safari_bestURLStringForUserTypedString];

    if (![safari_bestURLStringForUserTypedString length])
    {
      goto LABEL_10;
    }

    v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:safari_bestURLStringForUserTypedString];
    url = self->_url;
    self->_url = v10;

    objc_storeStrong(&self->_requestUUID, d);
    v12 = [dictionaryCopy safari_dateForKey:@"LastModified"];
    lastModified = self->_lastModified;
    self->_lastModified = v12;

    v14 = [dictionaryCopy safari_stringForKey:@"TabUUID"];
    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = v14;
    v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
    tabUUID = self->_tabUUID;
    self->_tabUUID = v16;

    v18 = [dictionaryCopy safari_stringForKey:@"SourceDeviceUUID"];

    if ([v18 length])
    {
      v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v18];
      sourceDeviceUUID = self->_sourceDeviceUUID;
      self->_sourceDeviceUUID = v19;
    }

    v21 = [dictionaryCopy safari_stringForKey:@"DestinationDeviceUUID"];

    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];
      destinationDeviceUUID = self->_destinationDeviceUUID;
      self->_destinationDeviceUUID = v22;

      selfCopy = self;
    }

    else
    {
LABEL_10:
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WBSCloudTabCloseRequest)initWithURL:(id)l tabUUIDString:(id)string lastModified:(id)modified sourceDeviceUUID:(id)d destinationDeviceUUID:(id)iD requestUUID:(id)uID
{
  uIDCopy = uID;
  iDCopy = iD;
  dCopy = d;
  modifiedCopy = modified;
  stringCopy = string;
  lCopy = l;
  v20 = [objc_opt_class() _dictionaryWithURL:lCopy tabUUIDString:stringCopy lastModified:modifiedCopy sourceDeviceUUID:dCopy destinationDeviceUUID:iDCopy];

  v21 = [(WBSCloudTabCloseRequest *)self initWithDictionary:v20 requestUUID:uIDCopy];
  return v21;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_class();
  url = self->_url;
  uUIDString = [(NSUUID *)self->_tabUUID UUIDString];
  v6 = [v3 _dictionaryWithURL:url tabUUIDString:uUIDString lastModified:self->_lastModified sourceDeviceUUID:self->_sourceDeviceUUID destinationDeviceUUID:self->_destinationDeviceUUID];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  url = self->_url;
  uUIDString = [(NSUUID *)self->_tabUUID UUIDString];
  uUIDString2 = [(NSUUID *)self->_sourceDeviceUUID UUIDString];
  uUIDString3 = [(NSUUID *)self->_destinationDeviceUUID UUIDString];
  v10 = [v3 stringWithFormat:@"<%@: %p url = %@; tab UUID = %@; source device UUID = %@; destination device UUID = %@; lastModified = %@>", v5, self, url, uUIDString, uUIDString2, uUIDString3, self->_lastModified];;

  return v10;
}

+ (id)_dictionaryWithURL:(id)l tabUUIDString:(id)string lastModified:(id)modified sourceDeviceUUID:(id)d destinationDeviceUUID:(id)iD
{
  v24[5] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  modifiedCopy = modified;
  dCopy = d;
  iDCopy = iD;
  v15 = iDCopy;
  v16 = 0;
  if (stringCopy && iDCopy)
  {
    safari_userVisibleString = [l safari_userVisibleString];
    v18 = safari_userVisibleString;
    if (safari_userVisibleString)
    {
      v23[0] = @"DictionaryType";
      v23[1] = @"TabURL";
      v24[0] = @"CloseTabRequest";
      v24[1] = safari_userVisibleString;
      v24[2] = stringCopy;
      v23[2] = @"TabUUID";
      v23[3] = @"DestinationDeviceUUID";
      uUIDString = [v15 UUIDString];
      v23[4] = @"LastModified";
      v24[3] = uUIDString;
      v24[4] = modifiedCopy;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];
      v16 = [v20 mutableCopy];

      uUIDString2 = [dCopy UUIDString];
      [v16 setObject:uUIDString2 forKeyedSubscript:@"SourceDeviceUUID"];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)matchesCloudTab:(id)tab
{
  tabCopy = tab;
  uuid = [tabCopy uuid];
  v6 = [uuid isEqual:self->_tabUUID];

  if (v6)
  {
    v7 = [tabCopy url];
    v8 = [v7 isEqual:self->_url];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isCloudTabCloseRequestDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [dictionaryCopy safari_stringForKey:@"DictionaryType"];
    v5 = [v4 isEqualToString:@"CloseTabRequest"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)destinationDeviceUUIDInDictionary:(id)dictionary
{
  v3 = [dictionary safari_stringForKey:@"DestinationDeviceUUID"];
  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end