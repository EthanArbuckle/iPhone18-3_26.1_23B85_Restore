@interface UASharedPasteboardInfoWrapper
- (UASharedPasteboardInfoWrapper)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UASharedPasteboardInfoWrapper

- (UASharedPasteboardInfoWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UASharedPasteboardInfoWrapper *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoWrapperPBInfoKey"];
    [(UASharedPasteboardInfoWrapper *)v5 setPbinfo:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoWrapperExtraDataKey"];
    [(UASharedPasteboardInfoWrapper *)v5 setExtraData:v7];

    -[UASharedPasteboardInfoWrapper setExtraDataType:](v5, "setExtraDataType:", [coderCopy decodeIntegerForKey:@"UASharedPasteboardInfoWrapperExtraTypeKey"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UASharedPasteboardInfoWrapperErrorKey"];
    [(UASharedPasteboardInfoWrapper *)v5 setError:v8];

    -[UASharedPasteboardInfoWrapper setProtocolVersion:](v5, "setProtocolVersion:", [coderCopy decodeIntegerForKey:@"UASharedPasteboardInfoWrapperProtocolVersionKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pbinfo = [(UASharedPasteboardInfoWrapper *)self pbinfo];
  [coderCopy encodeObject:pbinfo forKey:@"UASharedPasteboardInfoWrapperPBInfoKey"];

  extraData = [(UASharedPasteboardInfoWrapper *)self extraData];
  [coderCopy encodeObject:extraData forKey:@"UASharedPasteboardInfoWrapperExtraDataKey"];

  [coderCopy encodeInteger:-[UASharedPasteboardInfoWrapper extraDataType](self forKey:{"extraDataType"), @"UASharedPasteboardInfoWrapperExtraTypeKey"}];
  error = [(UASharedPasteboardInfoWrapper *)self error];
  [coderCopy encodeObject:error forKey:@"UASharedPasteboardInfoWrapperErrorKey"];

  [coderCopy encodeInteger:-[UASharedPasteboardInfoWrapper protocolVersion](self forKey:{"protocolVersion"), @"UASharedPasteboardInfoWrapperProtocolVersionKey"}];
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v9.receiver = self;
  v9.super_class = UASharedPasteboardInfoWrapper;
  v4 = [(UASharedPasteboardInfoWrapper *)&v9 description];
  extraDataType = [(UASharedPasteboardInfoWrapper *)self extraDataType];
  error = [(UASharedPasteboardInfoWrapper *)self error];
  pbinfo = [(UASharedPasteboardInfoWrapper *)self pbinfo];
  [v3 appendFormat:@"%@: Extra Data Type: %ld, Error: %@, PBInfo: %@", v4, extraDataType, error, pbinfo];

  return v3;
}

@end