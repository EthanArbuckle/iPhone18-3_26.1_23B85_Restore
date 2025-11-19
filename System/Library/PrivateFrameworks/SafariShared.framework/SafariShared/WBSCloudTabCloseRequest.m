@interface WBSCloudTabCloseRequest
+ (BOOL)isCloudTabCloseRequestDictionary:(id)a3;
+ (id)_dictionaryWithURL:(id)a3 tabUUIDString:(id)a4 lastModified:(id)a5 sourceDeviceUUID:(id)a6 destinationDeviceUUID:(id)a7;
+ (id)destinationDeviceUUIDInDictionary:(id)a3;
- (BOOL)matchesCloudTab:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSCloudTabCloseRequest)initWithDictionary:(id)a3 requestUUID:(id)a4;
- (WBSCloudTabCloseRequest)initWithURL:(id)a3 tabUUIDString:(id)a4 lastModified:(id)a5 sourceDeviceUUID:(id)a6 destinationDeviceUUID:(id)a7 requestUUID:(id)a8;
- (id)description;
@end

@implementation WBSCloudTabCloseRequest

- (WBSCloudTabCloseRequest)initWithDictionary:(id)a3 requestUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v26.receiver = self, v26.super_class = WBSCloudTabCloseRequest, (self = [(WBSCloudTabCloseRequest *)&v26 init]) != 0))
  {
    v8 = [v6 safari_stringForKey:@"TabURL"];
    v9 = [v8 safari_bestURLStringForUserTypedString];

    if (![v9 length])
    {
      goto LABEL_10;
    }

    v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];
    url = self->_url;
    self->_url = v10;

    objc_storeStrong(&self->_requestUUID, a4);
    v12 = [v6 safari_dateForKey:@"LastModified"];
    lastModified = self->_lastModified;
    self->_lastModified = v12;

    v14 = [v6 safari_stringForKey:@"TabUUID"];
    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = v14;
    v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
    tabUUID = self->_tabUUID;
    self->_tabUUID = v16;

    v18 = [v6 safari_stringForKey:@"SourceDeviceUUID"];

    if ([v18 length])
    {
      v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v18];
      sourceDeviceUUID = self->_sourceDeviceUUID;
      self->_sourceDeviceUUID = v19;
    }

    v21 = [v6 safari_stringForKey:@"DestinationDeviceUUID"];

    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];
      destinationDeviceUUID = self->_destinationDeviceUUID;
      self->_destinationDeviceUUID = v22;

      v24 = self;
    }

    else
    {
LABEL_10:
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (WBSCloudTabCloseRequest)initWithURL:(id)a3 tabUUIDString:(id)a4 lastModified:(id)a5 sourceDeviceUUID:(id)a6 destinationDeviceUUID:(id)a7 requestUUID:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [objc_opt_class() _dictionaryWithURL:v19 tabUUIDString:v18 lastModified:v17 sourceDeviceUUID:v16 destinationDeviceUUID:v15];

  v21 = [(WBSCloudTabCloseRequest *)self initWithDictionary:v20 requestUUID:v14];
  return v21;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_class();
  url = self->_url;
  v5 = [(NSUUID *)self->_tabUUID UUIDString];
  v6 = [v3 _dictionaryWithURL:url tabUUIDString:v5 lastModified:self->_lastModified sourceDeviceUUID:self->_sourceDeviceUUID destinationDeviceUUID:self->_destinationDeviceUUID];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  url = self->_url;
  v7 = [(NSUUID *)self->_tabUUID UUIDString];
  v8 = [(NSUUID *)self->_sourceDeviceUUID UUIDString];
  v9 = [(NSUUID *)self->_destinationDeviceUUID UUIDString];
  v10 = [v3 stringWithFormat:@"<%@: %p url = %@; tab UUID = %@; source device UUID = %@; destination device UUID = %@; lastModified = %@>", v5, self, url, v7, v8, v9, self->_lastModified];;

  return v10;
}

+ (id)_dictionaryWithURL:(id)a3 tabUUIDString:(id)a4 lastModified:(id)a5 sourceDeviceUUID:(id)a6 destinationDeviceUUID:(id)a7
{
  v24[5] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  v16 = 0;
  if (v11 && v14)
  {
    v17 = [a3 safari_userVisibleString];
    v18 = v17;
    if (v17)
    {
      v23[0] = @"DictionaryType";
      v23[1] = @"TabURL";
      v24[0] = @"CloseTabRequest";
      v24[1] = v17;
      v24[2] = v11;
      v23[2] = @"TabUUID";
      v23[3] = @"DestinationDeviceUUID";
      v19 = [v15 UUIDString];
      v23[4] = @"LastModified";
      v24[3] = v19;
      v24[4] = v12;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];
      v16 = [v20 mutableCopy];

      v21 = [v13 UUIDString];
      [v16 setObject:v21 forKeyedSubscript:@"SourceDeviceUUID"];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)matchesCloudTab:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 isEqual:self->_tabUUID];

  if (v6)
  {
    v7 = [v4 url];
    v8 = [v7 isEqual:self->_url];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isCloudTabCloseRequestDictionary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safari_stringForKey:@"DictionaryType"];
    v5 = [v4 isEqualToString:@"CloseTabRequest"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)destinationDeviceUUIDInDictionary:(id)a3
{
  v3 = [a3 safari_stringForKey:@"DestinationDeviceUUID"];
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