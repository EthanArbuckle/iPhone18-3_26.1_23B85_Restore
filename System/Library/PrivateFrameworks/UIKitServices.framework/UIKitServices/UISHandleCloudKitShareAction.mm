@interface UISHandleCloudKitShareAction
+ (id)cloudKitShareActionWithShareMetadata:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (CKShareMetadata)shareMetadata;
- (UISHandleCloudKitShareAction)initWithShareMetadata:(id)a3;
- (id)data;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation UISHandleCloudKitShareAction

+ (id)cloudKitShareActionWithShareMetadata:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithShareMetadata:v4];

  return v5;
}

- (UISHandleCloudKitShareAction)initWithShareMetadata:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UISHandleCloudKitShareAction.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"shareMetadata"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeObject:v5 forKey:@"CKShareMetadataObjectKey"];
  v8 = [v7 encodedData];
  [v6 setObject:v8 forSetting:1];

  v12.receiver = self;
  v12.super_class = UISHandleCloudKitShareAction;
  v9 = [(UISHandleCloudKitShareAction *)&v12 initWithInfo:v6 responder:0];

  return v9;
}

- (id)data
{
  v2 = [(UISHandleCloudKitShareAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (CKShareMetadata)shareMetadata
{
  cachedMetadata = self->_cachedMetadata;
  if (cachedMetadata)
  {
    goto LABEL_4;
  }

  v4 = [(UISHandleCloudKitShareAction *)self data];
  if (v4)
  {
    v5 = v4;
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

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"data";
  }

  else
  {
    return 0;
  }
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = UISHandleCloudKitShareAction;
  if ([(UISHandleCloudKitShareAction *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }
}

@end