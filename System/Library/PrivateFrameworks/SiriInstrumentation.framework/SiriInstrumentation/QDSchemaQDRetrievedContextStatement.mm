@interface QDSchemaQDRetrievedContextStatement
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDRetrievedContextStatement)initWithDictionary:(id)dictionary;
- (QDSchemaQDRetrievedContextStatement)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDRetrievedContextStatement

- (QDSchemaQDRetrievedContextStatement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = QDSchemaQDRetrievedContextStatement;
  v5 = [(QDSchemaQDRetrievedContextStatement *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sessionScopedUniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(QDSchemaQDRetrievedContextStatement *)v5 setSessionScopedUniqueId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contextType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDRetrievedContextStatement setContextType:](v5, "setContextType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"valueType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[QDSchemaQDEntityType alloc] initWithDictionary:v9];
      [(QDSchemaQDRetrievedContextStatement *)v5 setValueType:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (QDSchemaQDRetrievedContextStatement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDRetrievedContextStatement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDRetrievedContextStatement *)self dictionaryRepresentation];
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
    v4 = [(QDSchemaQDRetrievedContextStatement *)self contextType]- 1;
    if (v4 > 0x1E)
    {
      v5 = @"QDENTITYCONTEXTTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E16D8[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"contextType"];
  }

  if (self->_sessionScopedUniqueId)
  {
    sessionScopedUniqueId = [(QDSchemaQDRetrievedContextStatement *)self sessionScopedUniqueId];
    dictionaryRepresentation = [sessionScopedUniqueId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sessionScopedUniqueId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sessionScopedUniqueId"];
    }
  }

  if (self->_valueType)
  {
    valueType = [(QDSchemaQDRetrievedContextStatement *)self valueType];
    dictionaryRepresentation2 = [valueType dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"valueType"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"valueType"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_sessionScopedUniqueId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_contextType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(QDSchemaQDEntityType *)self->_valueType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  sessionScopedUniqueId = [(QDSchemaQDRetrievedContextStatement *)self sessionScopedUniqueId];
  sessionScopedUniqueId2 = [equalCopy sessionScopedUniqueId];
  if ((sessionScopedUniqueId != 0) == (sessionScopedUniqueId2 == 0))
  {
    goto LABEL_14;
  }

  sessionScopedUniqueId3 = [(QDSchemaQDRetrievedContextStatement *)self sessionScopedUniqueId];
  if (sessionScopedUniqueId3)
  {
    v8 = sessionScopedUniqueId3;
    sessionScopedUniqueId4 = [(QDSchemaQDRetrievedContextStatement *)self sessionScopedUniqueId];
    sessionScopedUniqueId5 = [equalCopy sessionScopedUniqueId];
    v11 = [sessionScopedUniqueId4 isEqual:sessionScopedUniqueId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    contextType = self->_contextType;
    if (contextType != [equalCopy contextType])
    {
      goto LABEL_15;
    }
  }

  sessionScopedUniqueId = [(QDSchemaQDRetrievedContextStatement *)self valueType];
  sessionScopedUniqueId2 = [equalCopy valueType];
  if ((sessionScopedUniqueId != 0) != (sessionScopedUniqueId2 == 0))
  {
    valueType = [(QDSchemaQDRetrievedContextStatement *)self valueType];
    if (!valueType)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = valueType;
    valueType2 = [(QDSchemaQDRetrievedContextStatement *)self valueType];
    valueType3 = [equalCopy valueType];
    v17 = [valueType2 isEqual:valueType3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  sessionScopedUniqueId = [(QDSchemaQDRetrievedContextStatement *)self sessionScopedUniqueId];

  if (sessionScopedUniqueId)
  {
    sessionScopedUniqueId2 = [(QDSchemaQDRetrievedContextStatement *)self sessionScopedUniqueId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  valueType = [(QDSchemaQDRetrievedContextStatement *)self valueType];

  v7 = toCopy;
  if (valueType)
  {
    valueType2 = [(QDSchemaQDRetrievedContextStatement *)self valueType];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = QDSchemaQDRetrievedContextStatement;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  sessionScopedUniqueId = [(QDSchemaQDRetrievedContextStatement *)self sessionScopedUniqueId];
  v7 = [sessionScopedUniqueId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(QDSchemaQDRetrievedContextStatement *)self deleteSessionScopedUniqueId];
  }

  valueType = [(QDSchemaQDRetrievedContextStatement *)self valueType];
  v10 = [valueType applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(QDSchemaQDRetrievedContextStatement *)self deleteValueType];
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