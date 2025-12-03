@interface CloudKitSchemaCKChangeReported
- (BOOL)isEqual:(id)equal;
- (CloudKitSchemaCKChangeReported)initWithDictionary:(id)dictionary;
- (CloudKitSchemaCKChangeReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasChangeTokenExpired:(BOOL)expired;
- (void)writeTo:(id)to;
@end

@implementation CloudKitSchemaCKChangeReported

- (CloudKitSchemaCKChangeReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CloudKitSchemaCKChangeReported;
  v5 = [(CloudKitSchemaCKChangeReported *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"changeType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CloudKitSchemaCKChangeReported setChangeType:](v5, "setChangeType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"changeTokenExpired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CloudKitSchemaCKChangeReported setChangeTokenExpired:](v5, "setChangeTokenExpired:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (CloudKitSchemaCKChangeReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CloudKitSchemaCKChangeReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CloudKitSchemaCKChangeReported *)self dictionaryRepresentation];
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
  v4 = *(&self->_changeTokenExpired + 1);
  if ((v4 & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CloudKitSchemaCKChangeReported changeTokenExpired](self, "changeTokenExpired")}];
    [dictionary setObject:v5 forKeyedSubscript:@"changeTokenExpired"];

    v4 = *(&self->_changeTokenExpired + 1);
  }

  if (v4)
  {
    v6 = [(CloudKitSchemaCKChangeReported *)self changeType]- 1;
    if (v6 > 2)
    {
      v7 = @"CKCHANGETYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78D29D8[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"changeType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_changeTokenExpired + 1))
  {
    v2 = 2654435761 * self->_changeType;
    if ((*(&self->_changeTokenExpired + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_changeTokenExpired + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_changeTokenExpired;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_changeTokenExpired + 1);
  v6 = equalCopy[13];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    changeType = self->_changeType;
    if (changeType != [equalCopy changeType])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_changeTokenExpired + 1);
    v6 = equalCopy[13];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    changeTokenExpired = self->_changeTokenExpired;
    if (changeTokenExpired != [equalCopy changeTokenExpired])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_changeTokenExpired + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    v5 = *(&self->_changeTokenExpired + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)setHasChangeTokenExpired:(BOOL)expired
{
  if (expired)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_changeTokenExpired + 1) = *(&self->_changeTokenExpired + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end