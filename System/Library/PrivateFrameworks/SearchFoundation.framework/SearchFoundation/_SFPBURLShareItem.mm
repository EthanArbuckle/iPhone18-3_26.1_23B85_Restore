@interface _SFPBURLShareItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBURLShareItem)initWithDictionary:(id)dictionary;
- (_SFPBURLShareItem)initWithFacade:(id)facade;
- (_SFPBURLShareItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBURLShareItem

- (_SFPBURLShareItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBURLShareItem *)self init];
  if (v5)
  {
    urlValue = [facadeCopy urlValue];

    if (urlValue)
    {
      v7 = [_SFPBURL alloc];
      urlValue2 = [facadeCopy urlValue];
      v9 = [(_SFPBURL *)v7 initWithNSURL:urlValue2];
      [(_SFPBURLShareItem *)v5 setUrlValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBURLShareItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBURLShareItem;
  v5 = [(_SFPBURLShareItem *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"urlValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURL alloc] initWithDictionary:v6];
      [(_SFPBURLShareItem *)v5 setUrlValue:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBURLShareItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBURLShareItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBURLShareItem *)self dictionaryRepresentation];
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
  if (self->_urlValue)
  {
    urlValue = [(_SFPBURLShareItem *)self urlValue];
    dictionaryRepresentation = [urlValue dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"urlValue"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"urlValue"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    urlValue = [(_SFPBURLShareItem *)self urlValue];
    urlValue2 = [equalCopy urlValue];
    v7 = urlValue2;
    if ((urlValue != 0) != (urlValue2 == 0))
    {
      urlValue3 = [(_SFPBURLShareItem *)self urlValue];
      if (!urlValue3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = urlValue3;
      urlValue4 = [(_SFPBURLShareItem *)self urlValue];
      urlValue5 = [equalCopy urlValue];
      v12 = [urlValue4 isEqual:urlValue5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  urlValue = [(_SFPBURLShareItem *)self urlValue];
  if (urlValue)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end