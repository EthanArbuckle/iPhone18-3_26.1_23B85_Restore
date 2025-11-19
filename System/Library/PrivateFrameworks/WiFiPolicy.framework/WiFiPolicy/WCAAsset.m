@interface WCAAsset
+ (WCAAsset)assetWithName:(id)a3 andExtension:(id)a4;
- (BOOL)isEqual:(id)a3;
- (WCAAsset)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCAAsset

+ (WCAAsset)assetWithName:(id)a3 andExtension:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setName:v7];

  [v8 setExtension:v6];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(WCAAsset *)self name];
    v7 = [v5 name];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(WCAAsset *)self extension];
      v9 = [v5 extension];
      v10 = [v8 isEqualToString:v9];
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

- (void)encodeWithCoder:(id)a3
{
  extension = self->_extension;
  v5 = a3;
  [v5 encodeObject:extension forKey:@"_extension"];
  [v5 encodeObject:self->_name forKey:@"_name"];
}

- (WCAAsset)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WCAAsset;
  v3 = a3;
  v4 = [(WCAAsset *)&v10 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"_extension", v10.receiver, v10.super_class}];
  extension = v4->_extension;
  v4->_extension = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];

  name = v4->_name;
  v4->_name = v7;

  return v4;
}

@end