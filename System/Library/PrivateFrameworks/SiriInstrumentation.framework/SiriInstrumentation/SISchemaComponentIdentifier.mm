@interface SISchemaComponentIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaComponentIdentifier)initWithDictionary:(id)dictionary;
- (SISchemaComponentIdentifier)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaComponentIdentifier

- (SISchemaComponentIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaComponentIdentifier;
  v5 = [(SISchemaComponentIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaComponentIdentifier *)v5 setUuid:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"component"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaComponentIdentifier setComponent:](v5, "setComponent:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaComponentIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaComponentIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaComponentIdentifier *)self dictionaryRepresentation];
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
    v4 = [(SISchemaComponentIdentifier *)self component]- 1;
    if (v4 > 0x41)
    {
      v5 = @"COMPONENTNAME_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E3C68[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"component"];
  }

  if (self->_uuid)
  {
    uuid = [(SISchemaComponentIdentifier *)self uuid];
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
  v3 = [(SISchemaUUID *)self->_uuid hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_component;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  uuid = [(SISchemaComponentIdentifier *)self uuid];
  uuid2 = [equalCopy uuid];
  v7 = uuid2;
  if ((uuid != 0) == (uuid2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  uuid3 = [(SISchemaComponentIdentifier *)self uuid];
  if (uuid3)
  {
    v9 = uuid3;
    uuid4 = [(SISchemaComponentIdentifier *)self uuid];
    uuid5 = [equalCopy uuid];
    v12 = [uuid4 isEqual:uuid5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    component = self->_component;
    if (component != [equalCopy component])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  uuid = [(SISchemaComponentIdentifier *)self uuid];

  if (uuid)
  {
    uuid2 = [(SISchemaComponentIdentifier *)self uuid];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaComponentIdentifier;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaComponentIdentifier *)self uuid:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaComponentIdentifier *)self deleteUuid];
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