@interface IFTSchemaIFTCandidate
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTCandidate)initWithDictionary:(id)a3;
- (IFTSchemaIFTCandidate)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTCandidate

- (IFTSchemaIFTCandidate)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTCandidate;
  v5 = [(IFTSchemaIFTCandidate *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v6];
      [(IFTSchemaIFTCandidate *)v5 setStatementId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTCandidate setSource:](v5, "setSource:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"promptStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTCandidatePromptStatus alloc] initWithDictionary:v9];
      [(IFTSchemaIFTCandidate *)v5 setPromptStatus:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"value"];
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

- (IFTSchemaIFTCandidate)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTCandidate *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTCandidate *)self dictionaryRepresentation];
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
  if (self->_promptStatus)
  {
    v4 = [(IFTSchemaIFTCandidate *)self promptStatus];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"promptStatus"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"promptStatus"];
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

    [v3 setObject:v8 forKeyedSubscript:@"source"];
  }

  if (self->_statementId)
  {
    v9 = [(IFTSchemaIFTCandidate *)self statementId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_value)
  {
    v12 = [(IFTSchemaIFTCandidate *)self value];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"value"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(IFTSchemaIFTCandidate *)self statementId];
  v6 = [v4 statementId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(IFTSchemaIFTCandidate *)self statementId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTCandidate *)self statementId];
    v10 = [v4 statementId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    source = self->_source;
    if (source != [v4 source])
    {
      goto LABEL_20;
    }
  }

  v5 = [(IFTSchemaIFTCandidate *)self promptStatus];
  v6 = [v4 promptStatus];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(IFTSchemaIFTCandidate *)self promptStatus];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTCandidate *)self promptStatus];
    v16 = [v4 promptStatus];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(IFTSchemaIFTCandidate *)self value];
  v6 = [v4 value];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(IFTSchemaIFTCandidate *)self value];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(IFTSchemaIFTCandidate *)self value];
    v21 = [v4 value];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(IFTSchemaIFTCandidate *)self statementId];

  if (v4)
  {
    v5 = [(IFTSchemaIFTCandidate *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(IFTSchemaIFTCandidate *)self promptStatus];

  if (v6)
  {
    v7 = [(IFTSchemaIFTCandidate *)self promptStatus];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTCandidate *)self value];

  v9 = v11;
  if (v8)
  {
    v10 = [(IFTSchemaIFTCandidate *)self value];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTCandidate;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTCandidate *)self statementId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTCandidate *)self deleteStatementId];
  }

  v9 = [(IFTSchemaIFTCandidate *)self promptStatus];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTCandidate *)self deletePromptStatus];
  }

  v12 = [(IFTSchemaIFTCandidate *)self value];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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