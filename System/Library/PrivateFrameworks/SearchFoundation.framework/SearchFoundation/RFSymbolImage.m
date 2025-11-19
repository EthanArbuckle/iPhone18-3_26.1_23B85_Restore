@interface RFSymbolImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSymbolImage)initWithCoder:(id)a3;
- (RFSymbolImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSymbolImage

- (unint64_t)hash
{
  v3 = [(RFSymbolImage *)self name];
  v4 = [v3 hash];
  v5 = [(RFSymbolImage *)self primary_color];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFSymbolImage *)self secondary_color];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(RFSymbolImage *)self image_style];
  v10 = [(RFSymbolImage *)self symbol_rendering_mode];
  v11 = [(RFSymbolImage *)self background_color];
  v12 = v10 ^ [v11 hash];
  v13 = v9 ^ v12 ^ [(RFSymbolImage *)self punches_through_background];
  v14 = [(RFSymbolImage *)self vibrancy];
  v15 = v14 ^ [(RFSymbolImage *)self corner_rounding_mode];

  return v13 ^ v15;
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
    if ([(RFSymbolImage *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFSymbolImage *)self name];
      v8 = [(RFSymbolImage *)v6 name];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v9 = [(RFSymbolImage *)self name];
      if (v9)
      {
        v10 = [(RFSymbolImage *)self name];
        v3 = [(RFSymbolImage *)v6 name];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_41;
        }

        v47 = v10;
      }

      v12 = [(RFSymbolImage *)self primary_color];
      v48 = [(RFSymbolImage *)v6 primary_color];
      if ((v12 != 0) != (v48 == 0))
      {
        v13 = [(RFSymbolImage *)self primary_color];
        if (v13)
        {
          v14 = [(RFSymbolImage *)self primary_color];
          v41 = [(RFSymbolImage *)v6 primary_color];
          v42 = v14;
          if (![v14 isEqual:?])
          {
            v11 = 0;
            goto LABEL_38;
          }

          v43 = v3;
          v45 = v12;
          v15 = v13;
        }

        else
        {
          v43 = v3;
          v45 = v12;
          v15 = 0;
        }

        v16 = [(RFSymbolImage *)self secondary_color];
        v17 = [(RFSymbolImage *)v6 secondary_color];
        if ((v16 != 0) != (v17 == 0))
        {
          v39 = v17;
          [(RFSymbolImage *)self secondary_color];
          v38 = v13 = v15;
          v40 = v16;
          if (v38)
          {
            v18 = [(RFSymbolImage *)self secondary_color];
            v35 = [(RFSymbolImage *)v6 secondary_color];
            v36 = v18;
            v3 = v43;
            if (![v18 isEqual:?])
            {
              v11 = 0;
              v12 = v45;
              v25 = v38;
LABEL_36:

LABEL_37:
              if (!v13)
              {
LABEL_39:

LABEL_40:
                v10 = v47;
                if (!v9)
                {
LABEL_42:

                  goto LABEL_43;
                }

LABEL_41:

                goto LABEL_42;
              }

LABEL_38:

              goto LABEL_39;
            }

            v37 = v13;
          }

          else
          {
            v37 = v15;
            v3 = v43;
          }

          v12 = v45;
          v19 = [(RFSymbolImage *)self image_style];
          if (v19 == [(RFSymbolImage *)v6 image_style])
          {
            v20 = [(RFSymbolImage *)self symbol_rendering_mode];
            if (v20 == [(RFSymbolImage *)v6 symbol_rendering_mode])
            {
              v21 = [(RFSymbolImage *)self background_color];
              v22 = [(RFSymbolImage *)v6 background_color];
              if ((v21 != 0) != (v22 == 0))
              {
                v46 = v22;
                v23 = [(RFSymbolImage *)self background_color];
                if (v23)
                {
                  v32 = v21;
                  v24 = [(RFSymbolImage *)self background_color];
                  v33 = [(RFSymbolImage *)v6 background_color];
                  v34 = v24;
                  if (![v24 isEqual:?])
                  {
                    v11 = 0;
                    v21 = v32;
                    goto LABEL_53;
                  }

                  v44 = v23;
                  v21 = v32;
                }

                else
                {
                  v44 = 0;
                }

                v27 = [(RFSymbolImage *)self punches_through_background];
                if (v27 == [(RFSymbolImage *)v6 punches_through_background]&& (v28 = [(RFSymbolImage *)self vibrancy], v28 == [(RFSymbolImage *)v6 vibrancy]))
                {
                  v29 = [(RFSymbolImage *)self corner_rounding_mode];
                  v11 = v29 == [(RFSymbolImage *)v6 corner_rounding_mode];
                  v30 = v11;
                }

                else
                {
                  v11 = 0;
                  v30 = 0;
                }

                v23 = v44;
                if (!v44)
                {
                  v31 = v46;
                  v11 = v30;
LABEL_54:

LABEL_35:
                  v13 = v37;
                  v25 = v38;
                  if (!v38)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_36;
                }

LABEL_53:

                v31 = v46;
                goto LABEL_54;
              }
            }
          }

          v11 = 0;
          goto LABEL_35;
        }

        if (v15)
        {
        }

        v3 = v43;
        v12 = v45;
      }

      v11 = 0;
      goto LABEL_40;
    }

    v11 = 0;
  }

LABEL_44:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFSymbolImage *)self name];
  v6 = [v5 copy];
  [v4 setName:v6];

  v7 = [(RFSymbolImage *)self primary_color];
  v8 = [v7 copy];
  [v4 setPrimary_color:v8];

  v9 = [(RFSymbolImage *)self secondary_color];
  v10 = [v9 copy];
  [v4 setSecondary_color:v10];

  [v4 setImage_style:{-[RFSymbolImage image_style](self, "image_style")}];
  [v4 setSymbol_rendering_mode:{-[RFSymbolImage symbol_rendering_mode](self, "symbol_rendering_mode")}];
  v11 = [(RFSymbolImage *)self background_color];
  v12 = [v11 copy];
  [v4 setBackground_color:v12];

  [v4 setPunches_through_background:{-[RFSymbolImage punches_through_background](self, "punches_through_background")}];
  [v4 setVibrancy:{-[RFSymbolImage vibrancy](self, "vibrancy")}];
  [v4 setCorner_rounding_mode:{-[RFSymbolImage corner_rounding_mode](self, "corner_rounding_mode")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSymbolImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFSymbolImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSymbolImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFSymbolImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFSymbolImage alloc] initWithFacade:self];
  v5 = [(_SFPBRFSymbolImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFSymbolImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFSymbolImage alloc] initWithData:v5];
  v7 = [(RFSymbolImage *)self initWithProtobuf:v6];

  return v7;
}

- (RFSymbolImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = RFSymbolImage;
  v5 = [(RFSymbolImage *)&v22 init];
  if (v5)
  {
    v6 = [v4 name];

    if (v6)
    {
      v7 = [v4 name];
      [(RFSymbolImage *)v5 setName:v7];
    }

    v8 = [v4 primary_color];

    if (v8)
    {
      v9 = [RFColor alloc];
      v10 = [v4 primary_color];
      v11 = [(RFColor *)v9 initWithProtobuf:v10];
      [(RFSymbolImage *)v5 setPrimary_color:v11];
    }

    v12 = [v4 secondary_color];

    if (v12)
    {
      v13 = [RFColor alloc];
      v14 = [v4 secondary_color];
      v15 = [(RFColor *)v13 initWithProtobuf:v14];
      [(RFSymbolImage *)v5 setSecondary_color:v15];
    }

    if ([v4 image_style])
    {
      -[RFSymbolImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    if ([v4 symbol_rendering_mode])
    {
      -[RFSymbolImage setSymbol_rendering_mode:](v5, "setSymbol_rendering_mode:", [v4 symbol_rendering_mode]);
    }

    v16 = [v4 background_color];

    if (v16)
    {
      v17 = [RFColor alloc];
      v18 = [v4 background_color];
      v19 = [(RFColor *)v17 initWithProtobuf:v18];
      [(RFSymbolImage *)v5 setBackground_color:v19];
    }

    if ([v4 punches_through_background])
    {
      -[RFSymbolImage setPunches_through_background:](v5, "setPunches_through_background:", [v4 punches_through_background]);
    }

    if ([v4 vibrancy])
    {
      -[RFSymbolImage setVibrancy:](v5, "setVibrancy:", [v4 vibrancy]);
    }

    if ([v4 corner_rounding_mode])
    {
      -[RFSymbolImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [v4 corner_rounding_mode]);
    }

    v20 = v5;
  }

  return v5;
}

@end