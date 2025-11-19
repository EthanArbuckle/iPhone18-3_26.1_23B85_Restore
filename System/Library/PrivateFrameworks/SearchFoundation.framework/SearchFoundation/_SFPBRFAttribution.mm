@interface _SFPBRFAttribution
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFAttribution)initWithDictionary:(id)a3;
- (_SFPBRFAttribution)initWithFacade:(id)a3;
- (_SFPBRFAttribution)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLocale:(id)a3;
- (void)setLocalized_index:(id)a3;
- (void)setLocalized_separator:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFAttribution

- (_SFPBRFAttribution)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFAttribution *)self init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 title];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFAttribution *)v5 setTitle:v9];
    }

    v10 = [v4 subtitle];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 subtitle];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFAttribution *)v5 setSubtitle:v13];
    }

    v14 = [v4 image];

    if (v14)
    {
      v15 = [_SFPBRFVisualProperty alloc];
      v16 = [v4 image];
      v17 = [(_SFPBRFVisualProperty *)v15 initWithFacade:v16];
      [(_SFPBRFAttribution *)v5 setImage:v17];
    }

    v18 = [v4 index];

    if (v18)
    {
      v19 = [v4 index];
      -[_SFPBRFAttribution setIndex:](v5, "setIndex:", [v19 intValue]);
    }

    v20 = [v4 localized_index];

    if (v20)
    {
      v21 = [v4 localized_index];
      [(_SFPBRFAttribution *)v5 setLocalized_index:v21];
    }

    v22 = [v4 localized_separator];

    if (v22)
    {
      v23 = [v4 localized_separator];
      [(_SFPBRFAttribution *)v5 setLocalized_separator:v23];
    }

    v24 = [v4 locale];

    if (v24)
    {
      v25 = [v4 locale];
      [(_SFPBRFAttribution *)v5 setLocale:v25];
    }

    v26 = [v4 commandReference];

    if (v26)
    {
      v27 = [_SFPBCommandReference alloc];
      v28 = [v4 commandReference];
      v29 = [(_SFPBCommandReference *)v27 initWithFacade:v28];
      [(_SFPBRFAttribution *)v5 setCommandReference:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (_SFPBRFAttribution)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _SFPBRFAttribution;
  v5 = [(_SFPBRFAttribution *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFAttribution *)v5 setTitle:v7];
    }

    v23 = v6;
    v8 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFAttribution *)v5 setSubtitle:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v10];
      [(_SFPBRFAttribution *)v5 setImage:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFAttribution setIndex:](v5, "setIndex:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"localizedIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(_SFPBRFAttribution *)v5 setLocalized_index:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"localizedSeparator"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBRFAttribution *)v5 setLocalized_separator:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBRFAttribution *)v5 setLocale:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"commandReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBCommandReference alloc] initWithDictionary:v19];
      [(_SFPBRFAttribution *)v5 setCommandReference:v20];
    }

    v21 = v5;
  }

  return v5;
}

- (_SFPBRFAttribution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFAttribution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFAttribution *)self dictionaryRepresentation];
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
  if (self->_commandReference)
  {
    v4 = [(_SFPBRFAttribution *)self commandReference];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"commandReference"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"commandReference"];
    }
  }

  if (self->_image)
  {
    v7 = [(_SFPBRFAttribution *)self image];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"image"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"image"];
    }
  }

  if (self->_index)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRFAttribution index](self, "index")}];
    [v3 setObject:v10 forKeyedSubscript:@"index"];
  }

  if (self->_locale)
  {
    v11 = [(_SFPBRFAttribution *)self locale];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"locale"];
  }

  if (self->_localized_index)
  {
    v13 = [(_SFPBRFAttribution *)self localized_index];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"localizedIndex"];
  }

  if (self->_localized_separator)
  {
    v15 = [(_SFPBRFAttribution *)self localized_separator];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"localizedSeparator"];
  }

  if (self->_subtitle)
  {
    v17 = [(_SFPBRFAttribution *)self subtitle];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    v20 = [(_SFPBRFAttribution *)self title];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"title"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"title"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_title hash];
  v4 = [(_SFPBRFTextProperty *)self->_subtitle hash];
  v5 = [(_SFPBRFVisualProperty *)self->_image hash];
  v6 = 2654435761 * self->_index;
  v7 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_localized_index hash];
  v8 = v7 ^ [(NSString *)self->_localized_separator hash]^ v6;
  v9 = [(NSString *)self->_locale hash];
  return v8 ^ v9 ^ [(_SFPBCommandReference *)self->_commandReference hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = [(_SFPBRFAttribution *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v7 = [(_SFPBRFAttribution *)self title];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFAttribution *)self title];
    v10 = [v4 title];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFAttribution *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v12 = [(_SFPBRFAttribution *)self subtitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFAttribution *)self subtitle];
    v15 = [v4 subtitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFAttribution *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v17 = [(_SFPBRFAttribution *)self image];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFAttribution *)self image];
    v20 = [v4 image];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  index = self->_index;
  if (index != [v4 index])
  {
    goto LABEL_38;
  }

  v5 = [(_SFPBRFAttribution *)self localized_index];
  v6 = [v4 localized_index];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v23 = [(_SFPBRFAttribution *)self localized_index];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBRFAttribution *)self localized_index];
    v26 = [v4 localized_index];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFAttribution *)self localized_separator];
  v6 = [v4 localized_separator];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v28 = [(_SFPBRFAttribution *)self localized_separator];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBRFAttribution *)self localized_separator];
    v31 = [v4 localized_separator];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFAttribution *)self locale];
  v6 = [v4 locale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v33 = [(_SFPBRFAttribution *)self locale];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBRFAttribution *)self locale];
    v36 = [v4 locale];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFAttribution *)self commandReference];
  v6 = [v4 commandReference];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_37:

    goto LABEL_38;
  }

  v38 = [(_SFPBRFAttribution *)self commandReference];
  if (!v38)
  {

LABEL_41:
    v43 = 1;
    goto LABEL_39;
  }

  v39 = v38;
  v40 = [(_SFPBRFAttribution *)self commandReference];
  v41 = [v4 commandReference];
  v42 = [v40 isEqual:v41];

  if (v42)
  {
    goto LABEL_41;
  }

LABEL_38:
  v43 = 0;
LABEL_39:

  return v43;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_SFPBRFAttribution *)self title];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBRFAttribution *)self subtitle];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFAttribution *)self image];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFAttribution *)self index])
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_SFPBRFAttribution *)self localized_index];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBRFAttribution *)self localized_separator];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(_SFPBRFAttribution *)self locale];
  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(_SFPBRFAttribution *)self commandReference];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setLocale:(id)a3
{
  v4 = [a3 copy];
  locale = self->_locale;
  self->_locale = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocalized_separator:(id)a3
{
  v4 = [a3 copy];
  localized_separator = self->_localized_separator;
  self->_localized_separator = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocalized_index:(id)a3
{
  v4 = [a3 copy];
  localized_index = self->_localized_index;
  self->_localized_index = v4;

  MEMORY[0x1EEE66BB8]();
}

@end