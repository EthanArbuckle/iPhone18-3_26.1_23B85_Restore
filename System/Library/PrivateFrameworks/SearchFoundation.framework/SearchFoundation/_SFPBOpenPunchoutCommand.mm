@interface _SFPBOpenPunchoutCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBOpenPunchoutCommand)initWithDictionary:(id)dictionary;
- (_SFPBOpenPunchoutCommand)initWithFacade:(id)facade;
- (_SFPBOpenPunchoutCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBOpenPunchoutCommand

- (_SFPBOpenPunchoutCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBOpenPunchoutCommand *)self init];
  if (v5)
  {
    punchout = [facadeCopy punchout];

    if (punchout)
    {
      v7 = [_SFPBPunchout alloc];
      punchout2 = [facadeCopy punchout];
      v9 = [(_SFPBPunchout *)v7 initWithFacade:punchout2];
      [(_SFPBOpenPunchoutCommand *)v5 setPunchout:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBOpenPunchoutCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBOpenPunchoutCommand;
  v5 = [(_SFPBOpenPunchoutCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBPunchout alloc] initWithDictionary:v6];
      [(_SFPBOpenPunchoutCommand *)v5 setPunchout:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBOpenPunchoutCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBOpenPunchoutCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBOpenPunchoutCommand *)self dictionaryRepresentation];
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
  if (self->_punchout)
  {
    punchout = [(_SFPBOpenPunchoutCommand *)self punchout];
    dictionaryRepresentation = [punchout dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"punchout"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"punchout"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    punchout = [(_SFPBOpenPunchoutCommand *)self punchout];
    punchout2 = [equalCopy punchout];
    v7 = punchout2;
    if ((punchout != 0) != (punchout2 == 0))
    {
      punchout3 = [(_SFPBOpenPunchoutCommand *)self punchout];
      if (!punchout3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = punchout3;
      punchout4 = [(_SFPBOpenPunchoutCommand *)self punchout];
      punchout5 = [equalCopy punchout];
      v12 = [punchout4 isEqual:punchout5];

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
  punchout = [(_SFPBOpenPunchoutCommand *)self punchout];
  if (punchout)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end