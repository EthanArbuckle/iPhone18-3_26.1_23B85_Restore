@interface _SFPBOpenWebClipCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBOpenWebClipCommand)initWithDictionary:(id)dictionary;
- (_SFPBOpenWebClipCommand)initWithFacade:(id)facade;
- (_SFPBOpenWebClipCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setClipIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBOpenWebClipCommand

- (_SFPBOpenWebClipCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBOpenWebClipCommand *)self init];
  if (v5)
  {
    clipIdentifier = [facadeCopy clipIdentifier];

    if (clipIdentifier)
    {
      clipIdentifier2 = [facadeCopy clipIdentifier];
      [(_SFPBOpenWebClipCommand *)v5 setClipIdentifier:clipIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBOpenWebClipCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBOpenWebClipCommand;
  v5 = [(_SFPBOpenWebClipCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clipIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBOpenWebClipCommand *)v5 setClipIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBOpenWebClipCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBOpenWebClipCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBOpenWebClipCommand *)self dictionaryRepresentation];
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
  if (self->_clipIdentifier)
  {
    clipIdentifier = [(_SFPBOpenWebClipCommand *)self clipIdentifier];
    v5 = [clipIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"clipIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    clipIdentifier = [(_SFPBOpenWebClipCommand *)self clipIdentifier];
    clipIdentifier2 = [equalCopy clipIdentifier];
    v7 = clipIdentifier2;
    if ((clipIdentifier != 0) != (clipIdentifier2 == 0))
    {
      clipIdentifier3 = [(_SFPBOpenWebClipCommand *)self clipIdentifier];
      if (!clipIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = clipIdentifier3;
      clipIdentifier4 = [(_SFPBOpenWebClipCommand *)self clipIdentifier];
      clipIdentifier5 = [equalCopy clipIdentifier];
      v12 = [clipIdentifier4 isEqual:clipIdentifier5];

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
  clipIdentifier = [(_SFPBOpenWebClipCommand *)self clipIdentifier];
  if (clipIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setClipIdentifier:(id)identifier
{
  v4 = [identifier copy];
  clipIdentifier = self->_clipIdentifier;
  self->_clipIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end