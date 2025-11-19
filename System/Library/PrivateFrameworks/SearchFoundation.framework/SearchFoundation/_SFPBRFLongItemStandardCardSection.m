@interface _SFPBRFLongItemStandardCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFLongItemStandardCardSection)initWithDictionary:(id)a3;
- (_SFPBRFLongItemStandardCardSection)initWithFacade:(id)a3;
- (_SFPBRFLongItemStandardCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFLongItemStandardCardSection

- (_SFPBRFLongItemStandardCardSection)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFLongItemStandardCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFLongItemStandardCardSection *)v5 setText_1:v9];
    }

    if ([v4 hasIs_quote])
    {
      -[_SFPBRFLongItemStandardCardSection setIs_quote:](v5, "setIs_quote:", [v4 is_quote]);
    }

    if ([v4 hasHas_background_platter])
    {
      -[_SFPBRFLongItemStandardCardSection setHas_background_platter:](v5, "setHas_background_platter:", [v4 has_background_platter]);
    }

    if ([v4 hasIs_fresh])
    {
      -[_SFPBRFLongItemStandardCardSection setIs_fresh:](v5, "setIs_fresh:", [v4 is_fresh]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFLongItemStandardCardSection)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBRFLongItemStandardCardSection;
  v5 = [(_SFPBRFLongItemStandardCardSection *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFLongItemStandardCardSection *)v5 setText_1:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isQuote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFLongItemStandardCardSection setIs_quote:](v5, "setIs_quote:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"hasBackgroundPlatter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFLongItemStandardCardSection setHas_background_platter:](v5, "setHas_background_platter:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isFresh"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFLongItemStandardCardSection setIs_fresh:](v5, "setIs_fresh:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBRFLongItemStandardCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFLongItemStandardCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFLongItemStandardCardSection *)self dictionaryRepresentation];
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
  if (self->_has_background_platter)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFLongItemStandardCardSection has_background_platter](self, "has_background_platter")}];
    [v3 setObject:v4 forKeyedSubscript:@"hasBackgroundPlatter"];
  }

  if (self->_is_fresh)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFLongItemStandardCardSection is_fresh](self, "is_fresh")}];
    [v3 setObject:v5 forKeyedSubscript:@"isFresh"];
  }

  if (self->_is_quote)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFLongItemStandardCardSection is_quote](self, "is_quote")}];
    [v3 setObject:v6 forKeyedSubscript:@"isQuote"];
  }

  if (self->_text_1)
  {
    v7 = [(_SFPBRFLongItemStandardCardSection *)self text];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"text1"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"text1"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = 2654435761;
  if (self->_is_quote)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_has_background_platter)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (!self->_is_fresh)
  {
    v4 = 0;
  }

  return v5 ^ v3 ^ v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = [(_SFPBRFLongItemStandardCardSection *)self text];
  v6 = [v4 text];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v8 = [(_SFPBRFLongItemStandardCardSection *)self text];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBRFLongItemStandardCardSection *)self text];
    v11 = [v4 text];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  is_quote = self->_is_quote;
  if (is_quote != [v4 is_quote])
  {
    goto LABEL_11;
  }

  has_background_platter = self->_has_background_platter;
  if (has_background_platter != [v4 has_background_platter])
  {
    goto LABEL_11;
  }

  is_fresh = self->_is_fresh;
  v16 = is_fresh == [v4 is_fresh];
LABEL_12:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBRFLongItemStandardCardSection *)self text];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFLongItemStandardCardSection *)self is_quote])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRFLongItemStandardCardSection *)self has_background_platter])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRFLongItemStandardCardSection *)self is_fresh])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end