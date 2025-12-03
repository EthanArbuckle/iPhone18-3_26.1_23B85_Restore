@interface _SFPBSportsItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSportsItem)initWithDictionary:(id)dictionary;
- (_SFPBSportsItem)initWithFacade:(id)facade;
- (_SFPBSportsItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSportsItem

- (_SFPBSportsItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSportsItem *)self init];
  if (v5)
  {
    if ([facadeCopy hasType])
    {
      -[_SFPBSportsItem setType:](v5, "setType:", [facadeCopy type]);
    }

    identifier = [facadeCopy identifier];

    if (identifier)
    {
      identifier2 = [facadeCopy identifier];
      [(_SFPBSportsItem *)v5 setIdentifier:identifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBSportsItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBSportsItem;
  v5 = [(_SFPBSportsItem *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSportsItem setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(_SFPBSportsItem *)v5 setIdentifier:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBSportsItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSportsItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSportsItem *)self dictionaryRepresentation];
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
    identifier = [(_SFPBSportsItem *)self identifier];
    v5 = [identifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"identifier"];
  }

  if (self->_type)
  {
    type = [(_SFPBSportsItem *)self type];
    if (type >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v7 = off_1E7ACE560[type];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    type = self->_type;
    if (type == [equalCopy type])
    {
      identifier = [(_SFPBSportsItem *)self identifier];
      identifier2 = [equalCopy identifier];
      v8 = identifier2;
      if ((identifier != 0) != (identifier2 == 0))
      {
        identifier3 = [(_SFPBSportsItem *)self identifier];
        if (!identifier3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = identifier3;
        identifier4 = [(_SFPBSportsItem *)self identifier];
        identifier5 = [equalCopy identifier];
        v13 = [identifier4 isEqual:identifier5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBSportsItem *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  identifier = [(_SFPBSportsItem *)self identifier];
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