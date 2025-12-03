@interface VUIDocumentContextData
- (BOOL)isEqual:(id)equal;
- (VUIDocumentContextData)initWithDictionary:(id)dictionary;
- (id)jsonData;
@end

@implementation VUIDocumentContextData

- (VUIDocumentContextData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = VUIDocumentContextData;
  v5 = [(VUIDocumentContextData *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    contextDataDict = v5->_contextDataDict;
    v5->_contextDataDict = v6;
  }

  return v5;
}

- (id)jsonData
{
  contextDataDict = [(VUIDocumentContextData *)self contextDataDict];
  v4 = [contextDataDict mutableCopy];

  extensionContextData = [(VUIDocumentContextData *)self extensionContextData];
  jsonData = [extensionContextData jsonData];
  [v4 setObject:jsonData forKeyedSubscript:@"tvExtensionConfig"];

  v7 = [v4 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      jsonData = [(VUIDocumentContextData *)self jsonData];
      jsonData2 = [(VUIDocumentContextData *)v5 jsonData];

      v8 = [jsonData isEqualToDictionary:jsonData2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end