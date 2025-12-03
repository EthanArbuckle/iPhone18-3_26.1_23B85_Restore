@interface _SFPBURLImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBURLImage)initWithDictionary:(id)dictionary;
- (_SFPBURLImage)initWithFacade:(id)facade;
- (_SFPBURLImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBURLImage

- (_SFPBURLImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBURLImage *)self init];
  if (v5)
  {
    urlValue = [facadeCopy urlValue];

    if (urlValue)
    {
      v7 = [_SFPBURL alloc];
      urlValue2 = [facadeCopy urlValue];
      v9 = [(_SFPBURL *)v7 initWithNSURL:urlValue2];
      [(_SFPBURLImage *)v5 setUrlValue:v9];
    }

    darkUrlValue = [facadeCopy darkUrlValue];

    if (darkUrlValue)
    {
      v11 = [_SFPBURL alloc];
      darkUrlValue2 = [facadeCopy darkUrlValue];
      v13 = [(_SFPBURL *)v11 initWithNSURL:darkUrlValue2];
      [(_SFPBURLImage *)v5 setDarkUrlValue:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBURLImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBURLImage;
  v5 = [(_SFPBURLImage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"urlValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURL alloc] initWithDictionary:v6];
      [(_SFPBURLImage *)v5 setUrlValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"darkUrlValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBURL alloc] initWithDictionary:v8];
      [(_SFPBURLImage *)v5 setDarkUrlValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBURLImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBURLImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBURLImage *)self dictionaryRepresentation];
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
  if (self->_darkUrlValue)
  {
    darkUrlValue = [(_SFPBURLImage *)self darkUrlValue];
    dictionaryRepresentation = [darkUrlValue dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"darkUrlValue"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"darkUrlValue"];
    }
  }

  if (self->_urlValue)
  {
    urlValue = [(_SFPBURLImage *)self urlValue];
    dictionaryRepresentation2 = [urlValue dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"urlValue"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"urlValue"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  urlValue = [(_SFPBURLImage *)self urlValue];
  urlValue2 = [equalCopy urlValue];
  if ((urlValue != 0) == (urlValue2 == 0))
  {
    goto LABEL_11;
  }

  urlValue3 = [(_SFPBURLImage *)self urlValue];
  if (urlValue3)
  {
    v8 = urlValue3;
    urlValue4 = [(_SFPBURLImage *)self urlValue];
    urlValue5 = [equalCopy urlValue];
    v11 = [urlValue4 isEqual:urlValue5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  urlValue = [(_SFPBURLImage *)self darkUrlValue];
  urlValue2 = [equalCopy darkUrlValue];
  if ((urlValue != 0) != (urlValue2 == 0))
  {
    darkUrlValue = [(_SFPBURLImage *)self darkUrlValue];
    if (!darkUrlValue)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = darkUrlValue;
    darkUrlValue2 = [(_SFPBURLImage *)self darkUrlValue];
    darkUrlValue3 = [equalCopy darkUrlValue];
    v16 = [darkUrlValue2 isEqual:darkUrlValue3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  urlValue = [(_SFPBURLImage *)self urlValue];
  if (urlValue)
  {
    PBDataWriterWriteSubmessage();
  }

  darkUrlValue = [(_SFPBURLImage *)self darkUrlValue];
  if (darkUrlValue)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end