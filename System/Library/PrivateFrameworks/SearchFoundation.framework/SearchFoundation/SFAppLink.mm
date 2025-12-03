@interface SFAppLink
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppLink)initWithCoder:(id)coder;
- (SFAppLink)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppLink

- (SFAppLink)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v18.receiver = self;
  v18.super_class = SFAppLink;
  v5 = [(SFAppLink *)&v18 init];
  if (v5)
  {
    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFAppLink *)v5 setTitle:title2];
    }

    appPunchout = [protobufCopy appPunchout];

    if (appPunchout)
    {
      v9 = [SFPunchout alloc];
      appPunchout2 = [protobufCopy appPunchout];
      v11 = [(SFPunchout *)v9 initWithProtobuf:appPunchout2];
      [(SFAppLink *)v5 setAppPunchout:v11];
    }

    image = [protobufCopy image];

    if (image)
    {
      v13 = [SFImage alloc];
      image2 = [protobufCopy image];
      v15 = [(SFImage *)v13 initWithProtobuf:image2];
      [(SFAppLink *)v5 setImage:v15];
    }

    if ([protobufCopy imageAlign])
    {
      -[SFAppLink setImageAlign:](v5, "setImageAlign:", [protobufCopy imageAlign]);
    }

    v16 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  title = [(SFAppLink *)self title];
  v4 = [title hash];
  appPunchout = [(SFAppLink *)self appPunchout];
  v6 = [appPunchout hash] ^ v4;
  image = [(SFAppLink *)self image];
  v8 = [image hash];
  v9 = v8 ^ [(SFAppLink *)self imageAlign];

  return v6 ^ v9;
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
    if ([(SFAppLink *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      title = [(SFAppLink *)self title];
      title2 = [(SFAppLink *)v6 title];
      if ((title != 0) == (title2 == 0))
      {
        v11 = 0;
LABEL_33:

        goto LABEL_34;
      }

      title3 = [(SFAppLink *)self title];
      if (title3)
      {
        title4 = [(SFAppLink *)self title];
        title5 = [(SFAppLink *)v6 title];
        if (![title4 isEqual:title5])
        {
          v11 = 0;
          goto LABEL_31;
        }

        v33 = title4;
      }

      appPunchout = [(SFAppLink *)self appPunchout];
      appPunchout2 = [(SFAppLink *)v6 appPunchout];
      v14 = appPunchout2;
      if ((appPunchout != 0) == (appPunchout2 == 0))
      {

        v11 = 0;
        goto LABEL_30;
      }

      appPunchout3 = [(SFAppLink *)self appPunchout];
      if (appPunchout3)
      {
        v27 = appPunchout;
        appPunchout4 = [(SFAppLink *)self appPunchout];
        appPunchout5 = [(SFAppLink *)v6 appPunchout];
        v30 = appPunchout4;
        if (![appPunchout4 isEqual:?])
        {
          v11 = 0;
          appPunchout = v27;
          goto LABEL_28;
        }

        v31 = appPunchout3;
        v32 = title5;
        appPunchout = v27;
      }

      else
      {
        v31 = 0;
        v32 = title5;
      }

      image = [(SFAppLink *)self image];
      image2 = [(SFAppLink *)v6 image];
      if ((image != 0) == (image2 == 0))
      {

        v11 = 0;
        appPunchout3 = v31;
        title5 = v32;
        if (!v31)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v25 = image2;
      v26 = image;
      [(SFAppLink *)self image];
      v28 = appPunchout3 = v31;
      if (v28)
      {
        image3 = [(SFAppLink *)self image];
        image4 = [(SFAppLink *)v6 image];
        v24 = image3;
        v20 = [image3 isEqual:?];
        title5 = v32;
        if (!v20)
        {
          v11 = 0;
LABEL_26:

LABEL_27:
          if (!v31)
          {
LABEL_29:

LABEL_30:
            title4 = v33;
            if (!title3)
            {
LABEL_32:

              goto LABEL_33;
            }

LABEL_31:

            goto LABEL_32;
          }

LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        title5 = v32;
      }

      imageAlign = [(SFAppLink *)self imageAlign];
      v11 = imageAlign == [(SFAppLink *)v6 imageAlign];
      if (!v28)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v11 = 0;
  }

LABEL_34:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  title = [(SFAppLink *)self title];
  v6 = [title copy];
  [v4 setTitle:v6];

  appPunchout = [(SFAppLink *)self appPunchout];
  v8 = [appPunchout copy];
  [v4 setAppPunchout:v8];

  image = [(SFAppLink *)self image];
  v10 = [image copy];
  [v4 setImage:v10];

  [v4 setImageAlign:{-[SFAppLink imageAlign](self, "imageAlign")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppLink alloc] initWithFacade:self];
  jsonData = [(_SFPBAppLink *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppLink alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAppLink *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBAppLink alloc] initWithFacade:self];
  data = [(_SFPBAppLink *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFAppLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAppLink alloc] initWithData:v5];
  v7 = [(SFAppLink *)self initWithProtobuf:v6];

  return v7;
}

@end