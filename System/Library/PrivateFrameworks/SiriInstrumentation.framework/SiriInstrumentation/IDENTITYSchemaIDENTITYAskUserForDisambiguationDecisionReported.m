@interface IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported
- (BOOL)isEqual:(id)a3;
- (IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported)initWithDictionary:(id)a3;
- (IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported

- (IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported;
  v5 = [(IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isUserDisambiguationSkipped"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported setIsUserDisambiguationSkipped:](v5, "setIsUserDisambiguationSkipped:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported *)self dictionaryRepresentation];
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
  if (*(&self->_isUserDisambiguationSkipped + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDENTITYSchemaIDENTITYAskUserForDisambiguationDecisionReported isUserDisambiguationSkipped](self, "isUserDisambiguationSkipped")}];
    [v3 setObject:v4 forKeyedSubscript:@"isUserDisambiguationSkipped"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isUserDisambiguationSkipped + 1))
  {
    return 2654435761 * self->_isUserDisambiguationSkipped;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if (*(&self->_isUserDisambiguationSkipped + 1) == (v4[9] & 1))
    {
      if (!*(&self->_isUserDisambiguationSkipped + 1) || (isUserDisambiguationSkipped = self->_isUserDisambiguationSkipped, isUserDisambiguationSkipped == [v4 isUserDisambiguationSkipped]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (*(&self->_isUserDisambiguationSkipped + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end