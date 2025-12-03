@interface NSDataAsset
+ (id)_namedDataPrivateAccessorWithName:(id)name bundle:(id)bundle;
- (BOOL)isEqual:(id)equal;
- (NSData)data;
- (NSDataAsset)initWithName:(NSDataAssetName)name;
- (NSDataAsset)initWithName:(NSDataAssetName)name bundle:(NSBundle *)bundle;
- (NSDataAssetName)name;
- (NSString)typeIdentifier;
- (id)description;
- (void)dealloc;
@end

@implementation NSDataAsset

- (NSData)data
{
  result = [(CUINamedData *)self->_namedData data];
  if (!result)
  {
    v3 = MEMORY[0x1E695DEF0];

    return [v3 data];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSDataAsset;
  [(NSDataAsset *)&v3 dealloc];
}

- (NSDataAsset)initWithName:(NSDataAssetName)name
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];

  return [(NSDataAsset *)self initWithName:name bundle:mainBundle];
}

+ (id)_namedDataPrivateAccessorWithName:(id)name bundle:(id)bundle
{
  v5 = [MEMORY[0x1E6999368] defaultUICatalogForBundle:bundle];

  return [v5 dataWithName:name];
}

- (NSDataAsset)initWithName:(NSDataAssetName)name bundle:(NSBundle *)bundle
{
  if (!name)
  {
    [NSDataAsset initWithName:a2 bundle:?];
  }

  v11.receiver = self;
  v11.super_class = NSDataAsset;
  v7 = [(NSDataAsset *)&v11 init];
  if (v7)
  {
    if (!bundle)
    {
      bundle = [MEMORY[0x1E696AAE8] mainBundle];
    }

    if (_NSTextScalingTypeForCurrentEnvironment() == 1)
    {
      v8 = [objc_opt_class() _namedDataPrivateAccessorWithName:name bundle:bundle];
    }

    else
    {
      v8 = [objc_msgSend(MEMORY[0x1E6999368] defaultUICatalogForBundle:{bundle), "dataWithName:", name}];
    }

    v9 = v8;
    v7->_namedData = v9;
    if (!v9)
    {

      return 0;
    }
  }

  return v7;
}

- (NSDataAssetName)name
{
  result = [(CUINamedData *)self->_namedData name];
  if (!result)
  {
    return &stru_1F01AD578;
  }

  return result;
}

- (NSString)typeIdentifier
{
  result = [(CUINamedData *)self->_namedData utiType];
  if (!result)
  {
    v3 = *MEMORY[0x1E6982D60];

    return [v3 identifier];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  namedData = self->_namedData;
  v6 = *(equal + 1);

  return [(CUINamedData *)namedData isEqual:v6];
}

- (id)description
{
  name = [(NSDataAsset *)self name];
  typeIdentifier = [(NSDataAsset *)self typeIdentifier];
  data = [(NSDataAsset *)self data];
  v7.receiver = self;
  v7.super_class = NSDataAsset;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ name:'%@' typeIdentifier='%@' data=%p (length=%lu)", -[NSDataAsset description](&v7, sel_description), name, typeIdentifier, data, -[NSData length](data, "length")];
}

@end