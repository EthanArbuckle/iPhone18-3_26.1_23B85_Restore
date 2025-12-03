@interface RFSymbolImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSymbolImage)initWithCoder:(id)coder;
- (RFSymbolImage)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFSymbolImage

- (unint64_t)hash
{
  name = [(RFSymbolImage *)self name];
  v4 = [name hash];
  primary_color = [(RFSymbolImage *)self primary_color];
  v6 = [primary_color hash] ^ v4;
  secondary_color = [(RFSymbolImage *)self secondary_color];
  v8 = [secondary_color hash];
  v9 = v6 ^ v8 ^ [(RFSymbolImage *)self image_style];
  symbol_rendering_mode = [(RFSymbolImage *)self symbol_rendering_mode];
  background_color = [(RFSymbolImage *)self background_color];
  v12 = symbol_rendering_mode ^ [background_color hash];
  v13 = v9 ^ v12 ^ [(RFSymbolImage *)self punches_through_background];
  vibrancy = [(RFSymbolImage *)self vibrancy];
  v15 = vibrancy ^ [(RFSymbolImage *)self corner_rounding_mode];

  return v13 ^ v15;
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
    if ([(RFSymbolImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      name = [(RFSymbolImage *)self name];
      name2 = [(RFSymbolImage *)v6 name];
      if ((name != 0) == (name2 == 0))
      {
        v11 = 0;
LABEL_43:

        goto LABEL_44;
      }

      name3 = [(RFSymbolImage *)self name];
      if (name3)
      {
        name4 = [(RFSymbolImage *)self name];
        name5 = [(RFSymbolImage *)v6 name];
        if (![name4 isEqual:name5])
        {
          v11 = 0;
          goto LABEL_41;
        }

        v47 = name4;
      }

      primary_color = [(RFSymbolImage *)self primary_color];
      primary_color2 = [(RFSymbolImage *)v6 primary_color];
      if ((primary_color != 0) != (primary_color2 == 0))
      {
        primary_color3 = [(RFSymbolImage *)self primary_color];
        if (primary_color3)
        {
          primary_color4 = [(RFSymbolImage *)self primary_color];
          primary_color5 = [(RFSymbolImage *)v6 primary_color];
          v42 = primary_color4;
          if (![primary_color4 isEqual:?])
          {
            v11 = 0;
            goto LABEL_38;
          }

          v43 = name5;
          v45 = primary_color;
          v15 = primary_color3;
        }

        else
        {
          v43 = name5;
          v45 = primary_color;
          v15 = 0;
        }

        secondary_color = [(RFSymbolImage *)self secondary_color];
        secondary_color2 = [(RFSymbolImage *)v6 secondary_color];
        if ((secondary_color != 0) != (secondary_color2 == 0))
        {
          v39 = secondary_color2;
          [(RFSymbolImage *)self secondary_color];
          v38 = primary_color3 = v15;
          v40 = secondary_color;
          if (v38)
          {
            secondary_color3 = [(RFSymbolImage *)self secondary_color];
            secondary_color4 = [(RFSymbolImage *)v6 secondary_color];
            v36 = secondary_color3;
            name5 = v43;
            if (![secondary_color3 isEqual:?])
            {
              v11 = 0;
              primary_color = v45;
              v25 = v38;
LABEL_36:

LABEL_37:
              if (!primary_color3)
              {
LABEL_39:

LABEL_40:
                name4 = v47;
                if (!name3)
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

            v37 = primary_color3;
          }

          else
          {
            v37 = v15;
            name5 = v43;
          }

          primary_color = v45;
          image_style = [(RFSymbolImage *)self image_style];
          if (image_style == [(RFSymbolImage *)v6 image_style])
          {
            symbol_rendering_mode = [(RFSymbolImage *)self symbol_rendering_mode];
            if (symbol_rendering_mode == [(RFSymbolImage *)v6 symbol_rendering_mode])
            {
              background_color = [(RFSymbolImage *)self background_color];
              background_color2 = [(RFSymbolImage *)v6 background_color];
              if ((background_color != 0) != (background_color2 == 0))
              {
                v46 = background_color2;
                background_color3 = [(RFSymbolImage *)self background_color];
                if (background_color3)
                {
                  v32 = background_color;
                  background_color4 = [(RFSymbolImage *)self background_color];
                  background_color5 = [(RFSymbolImage *)v6 background_color];
                  v34 = background_color4;
                  if (![background_color4 isEqual:?])
                  {
                    v11 = 0;
                    background_color = v32;
                    goto LABEL_53;
                  }

                  v44 = background_color3;
                  background_color = v32;
                }

                else
                {
                  v44 = 0;
                }

                punches_through_background = [(RFSymbolImage *)self punches_through_background];
                if (punches_through_background == [(RFSymbolImage *)v6 punches_through_background]&& (v28 = [(RFSymbolImage *)self vibrancy], v28 == [(RFSymbolImage *)v6 vibrancy]))
                {
                  corner_rounding_mode = [(RFSymbolImage *)self corner_rounding_mode];
                  v11 = corner_rounding_mode == [(RFSymbolImage *)v6 corner_rounding_mode];
                  v30 = v11;
                }

                else
                {
                  v11 = 0;
                  v30 = 0;
                }

                background_color3 = v44;
                if (!v44)
                {
                  v31 = v46;
                  v11 = v30;
LABEL_54:

LABEL_35:
                  primary_color3 = v37;
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

        name5 = v43;
        primary_color = v45;
      }

      v11 = 0;
      goto LABEL_40;
    }

    v11 = 0;
  }

LABEL_44:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(RFSymbolImage *)self name];
  v6 = [name copy];
  [v4 setName:v6];

  primary_color = [(RFSymbolImage *)self primary_color];
  v8 = [primary_color copy];
  [v4 setPrimary_color:v8];

  secondary_color = [(RFSymbolImage *)self secondary_color];
  v10 = [secondary_color copy];
  [v4 setSecondary_color:v10];

  [v4 setImage_style:{-[RFSymbolImage image_style](self, "image_style")}];
  [v4 setSymbol_rendering_mode:{-[RFSymbolImage symbol_rendering_mode](self, "symbol_rendering_mode")}];
  background_color = [(RFSymbolImage *)self background_color];
  v12 = [background_color copy];
  [v4 setBackground_color:v12];

  [v4 setPunches_through_background:{-[RFSymbolImage punches_through_background](self, "punches_through_background")}];
  [v4 setVibrancy:{-[RFSymbolImage vibrancy](self, "vibrancy")}];
  [v4 setCorner_rounding_mode:{-[RFSymbolImage corner_rounding_mode](self, "corner_rounding_mode")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSymbolImage alloc] initWithFacade:self];
  jsonData = [(_SFPBRFSymbolImage *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSymbolImage alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFSymbolImage *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFSymbolImage alloc] initWithFacade:self];
  data = [(_SFPBRFSymbolImage *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFSymbolImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFSymbolImage alloc] initWithData:v5];
  v7 = [(RFSymbolImage *)self initWithProtobuf:v6];

  return v7;
}

- (RFSymbolImage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v22.receiver = self;
  v22.super_class = RFSymbolImage;
  v5 = [(RFSymbolImage *)&v22 init];
  if (v5)
  {
    name = [protobufCopy name];

    if (name)
    {
      name2 = [protobufCopy name];
      [(RFSymbolImage *)v5 setName:name2];
    }

    primary_color = [protobufCopy primary_color];

    if (primary_color)
    {
      v9 = [RFColor alloc];
      primary_color2 = [protobufCopy primary_color];
      v11 = [(RFColor *)v9 initWithProtobuf:primary_color2];
      [(RFSymbolImage *)v5 setPrimary_color:v11];
    }

    secondary_color = [protobufCopy secondary_color];

    if (secondary_color)
    {
      v13 = [RFColor alloc];
      secondary_color2 = [protobufCopy secondary_color];
      v15 = [(RFColor *)v13 initWithProtobuf:secondary_color2];
      [(RFSymbolImage *)v5 setSecondary_color:v15];
    }

    if ([protobufCopy image_style])
    {
      -[RFSymbolImage setImage_style:](v5, "setImage_style:", [protobufCopy image_style]);
    }

    if ([protobufCopy symbol_rendering_mode])
    {
      -[RFSymbolImage setSymbol_rendering_mode:](v5, "setSymbol_rendering_mode:", [protobufCopy symbol_rendering_mode]);
    }

    background_color = [protobufCopy background_color];

    if (background_color)
    {
      v17 = [RFColor alloc];
      background_color2 = [protobufCopy background_color];
      v19 = [(RFColor *)v17 initWithProtobuf:background_color2];
      [(RFSymbolImage *)v5 setBackground_color:v19];
    }

    if ([protobufCopy punches_through_background])
    {
      -[RFSymbolImage setPunches_through_background:](v5, "setPunches_through_background:", [protobufCopy punches_through_background]);
    }

    if ([protobufCopy vibrancy])
    {
      -[RFSymbolImage setVibrancy:](v5, "setVibrancy:", [protobufCopy vibrancy]);
    }

    if ([protobufCopy corner_rounding_mode])
    {
      -[RFSymbolImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [protobufCopy corner_rounding_mode]);
    }

    v20 = v5;
  }

  return v5;
}

@end