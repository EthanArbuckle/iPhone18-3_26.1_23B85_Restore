@interface IFTSchemaIFTCandidate
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCandidate)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTCandidate)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTCandidate

- (IFTSchemaIFTCandidate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTCandidate;
  v5 = [(IFTSchemaIFTCandidate *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTCandidate *)v5 setStatementId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTCandidate setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"promptStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTCandidatePromptStatus alloc] initWithDictionary:v9];
      [(IFTSchemaIFTCandidate *)v5 setPromptStatus:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v11];
      [(IFTSchemaIFTCandidate *)v5 setValue:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (IFTSchemaIFTCandidate)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCandidate *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTCandidate *)self dictionaryRepresentation];
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
  if (self->_promptStatus)
  {
    promptStatus = [(IFTSchemaIFTCandidate *)self promptStatus];
    dictionaryRepresentation = [promptStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"promptStatus"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"promptStatus"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(IFTSchemaIFTCandidate *)self source]- 1;
    if (v7 > 7)
    {
      v8 = @"IFTCANDIDATESOURCE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D81F0[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"source"];
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTCandidate *)self statementId];
    dictionaryRepresentation2 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_value)
  {
    value = [(IFTSchemaIFTCandidate *)self value];
    dictionaryRepresentation3 = [value dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"value"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTStatementId *)self->_statementId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_source;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(IFTSchemaIFTCandidatePromptStatus *)self->_promptStatus hash];
  return v5 ^ v6 ^ [(IFTSchemaIFTTypedValue *)self->_value hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  statementId = [(IFTSchemaIFTCandidate *)self statementId];
  statementId2 = [equalCopy statementId];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_19;
  }

  statementId3 = [(IFTSchemaIFTCandidate *)self statementId];
  if (statementId3)
  {
    v8 = statementId3;
    statementId4 = [(IFTSchemaIFTCandidate *)self statementId];
    statementId5 = [equalCopy statementId];
    v11 = [statementId4 isEqual:statementId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    source = self->_source;
    if (source != [equalCopy source])
    {
      goto LABEL_20;
    }
  }

  statementId = [(IFTSchemaIFTCandidate *)self promptStatus];
  statementId2 = [equalCopy promptStatus];
  if ((statementId != 0) == (statementId2 == 0))
  {
    goto LABEL_19;
  }

  promptStatus = [(IFTSchemaIFTCandidate *)self promptStatus];
  if (promptStatus)
  {
    v14 = promptStatus;
    promptStatus2 = [(IFTSchemaIFTCandidate *)self promptStatus];
    promptStatus3 = [equalCopy promptStatus];
    v17 = [promptStatus2 isEqual:promptStatus3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  statementId = [(IFTSchemaIFTCandidate *)self value];
  statementId2 = [equalCopy value];
  if ((statementId != 0) != (statementId2 == 0))
  {
    value = [(IFTSchemaIFTCandidate *)self value];
    if (!value)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = value;
    value2 = [(IFTSchemaIFTCandidate *)self value];
    value3 = [equalCopy value];
    v22 = [value2 isEqual:value3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  statementId = [(IFTSchemaIFTCandidate *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTCandidate *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  promptStatus = [(IFTSchemaIFTCandidate *)self promptStatus];

  if (promptStatus)
  {
    promptStatus2 = [(IFTSchemaIFTCandidate *)self promptStatus];
    PBDataWriterWriteSubmessage();
  }

  value = [(IFTSchemaIFTCandidate *)self value];

  v9 = toCopy;
  if (value)
  {
    value2 = [(IFTSchemaIFTCandidate *)self value];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTCandidate;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  statementId = [(IFTSchemaIFTCandidate *)self statementId];
  v7 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTCandidate *)self deleteStatementId];
  }

  promptStatus = [(IFTSchemaIFTCandidate *)self promptStatus];
  v10 = [promptStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTCandidate *)self deletePromptStatus];
  }

  value = [(IFTSchemaIFTCandidate *)self value];
  v13 = [value applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTCandidate *)self deleteValue];
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