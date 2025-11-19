@interface VUIDocumentContextData
- (BOOL)isEqual:(id)a3;
- (VUIDocumentContextData)initWithDictionary:(id)a3;
- (id)jsonData;
@end

@implementation VUIDocumentContextData

- (VUIDocumentContextData)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIDocumentContextData;
  v5 = [(VUIDocumentContextData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contextDataDict = v5->_contextDataDict;
    v5->_contextDataDict = v6;
  }

  return v5;
}

- (id)jsonData
{
  v3 = [(VUIDocumentContextData *)self contextDataDict];
  v4 = [v3 mutableCopy];

  v5 = [(VUIDocumentContextData *)self extensionContextData];
  v6 = [v5 jsonData];
  [v4 setObject:v6 forKeyedSubscript:@"tvExtensionConfig"];

  v7 = [v4 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VUIDocumentContextData *)self jsonData];
      v7 = [(VUIDocumentContextData *)v5 jsonData];

      v8 = [v6 isEqualToDictionary:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end