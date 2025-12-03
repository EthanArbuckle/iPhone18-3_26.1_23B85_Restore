@interface SFToggleButtonConfiguration
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFToggleButtonConfiguration)initWithCoder:(id)coder;
- (SFToggleButtonConfiguration)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFToggleButtonConfiguration

- (unint64_t)hash
{
  untoggledTitle = [(SFToggleButtonConfiguration *)self untoggledTitle];
  v4 = [untoggledTitle hash];
  toggledTitle = [(SFToggleButtonConfiguration *)self toggledTitle];
  v6 = [toggledTitle hash] ^ v4;
  untoggledImage = [(SFToggleButtonConfiguration *)self untoggledImage];
  v8 = [untoggledImage hash];
  toggledImage = [(SFToggleButtonConfiguration *)self toggledImage];
  v10 = v8 ^ [toggledImage hash];

  return v6 ^ v10;
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
    if ([(SFToggleButtonConfiguration *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      untoggledTitle = [(SFToggleButtonConfiguration *)self untoggledTitle];
      untoggledTitle2 = [(SFToggleButtonConfiguration *)v6 untoggledTitle];
      if ((untoggledTitle != 0) == (untoggledTitle2 == 0))
      {
        v11 = 0;
LABEL_37:

        goto LABEL_38;
      }

      untoggledTitle3 = [(SFToggleButtonConfiguration *)self untoggledTitle];
      if (untoggledTitle3)
      {
        untoggledTitle4 = [(SFToggleButtonConfiguration *)self untoggledTitle];
        untoggledTitle5 = [(SFToggleButtonConfiguration *)v6 untoggledTitle];
        if (![untoggledTitle4 isEqual:untoggledTitle5])
        {
          v11 = 0;
          goto LABEL_35;
        }

        v41 = untoggledTitle4;
      }

      toggledTitle = [(SFToggleButtonConfiguration *)self toggledTitle];
      toggledTitle2 = [(SFToggleButtonConfiguration *)v6 toggledTitle];
      v14 = toggledTitle2;
      if ((toggledTitle != 0) == (toggledTitle2 == 0))
      {

        v11 = 0;
        goto LABEL_34;
      }

      toggledTitle3 = [(SFToggleButtonConfiguration *)self toggledTitle];
      v40 = toggledTitle3;
      if (toggledTitle3)
      {
        v16 = toggledTitle3;
        v35 = v14;
        v17 = toggledTitle;
        toggledTitle4 = [(SFToggleButtonConfiguration *)self toggledTitle];
        toggledTitle5 = [(SFToggleButtonConfiguration *)v6 toggledTitle];
        v38 = toggledTitle4;
        if (![toggledTitle4 isEqual:?])
        {
          v11 = 0;
          toggledTitle = v17;
          v14 = v35;
          goto LABEL_32;
        }

        v39 = untoggledTitle5;
        toggledTitle = v17;
        v14 = v35;
      }

      else
      {
        v39 = untoggledTitle5;
      }

      untoggledImage = [(SFToggleButtonConfiguration *)self untoggledImage];
      untoggledImage2 = [(SFToggleButtonConfiguration *)v6 untoggledImage];
      if ((untoggledImage != 0) == (untoggledImage2 == 0))
      {

        v11 = 0;
        untoggledTitle5 = v39;
        v16 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v33 = untoggledImage2;
      v34 = untoggledImage;
      [(SFToggleButtonConfiguration *)self untoggledImage];
      v36 = v16 = v40;
      if (!v36 || (-[SFToggleButtonConfiguration untoggledImage](self, "untoggledImage"), v21 = objc_claimAutoreleasedReturnValue(), -[SFToggleButtonConfiguration untoggledImage](v6, "untoggledImage"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
      {
        toggledImage = [(SFToggleButtonConfiguration *)self toggledImage];
        toggledImage2 = [(SFToggleButtonConfiguration *)v6 toggledImage];
        if ((toggledImage != 0) == (toggledImage2 == 0))
        {

          v11 = 0;
          v16 = v40;
        }

        else
        {
          v29 = toggledImage;
          v30 = toggledImage2;
          toggledImage3 = [(SFToggleButtonConfiguration *)self toggledImage];
          v16 = v40;
          if (toggledImage3)
          {
            v28 = toggledImage3;
            toggledImage4 = [(SFToggleButtonConfiguration *)self toggledImage];
            toggledImage5 = [(SFToggleButtonConfiguration *)v6 toggledImage];
            v11 = [toggledImage4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }
        }

        untoggledTitle5 = v39;
        if (!v36)
        {
LABEL_31:

          if (!v16)
          {
LABEL_33:

LABEL_34:
            untoggledTitle4 = v41;
            if (!untoggledTitle3)
            {
LABEL_36:

              goto LABEL_37;
            }

LABEL_35:

            goto LABEL_36;
          }

LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v11 = 0;
        untoggledTitle5 = v39;
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  untoggledTitle = [(SFToggleButtonConfiguration *)self untoggledTitle];
  v6 = [untoggledTitle copy];
  [v4 setUntoggledTitle:v6];

  toggledTitle = [(SFToggleButtonConfiguration *)self toggledTitle];
  v8 = [toggledTitle copy];
  [v4 setToggledTitle:v8];

  untoggledImage = [(SFToggleButtonConfiguration *)self untoggledImage];
  v10 = [untoggledImage copy];
  [v4 setUntoggledImage:v10];

  toggledImage = [(SFToggleButtonConfiguration *)self toggledImage];
  v12 = [toggledImage copy];
  [v4 setToggledImage:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBToggleButtonConfiguration alloc] initWithFacade:self];
  jsonData = [(_SFPBToggleButtonConfiguration *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBToggleButtonConfiguration alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBToggleButtonConfiguration *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBToggleButtonConfiguration alloc] initWithFacade:self];
  data = [(_SFPBToggleButtonConfiguration *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFToggleButtonConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBToggleButtonConfiguration alloc] initWithData:v5];
  v7 = [(SFToggleButtonConfiguration *)self initWithProtobuf:v6];

  return v7;
}

- (SFToggleButtonConfiguration)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = SFToggleButtonConfiguration;
  v5 = [(SFToggleButtonConfiguration *)&v20 init];
  if (v5)
  {
    untoggledTitle = [protobufCopy untoggledTitle];

    if (untoggledTitle)
    {
      untoggledTitle2 = [protobufCopy untoggledTitle];
      [(SFToggleButtonConfiguration *)v5 setUntoggledTitle:untoggledTitle2];
    }

    toggledTitle = [protobufCopy toggledTitle];

    if (toggledTitle)
    {
      toggledTitle2 = [protobufCopy toggledTitle];
      [(SFToggleButtonConfiguration *)v5 setToggledTitle:toggledTitle2];
    }

    untoggledImage = [protobufCopy untoggledImage];

    if (untoggledImage)
    {
      v11 = [SFImage alloc];
      untoggledImage2 = [protobufCopy untoggledImage];
      v13 = [(SFImage *)v11 initWithProtobuf:untoggledImage2];
      [(SFToggleButtonConfiguration *)v5 setUntoggledImage:v13];
    }

    toggledImage = [protobufCopy toggledImage];

    if (toggledImage)
    {
      v15 = [SFImage alloc];
      toggledImage2 = [protobufCopy toggledImage];
      v17 = [(SFImage *)v15 initWithProtobuf:toggledImage2];
      [(SFToggleButtonConfiguration *)v5 setToggledImage:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end