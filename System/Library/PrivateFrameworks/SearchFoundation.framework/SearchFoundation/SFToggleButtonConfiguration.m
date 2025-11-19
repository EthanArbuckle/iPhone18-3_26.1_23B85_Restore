@interface SFToggleButtonConfiguration
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFToggleButtonConfiguration)initWithCoder:(id)a3;
- (SFToggleButtonConfiguration)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFToggleButtonConfiguration

- (unint64_t)hash
{
  v3 = [(SFToggleButtonConfiguration *)self untoggledTitle];
  v4 = [v3 hash];
  v5 = [(SFToggleButtonConfiguration *)self toggledTitle];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFToggleButtonConfiguration *)self untoggledImage];
  v8 = [v7 hash];
  v9 = [(SFToggleButtonConfiguration *)self toggledImage];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFToggleButtonConfiguration *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFToggleButtonConfiguration *)self untoggledTitle];
      v8 = [(SFToggleButtonConfiguration *)v6 untoggledTitle];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v9 = [(SFToggleButtonConfiguration *)self untoggledTitle];
      if (v9)
      {
        v10 = [(SFToggleButtonConfiguration *)self untoggledTitle];
        v3 = [(SFToggleButtonConfiguration *)v6 untoggledTitle];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_35;
        }

        v41 = v10;
      }

      v12 = [(SFToggleButtonConfiguration *)self toggledTitle];
      v13 = [(SFToggleButtonConfiguration *)v6 toggledTitle];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_34;
      }

      v15 = [(SFToggleButtonConfiguration *)self toggledTitle];
      v40 = v15;
      if (v15)
      {
        v16 = v15;
        v35 = v14;
        v17 = v12;
        v18 = [(SFToggleButtonConfiguration *)self toggledTitle];
        v37 = [(SFToggleButtonConfiguration *)v6 toggledTitle];
        v38 = v18;
        if (![v18 isEqual:?])
        {
          v11 = 0;
          v12 = v17;
          v14 = v35;
          goto LABEL_32;
        }

        v39 = v3;
        v12 = v17;
        v14 = v35;
      }

      else
      {
        v39 = v3;
      }

      v19 = [(SFToggleButtonConfiguration *)self untoggledImage];
      v20 = [(SFToggleButtonConfiguration *)v6 untoggledImage];
      if ((v19 != 0) == (v20 == 0))
      {

        v11 = 0;
        v3 = v39;
        v16 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v33 = v20;
      v34 = v19;
      [(SFToggleButtonConfiguration *)self untoggledImage];
      v36 = v16 = v40;
      if (!v36 || (-[SFToggleButtonConfiguration untoggledImage](self, "untoggledImage"), v21 = objc_claimAutoreleasedReturnValue(), -[SFToggleButtonConfiguration untoggledImage](v6, "untoggledImage"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
      {
        v22 = [(SFToggleButtonConfiguration *)self toggledImage];
        v23 = [(SFToggleButtonConfiguration *)v6 toggledImage];
        if ((v22 != 0) == (v23 == 0))
        {

          v11 = 0;
          v16 = v40;
        }

        else
        {
          v29 = v22;
          v30 = v23;
          v24 = [(SFToggleButtonConfiguration *)self toggledImage];
          v16 = v40;
          if (v24)
          {
            v28 = v24;
            v27 = [(SFToggleButtonConfiguration *)self toggledImage];
            v25 = [(SFToggleButtonConfiguration *)v6 toggledImage];
            v11 = [v27 isEqual:?];
          }

          else
          {

            v11 = 1;
          }
        }

        v3 = v39;
        if (!v36)
        {
LABEL_31:

          if (!v16)
          {
LABEL_33:

LABEL_34:
            v10 = v41;
            if (!v9)
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
        v3 = v39;
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFToggleButtonConfiguration *)self untoggledTitle];
  v6 = [v5 copy];
  [v4 setUntoggledTitle:v6];

  v7 = [(SFToggleButtonConfiguration *)self toggledTitle];
  v8 = [v7 copy];
  [v4 setToggledTitle:v8];

  v9 = [(SFToggleButtonConfiguration *)self untoggledImage];
  v10 = [v9 copy];
  [v4 setUntoggledImage:v10];

  v11 = [(SFToggleButtonConfiguration *)self toggledImage];
  v12 = [v11 copy];
  [v4 setToggledImage:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBToggleButtonConfiguration alloc] initWithFacade:self];
  v3 = [(_SFPBToggleButtonConfiguration *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBToggleButtonConfiguration alloc] initWithFacade:self];
  v3 = [(_SFPBToggleButtonConfiguration *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBToggleButtonConfiguration alloc] initWithFacade:self];
  v5 = [(_SFPBToggleButtonConfiguration *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFToggleButtonConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBToggleButtonConfiguration alloc] initWithData:v5];
  v7 = [(SFToggleButtonConfiguration *)self initWithProtobuf:v6];

  return v7;
}

- (SFToggleButtonConfiguration)initWithProtobuf:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFToggleButtonConfiguration;
  v5 = [(SFToggleButtonConfiguration *)&v20 init];
  if (v5)
  {
    v6 = [v4 untoggledTitle];

    if (v6)
    {
      v7 = [v4 untoggledTitle];
      [(SFToggleButtonConfiguration *)v5 setUntoggledTitle:v7];
    }

    v8 = [v4 toggledTitle];

    if (v8)
    {
      v9 = [v4 toggledTitle];
      [(SFToggleButtonConfiguration *)v5 setToggledTitle:v9];
    }

    v10 = [v4 untoggledImage];

    if (v10)
    {
      v11 = [SFImage alloc];
      v12 = [v4 untoggledImage];
      v13 = [(SFImage *)v11 initWithProtobuf:v12];
      [(SFToggleButtonConfiguration *)v5 setUntoggledImage:v13];
    }

    v14 = [v4 toggledImage];

    if (v14)
    {
      v15 = [SFImage alloc];
      v16 = [v4 toggledImage];
      v17 = [(SFImage *)v15 initWithProtobuf:v16];
      [(SFToggleButtonConfiguration *)v5 setToggledImage:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end