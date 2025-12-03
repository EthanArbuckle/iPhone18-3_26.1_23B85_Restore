@interface _SFPBTimeZone
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTimeZone)initWithDictionary:(id)dictionary;
- (_SFPBTimeZone)initWithJSON:(id)n;
- (_SFPBTimeZone)initWithNSTimeZone:(id)zone;
- (id)dictionaryRepresentation;
- (void)setIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTimeZone

- (_SFPBTimeZone)initWithNSTimeZone:(id)zone
{
  zoneCopy = zone;
  v9.receiver = self;
  v9.super_class = _SFPBTimeZone;
  v5 = [(_SFPBTimeZone *)&v9 init];
  if (v5)
  {
    name = [zoneCopy name];
    [(_SFPBTimeZone *)v5 setIdentifier:name];

    v7 = v5;
  }

  return v5;
}

- (_SFPBTimeZone)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBTimeZone;
  v5 = [(_SFPBTimeZone *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBTimeZone *)v5 setIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBTimeZone)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTimeZone *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTimeZone *)self dictionaryRepresentation];
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
  if (self->_identifier)
  {
    identifier = [(_SFPBTimeZone *)self identifier];
    v5 = [identifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"identifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    identifier = [(_SFPBTimeZone *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = identifier2;
    if ((identifier != 0) != (identifier2 == 0))
    {
      identifier3 = [(_SFPBTimeZone *)self identifier];
      if (!identifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = identifier3;
      identifier4 = [(_SFPBTimeZone *)self identifier];
      identifier5 = [equalCopy identifier];
      v12 = [identifier4 isEqual:identifier5];

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
  identifier = [(_SFPBTimeZone *)self identifier];
  if (identifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end