@interface RFUrlImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFUrlImage)initWithCoder:(id)a3;
- (RFUrlImage)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFUrlImage

- (RFUrlImage)initWithProtobuf:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = RFUrlImage;
  v5 = [(RFUrlImage *)&v27 init];
  if (v5)
  {
    v6 = [v4 url];

    if (v6)
    {
      v7 = [v4 url];
      [(RFUrlImage *)v5 setUrl:v7];
    }

    v8 = [v4 dark_mode_url];

    if (v8)
    {
      v9 = [v4 dark_mode_url];
      [(RFUrlImage *)v5 setDark_mode_url:v9];
    }

    v10 = [v4 symbol_placeholder_image];

    if (v10)
    {
      v11 = [RFSymbolImage alloc];
      v12 = [v4 symbol_placeholder_image];
      v13 = [(RFSymbolImage *)v11 initWithProtobuf:v12];
      [(RFUrlImage *)v5 setSymbol_placeholder_image:v13];
    }

    if ([v4 image_style])
    {
      -[RFUrlImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    v14 = [v4 aspect_ratio];

    if (v14)
    {
      v15 = [RFAspectRatio alloc];
      v16 = [v4 aspect_ratio];
      v17 = [(RFAspectRatio *)v15 initWithProtobuf:v16];
      [(RFUrlImage *)v5 setAspect_ratio:v17];
    }

    if ([v4 sizing_mode])
    {
      -[RFUrlImage setSizing_mode:](v5, "setSizing_mode:", [v4 sizing_mode]);
    }

    if ([v4 image_rendering_mode])
    {
      -[RFUrlImage setImage_rendering_mode:](v5, "setImage_rendering_mode:", [v4 image_rendering_mode]);
    }

    v18 = [v4 background_color];

    if (v18)
    {
      v19 = [RFColor alloc];
      v20 = [v4 background_color];
      v21 = [(RFColor *)v19 initWithProtobuf:v20];
      [(RFUrlImage *)v5 setBackground_color:v21];
    }

    if ([v4 corner_rounding_mode])
    {
      -[RFUrlImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [v4 corner_rounding_mode]);
    }

    [v4 inset_padding];
    if (v22 != 0.0)
    {
      v23 = MEMORY[0x1E696AD98];
      [v4 inset_padding];
      v24 = [v23 numberWithFloat:?];
      [(RFUrlImage *)v5 setInset_padding:v24];
    }

    v25 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFUrlImage *)self url];
  v4 = [v3 hash];
  v5 = [(RFUrlImage *)self dark_mode_url];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFUrlImage *)self symbol_placeholder_image];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(RFUrlImage *)self image_style];
  v10 = [(RFUrlImage *)self aspect_ratio];
  v11 = [v10 hash];
  v12 = v11 ^ [(RFUrlImage *)self sizing_mode];
  v13 = v9 ^ v12 ^ [(RFUrlImage *)self image_rendering_mode];
  v14 = [(RFUrlImage *)self background_color];
  v15 = [v14 hash];
  v16 = v15 ^ [(RFUrlImage *)self corner_rounding_mode];
  v17 = [(RFUrlImage *)self inset_padding];
  v18 = v16 ^ [v17 hash];

  return v13 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if ([(RFUrlImage *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(RFUrlImage *)self url];
      v7 = [(RFUrlImage *)v5 url];
      if ((v6 != 0) == (v7 == 0))
      {
        v10 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v8 = [(RFUrlImage *)self url];
      if (v8)
      {
        v9 = [(RFUrlImage *)self url];
        v62 = [(RFUrlImage *)v5 url];
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }

        v60 = v9;
      }

      v61 = [(RFUrlImage *)self dark_mode_url];
      v11 = [(RFUrlImage *)v5 dark_mode_url];
      if ((v61 != 0) == (v11 == 0))
      {
        goto LABEL_35;
      }

      v12 = [(RFUrlImage *)self dark_mode_url];
      if (v12)
      {
        v13 = [(RFUrlImage *)self dark_mode_url];
        v14 = [(RFUrlImage *)v5 dark_mode_url];
        if (([v13 isEqual:v14] & 1) == 0)
        {

LABEL_34:
LABEL_35:

          v10 = 0;
          goto LABEL_36;
        }

        v59 = v14;
        v57 = v13;
        v58 = v7;
        v15 = v62;
        v16 = v12;
      }

      else
      {
        v58 = v7;
        v15 = v62;
        v16 = 0;
      }

      v62 = v15;
      v17 = [(RFUrlImage *)self symbol_placeholder_image];
      v18 = [(RFUrlImage *)v5 symbol_placeholder_image];
      v12 = v16;
      v7 = v58;
      v19 = v59;
      if ((v17 != 0) != (v18 == 0))
      {
        v56 = v18;
        v54 = v17;
        v55 = [(RFUrlImage *)self symbol_placeholder_image];
        if (v55)
        {
          v20 = [(RFUrlImage *)self symbol_placeholder_image];
          v51 = [(RFUrlImage *)v5 symbol_placeholder_image];
          v52 = v20;
          if (![v20 isEqual:?])
          {
            v10 = 0;
            v26 = v55;
            goto LABEL_55;
          }

          v53 = v12;
          v19 = v59;
        }

        else
        {
          v53 = v12;
        }

        v21 = [(RFUrlImage *)self image_style];
        if (v21 != [(RFUrlImage *)v5 image_style])
        {
          v59 = v19;
          v10 = 0;
          v12 = v53;
          goto LABEL_54;
        }

        v22 = [(RFUrlImage *)self aspect_ratio];
        v23 = [(RFUrlImage *)v5 aspect_ratio];
        if ((v22 != 0) != (v23 == 0))
        {
          v50 = v23;
          v24 = [(RFUrlImage *)self aspect_ratio];
          v59 = v19;
          v49 = v22;
          if (v24)
          {
            v25 = [(RFUrlImage *)self aspect_ratio];
            v46 = [(RFUrlImage *)v5 aspect_ratio];
            v47 = v25;
            if (![v25 isEqual:?])
            {
              v10 = 0;
              v33 = v24;
              v12 = v53;
              v17 = v54;
              goto LABEL_52;
            }

            v48 = v24;
          }

          else
          {
            v48 = 0;
          }

          v28 = [(RFUrlImage *)self sizing_mode];
          if (v28 == [(RFUrlImage *)v5 sizing_mode])
          {
            v29 = [(RFUrlImage *)self image_rendering_mode];
            if (v29 == [(RFUrlImage *)v5 image_rendering_mode])
            {
              v30 = [(RFUrlImage *)self background_color];
              v31 = [(RFUrlImage *)v5 background_color];
              if ((v30 != 0) != (v31 == 0))
              {
                v43 = v31;
                v44 = v30;
                v45 = [(RFUrlImage *)self background_color];
                if (v45)
                {
                  v32 = [(RFUrlImage *)self background_color];
                  v41 = [(RFUrlImage *)v5 background_color];
                  v42 = v32;
                  if (![v32 isEqual:?])
                  {
                    v10 = 0;
                    v12 = v53;
                    v17 = v54;
                    goto LABEL_68;
                  }
                }

                v34 = [(RFUrlImage *)self corner_rounding_mode];
                if (v34 == [(RFUrlImage *)v5 corner_rounding_mode])
                {
                  v35 = [(RFUrlImage *)self inset_padding];
                  v40 = [(RFUrlImage *)v5 inset_padding];
                  if ((v35 != 0) != (v40 == 0))
                  {
                    v36 = [(RFUrlImage *)self inset_padding];
                    if (v36)
                    {
                      v37 = v36;
                      v38 = [(RFUrlImage *)self inset_padding];
                      v39 = [(RFUrlImage *)v5 inset_padding];
                      v10 = [v38 isEqual:v39];
                    }

                    else
                    {

                      v10 = 1;
                    }

                    v12 = v53;
                    v7 = v58;
LABEL_67:
                    v17 = v54;
                    if (!v45)
                    {
LABEL_69:

LABEL_51:
                      v33 = v48;
                      if (!v48)
                      {
LABEL_53:

LABEL_54:
                        v26 = v55;
                        if (!v55)
                        {
LABEL_56:

                          if (v12)
                          {
                          }

LABEL_36:
                          v9 = v60;
                          if (!v8)
                          {
LABEL_38:

                            goto LABEL_39;
                          }

LABEL_37:

                          goto LABEL_38;
                        }

LABEL_55:

                        goto LABEL_56;
                      }

LABEL_52:

                      goto LABEL_53;
                    }

LABEL_68:

                    goto LABEL_69;
                  }
                }

                v10 = 0;
                v12 = v53;
                goto LABEL_67;
              }
            }
          }

          v10 = 0;
          v12 = v53;
          v17 = v54;
          goto LABEL_51;
        }

        v12 = v53;
        if (v55)
        {
        }

        v17 = v54;
        v18 = v56;
      }

      if (v12)
      {
      }

      goto LABEL_34;
    }

    v10 = 0;
  }

LABEL_40:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFUrlImage *)self url];
  v6 = [v5 copy];
  [v4 setUrl:v6];

  v7 = [(RFUrlImage *)self dark_mode_url];
  v8 = [v7 copy];
  [v4 setDark_mode_url:v8];

  if ([(RFUrlImage *)self hasSymbol_placeholder_image])
  {
    v9 = [(RFUrlImage *)self symbol_placeholder_image];
    v10 = [v9 copy];
    [v4 setSymbol_placeholder_image:v10];
  }

  [v4 setImage_style:{-[RFUrlImage image_style](self, "image_style")}];
  v11 = [(RFUrlImage *)self aspect_ratio];
  v12 = [v11 copy];
  [v4 setAspect_ratio:v12];

  [v4 setSizing_mode:{-[RFUrlImage sizing_mode](self, "sizing_mode")}];
  [v4 setImage_rendering_mode:{-[RFUrlImage image_rendering_mode](self, "image_rendering_mode")}];
  v13 = [(RFUrlImage *)self background_color];
  v14 = [v13 copy];
  [v4 setBackground_color:v14];

  [v4 setCorner_rounding_mode:{-[RFUrlImage corner_rounding_mode](self, "corner_rounding_mode")}];
  v15 = [(RFUrlImage *)self inset_padding];
  v16 = [v15 copy];
  [v4 setInset_padding:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFUrlImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFUrlImage *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFUrlImage alloc] initWithFacade:self];
  v3 = [(_SFPBRFUrlImage *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFUrlImage alloc] initWithFacade:self];
  v5 = [(_SFPBRFUrlImage *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFUrlImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFUrlImage alloc] initWithData:v5];
  v7 = [(RFUrlImage *)self initWithProtobuf:v6];

  return v7;
}

@end