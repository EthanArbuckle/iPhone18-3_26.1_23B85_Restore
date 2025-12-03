@interface VUIExtensionContextData
- (BOOL)isEqual:(id)equal;
- (VUIExtensionContextData)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VUIExtensionContextData

- (VUIExtensionContextData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = VUIExtensionContextData;
  v5 = [(VUIExtensionContextData *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    contextDataDict = v5->_contextDataDict;
    v5->_contextDataDict = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  contextDataDict = [(VUIExtensionContextData *)self contextDataDict];
  v6 = [v4 initWithDictionary:contextDataDict];

  return v6;
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
      contextDataDict = [(VUIExtensionContextData *)self contextDataDict];
      contextDataDict2 = [(VUIExtensionContextData *)v5 contextDataDict];

      v8 = [contextDataDict isEqualToDictionary:contextDataDict2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end