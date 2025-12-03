@interface FLSchemaFLCandidateInteraction
- (BOOL)isEqual:(id)equal;
- (FLSchemaFLCandidateInteraction)initWithDictionary:(id)dictionary;
- (FLSchemaFLCandidateInteraction)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLSchemaFLCandidateInteraction

- (FLSchemaFLCandidateInteraction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FLSchemaFLCandidateInteraction;
  v5 = [(FLSchemaFLCandidateInteraction *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLCandidateIdentifier alloc] initWithDictionary:v6];
      [(FLSchemaFLCandidateInteraction *)v5 setIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"alignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLCandidateInteraction setAlignment:](v5, "setAlignment:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (FLSchemaFLCandidateInteraction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLSchemaFLCandidateInteraction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLSchemaFLCandidateInteraction *)self dictionaryRepresentation];
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
    v4 = [(FLSchemaFLCandidateInteraction *)self alignment]- 1;
    if (v4 > 9)
    {
      v5 = @"FLUSERALIGNMENTCATEGORY_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D6D38[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"alignment"];
  }

  if (self->_identifier)
  {
    identifier = [(FLSchemaFLCandidateInteraction *)self identifier];
    dictionaryRepresentation = [identifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"identifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"identifier"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(FLSchemaFLCandidateIdentifier *)self->_identifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_alignment;
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

  identifier = [(FLSchemaFLCandidateInteraction *)self identifier];
  identifier2 = [equalCopy identifier];
  v7 = identifier2;
  if ((identifier != 0) == (identifier2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  identifier3 = [(FLSchemaFLCandidateInteraction *)self identifier];
  if (identifier3)
  {
    v9 = identifier3;
    identifier4 = [(FLSchemaFLCandidateInteraction *)self identifier];
    identifier5 = [equalCopy identifier];
    v12 = [identifier4 isEqual:identifier5];

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
    alignment = self->_alignment;
    if (alignment != [equalCopy alignment])
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
  identifier = [(FLSchemaFLCandidateInteraction *)self identifier];

  if (identifier)
  {
    identifier2 = [(FLSchemaFLCandidateInteraction *)self identifier];
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
  v9.super_class = FLSchemaFLCandidateInteraction;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLSchemaFLCandidateInteraction *)self identifier:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLSchemaFLCandidateInteraction *)self deleteIdentifier];
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