@interface _SFPBStoreButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBStoreButtonItem)initWithDictionary:(id)a3;
- (_SFPBStoreButtonItem)initWithFacade:(id)a3;
- (_SFPBStoreButtonItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBStoreButtonItem

- (_SFPBStoreButtonItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBStoreButtonItem *)self init];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(_SFPBStoreButtonItem *)v5 setIdentifier:v7];
    }

    if ([v4 hasShouldOpenAppAfterInstallCompletes])
    {
      -[_SFPBStoreButtonItem setShouldOpenAppAfterInstallCompletes:](v5, "setShouldOpenAppAfterInstallCompletes:", [v4 shouldOpenAppAfterInstallCompletes]);
    }

    if ([v4 hasIdentifierType])
    {
      -[_SFPBStoreButtonItem setIdentifierType:](v5, "setIdentifierType:", [v4 identifierType]);
    }

    if ([v4 hasUniqueId])
    {
      -[_SFPBStoreButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBStoreButtonItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFPBStoreButtonItem;
  v5 = [(_SFPBStoreButtonItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBStoreButtonItem *)v5 setIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"shouldOpenAppAfterInstallCompletes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStoreButtonItem setShouldOpenAppAfterInstallCompletes:](v5, "setShouldOpenAppAfterInstallCompletes:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"identifierType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStoreButtonItem setIdentifierType:](v5, "setIdentifierType:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStoreButtonItem setUniqueId:](v5, "setUniqueId:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (_SFPBStoreButtonItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBStoreButtonItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBStoreButtonItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_identifier)
  {
    v4 = [(_SFPBStoreButtonItem *)self identifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  if (self->_identifierType)
  {
    v6 = [(_SFPBStoreButtonItem *)self identifierType];
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = @"1";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
      }
    }

    else
    {
      v7 = @"0";
    }

    [v3 setObject:v7 forKeyedSubscript:@"identifierType"];
  }

  if (self->_shouldOpenAppAfterInstallCompletes)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStoreButtonItem shouldOpenAppAfterInstallCompletes](self, "shouldOpenAppAfterInstallCompletes")}];
    [v3 setObject:v8 forKeyedSubscript:@"shouldOpenAppAfterInstallCompletes"];
  }

  if (self->_uniqueId)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBStoreButtonItem uniqueId](self, "uniqueId")}];
    [v3 setObject:v9 forKeyedSubscript:@"uniqueId"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = [(_SFPBStoreButtonItem *)self identifier];
  v6 = [v4 identifier];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v8 = [(_SFPBStoreButtonItem *)self identifier];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBStoreButtonItem *)self identifier];
    v11 = [v4 identifier];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  shouldOpenAppAfterInstallCompletes = self->_shouldOpenAppAfterInstallCompletes;
  if (shouldOpenAppAfterInstallCompletes != [v4 shouldOpenAppAfterInstallCompletes])
  {
    goto LABEL_11;
  }

  identifierType = self->_identifierType;
  if (identifierType != [v4 identifierType])
  {
    goto LABEL_11;
  }

  uniqueId = self->_uniqueId;
  v16 = uniqueId == [v4 uniqueId];
LABEL_12:

  return v16;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBStoreButtonItem *)self identifier];
  if (v4)
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

  v5 = [(_SFPBStoreButtonItem *)self uniqueId];
  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteUint64Field();
    v6 = v7;
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end