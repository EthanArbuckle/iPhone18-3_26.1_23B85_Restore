@interface SFMessageAttachment
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMessageAttachment)initWithCoder:(id)coder;
- (SFMessageAttachment)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMessageAttachment

- (unint64_t)hash
{
  type = [(SFMessageAttachment *)self type];
  v4 = [(SFMessageAttachment *)self url];
  v5 = [v4 hash] ^ type;
  linkMetadata = [(SFMessageAttachment *)self linkMetadata];
  v7 = [linkMetadata hash];
  photosLibraryImage = [(SFMessageAttachment *)self photosLibraryImage];
  v9 = v7 ^ [photosLibraryImage hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFMessageAttachment *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      type = [(SFMessageAttachment *)self type];
      if (type != [(SFMessageAttachment *)v6 type])
      {
        v12 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v8 = [(SFMessageAttachment *)self url];
      v9 = [(SFMessageAttachment *)v6 url];
      if ((v8 != 0) == (v9 == 0))
      {
        v12 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v10 = [(SFMessageAttachment *)self url];
      if (v10)
      {
        v3 = [(SFMessageAttachment *)self url];
        v11 = [(SFMessageAttachment *)v6 url];
        if (![v3 isEqual:v11])
        {
          v12 = 0;
          goto LABEL_30;
        }

        v32 = v11;
      }

      linkMetadata = [(SFMessageAttachment *)self linkMetadata];
      linkMetadata2 = [(SFMessageAttachment *)v6 linkMetadata];
      v15 = linkMetadata2;
      if ((linkMetadata != 0) == (linkMetadata2 == 0))
      {

        v12 = 0;
        goto LABEL_29;
      }

      linkMetadata3 = [(SFMessageAttachment *)self linkMetadata];
      if (linkMetadata3)
      {
        v26 = linkMetadata;
        linkMetadata4 = [(SFMessageAttachment *)self linkMetadata];
        linkMetadata5 = [(SFMessageAttachment *)v6 linkMetadata];
        v29 = linkMetadata4;
        if (![linkMetadata4 isEqual:?])
        {
          v12 = 0;
          linkMetadata = v26;
          goto LABEL_27;
        }

        v30 = linkMetadata3;
        v31 = v3;
        linkMetadata = v26;
      }

      else
      {
        v30 = 0;
        v31 = v3;
      }

      photosLibraryImage = [(SFMessageAttachment *)self photosLibraryImage];
      photosLibraryImage2 = [(SFMessageAttachment *)v6 photosLibraryImage];
      if ((photosLibraryImage != 0) == (photosLibraryImage2 == 0))
      {

        v12 = 0;
        linkMetadata3 = v30;
        v3 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v25 = photosLibraryImage;
        v27 = photosLibraryImage2;
        photosLibraryImage3 = [(SFMessageAttachment *)self photosLibraryImage];
        linkMetadata3 = v30;
        if (photosLibraryImage3)
        {
          v24 = photosLibraryImage3;
          photosLibraryImage4 = [(SFMessageAttachment *)self photosLibraryImage];
          photosLibraryImage5 = [(SFMessageAttachment *)v6 photosLibraryImage];
          v12 = [photosLibraryImage4 isEqual:?];
        }

        else
        {

          v12 = 1;
        }

        v3 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

LABEL_27:

LABEL_28:
LABEL_29:
      v11 = v32;
      if (!v10)
      {
LABEL_31:

        goto LABEL_32;
      }

LABEL_30:

      goto LABEL_31;
    }

    v12 = 0;
  }

LABEL_34:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setType:{-[SFMessageAttachment type](self, "type")}];
  v5 = [(SFMessageAttachment *)self url];
  v6 = [v5 copy];
  [v4 setUrl:v6];

  linkMetadata = [(SFMessageAttachment *)self linkMetadata];
  v8 = [linkMetadata copy];
  [v4 setLinkMetadata:v8];

  photosLibraryImage = [(SFMessageAttachment *)self photosLibraryImage];
  v10 = [photosLibraryImage copy];
  [v4 setPhotosLibraryImage:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMessageAttachment alloc] initWithFacade:self];
  jsonData = [(_SFPBMessageAttachment *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMessageAttachment alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMessageAttachment *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMessageAttachment alloc] initWithFacade:self];
  data = [(_SFPBMessageAttachment *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMessageAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMessageAttachment alloc] initWithData:v5];
  v7 = [(SFMessageAttachment *)self initWithProtobuf:v6];

  return v7;
}

- (SFMessageAttachment)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v17.receiver = self;
  v17.super_class = SFMessageAttachment;
  v5 = [(SFMessageAttachment *)&v17 init];
  if (v5)
  {
    if ([protobufCopy type])
    {
      -[SFMessageAttachment setType:](v5, "setType:", [protobufCopy type]);
    }

    v6 = [protobufCopy url];

    if (v6)
    {
      v7 = [protobufCopy url];
      v8 = _SFPBURLHandwrittenTranslator(v7);
      [(SFMessageAttachment *)v5 setUrl:v8];
    }

    linkMetadata = [protobufCopy linkMetadata];

    if (linkMetadata)
    {
      linkMetadata2 = [protobufCopy linkMetadata];
      [(SFMessageAttachment *)v5 setLinkMetadata:linkMetadata2];
    }

    photosLibraryImage = [protobufCopy photosLibraryImage];

    if (photosLibraryImage)
    {
      v12 = [SFPhotosLibraryImage alloc];
      photosLibraryImage2 = [protobufCopy photosLibraryImage];
      v14 = [(SFPhotosLibraryImage *)v12 initWithProtobuf:photosLibraryImage2];
      [(SFMessageAttachment *)v5 setPhotosLibraryImage:v14];
    }

    v15 = v5;
  }

  return v5;
}

@end