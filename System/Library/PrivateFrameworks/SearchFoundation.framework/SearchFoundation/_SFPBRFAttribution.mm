@interface _SFPBRFAttribution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFAttribution)initWithDictionary:(id)dictionary;
- (_SFPBRFAttribution)initWithFacade:(id)facade;
- (_SFPBRFAttribution)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLocale:(id)locale;
- (void)setLocalized_index:(id)localized_index;
- (void)setLocalized_separator:(id)localized_separator;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFAttribution

- (_SFPBRFAttribution)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFAttribution *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      v7 = [_SFPBRFTextProperty alloc];
      title2 = [facadeCopy title];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:title2];
      [(_SFPBRFAttribution *)v5 setTitle:v9];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      v11 = [_SFPBRFTextProperty alloc];
      subtitle2 = [facadeCopy subtitle];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:subtitle2];
      [(_SFPBRFAttribution *)v5 setSubtitle:v13];
    }

    image = [facadeCopy image];

    if (image)
    {
      v15 = [_SFPBRFVisualProperty alloc];
      image2 = [facadeCopy image];
      v17 = [(_SFPBRFVisualProperty *)v15 initWithFacade:image2];
      [(_SFPBRFAttribution *)v5 setImage:v17];
    }

    index = [facadeCopy index];

    if (index)
    {
      index2 = [facadeCopy index];
      -[_SFPBRFAttribution setIndex:](v5, "setIndex:", [index2 intValue]);
    }

    localized_index = [facadeCopy localized_index];

    if (localized_index)
    {
      localized_index2 = [facadeCopy localized_index];
      [(_SFPBRFAttribution *)v5 setLocalized_index:localized_index2];
    }

    localized_separator = [facadeCopy localized_separator];

    if (localized_separator)
    {
      localized_separator2 = [facadeCopy localized_separator];
      [(_SFPBRFAttribution *)v5 setLocalized_separator:localized_separator2];
    }

    locale = [facadeCopy locale];

    if (locale)
    {
      locale2 = [facadeCopy locale];
      [(_SFPBRFAttribution *)v5 setLocale:locale2];
    }

    commandReference = [facadeCopy commandReference];

    if (commandReference)
    {
      v27 = [_SFPBCommandReference alloc];
      commandReference2 = [facadeCopy commandReference];
      v29 = [(_SFPBCommandReference *)v27 initWithFacade:commandReference2];
      [(_SFPBRFAttribution *)v5 setCommandReference:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (_SFPBRFAttribution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBRFAttribution;
  v5 = [(_SFPBRFAttribution *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFAttribution *)v5 setTitle:v7];
    }

    v23 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFAttribution *)v5 setSubtitle:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v10];
      [(_SFPBRFAttribution *)v5 setImage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFAttribution setIndex:](v5, "setIndex:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"localizedIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(_SFPBRFAttribution *)v5 setLocalized_index:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"localizedSeparator"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBRFAttribution *)v5 setLocalized_separator:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBRFAttribution *)v5 setLocale:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"commandReference"];
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

- (_SFPBRFAttribution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFAttribution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFAttribution *)self dictionaryRepresentation];
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
  if (self->_commandReference)
  {
    commandReference = [(_SFPBRFAttribution *)self commandReference];
    dictionaryRepresentation = [commandReference dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commandReference"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commandReference"];
    }
  }

  if (self->_image)
  {
    image = [(_SFPBRFAttribution *)self image];
    dictionaryRepresentation2 = [image dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"image"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"image"];
    }
  }

  if (self->_index)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRFAttribution index](self, "index")}];
    [dictionary setObject:v10 forKeyedSubscript:@"index"];
  }

  if (self->_locale)
  {
    locale = [(_SFPBRFAttribution *)self locale];
    v12 = [locale copy];
    [dictionary setObject:v12 forKeyedSubscript:@"locale"];
  }

  if (self->_localized_index)
  {
    localized_index = [(_SFPBRFAttribution *)self localized_index];
    v14 = [localized_index copy];
    [dictionary setObject:v14 forKeyedSubscript:@"localizedIndex"];
  }

  if (self->_localized_separator)
  {
    localized_separator = [(_SFPBRFAttribution *)self localized_separator];
    v16 = [localized_separator copy];
    [dictionary setObject:v16 forKeyedSubscript:@"localizedSeparator"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBRFAttribution *)self subtitle];
    dictionaryRepresentation3 = [subtitle dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBRFAttribution *)self title];
    dictionaryRepresentation4 = [title dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"title"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"title"];
    }
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  title = [(_SFPBRFAttribution *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_37;
  }

  title3 = [(_SFPBRFAttribution *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBRFAttribution *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  title = [(_SFPBRFAttribution *)self subtitle];
  title2 = [equalCopy subtitle];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_37;
  }

  subtitle = [(_SFPBRFAttribution *)self subtitle];
  if (subtitle)
  {
    v13 = subtitle;
    subtitle2 = [(_SFPBRFAttribution *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v16 = [subtitle2 isEqual:subtitle3];

    if (!v16)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  title = [(_SFPBRFAttribution *)self image];
  title2 = [equalCopy image];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_37;
  }

  image = [(_SFPBRFAttribution *)self image];
  if (image)
  {
    v18 = image;
    image2 = [(_SFPBRFAttribution *)self image];
    image3 = [equalCopy image];
    v21 = [image2 isEqual:image3];

    if (!v21)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  index = self->_index;
  if (index != [equalCopy index])
  {
    goto LABEL_38;
  }

  title = [(_SFPBRFAttribution *)self localized_index];
  title2 = [equalCopy localized_index];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_37;
  }

  localized_index = [(_SFPBRFAttribution *)self localized_index];
  if (localized_index)
  {
    v24 = localized_index;
    localized_index2 = [(_SFPBRFAttribution *)self localized_index];
    localized_index3 = [equalCopy localized_index];
    v27 = [localized_index2 isEqual:localized_index3];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  title = [(_SFPBRFAttribution *)self localized_separator];
  title2 = [equalCopy localized_separator];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_37;
  }

  localized_separator = [(_SFPBRFAttribution *)self localized_separator];
  if (localized_separator)
  {
    v29 = localized_separator;
    localized_separator2 = [(_SFPBRFAttribution *)self localized_separator];
    localized_separator3 = [equalCopy localized_separator];
    v32 = [localized_separator2 isEqual:localized_separator3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  title = [(_SFPBRFAttribution *)self locale];
  title2 = [equalCopy locale];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_37;
  }

  locale = [(_SFPBRFAttribution *)self locale];
  if (locale)
  {
    v34 = locale;
    locale2 = [(_SFPBRFAttribution *)self locale];
    locale3 = [equalCopy locale];
    v37 = [locale2 isEqual:locale3];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  title = [(_SFPBRFAttribution *)self commandReference];
  title2 = [equalCopy commandReference];
  if ((title != 0) == (title2 == 0))
  {
LABEL_37:

    goto LABEL_38;
  }

  commandReference = [(_SFPBRFAttribution *)self commandReference];
  if (!commandReference)
  {

LABEL_41:
    v43 = 1;
    goto LABEL_39;
  }

  v39 = commandReference;
  commandReference2 = [(_SFPBRFAttribution *)self commandReference];
  commandReference3 = [equalCopy commandReference];
  v42 = [commandReference2 isEqual:commandReference3];

  if (v42)
  {
    goto LABEL_41;
  }

LABEL_38:
  v43 = 0;
LABEL_39:

  return v43;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  title = [(_SFPBRFAttribution *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_SFPBRFAttribution *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  image = [(_SFPBRFAttribution *)self image];
  if (image)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFAttribution *)self index])
  {
    PBDataWriterWriteInt32Field();
  }

  localized_index = [(_SFPBRFAttribution *)self localized_index];
  if (localized_index)
  {
    PBDataWriterWriteStringField();
  }

  localized_separator = [(_SFPBRFAttribution *)self localized_separator];
  if (localized_separator)
  {
    PBDataWriterWriteStringField();
  }

  locale = [(_SFPBRFAttribution *)self locale];
  if (locale)
  {
    PBDataWriterWriteStringField();
  }

  commandReference = [(_SFPBRFAttribution *)self commandReference];
  if (commandReference)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setLocale:(id)locale
{
  v4 = [locale copy];
  locale = self->_locale;
  self->_locale = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocalized_separator:(id)localized_separator
{
  v4 = [localized_separator copy];
  localized_separator = self->_localized_separator;
  self->_localized_separator = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocalized_index:(id)localized_index
{
  v4 = [localized_index copy];
  localized_index = self->_localized_index;
  self->_localized_index = v4;

  MEMORY[0x1EEE66BB8]();
}

@end