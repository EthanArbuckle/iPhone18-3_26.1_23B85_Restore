@interface _SFPBPlayVideoCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPlayVideoCommand)initWithDictionary:(id)dictionary;
- (_SFPBPlayVideoCommand)initWithFacade:(id)facade;
- (_SFPBPlayVideoCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPlayVideoCommand

- (_SFPBPlayVideoCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPlayVideoCommand *)self init];
  if (v5)
  {
    v6 = [facadeCopy url];

    if (v6)
    {
      v7 = [_SFPBURL alloc];
      v8 = [facadeCopy url];
      v9 = [(_SFPBURL *)v7 initWithNSURL:v8];
      [(_SFPBPlayVideoCommand *)v5 setUrl:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBPlayVideoCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBPlayVideoCommand;
  v5 = [(_SFPBPlayVideoCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBURL alloc] initWithDictionary:v6];
      [(_SFPBPlayVideoCommand *)v5 setUrl:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBPlayVideoCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPlayVideoCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPlayVideoCommand *)self dictionaryRepresentation];
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
  if (self->_url)
  {
    v4 = [(_SFPBPlayVideoCommand *)self url];
    dictionaryRepresentation = [v4 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"url"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"url"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBPlayVideoCommand *)self url];
    v6 = [equalCopy url];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBPlayVideoCommand *)self url];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBPlayVideoCommand *)self url];
      v11 = [equalCopy url];
      v12 = [v10 isEqual:v11];

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
  v4 = [(_SFPBPlayVideoCommand *)self url];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end