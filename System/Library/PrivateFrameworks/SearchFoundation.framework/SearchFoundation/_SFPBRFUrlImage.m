@interface _SFPBRFUrlImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSymbolImage)symbol_placeholder_image;
- (_SFPBRFUrlImage)initWithDictionary:(id)a3;
- (_SFPBRFUrlImage)initWithFacade:(id)a3;
- (_SFPBRFUrlImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDark_mode_url:(id)a3;
- (void)setUrl:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFUrlImage

- (_SFPBRFUrlImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFUrlImage *)self init];
  if (v5)
  {
    v6 = [v4 url];

    if (v6)
    {
      v7 = [v4 url];
      [(_SFPBRFUrlImage *)v5 setUrl:v7];
    }

    v8 = [v4 dark_mode_url];

    if (v8)
    {
      v9 = [v4 dark_mode_url];
      [(_SFPBRFUrlImage *)v5 setDark_mode_url:v9];
    }

    if ([v4 hasSymbol_placeholder_image])
    {
      v10 = [v4 symbol_placeholder_image];

      if (v10)
      {
        v11 = [_SFPBRFSymbolImage alloc];
        v12 = [v4 symbol_placeholder_image];
        v13 = [(_SFPBRFSymbolImage *)v11 initWithFacade:v12];
        [(_SFPBRFUrlImage *)v5 setSymbol_placeholder_image:v13];
      }
    }

    if ([v4 hasImage_style])
    {
      -[_SFPBRFUrlImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    v14 = [v4 aspect_ratio];

    if (v14)
    {
      v15 = [_SFPBRFAspectRatio alloc];
      v16 = [v4 aspect_ratio];
      v17 = [(_SFPBRFAspectRatio *)v15 initWithFacade:v16];
      [(_SFPBRFUrlImage *)v5 setAspect_ratio:v17];
    }

    if ([v4 hasSizing_mode])
    {
      -[_SFPBRFUrlImage setSizing_mode:](v5, "setSizing_mode:", [v4 sizing_mode]);
    }

    if ([v4 hasImage_rendering_mode])
    {
      -[_SFPBRFUrlImage setImage_rendering_mode:](v5, "setImage_rendering_mode:", [v4 image_rendering_mode]);
    }

    v18 = [v4 background_color];

    if (v18)
    {
      v19 = [_SFPBRFColor alloc];
      v20 = [v4 background_color];
      v21 = [(_SFPBRFColor *)v19 initWithFacade:v20];
      [(_SFPBRFUrlImage *)v5 setBackground_color:v21];
    }

    if ([v4 hasCorner_rounding_mode])
    {
      -[_SFPBRFUrlImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [v4 corner_rounding_mode]);
    }

    v22 = [v4 inset_padding];

    if (v22)
    {
      v23 = [v4 inset_padding];
      [v23 floatValue];
      [(_SFPBRFUrlImage *)v5 setInset_padding:?];
    }

    v24 = v5;
  }

  return v5;
}

- (_SFPBRFUrlImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _SFPBRFUrlImage;
  v5 = [(_SFPBRFUrlImage *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFUrlImage *)v5 setUrl:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"darkModeUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBRFUrlImage *)v5 setDark_mode_url:v9];
    }

    v23 = v8;
    v24 = v6;
    v10 = [v4 objectForKeyedSubscript:@"symbolPlaceholderImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFSymbolImage alloc] initWithDictionary:v10];
      [(_SFPBRFUrlImage *)v5 setSymbol_placeholder_image:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"imageStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFUrlImage setImage_style:](v5, "setImage_style:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"aspectRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBRFAspectRatio alloc] initWithDictionary:v13];
      [(_SFPBRFUrlImage *)v5 setAspect_ratio:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"sizingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFUrlImage setSizing_mode:](v5, "setSizing_mode:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"imageRenderingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFUrlImage setImage_rendering_mode:](v5, "setImage_rendering_mode:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBRFColor alloc] initWithDictionary:v17];
      [(_SFPBRFUrlImage *)v5 setBackground_color:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"cornerRoundingMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFUrlImage setCorner_rounding_mode:](v5, "setCorner_rounding_mode:", [v19 intValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"insetPadding"];
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

- (_SFPBRFUrlImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFUrlImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFUrlImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_aspect_ratio)
  {
    v4 = [(_SFPBRFUrlImage *)self aspect_ratio];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"aspectRatio"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"aspectRatio"];
    }
  }

  if (self->_background_color)
  {
    v7 = [(_SFPBRFUrlImage *)self background_color];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_corner_rounding_mode)
  {
    v10 = [(_SFPBRFUrlImage *)self corner_rounding_mode];
    if (v10 >= 3)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E7ACE548[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"cornerRoundingMode"];
  }

  if (self->_dark_mode_url)
  {
    v12 = [(_SFPBRFUrlImage *)self dark_mode_url];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"darkModeUrl"];
  }

  if (self->_image_rendering_mode)
  {
    v14 = [(_SFPBRFUrlImage *)self image_rendering_mode];
    if (v14 >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E7ACE548[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"imageRenderingMode"];
  }

  if (self->_image_style)
  {
    v16 = [(_SFPBRFUrlImage *)self image_style];
    if (v16 < 0x2A && ((0x3FFDFFFFFFFuLL >> v16) & 1) != 0)
    {
      v17 = off_1E7ACE270[v16];
    }

    else
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"imageStyle"];
  }

  if (self->_inset_padding != 0.0)
  {
    v18 = MEMORY[0x1E696AD98];
    [(_SFPBRFUrlImage *)self inset_padding];
    v19 = [v18 numberWithFloat:?];
    [v3 setObject:v19 forKeyedSubscript:@"insetPadding"];
  }

  if (self->_sizing_mode)
  {
    v20 = [(_SFPBRFUrlImage *)self sizing_mode];
    if (v20 >= 3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
    }

    else
    {
      v21 = off_1E7ACE548[v20];
    }

    [v3 setObject:v21 forKeyedSubscript:@"sizingMode"];
  }

  if (self->_symbol_placeholder_image)
  {
    v22 = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"symbolPlaceholderImage"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"symbolPlaceholderImage"];
    }
  }

  if (self->_url)
  {
    v25 = [(_SFPBRFUrlImage *)self url];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"url"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = [(_SFPBRFUrlImage *)self url];
  v6 = [v4 url];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v7 = [(_SFPBRFUrlImage *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFUrlImage *)self url];
    v10 = [v4 url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFUrlImage *)self dark_mode_url];
  v6 = [v4 dark_mode_url];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v12 = [(_SFPBRFUrlImage *)self dark_mode_url];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFUrlImage *)self dark_mode_url];
    v15 = [v4 dark_mode_url];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
  v6 = [v4 symbol_placeholder_image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v17 = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
    v20 = [v4 symbol_placeholder_image];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  image_style = self->_image_style;
  if (image_style != [v4 image_style])
  {
    goto LABEL_30;
  }

  v5 = [(_SFPBRFUrlImage *)self aspect_ratio];
  v6 = [v4 aspect_ratio];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_29;
  }

  v23 = [(_SFPBRFUrlImage *)self aspect_ratio];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBRFUrlImage *)self aspect_ratio];
    v26 = [v4 aspect_ratio];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  sizing_mode = self->_sizing_mode;
  if (sizing_mode != [v4 sizing_mode])
  {
    goto LABEL_30;
  }

  image_rendering_mode = self->_image_rendering_mode;
  if (image_rendering_mode != [v4 image_rendering_mode])
  {
    goto LABEL_30;
  }

  v5 = [(_SFPBRFUrlImage *)self background_color];
  v6 = [v4 background_color];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v30 = [(_SFPBRFUrlImage *)self background_color];
  if (v30)
  {
    v31 = v30;
    v32 = [(_SFPBRFUrlImage *)self background_color];
    v33 = [v4 background_color];
    v34 = [v32 isEqual:v33];

    if (!v34)
    {
      goto LABEL_30;
    }
  }

  else
  {
  }

  corner_rounding_mode = self->_corner_rounding_mode;
  if (corner_rounding_mode == [v4 corner_rounding_mode])
  {
    inset_padding = self->_inset_padding;
    [v4 inset_padding];
    v35 = inset_padding == v39;
    goto LABEL_31;
  }

LABEL_30:
  v35 = 0;
LABEL_31:

  return v35;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_SFPBRFUrlImage *)self url];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBRFUrlImage *)self dark_mode_url];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBRFUrlImage *)self symbol_placeholder_image];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFUrlImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_SFPBRFUrlImage *)self aspect_ratio];
  if (v7)
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

  v8 = [(_SFPBRFUrlImage *)self background_color];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFUrlImage *)self corner_rounding_mode])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBRFUrlImage *)self inset_padding];
  v9 = v11;
  if (v10 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v9 = v11;
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

- (void)setDark_mode_url:(id)a3
{
  v4 = [a3 copy];
  dark_mode_url = self->_dark_mode_url;
  self->_dark_mode_url = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setUrl:(id)a3
{
  v4 = [a3 copy];
  url = self->_url;
  self->_url = v4;

  MEMORY[0x1EEE66BB8]();
}

@end