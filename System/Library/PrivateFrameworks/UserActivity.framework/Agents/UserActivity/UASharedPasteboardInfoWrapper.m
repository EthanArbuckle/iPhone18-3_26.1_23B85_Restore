@interface UASharedPasteboardInfoWrapper
- (UASharedPasteboardInfoWrapper)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UASharedPasteboardInfoWrapper

- (UASharedPasteboardInfoWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UASharedPasteboardInfoWrapper *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoWrapperPBInfoKey"];
    [(UASharedPasteboardInfoWrapper *)v5 setPbinfo:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoWrapperExtraDataKey"];
    [(UASharedPasteboardInfoWrapper *)v5 setExtraData:v7];

    -[UASharedPasteboardInfoWrapper setExtraDataType:](v5, "setExtraDataType:", [v4 decodeIntegerForKey:@"UASharedPasteboardInfoWrapperExtraTypeKey"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoWrapperErrorKey"];
    [(UASharedPasteboardInfoWrapper *)v5 setError:v8];

    -[UASharedPasteboardInfoWrapper setProtocolVersion:](v5, "setProtocolVersion:", [v4 decodeIntegerForKey:@"UASharedPasteboardInfoWrapperProtocolVersionKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(UASharedPasteboardInfoWrapper *)self pbinfo];
  [v7 encodeObject:v4 forKey:@"UASharedPasteboardInfoWrapperPBInfoKey"];

  v5 = [(UASharedPasteboardInfoWrapper *)self extraData];
  [v7 encodeObject:v5 forKey:@"UASharedPasteboardInfoWrapperExtraDataKey"];

  [v7 encodeInteger:-[UASharedPasteboardInfoWrapper extraDataType](self forKey:{"extraDataType"), @"UASharedPasteboardInfoWrapperExtraTypeKey"}];
  v6 = [(UASharedPasteboardInfoWrapper *)self error];
  [v7 encodeObject:v6 forKey:@"UASharedPasteboardInfoWrapperErrorKey"];

  [v7 encodeInteger:-[UASharedPasteboardInfoWrapper protocolVersion](self forKey:{"protocolVersion"), @"UASharedPasteboardInfoWrapperProtocolVersionKey"}];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v9.receiver = self;
  v9.super_class = UASharedPasteboardInfoWrapper;
  v4 = [(UASharedPasteboardInfoWrapper *)&v9 description];
  v5 = [(UASharedPasteboardInfoWrapper *)self extraDataType];
  v6 = [(UASharedPasteboardInfoWrapper *)self error];
  v7 = [(UASharedPasteboardInfoWrapper *)self pbinfo];
  [v3 appendFormat:@"%@: Extra Data Type: %ld, Error: %@, PBInfo: %@", v4, v5, v6, v7];

  return v3;
}

@end