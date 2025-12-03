@interface SISchemaRequestLinkInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaRequestLinkInfo)initWithDictionary:(id)dictionary;
- (SISchemaRequestLinkInfo)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaRequestLinkInfo

- (SISchemaRequestLinkInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaRequestLinkInfo;
  v5 = [(SISchemaRequestLinkInfo *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"component"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaRequestLinkInfo setComponent:](v5, "setComponent:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(SISchemaRequestLinkInfo *)v5 setUuid:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaRequestLinkInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaRequestLinkInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaRequestLinkInfo *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(SISchemaRequestLinkInfo *)self component]- 1;
    if (v4 > 0x41)
    {
      v5 = @"COMPONENTNAME_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E6218[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"component"];
  }

  if (self->_uuid)
  {
    uuid = [(SISchemaRequestLinkInfo *)self uuid];
    dictionaryRepresentation = [uuid dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"uuid"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"uuid"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_component;
  }

  else
  {
    v2 = 0;
  }

  return [(SISchemaUUID *)self->_uuid hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (component = self->_component, component == [equalCopy component]))
      {
        uuid = [(SISchemaRequestLinkInfo *)self uuid];
        uuid2 = [equalCopy uuid];
        v8 = uuid2;
        if ((uuid != 0) != (uuid2 == 0))
        {
          uuid3 = [(SISchemaRequestLinkInfo *)self uuid];
          if (!uuid3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = uuid3;
          uuid4 = [(SISchemaRequestLinkInfo *)self uuid];
          uuid5 = [equalCopy uuid];
          v13 = [uuid4 isEqual:uuid5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  uuid = [(SISchemaRequestLinkInfo *)self uuid];

  v5 = toCopy;
  if (uuid)
  {
    uuid2 = [(SISchemaRequestLinkInfo *)self uuid];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaRequestLinkInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaRequestLinkInfo *)self uuid:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaRequestLinkInfo *)self deleteUuid];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end