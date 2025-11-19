@interface IDENTITYSchemaIDENTITYResultCandidateReceived
- (BOOL)isEqual:(id)a3;
- (IDENTITYSchemaIDENTITYResultCandidateReceived)initWithDictionary:(id)a3;
- (IDENTITYSchemaIDENTITYResultCandidateReceived)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IDENTITYSchemaIDENTITYResultCandidateReceived

- (IDENTITYSchemaIDENTITYResultCandidateReceived)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IDENTITYSchemaIDENTITYResultCandidateReceived;
  v5 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IDENTITYSchemaIDENTITYResultCandidateReceived *)v5 setResultCandidateId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IDENTITYSchemaIDENTITYResultCandidateReceived setIsSelected:](v5, "setIsSelected:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"identityScoreCard"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IDENTITYSchemaIDENTITYIDScoreCard alloc] initWithDictionary:v9];
      [(IDENTITYSchemaIDENTITYResultCandidateReceived *)v5 setIdentityScoreCard:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IDENTITYSchemaIDENTITYResultCandidateReceived)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self dictionaryRepresentation];
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
  if (self->_identityScoreCard)
  {
    v4 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"identityScoreCard"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"identityScoreCard"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDENTITYSchemaIDENTITYResultCandidateReceived isSelected](self, "isSelected")}];
    [v3 setObject:v7 forKeyedSubscript:@"isSelected"];
  }

  if (self->_resultCandidateId)
  {
    v8 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"resultCandidateId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_resultCandidateId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isSelected;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(IDENTITYSchemaIDENTITYIDScoreCard *)self->_identityScoreCard hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];
    v10 = [v4 resultCandidateId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isSelected = self->_isSelected;
    if (isSelected != [v4 isSelected])
    {
      goto LABEL_15;
    }
  }

  v5 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
  v6 = [v4 identityScoreCard];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
    v16 = [v4 identityScoreCard];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self resultCandidateId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];

  v6 = v8;
  if (v5)
  {
    v7 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = IDENTITYSchemaIDENTITYResultCandidateReceived;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self identityScoreCard:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IDENTITYSchemaIDENTITYResultCandidateReceived *)self deleteIdentityScoreCard];
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