@interface SFMonogramImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMonogramImage)initWithCoder:(id)coder;
- (SFMonogramImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMonogramImage

- (SFMonogramImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFMonogramImage;
  v5 = [(SFMonogramImage *)&v10 init];
  if (v5)
  {
    monogramLetters = [protobufCopy monogramLetters];

    if (monogramLetters)
    {
      monogramLetters2 = [protobufCopy monogramLetters];
      [(SFMonogramImage *)v5 setMonogramLetters:monogramLetters2];
    }

    if ([protobufCopy monogramStyle])
    {
      -[SFMonogramImage setMonogramStyle:](v5, "setMonogramStyle:", [protobufCopy monogramStyle]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFMonogramImage;
  v3 = [(SFImage *)&v8 hash];
  monogramLetters = [(SFMonogramImage *)self monogramLetters];
  v5 = [monogramLetters hash];
  v6 = v5 ^ [(SFMonogramImage *)self monogramStyle];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFMonogramImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFMonogramImage;
      if ([(SFImage *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        monogramLetters = [(SFMonogramImage *)self monogramLetters];
        monogramLetters2 = [(SFMonogramImage *)v7 monogramLetters];
        if ((monogramLetters != 0) == (monogramLetters2 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        monogramLetters3 = [(SFMonogramImage *)self monogramLetters];
        if (!monogramLetters3 || (-[SFMonogramImage monogramLetters](self, "monogramLetters"), v3 = objc_claimAutoreleasedReturnValue(), -[SFMonogramImage monogramLetters](v7, "monogramLetters"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          monogramStyle = [(SFMonogramImage *)self monogramStyle];
          v11 = monogramStyle == [(SFMonogramImage *)v7 monogramStyle];
          if (!monogramLetters3)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFMonogramImage;
  v4 = [(SFImage *)&v8 copyWithZone:zone];
  monogramLetters = [(SFMonogramImage *)self monogramLetters];
  v6 = [monogramLetters copy];
  [v4 setMonogramLetters:v6];

  [v4 setMonogramStyle:{-[SFMonogramImage monogramStyle](self, "monogramStyle")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMonogramImage alloc] initWithFacade:self];
  jsonData = [(_SFPBMonogramImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMonogramImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMonogramImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMonogramImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFMonogramImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

@end