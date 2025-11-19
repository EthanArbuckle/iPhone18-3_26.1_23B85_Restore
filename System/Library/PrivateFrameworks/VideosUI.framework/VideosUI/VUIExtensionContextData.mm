@interface VUIExtensionContextData
- (BOOL)isEqual:(id)a3;
- (VUIExtensionContextData)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VUIExtensionContextData

- (VUIExtensionContextData)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIExtensionContextData;
  v5 = [(VUIExtensionContextData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contextDataDict = v5->_contextDataDict;
    v5->_contextDataDict = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(VUIExtensionContextData *)self contextDataDict];
  v6 = [v4 initWithDictionary:v5];

  return v6;
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
      v6 = [(VUIExtensionContextData *)self contextDataDict];
      v7 = [(VUIExtensionContextData *)v5 contextDataDict];

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