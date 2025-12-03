@interface RFUrlImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFUrlImage)initWithCoder:(id)coder;
- (RFUrlImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFUrlImage

- (RFUrlImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v27.receiver = self;
  v27.super_class = RFUrlImage;
  v5 = [(RFUrlImage *)&v27 init];
  if (v5)
  {
    v6 = [protobufCopy url];

    if (v6)
    {
      v7 = [protobufCopy url];
      [(RFUrlImage *)v5 setUrl:v7];
    }

    dark_mode_url = [protobufCopy dark_mode_url];

    if (dark_mode_url)
    {
      dark_mode_url2 = [protobufCopy dark_mode_url];
      [(RFUrlImage *)v5 setDark_mode_url:dark_mode_url2];
    }

    symbol_placeholder_image = [protobufCopy symbol_placeholder_image];

    if (symbol_placeholder_image)
    {
      v11 = [RFSymbolImage alloc];
      symbol_placeholder_image2 = [protobufCopy symbol_placeholder_image];
      v13 = [(RFSymbolImage *)v11 initWithProtobuf:symbol_placeholder_image2];
      [(RFUrlImage *)v5 setSymbol_placeholder_image:v13];
    }

    if ([protobufCopy image_style])
    {
      -[RFUrlImage setImage_style:](v5, "setImage_style:", [protobufCopy image_style]);
    }

    aspect_ratio = [protobufCopy aspect_ratio];

    if (aspect_ratio)
    {
      v15 = [RFAspectRatio alloc];
      aspect_ratio2 = [protobufCopy aspect_ratio];
      v17 = [(RFAspectRatio *)v15 initWithProtobuf:aspect_ratio2];
      [(RFUrlImage *)v5 setAspect_ratio:v17];
    }

    if ([protobufCopy sizing_mode])
    {
      -[RFUrlImage setSizing_mode:](v5, "setSizing_mode:", [protobufCopy sizing_mode]);
    }

    if ([protobufCopy image_rendering_mode])
    {
      -[RFUrlImage setImage_rendering_mode:](v5, "setImage_rendering_mode:", [protobufCopy image_rendering_mode]);
    }

    background_color = [protobufCopy background_color];

    if (background_color)
    {
      v19 = [RFColor alloc];
      background_color2 = [protobufCopy background_color];
      v21 = [(RFColor *)v19 initWithProtobuf:background_color2];
      [(RFUrlImage *)v5 setBackground_color:v21];
    }

    if ([protobufCopy corner_rounding_mode])
    {
      -[RFUrlImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [protobufCopy corner_rounding_mode]);
    }

    [protobufCopy inset_padding];
    if (v22 != 0.0)
    {
      v23 = MEMORY[0x1E696AD98];
      [protobufCopy inset_padding];
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
  dark_mode_url = [(RFUrlImage *)self dark_mode_url];
  v6 = [dark_mode_url hash] ^ v4;
  symbol_placeholder_image = [(RFUrlImage *)self symbol_placeholder_image];
  v8 = [symbol_placeholder_image hash];
  v9 = v6 ^ v8 ^ [(RFUrlImage *)self image_style];
  aspect_ratio = [(RFUrlImage *)self aspect_ratio];
  v11 = [aspect_ratio hash];
  v12 = v11 ^ [(RFUrlImage *)self sizing_mode];
  v13 = v9 ^ v12 ^ [(RFUrlImage *)self image_rendering_mode];
  background_color = [(RFUrlImage *)self background_color];
  v15 = [background_color hash];
  v16 = v15 ^ [(RFUrlImage *)self corner_rounding_mode];
  inset_padding = [(RFUrlImage *)self inset_padding];
  v18 = v16 ^ [inset_padding hash];

  return v13 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(RFUrlImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
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

      dark_mode_url = [(RFUrlImage *)self dark_mode_url];
      dark_mode_url2 = [(RFUrlImage *)v5 dark_mode_url];
      if ((dark_mode_url != 0) == (dark_mode_url2 == 0))
      {
        goto LABEL_35;
      }

      dark_mode_url3 = [(RFUrlImage *)self dark_mode_url];
      if (dark_mode_url3)
      {
        dark_mode_url4 = [(RFUrlImage *)self dark_mode_url];
        dark_mode_url5 = [(RFUrlImage *)v5 dark_mode_url];
        if (([dark_mode_url4 isEqual:dark_mode_url5] & 1) == 0)
        {

LABEL_34:
LABEL_35:

          v10 = 0;
          goto LABEL_36;
        }

        v59 = dark_mode_url5;
        v57 = dark_mode_url4;
        v58 = v7;
        v15 = v62;
        v16 = dark_mode_url3;
      }

      else
      {
        v58 = v7;
        v15 = v62;
        v16 = 0;
      }

      v62 = v15;
      symbol_placeholder_image = [(RFUrlImage *)self symbol_placeholder_image];
      symbol_placeholder_image2 = [(RFUrlImage *)v5 symbol_placeholder_image];
      dark_mode_url3 = v16;
      v7 = v58;
      v19 = v59;
      if ((symbol_placeholder_image != 0) != (symbol_placeholder_image2 == 0))
      {
        v56 = symbol_placeholder_image2;
        v54 = symbol_placeholder_image;
        symbol_placeholder_image3 = [(RFUrlImage *)self symbol_placeholder_image];
        if (symbol_placeholder_image3)
        {
          symbol_placeholder_image4 = [(RFUrlImage *)self symbol_placeholder_image];
          symbol_placeholder_image5 = [(RFUrlImage *)v5 symbol_placeholder_image];
          v52 = symbol_placeholder_image4;
          if (![symbol_placeholder_image4 isEqual:?])
          {
            v10 = 0;
            v26 = symbol_placeholder_image3;
            goto LABEL_55;
          }

          v53 = dark_mode_url3;
          v19 = v59;
        }

        else
        {
          v53 = dark_mode_url3;
        }

        image_style = [(RFUrlImage *)self image_style];
        if (image_style != [(RFUrlImage *)v5 image_style])
        {
          v59 = v19;
          v10 = 0;
          dark_mode_url3 = v53;
          goto LABEL_54;
        }

        aspect_ratio = [(RFUrlImage *)self aspect_ratio];
        aspect_ratio2 = [(RFUrlImage *)v5 aspect_ratio];
        if ((aspect_ratio != 0) != (aspect_ratio2 == 0))
        {
          v50 = aspect_ratio2;
          aspect_ratio3 = [(RFUrlImage *)self aspect_ratio];
          v59 = v19;
          v49 = aspect_ratio;
          if (aspect_ratio3)
          {
            aspect_ratio4 = [(RFUrlImage *)self aspect_ratio];
            aspect_ratio5 = [(RFUrlImage *)v5 aspect_ratio];
            v47 = aspect_ratio4;
            if (![aspect_ratio4 isEqual:?])
            {
              v10 = 0;
              v33 = aspect_ratio3;
              dark_mode_url3 = v53;
              symbol_placeholder_image = v54;
              goto LABEL_52;
            }

            v48 = aspect_ratio3;
          }

          else
          {
            v48 = 0;
          }

          sizing_mode = [(RFUrlImage *)self sizing_mode];
          if (sizing_mode == [(RFUrlImage *)v5 sizing_mode])
          {
            image_rendering_mode = [(RFUrlImage *)self image_rendering_mode];
            if (image_rendering_mode == [(RFUrlImage *)v5 image_rendering_mode])
            {
              background_color = [(RFUrlImage *)self background_color];
              background_color2 = [(RFUrlImage *)v5 background_color];
              if ((background_color != 0) != (background_color2 == 0))
              {
                v43 = background_color2;
                v44 = background_color;
                background_color3 = [(RFUrlImage *)self background_color];
                if (background_color3)
                {
                  background_color4 = [(RFUrlImage *)self background_color];
                  background_color5 = [(RFUrlImage *)v5 background_color];
                  v42 = background_color4;
                  if (![background_color4 isEqual:?])
                  {
                    v10 = 0;
                    dark_mode_url3 = v53;
                    symbol_placeholder_image = v54;
                    goto LABEL_68;
                  }
                }

                corner_rounding_mode = [(RFUrlImage *)self corner_rounding_mode];
                if (corner_rounding_mode == [(RFUrlImage *)v5 corner_rounding_mode])
                {
                  inset_padding = [(RFUrlImage *)self inset_padding];
                  inset_padding2 = [(RFUrlImage *)v5 inset_padding];
                  if ((inset_padding != 0) != (inset_padding2 == 0))
                  {
                    inset_padding3 = [(RFUrlImage *)self inset_padding];
                    if (inset_padding3)
                    {
                      v37 = inset_padding3;
                      inset_padding4 = [(RFUrlImage *)self inset_padding];
                      inset_padding5 = [(RFUrlImage *)v5 inset_padding];
                      v10 = [inset_padding4 isEqual:inset_padding5];
                    }

                    else
                    {

                      v10 = 1;
                    }

                    dark_mode_url3 = v53;
                    v7 = v58;
LABEL_67:
                    symbol_placeholder_image = v54;
                    if (!background_color3)
                    {
LABEL_69:

LABEL_51:
                      v33 = v48;
                      if (!v48)
                      {
LABEL_53:

LABEL_54:
                        v26 = symbol_placeholder_image3;
                        if (!symbol_placeholder_image3)
                        {
LABEL_56:

                          if (dark_mode_url3)
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
                dark_mode_url3 = v53;
                goto LABEL_67;
              }
            }
          }

          v10 = 0;
          dark_mode_url3 = v53;
          symbol_placeholder_image = v54;
          goto LABEL_51;
        }

        dark_mode_url3 = v53;
        if (symbol_placeholder_image3)
        {
        }

        symbol_placeholder_image = v54;
        symbol_placeholder_image2 = v56;
      }

      if (dark_mode_url3)
      {
      }

      goto LABEL_34;
    }

    v10 = 0;
  }

LABEL_40:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(RFUrlImage *)self url];
  v6 = [v5 copy];
  [v4 setUrl:v6];

  dark_mode_url = [(RFUrlImage *)self dark_mode_url];
  v8 = [dark_mode_url copy];
  [v4 setDark_mode_url:v8];

  if ([(RFUrlImage *)self hasSymbol_placeholder_image])
  {
    symbol_placeholder_image = [(RFUrlImage *)self symbol_placeholder_image];
    v10 = [symbol_placeholder_image copy];
    [v4 setSymbol_placeholder_image:v10];
  }

  [v4 setImage_style:{-[RFUrlImage image_style](self, "image_style")}];
  aspect_ratio = [(RFUrlImage *)self aspect_ratio];
  v12 = [aspect_ratio copy];
  [v4 setAspect_ratio:v12];

  [v4 setSizing_mode:{-[RFUrlImage sizing_mode](self, "sizing_mode")}];
  [v4 setImage_rendering_mode:{-[RFUrlImage image_rendering_mode](self, "image_rendering_mode")}];
  background_color = [(RFUrlImage *)self background_color];
  v14 = [background_color copy];
  [v4 setBackground_color:v14];

  [v4 setCorner_rounding_mode:{-[RFUrlImage corner_rounding_mode](self, "corner_rounding_mode")}];
  inset_padding = [(RFUrlImage *)self inset_padding];
  v16 = [inset_padding copy];
  [v4 setInset_padding:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFUrlImage alloc] initWithFacade:self];
  jsonData = [(_SFPBRFUrlImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFUrlImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFUrlImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFUrlImage alloc] initWithFacade:self];
  data = [(_SFPBRFUrlImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFUrlImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFUrlImage alloc] initWithData:v5];
  v7 = [(RFUrlImage *)self initWithProtobuf:v6];

  return v7;
}

@end