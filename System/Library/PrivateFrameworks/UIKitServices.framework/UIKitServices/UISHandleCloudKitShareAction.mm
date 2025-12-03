@interface UISHandleCloudKitShareAction
+ (id)cloudKitShareActionWithShareMetadata:(id)metadata;
- (BOOL)isKindOfClass:(Class)class;
- (CKShareMetadata)shareMetadata;
- (UISHandleCloudKitShareAction)initWithShareMetadata:(id)metadata;
- (id)data;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation UISHandleCloudKitShareAction

+ (id)cloudKitShareActionWithShareMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [[self alloc] initWithShareMetadata:metadataCopy];

  return v5;
}

- (UISHandleCloudKitShareAction)initWithShareMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISHandleCloudKitShareAction.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"shareMetadata"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeObject:metadataCopy forKey:@"CKShareMetadataObjectKey"];
  encodedData = [v7 encodedData];
  [v6 setObject:encodedData forSetting:1];

  v12.receiver = self;
  v12.super_class = UISHandleCloudKitShareAction;
  v9 = [(UISHandleCloudKitShareAction *)&v12 initWithInfo:v6 responder:0];

  return v9;
}

- (id)data
{
  info = [(UISHandleCloudKitShareAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (CKShareMetadata)shareMetadata
{
  cachedMetadata = self->_cachedMetadata;
  if (cachedMetadata)
  {
    goto LABEL_4;
  }

  data = [(UISHandleCloudKitShareAction *)self data];
  if (data)
  {
    v5 = data;
    CKShareMetadataClass = getCKShareMetadataClass();
    v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
    [v7 _enableStrictSecureDecodingMode];
    v8 = [v7 decodeObjectOfClass:CKShareMetadataClass forKey:@"CKShareMetadataObjectKey"];
    v9 = self->_cachedMetadata;
    self->_cachedMetadata = v8;

    [v7 finishDecoding];
    cachedMetadata = self->_cachedMetadata;
LABEL_4:
    v10 = cachedMetadata;
    goto LABEL_5;
  }

  NSLog(&cfstr_SInvalidUishan.isa, "[UISHandleCloudKitShareAction shareMetadata]", self);
  v10 = 0;
LABEL_5:

  return v10;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"data";
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = UISHandleCloudKitShareAction;
  if ([(UISHandleCloudKitShareAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

@end