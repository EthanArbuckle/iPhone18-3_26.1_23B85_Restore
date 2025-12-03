@interface _SFPBRFUrlImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSymbolImage)symbol_placeholder_image;
- (_SFPBRFUrlImage)initWithDictionary:(id)dictionary;
- (_SFPBRFUrlImage)initWithFacade:(id)facade;
- (_SFPBRFUrlImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDark_mode_url:(id)dark_mode_url;
- (void)setUrl:(id)url;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFUrlImage

- (_SFPBRFUrlImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFUrlImage *)self init];
  if (v5)
  {
    v6 = [facadeCopy url];

    if (v6)
    {
      v7 = [facadeCopy url];
      [(_SFPBRFUrlImage *)v5 setUrl:v7];
    }

    dark_mode_url = [facadeCopy dark_mode_url];

    if (dark_mode_url)
    {
      dark_mode_url2 = [facadeCopy dark_mode_url];
      [(_SFPBRFUrlImage *)v5 setDark_mode_url:dark_mode_url2];
    }

    if ([facadeCopy hasSymbol_placeholder_image])
    {
      symbol_placeholder_image = [facadeCopy symbol_placeholder_image];

      if (symbol_placeholder_image)
      {
        v11 = [_SFPBRFSymbolImage alloc];
        symbol_placeholder_image2 = [facadeCopy symbol_placeholder_image];
        v13 = [(_SFPBRFSymbolImage *)v11 initWithFacade:symbol_placeholder_image2];
        [(_SFPBRFUrlImage *)v5 setSymbol_placeholder_image:v13];
      }
    }

    if ([facadeCopy hasImage_style])
    {
      -[_SFPBRFUrlImage setImage_style:](v5, "setImage_style:", [facadeCopy image_style]);
    }

    aspect_ratio = [facadeCopy aspect_ratio];

    if (aspect_ratio)
    {
      v15 = [_SFPBRFAspectRatio alloc];
      aspect_ratio2 = [facadeCopy aspect_ratio];
      v17 = [(_SFPBRFAspectRatio *)v15 initWithFacade:aspect_ratio2];
      [(_SFPBRFUrlImage *)v5 setAspect_ratio:v17];
    }

    if ([facadeCopy hasSizing_mode])
    {
      -[_SFPBRFUrlImage setSizing_mode:](v5, "setSizing_mode:", [facadeCopy sizing_mode]);
    }

    if ([facadeCopy hasImage_rendering_mode])
    {
      -[_SFPBRFUrlImage setImage_rendering_mode:](v5, "setImage_rendering_mode:", [facadeCopy image_rendering_mode]);
    }

    background_color = [facadeCopy background_color];

    if (background_color)
    {
      v19 = [_SFPBRFColor alloc];
      background_color2 = [facadeCopy background_color];
      v21 = [(_SFPBRFColor *)v19 initWithFacade:background_color2];
      [(_SFPBRFUrlImage *)v5 setBackground_color:v21];
    }

    if ([facadeCopy hasCorner_rounding_mode])
    {
      -[_SFPBRFUrlImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [facadeCopy corner_rounding_mode]);
    }

    inset_padding = [facadeCopy inset_padding];

    if (inset_padding)
    {
      inset_padding2 = [facadeCopy inset_padding];
      [inset_padding2 floatValue];
      [(_SFPBRFUrlImage *)v5 setInset_padding:?];
    }

    v24 = v5;
  }

  return v5;
}

- (_SFPBRFUrlImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = _SFPBRFUrlImage;
  v5 = [(_SFPBRFUrlImage *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFUrlImage *)v5 setUrl:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"darkModeUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBRFUrlImage *)v5 setDark_mode_url:v9];
    }

    v23 = v8;
    v24 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"symbolPlaceholderImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFSymbolImage alloc] initWithDictionary:v10];
      [(_SFPBRFUrlImage *)v5 setSymbol_placeholder_image:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"imageStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFUrlImage setImage_style:](v5, "setImage_style:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"aspectRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBRFAspectRatio alloc] initWithDictionary:v13];
      [(_SFPBRFUrlImage *)v5 setAspect_ratio:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"sizingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFUrlImage setSizing_mode:](v5, "setSizing_mode:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"imageRenderingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFUrlImage setImage_rendering_mode:](v5, "setImage_rendering_mode:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBRFColor alloc] initWithDictionary:v17];
      [(_SFPBRFUrlImage *)v5 setBackground_color:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"cornerRoundingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFUrlImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [v19 intValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"insetPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(_SFPBRFUrlImage *)v5 setInset_padding:?];
    }

    v21 = v5;
  }

  return v5;
}

- (_SFPBRFUrlImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFUrlImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFUrlImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_aspect_ratio)
  {
    aspect_ratio = [(_SFPBRFUrlImage *)self aspect_ratio];
    dictionaryRepresentation = [aspect_ratio dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aspectRatio"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aspectRatio"];
    }
  }

  if (self->_background_color)
  {
    background_color = [(_SFPBRFUrlImage *)self background_color];
    dictionaryRepresentation2 = [background_color dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_corner_rounding_mode)
  {
    corner_rounding_mode = [(_SFPBRFUrlImage *)self corner_rounding_mode];
    if (corner_rounding_mode >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", corner_rounding_mode];
    }

    else
    {
      v11 = off_1E7ACE548[corner_rounding_mode];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"cornerRoundingMode"];
  }

  if (self->_dark_mode_url)
  {
    dark_mode_url = [(_SFPBRFUrlImage *)self dark_mode_url];
    v13 = [dark_mode_url copy];
    [dictionary setObject:v13 forKeyedSubscript:@"darkModeUrl"];
  }

  if (self->_image_rendering_mode)
  {
    image_rendering_mode = [(_SFPBRFUrlImage *)self image_rendering_mode];
    if (image_rendering_mode >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", image_rendering_mode];
    }

    else
    {
      v15 = off_1E7ACE548[image_rendering_mode];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"imageRenderingMode"];
  }

  if (self->_image_style)
  {
    image_style = [(_SFPBRFUrlImage *)self image_style];
    if (image_style < 0x2A && ((0x3FFDFFFFFFFuLL >> image_style) & 1) != 0)
    {
      v17 = off_1E7ACE270[image_style];
    }

    else
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", image_style];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"imageStyle"];
  }

  if (self->_inset_padding != 0.0)
  {
    v18 = MEMORY[0x1E696AD98];
    [(_SFPBRFUrlImage *)self inset_padding];
    v19 = [v18 numberWithFloat:?];
    [dictionary setObject:v19 forKeyedSubscript:@"insetPadding"];
  }

  if (self->_sizing_mode)
  {
    sizing_mode = [(_SFPBRFUrlImage *)self sizing_mode];
    if (sizing_mode >= 3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sizing_mode];
    }

    else
    {
      v21 = off_1E7ACE548[sizing_mode];
    }

    [dictionary setObject:v21 forKeyedSubscript:@"sizingMode"];
  }

  if (self->_symbol_placeholder_image)
  {
    symbol_placeholder_image = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
    dictionaryRepresentation3 = [symbol_placeholder_image dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"symbolPlaceholderImage"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"symbolPlaceholderImage"];
    }
  }

  if (self->_url)
  {
    v25 = [(_SFPBRFUrlImage *)self url];
    v26 = [v25 copy];
    [dictionary setObject:v26 forKeyedSubscript:@"url"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_url hash];
  v4 = [(NSString *)self->_dark_mode_url hash];
  v5 = [(_SFPBRFSymbolImage *)self->_symbol_placeholder_image hash];
  image_style = self->_image_style;
  v7 = [(_SFPBRFAspectRatio *)self->_aspect_ratio hash];
  sizing_mode = self->_sizing_mode;
  image_rendering_mode = self->_image_rendering_mode;
  v10 = [(_SFPBRFColor *)self->_background_color hash];
  inset_padding = self->_inset_padding;
  v14 = inset_padding < 0.0;
  if (inset_padding == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v15 = inset_padding;
    if (v14)
    {
      v15 = -v15;
    }

    *v11.i64 = floor(v15 + 0.5);
    v16 = (v15 - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v12, v11).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v18 += v16;
      }
    }

    else
    {
      v18 -= fabs(v16);
    }
  }

  return v4 ^ v3 ^ v5 ^ v7 ^ (2654435761 * image_style) ^ (2654435761 * sizing_mode) ^ (2654435761 * image_rendering_mode) ^ v10 ^ (2654435761 * self->_corner_rounding_mode) ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  dark_mode_url = [(_SFPBRFUrlImage *)self url];
  dark_mode_url2 = [equalCopy url];
  if ((dark_mode_url != 0) == (dark_mode_url2 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(_SFPBRFUrlImage *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFUrlImage *)self url];
    v10 = [equalCopy url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  dark_mode_url = [(_SFPBRFUrlImage *)self dark_mode_url];
  dark_mode_url2 = [equalCopy dark_mode_url];
  if ((dark_mode_url != 0) == (dark_mode_url2 == 0))
  {
    goto LABEL_29;
  }

  dark_mode_url3 = [(_SFPBRFUrlImage *)self dark_mode_url];
  if (dark_mode_url3)
  {
    v13 = dark_mode_url3;
    dark_mode_url4 = [(_SFPBRFUrlImage *)self dark_mode_url];
    dark_mode_url5 = [equalCopy dark_mode_url];
    v16 = [dark_mode_url4 isEqual:dark_mode_url5];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  dark_mode_url = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
  dark_mode_url2 = [equalCopy symbol_placeholder_image];
  if ((dark_mode_url != 0) == (dark_mode_url2 == 0))
  {
    goto LABEL_29;
  }

  symbol_placeholder_image = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
  if (symbol_placeholder_image)
  {
    v18 = symbol_placeholder_image;
    symbol_placeholder_image2 = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
    symbol_placeholder_image3 = [equalCopy symbol_placeholder_image];
    v21 = [symbol_placeholder_image2 isEqual:symbol_placeholder_image3];

    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  image_style = self->_image_style;
  if (image_style != [equalCopy image_style])
  {
    goto LABEL_30;
  }

  dark_mode_url = [(_SFPBRFUrlImage *)self aspect_ratio];
  dark_mode_url2 = [equalCopy aspect_ratio];
  if ((dark_mode_url != 0) == (dark_mode_url2 == 0))
  {
    goto LABEL_29;
  }

  aspect_ratio = [(_SFPBRFUrlImage *)self aspect_ratio];
  if (aspect_ratio)
  {
    v24 = aspect_ratio;
    aspect_ratio2 = [(_SFPBRFUrlImage *)self aspect_ratio];
    aspect_ratio3 = [equalCopy aspect_ratio];
    v27 = [aspect_ratio2 isEqual:aspect_ratio3];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  sizing_mode = self->_sizing_mode;
  if (sizing_mode != [equalCopy sizing_mode])
  {
    goto LABEL_30;
  }

  image_rendering_mode = self->_image_rendering_mode;
  if (image_rendering_mode != [equalCopy image_rendering_mode])
  {
    goto LABEL_30;
  }

  dark_mode_url = [(_SFPBRFUrlImage *)self background_color];
  dark_mode_url2 = [equalCopy background_color];
  if ((dark_mode_url != 0) == (dark_mode_url2 == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  background_color = [(_SFPBRFUrlImage *)self background_color];
  if (background_color)
  {
    v31 = background_color;
    background_color2 = [(_SFPBRFUrlImage *)self background_color];
    background_color3 = [equalCopy background_color];
    v34 = [background_color2 isEqual:background_color3];

    if (!v34)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  corner_rounding_mode = self->_corner_rounding_mode;
  if (corner_rounding_mode == [equalCopy corner_rounding_mode])
  {
    inset_padding = self->_inset_padding;
    [equalCopy inset_padding];
    v35 = inset_padding == v39;
    goto LABEL_31;
  }

LABEL_30:
  v35 = 0;
LABEL_31:

  return v35;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(_SFPBRFUrlImage *)self url];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  dark_mode_url = [(_SFPBRFUrlImage *)self dark_mode_url];
  if (dark_mode_url)
  {
    PBDataWriterWriteStringField();
  }

  symbol_placeholder_image = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
  if (symbol_placeholder_image)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFUrlImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }

  aspect_ratio = [(_SFPBRFUrlImage *)self aspect_ratio];
  if (aspect_ratio)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFUrlImage *)self sizing_mode])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFUrlImage *)self image_rendering_mode])
  {
    PBDataWriterWriteInt32Field();
  }

  background_color = [(_SFPBRFUrlImage *)self background_color];
  if (background_color)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFUrlImage *)self corner_rounding_mode])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBRFUrlImage *)self inset_padding];
  v9 = toCopy;
  if (v10 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v9 = toCopy;
  }
}

- (_SFPBRFSymbolImage)symbol_placeholder_image
{
  if (self->_whichPlaceholder_Image == 1)
  {
    v3 = self->_symbol_placeholder_image;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDark_mode_url:(id)dark_mode_url
{
  v4 = [dark_mode_url copy];
  dark_mode_url = self->_dark_mode_url;
  self->_dark_mode_url = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUrl:(id)url
{
  v4 = [url copy];
  url = self->_url;
  self->_url = v4;

  MEMORY[0x1EEE66BB8]();
}

@end