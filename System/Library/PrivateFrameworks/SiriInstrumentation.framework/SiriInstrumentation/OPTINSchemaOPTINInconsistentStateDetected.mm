@interface OPTINSchemaOPTINInconsistentStateDetected
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (OPTINSchemaOPTINInconsistentStateDetected)initWithDictionary:(id)dictionary;
- (OPTINSchemaOPTINInconsistentStateDetected)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInconsistencyTrigger:(BOOL)trigger;
- (void)writeTo:(id)to;
@end

@implementation OPTINSchemaOPTINInconsistentStateDetected

- (OPTINSchemaOPTINInconsistentStateDetected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = OPTINSchemaOPTINInconsistentStateDetected;
  v5 = [(OPTINSchemaOPTINInconsistentStateDetected *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"inconsistencyCondition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[OPTINSchemaOPTINInconsistentStateDetected setInconsistencyCondition:](v5, "setInconsistencyCondition:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"inconsistencyTrigger"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[OPTINSchemaOPTINInconsistentStateDetected setInconsistencyTrigger:](v5, "setInconsistencyTrigger:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (OPTINSchemaOPTINInconsistentStateDetected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(OPTINSchemaOPTINInconsistentStateDetected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(OPTINSchemaOPTINInconsistentStateDetected *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(OPTINSchemaOPTINInconsistentStateDetected *)self inconsistencyCondition]- 1;
    if (v5 > 2)
    {
      v6 = @"GRADINGOPTINSTATEINCONSISTENCYCONDITION_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DE5F8[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"inconsistencyCondition"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ([(OPTINSchemaOPTINInconsistentStateDetected *)self inconsistencyTrigger]== 1)
    {
      v7 = @"GRADINGOPTINSTATEINCONSISTENCYTRIGGER_AUDIO_LOG_UPLOAD";
    }

    else
    {
      v7 = @"GRADINGOPTINSTATEINCONSISTENCYTRIGGER_UNKNOWN";
    }

    [dictionary setObject:v7 forKeyedSubscript:@"inconsistencyTrigger"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_inconsistencyCondition;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_inconsistencyTrigger;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    inconsistencyCondition = self->_inconsistencyCondition;
    if (inconsistencyCondition != [equalCopy inconsistencyCondition])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    inconsistencyTrigger = self->_inconsistencyTrigger;
    if (inconsistencyTrigger != [equalCopy inconsistencyTrigger])
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
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasInconsistencyTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end