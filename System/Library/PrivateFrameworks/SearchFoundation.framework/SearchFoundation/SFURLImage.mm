@interface SFURLImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (SFURLImage)initWithCoder:(id)coder;
- (SFURLImage)initWithProtobuf:(id)protobuf;
- (SFURLImage)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFURLImage

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFURLImage;
  v3 = [(SFImage *)&v9 hash];
  urlValue = [(SFURLImage *)self urlValue];
  v5 = [urlValue hash];
  darkUrlValue = [(SFURLImage *)self darkUrlValue];
  v7 = v5 ^ [darkUrlValue hash];

  return v7 ^ v3;
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
    if ([(SFURLImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFURLImage;
      if ([(SFImage *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        urlValue = [(SFURLImage *)self urlValue];
        urlValue2 = [(SFURLImage *)v6 urlValue];
        if ((urlValue != 0) == (urlValue2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        urlValue3 = [(SFURLImage *)self urlValue];
        if (urlValue3)
        {
          urlValue4 = [(SFURLImage *)self urlValue];
          urlValue5 = [(SFURLImage *)v6 urlValue];
          if (![urlValue4 isEqual:urlValue5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = urlValue5;
        }

        darkUrlValue = [(SFURLImage *)self darkUrlValue];
        darkUrlValue2 = [(SFURLImage *)v6 darkUrlValue];
        v14 = darkUrlValue2;
        if ((darkUrlValue != 0) == (darkUrlValue2 == 0))
        {

          v11 = 0;
        }

        else
        {
          darkUrlValue3 = [(SFURLImage *)self darkUrlValue];
          if (darkUrlValue3)
          {
            v16 = darkUrlValue3;
            darkUrlValue4 = [(SFURLImage *)self darkUrlValue];
            [(SFURLImage *)v6 darkUrlValue];
            v17 = v20 = urlValue4;
            v11 = [darkUrlValue4 isEqual:v17];

            urlValue4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        urlValue5 = v21;
        if (!urlValue3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFURLImage;
  v4 = [(SFImage *)&v10 copyWithZone:zone];
  urlValue = [(SFURLImage *)self urlValue];
  v6 = [urlValue copy];
  [v4 setUrlValue:v6];

  darkUrlValue = [(SFURLImage *)self darkUrlValue];
  v8 = [darkUrlValue copy];
  [v4 setDarkUrlValue:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBURLImage alloc] initWithFacade:self];
  jsonData = [(_SFPBURLImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBURLImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBURLImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBImage alloc] initWithFacade:self];
  data = [(_SFPBImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFURLImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBImage alloc] initWithData:v5];
  v9.receiver = self;
  v9.super_class = SFURLImage;
  v7 = [(SFImage *)&v9 initWithProtobuf:v6];

  return v7;
}

- (SFURLImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFURLImage;
  v5 = [(SFURLImage *)&v14 init];
  if (v5)
  {
    urlValue = [protobufCopy urlValue];

    if (urlValue)
    {
      urlValue2 = [protobufCopy urlValue];
      v8 = _SFPBURLHandwrittenTranslator(urlValue2);
      [(SFURLImage *)v5 setUrlValue:v8];
    }

    darkUrlValue = [protobufCopy darkUrlValue];

    if (darkUrlValue)
    {
      darkUrlValue2 = [protobufCopy darkUrlValue];
      v11 = _SFPBURLHandwrittenTranslator(darkUrlValue2);
      [(SFURLImage *)v5 setDarkUrlValue:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SFURLImage;
  v4 = [(SFURLImage *)&v9 description];
  urlValue = [(SFURLImage *)self urlValue];
  absoluteString = [urlValue absoluteString];
  v7 = [v3 stringWithFormat:@"%@ - %@", v4, absoluteString];

  return v7;
}

- (SFURLImage)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = SFURLImage;
  v5 = [(SFURLImage *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SFURLImage *)v5 setUrlValue:lCopy];
    v7 = v6;
  }

  return v6;
}

@end