@interface SFMessageAttachment
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMessageAttachment)initWithCoder:(id)a3;
- (SFMessageAttachment)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMessageAttachment

- (unint64_t)hash
{
  v3 = [(SFMessageAttachment *)self type];
  v4 = [(SFMessageAttachment *)self url];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFMessageAttachment *)self linkMetadata];
  v7 = [v6 hash];
  v8 = [(SFMessageAttachment *)self photosLibraryImage];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFMessageAttachment *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFMessageAttachment *)self type];
      if (v7 != [(SFMessageAttachment *)v6 type])
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

      v13 = [(SFMessageAttachment *)self linkMetadata];
      v14 = [(SFMessageAttachment *)v6 linkMetadata];
      v15 = v14;
      if ((v13 != 0) == (v14 == 0))
      {

        v12 = 0;
        goto LABEL_29;
      }

      v16 = [(SFMessageAttachment *)self linkMetadata];
      if (v16)
      {
        v26 = v13;
        v17 = [(SFMessageAttachment *)self linkMetadata];
        v28 = [(SFMessageAttachment *)v6 linkMetadata];
        v29 = v17;
        if (![v17 isEqual:?])
        {
          v12 = 0;
          v13 = v26;
          goto LABEL_27;
        }

        v30 = v16;
        v31 = v3;
        v13 = v26;
      }

      else
      {
        v30 = 0;
        v31 = v3;
      }

      v18 = [(SFMessageAttachment *)self photosLibraryImage];
      v19 = [(SFMessageAttachment *)v6 photosLibraryImage];
      if ((v18 != 0) == (v19 == 0))
      {

        v12 = 0;
        v16 = v30;
        v3 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v25 = v18;
        v27 = v19;
        v20 = [(SFMessageAttachment *)self photosLibraryImage];
        v16 = v30;
        if (v20)
        {
          v24 = v20;
          v23 = [(SFMessageAttachment *)self photosLibraryImage];
          v21 = [(SFMessageAttachment *)v6 photosLibraryImage];
          v12 = [v23 isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setType:{-[SFMessageAttachment type](self, "type")}];
  v5 = [(SFMessageAttachment *)self url];
  v6 = [v5 copy];
  [v4 setUrl:v6];

  v7 = [(SFMessageAttachment *)self linkMetadata];
  v8 = [v7 copy];
  [v4 setLinkMetadata:v8];

  v9 = [(SFMessageAttachment *)self photosLibraryImage];
  v10 = [v9 copy];
  [v4 setPhotosLibraryImage:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMessageAttachment alloc] initWithFacade:self];
  v3 = [(_SFPBMessageAttachment *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMessageAttachment alloc] initWithFacade:self];
  v3 = [(_SFPBMessageAttachment *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBMessageAttachment alloc] initWithFacade:self];
  v5 = [(_SFPBMessageAttachment *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMessageAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMessageAttachment alloc] initWithData:v5];
  v7 = [(SFMessageAttachment *)self initWithProtobuf:v6];

  return v7;
}

- (SFMessageAttachment)initWithProtobuf:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SFMessageAttachment;
  v5 = [(SFMessageAttachment *)&v17 init];
  if (v5)
  {
    if ([v4 type])
    {
      -[SFMessageAttachment setType:](v5, "setType:", [v4 type]);
    }

    v6 = [v4 url];

    if (v6)
    {
      v7 = [v4 url];
      v8 = _SFPBURLHandwrittenTranslator(v7);
      [(SFMessageAttachment *)v5 setUrl:v8];
    }

    v9 = [v4 linkMetadata];

    if (v9)
    {
      v10 = [v4 linkMetadata];
      [(SFMessageAttachment *)v5 setLinkMetadata:v10];
    }

    v11 = [v4 photosLibraryImage];

    if (v11)
    {
      v12 = [SFPhotosLibraryImage alloc];
      v13 = [v4 photosLibraryImage];
      v14 = [(SFPhotosLibraryImage *)v12 initWithProtobuf:v13];
      [(SFMessageAttachment *)v5 setPhotosLibraryImage:v14];
    }

    v15 = v5;
  }

  return v5;
}

@end