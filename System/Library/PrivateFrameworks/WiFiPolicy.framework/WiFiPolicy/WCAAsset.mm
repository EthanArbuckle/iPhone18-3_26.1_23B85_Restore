@interface WCAAsset
+ (WCAAsset)assetWithName:(id)name andExtension:(id)extension;
- (BOOL)isEqual:(id)equal;
- (WCAAsset)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCAAsset

+ (WCAAsset)assetWithName:(id)name andExtension:(id)extension
{
  extensionCopy = extension;
  nameCopy = name;
  v8 = objc_alloc_init(self);
  [v8 setName:nameCopy];

  [v8 setExtension:extensionCopy];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  [v6 appendFormat:@"name: %@", self->_name];
  [v6 appendFormat:@", extension: %@", self->_extension];
  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(WCAAsset *)self name];
    name2 = [v5 name];
    if ([name isEqualToString:name2])
    {
      extension = [(WCAAsset *)self extension];
      extension2 = [v5 extension];
      v10 = [extension isEqualToString:extension2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  extension = self->_extension;
  coderCopy = coder;
  [coderCopy encodeObject:extension forKey:@"_extension"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
}

- (WCAAsset)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WCAAsset;
  coderCopy = coder;
  v4 = [(WCAAsset *)&v10 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"_extension", v10.receiver, v10.super_class}];
  extension = v4->_extension;
  v4->_extension = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];

  name = v4->_name;
  v4->_name = v7;

  return v4;
}

@end