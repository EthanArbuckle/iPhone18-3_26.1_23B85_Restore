@interface FLSchemaFLCandidateInteraction
- (BOOL)isEqual:(id)a3;
- (FLSchemaFLCandidateInteraction)initWithDictionary:(id)a3;
- (FLSchemaFLCandidateInteraction)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation FLSchemaFLCandidateInteraction

- (FLSchemaFLCandidateInteraction)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FLSchemaFLCandidateInteraction;
  v5 = [(FLSchemaFLCandidateInteraction *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLSchemaFLCandidateIdentifier alloc] initWithDictionary:v6];
      [(FLSchemaFLCandidateInteraction *)v5 setIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"alignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLSchemaFLCandidateInteraction setAlignment:](v5, "setAlignment:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (FLSchemaFLCandidateInteraction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLSchemaFLCandidateInteraction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLSchemaFLCandidateInteraction *)self dictionaryRepresentation];
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

    [v3 setObject:v5 forKeyedSubscript:@"alignment"];
  }

  if (self->_identifier)
  {
    v6 = [(FLSchemaFLCandidateInteraction *)self identifier];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"identifier"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"identifier"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(FLSchemaFLCandidateInteraction *)self identifier];
  v6 = [v4 identifier];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(FLSchemaFLCandidateInteraction *)self identifier];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLSchemaFLCandidateInteraction *)self identifier];
    v11 = [v4 identifier];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    alignment = self->_alignment;
    if (alignment != [v4 alignment])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(FLSchemaFLCandidateInteraction *)self identifier];

  if (v4)
  {
    v5 = [(FLSchemaFLCandidateInteraction *)self identifier];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = FLSchemaFLCandidateInteraction;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(FLSchemaFLCandidateInteraction *)self identifier:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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