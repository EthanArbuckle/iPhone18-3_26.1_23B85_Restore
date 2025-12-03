@interface SFShortcutsImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShortcutsImage)initWithCoder:(id)coder;
- (SFShortcutsImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShortcutsImage

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFShortcutsImage;
  v3 = [(SFImage *)&v7 hash];
  lnPropertyIdentifier = [(SFShortcutsImage *)self lnPropertyIdentifier];
  v5 = [lnPropertyIdentifier hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFShortcutsImage *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFShortcutsImage, [(SFImage *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    lnPropertyIdentifier = [(SFShortcutsImage *)self lnPropertyIdentifier];
    lnPropertyIdentifier2 = [(SFShortcutsImage *)v5 lnPropertyIdentifier];
    if ((lnPropertyIdentifier != 0) == (lnPropertyIdentifier2 == 0))
    {
      v11 = 0;
    }

    else
    {
      lnPropertyIdentifier3 = [(SFShortcutsImage *)self lnPropertyIdentifier];
      if (lnPropertyIdentifier3)
      {
        lnPropertyIdentifier4 = [(SFShortcutsImage *)self lnPropertyIdentifier];
        lnPropertyIdentifier5 = [(SFShortcutsImage *)v5 lnPropertyIdentifier];
        v11 = [lnPropertyIdentifier4 isEqual:lnPropertyIdentifier5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFShortcutsImage;
  v4 = [(SFImage *)&v8 copyWithZone:zone];
  lnPropertyIdentifier = [(SFShortcutsImage *)self lnPropertyIdentifier];
  v6 = [lnPropertyIdentifier copy];
  [v4 setLnPropertyIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShortcutsImage alloc] initWithFacade:self];
  jsonData = [(_SFPBShortcutsImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShortcutsImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShortcutsImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFShortcutsImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFShortcutsImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFShortcutsImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFShortcutsImage;
  v5 = [(SFShortcutsImage *)&v10 init];
  if (v5)
  {
    lnPropertyIdentifier = [protobufCopy lnPropertyIdentifier];

    if (lnPropertyIdentifier)
    {
      lnPropertyIdentifier2 = [protobufCopy lnPropertyIdentifier];
      [(SFShortcutsImage *)v5 setLnPropertyIdentifier:lnPropertyIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

@end