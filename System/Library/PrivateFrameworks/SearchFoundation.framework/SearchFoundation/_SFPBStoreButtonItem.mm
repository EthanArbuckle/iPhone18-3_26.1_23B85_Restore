@interface _SFPBStoreButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBStoreButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBStoreButtonItem)initWithFacade:(id)facade;
- (_SFPBStoreButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBStoreButtonItem

- (_SFPBStoreButtonItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBStoreButtonItem *)self init];
  if (v5)
  {
    identifier = [facadeCopy identifier];

    if (identifier)
    {
      identifier2 = [facadeCopy identifier];
      [(_SFPBStoreButtonItem *)v5 setIdentifier:identifier2];
    }

    if ([facadeCopy hasShouldOpenAppAfterInstallCompletes])
    {
      -[_SFPBStoreButtonItem setShouldOpenAppAfterInstallCompletes:](v5, "setShouldOpenAppAfterInstallCompletes:", [facadeCopy shouldOpenAppAfterInstallCompletes]);
    }

    if ([facadeCopy hasIdentifierType])
    {
      -[_SFPBStoreButtonItem setIdentifierType:](v5, "setIdentifierType:", [facadeCopy identifierType]);
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBStoreButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBStoreButtonItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = _SFPBStoreButtonItem;
  v5 = [(_SFPBStoreButtonItem *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBStoreButtonItem *)v5 setIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"shouldOpenAppAfterInstallCompletes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStoreButtonItem setShouldOpenAppAfterInstallCompletes:](v5, "setShouldOpenAppAfterInstallCompletes:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"identifierType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStoreButtonItem setIdentifierType:](v5, "setIdentifierType:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStoreButtonItem setUniqueId:](v5, "setUniqueId:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBStoreButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBStoreButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBStoreButtonItem *)self dictionaryRepresentation];
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
    identifier = [(_SFPBStoreButtonItem *)self identifier];
    v5 = [identifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"identifier"];
  }

  if (self->_identifierType)
  {
    identifierType = [(_SFPBStoreButtonItem *)self identifierType];
    if (identifierType)
    {
      if (identifierType == 1)
      {
        v7 = @"1";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", identifierType];
      }
    }

    else
    {
      v7 = @"0";
    }

    [dictionary setObject:v7 forKeyedSubscript:@"identifierType"];
  }

  if (self->_shouldOpenAppAfterInstallCompletes)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStoreButtonItem shouldOpenAppAfterInstallCompletes](self, "shouldOpenAppAfterInstallCompletes")}];
    [dictionary setObject:v8 forKeyedSubscript:@"shouldOpenAppAfterInstallCompletes"];
  }

  if (self->_uniqueId)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBStoreButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v9 forKeyedSubscript:@"uniqueId"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (self->_shouldOpenAppAfterInstallCompletes)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ (2654435761 * self->_identifierType) ^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  identifier = [(_SFPBStoreButtonItem *)self identifier];
  identifier2 = [equalCopy identifier];
  v7 = identifier2;
  if ((identifier != 0) == (identifier2 == 0))
  {

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  identifier3 = [(_SFPBStoreButtonItem *)self identifier];
  if (identifier3)
  {
    v9 = identifier3;
    identifier4 = [(_SFPBStoreButtonItem *)self identifier];
    identifier5 = [equalCopy identifier];
    v12 = [identifier4 isEqual:identifier5];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  shouldOpenAppAfterInstallCompletes = self->_shouldOpenAppAfterInstallCompletes;
  if (shouldOpenAppAfterInstallCompletes != [equalCopy shouldOpenAppAfterInstallCompletes])
  {
    goto LABEL_11;
  }

  identifierType = self->_identifierType;
  if (identifierType != [equalCopy identifierType])
  {
    goto LABEL_11;
  }

  uniqueId = self->_uniqueId;
  v16 = uniqueId == [equalCopy uniqueId];
LABEL_12:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  identifier = [(_SFPBStoreButtonItem *)self identifier];
  if (identifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBStoreButtonItem *)self shouldOpenAppAfterInstallCompletes])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBStoreButtonItem *)self identifierType])
  {
    PBDataWriterWriteInt32Field();
  }

  uniqueId = [(_SFPBStoreButtonItem *)self uniqueId];
  v6 = toCopy;
  if (uniqueId)
  {
    PBDataWriterWriteUint64Field();
    v6 = toCopy;
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