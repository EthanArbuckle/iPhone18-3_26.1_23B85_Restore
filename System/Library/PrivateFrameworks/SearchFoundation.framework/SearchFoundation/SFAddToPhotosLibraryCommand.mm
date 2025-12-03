@interface SFAddToPhotosLibraryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAddToPhotosLibraryCommand)initWithCoder:(id)coder;
- (SFAddToPhotosLibraryCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAddToPhotosLibraryCommand

- (SFAddToPhotosLibraryCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFAddToPhotosLibraryCommand;
  v5 = [(SFAddToPhotosLibraryCommand *)&v12 init];
  if (v5)
  {
    image = [protobufCopy image];

    if (image)
    {
      v7 = [SFImage alloc];
      image2 = [protobufCopy image];
      v9 = [(SFImage *)v7 initWithProtobuf:image2];
      [(SFAddToPhotosLibraryCommand *)v5 setImage:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFAddToPhotosLibraryCommand;
  v3 = [(SFCommand *)&v7 hash];
  image = [(SFAddToPhotosLibraryCommand *)self image];
  v5 = [image hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFAddToPhotosLibraryCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFAddToPhotosLibraryCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    image = [(SFAddToPhotosLibraryCommand *)self image];
    image2 = [(SFAddToPhotosLibraryCommand *)v5 image];
    if ((image != 0) == (image2 == 0))
    {
      v11 = 0;
    }

    else
    {
      image3 = [(SFAddToPhotosLibraryCommand *)self image];
      if (image3)
      {
        image4 = [(SFAddToPhotosLibraryCommand *)self image];
        image5 = [(SFAddToPhotosLibraryCommand *)v5 image];
        v11 = [image4 isEqual:image5];
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
  v8.super_class = SFAddToPhotosLibraryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  image = [(SFAddToPhotosLibraryCommand *)self image];
  v6 = [image copy];
  [v4 setImage:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAddToPhotosLibraryCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBAddToPhotosLibraryCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAddToPhotosLibraryCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAddToPhotosLibraryCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFAddToPhotosLibraryCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFAddToPhotosLibraryCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFAddToPhotosLibraryCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = [(SFCommand *)v8 image];
    [(SFAddToPhotosLibraryCommand *)v5 setImage:image];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

@end