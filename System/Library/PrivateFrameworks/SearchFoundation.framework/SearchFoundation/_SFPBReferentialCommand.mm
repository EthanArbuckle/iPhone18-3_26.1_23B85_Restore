@interface _SFPBReferentialCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBReferentialCommand)initWithDictionary:(id)dictionary;
- (_SFPBReferentialCommand)initWithFacade:(id)facade;
- (_SFPBReferentialCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setReferenceIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBReferentialCommand

- (_SFPBReferentialCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBReferentialCommand *)self init];
  if (v5)
  {
    referenceIdentifier = [facadeCopy referenceIdentifier];

    if (referenceIdentifier)
    {
      referenceIdentifier2 = [facadeCopy referenceIdentifier];
      [(_SFPBReferentialCommand *)v5 setReferenceIdentifier:referenceIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBReferentialCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBReferentialCommand;
  v5 = [(_SFPBReferentialCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"referenceIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBReferentialCommand *)v5 setReferenceIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBReferentialCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBReferentialCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBReferentialCommand *)self dictionaryRepresentation];
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
  if (self->_referenceIdentifier)
  {
    referenceIdentifier = [(_SFPBReferentialCommand *)self referenceIdentifier];
    v5 = [referenceIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"referenceIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    referenceIdentifier = [(_SFPBReferentialCommand *)self referenceIdentifier];
    referenceIdentifier2 = [equalCopy referenceIdentifier];
    v7 = referenceIdentifier2;
    if ((referenceIdentifier != 0) != (referenceIdentifier2 == 0))
    {
      referenceIdentifier3 = [(_SFPBReferentialCommand *)self referenceIdentifier];
      if (!referenceIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = referenceIdentifier3;
      referenceIdentifier4 = [(_SFPBReferentialCommand *)self referenceIdentifier];
      referenceIdentifier5 = [equalCopy referenceIdentifier];
      v12 = [referenceIdentifier4 isEqual:referenceIdentifier5];

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
  referenceIdentifier = [(_SFPBReferentialCommand *)self referenceIdentifier];
  if (referenceIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setReferenceIdentifier:(id)identifier
{
  v4 = [identifier copy];
  referenceIdentifier = self->_referenceIdentifier;
  self->_referenceIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end