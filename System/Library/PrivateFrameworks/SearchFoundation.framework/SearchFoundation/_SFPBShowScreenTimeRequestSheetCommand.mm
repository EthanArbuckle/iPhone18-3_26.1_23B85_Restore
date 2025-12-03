@interface _SFPBShowScreenTimeRequestSheetCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBShowScreenTimeRequestSheetCommand)initWithDictionary:(id)dictionary;
- (_SFPBShowScreenTimeRequestSheetCommand)initWithFacade:(id)facade;
- (_SFPBShowScreenTimeRequestSheetCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setRequestIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShowScreenTimeRequestSheetCommand

- (_SFPBShowScreenTimeRequestSheetCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBShowScreenTimeRequestSheetCommand *)self init];
  if (v5)
  {
    requestIdentifier = [facadeCopy requestIdentifier];

    if (requestIdentifier)
    {
      requestIdentifier2 = [facadeCopy requestIdentifier];
      [(_SFPBShowScreenTimeRequestSheetCommand *)v5 setRequestIdentifier:requestIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShowScreenTimeRequestSheetCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBShowScreenTimeRequestSheetCommand;
  v5 = [(_SFPBShowScreenTimeRequestSheetCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBShowScreenTimeRequestSheetCommand *)v5 setRequestIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShowScreenTimeRequestSheetCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShowScreenTimeRequestSheetCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShowScreenTimeRequestSheetCommand *)self dictionaryRepresentation];
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
  if (self->_requestIdentifier)
  {
    requestIdentifier = [(_SFPBShowScreenTimeRequestSheetCommand *)self requestIdentifier];
    v5 = [requestIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"requestIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    requestIdentifier = [(_SFPBShowScreenTimeRequestSheetCommand *)self requestIdentifier];
    requestIdentifier2 = [equalCopy requestIdentifier];
    v7 = requestIdentifier2;
    if ((requestIdentifier != 0) != (requestIdentifier2 == 0))
    {
      requestIdentifier3 = [(_SFPBShowScreenTimeRequestSheetCommand *)self requestIdentifier];
      if (!requestIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = requestIdentifier3;
      requestIdentifier4 = [(_SFPBShowScreenTimeRequestSheetCommand *)self requestIdentifier];
      requestIdentifier5 = [equalCopy requestIdentifier];
      v12 = [requestIdentifier4 isEqual:requestIdentifier5];

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
  requestIdentifier = [(_SFPBShowScreenTimeRequestSheetCommand *)self requestIdentifier];
  if (requestIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setRequestIdentifier:(id)identifier
{
  v4 = [identifier copy];
  requestIdentifier = self->_requestIdentifier;
  self->_requestIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end