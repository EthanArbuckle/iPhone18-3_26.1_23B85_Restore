@interface _SFPBCommandValue
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCommandValue)initWithDictionary:(id)dictionary;
- (_SFPBCommandValue)initWithFacade:(id)facade;
- (_SFPBCommandValue)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCommandValue

- (_SFPBCommandValue)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCommandValue *)self init];
  if (v5)
  {
    referentialCommand = [facadeCopy referentialCommand];

    if (referentialCommand)
    {
      v7 = [_SFPBReferentialCommand alloc];
      referentialCommand2 = [facadeCopy referentialCommand];
      v9 = [(_SFPBReferentialCommand *)v7 initWithFacade:referentialCommand2];
      [(_SFPBCommandValue *)v5 setReferentialCommand:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBCommandValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBCommandValue;
  v5 = [(_SFPBCommandValue *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"referentialCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBReferentialCommand alloc] initWithDictionary:v6];
      [(_SFPBCommandValue *)v5 setReferentialCommand:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBCommandValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCommandValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCommandValue *)self dictionaryRepresentation];
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
  if (self->_referentialCommand)
  {
    referentialCommand = [(_SFPBCommandValue *)self referentialCommand];
    dictionaryRepresentation = [referentialCommand dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"referentialCommand"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"referentialCommand"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    referentialCommand = [(_SFPBCommandValue *)self referentialCommand];
    referentialCommand2 = [equalCopy referentialCommand];
    v7 = referentialCommand2;
    if ((referentialCommand != 0) != (referentialCommand2 == 0))
    {
      referentialCommand3 = [(_SFPBCommandValue *)self referentialCommand];
      if (!referentialCommand3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = referentialCommand3;
      referentialCommand4 = [(_SFPBCommandValue *)self referentialCommand];
      referentialCommand5 = [equalCopy referentialCommand];
      v12 = [referentialCommand4 isEqual:referentialCommand5];

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
  referentialCommand = [(_SFPBCommandValue *)self referentialCommand];
  if (referentialCommand)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end