@interface _SFPBRFLongItemStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFLongItemStandardCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFLongItemStandardCardSection)initWithFacade:(id)facade;
- (_SFPBRFLongItemStandardCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFLongItemStandardCardSection

- (_SFPBRFLongItemStandardCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFLongItemStandardCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFLongItemStandardCardSection *)v5 setText_1:v9];
    }

    if ([facadeCopy hasIs_quote])
    {
      -[_SFPBRFLongItemStandardCardSection setIs_quote:](v5, "setIs_quote:", [facadeCopy is_quote]);
    }

    if ([facadeCopy hasHas_background_platter])
    {
      -[_SFPBRFLongItemStandardCardSection setHas_background_platter:](v5, "setHas_background_platter:", [facadeCopy has_background_platter]);
    }

    if ([facadeCopy hasIs_fresh])
    {
      -[_SFPBRFLongItemStandardCardSection setIs_fresh:](v5, "setIs_fresh:", [facadeCopy is_fresh]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFLongItemStandardCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBRFLongItemStandardCardSection;
  v5 = [(_SFPBRFLongItemStandardCardSection *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFLongItemStandardCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isQuote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFLongItemStandardCardSection setIs_quote:](v5, "setIs_quote:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"hasBackgroundPlatter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFLongItemStandardCardSection setHas_background_platter:](v5, "setHas_background_platter:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isFresh"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFLongItemStandardCardSection setIs_fresh:](v5, "setIs_fresh:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBRFLongItemStandardCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFLongItemStandardCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFLongItemStandardCardSection *)self dictionaryRepresentation];
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
  if (self->_has_background_platter)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFLongItemStandardCardSection has_background_platter](self, "has_background_platter")}];
    [dictionary setObject:v4 forKeyedSubscript:@"hasBackgroundPlatter"];
  }

  if (self->_is_fresh)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFLongItemStandardCardSection is_fresh](self, "is_fresh")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isFresh"];
  }

  if (self->_is_quote)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFLongItemStandardCardSection is_quote](self, "is_quote")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isQuote"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFLongItemStandardCardSection *)self text];
    dictionaryRepresentation = [text dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"text1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"text1"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  text = [(_SFPBRFLongItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  v7 = text2;
  if ((text != 0) == (text2 == 0))
  {

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  text3 = [(_SFPBRFLongItemStandardCardSection *)self text];
  if (text3)
  {
    v9 = text3;
    text4 = [(_SFPBRFLongItemStandardCardSection *)self text];
    text5 = [equalCopy text];
    v12 = [text4 isEqual:text5];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  is_quote = self->_is_quote;
  if (is_quote != [equalCopy is_quote])
  {
    goto LABEL_11;
  }

  has_background_platter = self->_has_background_platter;
  if (has_background_platter != [equalCopy has_background_platter])
  {
    goto LABEL_11;
  }

  is_fresh = self->_is_fresh;
  v16 = is_fresh == [equalCopy is_fresh];
LABEL_12:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBRFLongItemStandardCardSection *)self text];
  if (text)
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