@interface PGSchemaPGPromptResponseTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PGSchemaPGPromptResponseTier1)initWithDictionary:(id)a3;
- (PGSchemaPGPromptResponseTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PGSchemaPGPromptResponseTier1

- (PGSchemaPGPromptResponseTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PGSchemaPGPromptResponseTier1;
  v5 = [(PGSchemaPGPromptResponseTier1 *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PGSchemaPGPromptResponseTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"promptResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PGSchemaPGPromptResponseTier1 *)v5 setPromptResponse:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"grammar"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PGSchemaPGPromptResponseTier1 *)v5 setGrammar:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PGSchemaPGPromptResponseTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PGSchemaPGPromptResponseTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PGSchemaPGPromptResponseTier1 *)self dictionaryRepresentation];
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
  if (self->_grammar)
  {
    v4 = [(PGSchemaPGPromptResponseTier1 *)self grammar];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"grammar"];
  }

  if (self->_linkId)
  {
    v6 = [(PGSchemaPGPromptResponseTier1 *)self linkId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_promptResponse)
  {
    v9 = [(PGSchemaPGPromptResponseTier1 *)self promptResponse];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"promptResponse"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_promptResponse hash]^ v3;
  return v4 ^ [(NSString *)self->_grammar hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PGSchemaPGPromptResponseTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PGSchemaPGPromptResponseTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PGSchemaPGPromptResponseTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PGSchemaPGPromptResponseTier1 *)self promptResponse];
  v6 = [v4 promptResponse];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PGSchemaPGPromptResponseTier1 *)self promptResponse];
  if (v12)
  {
    v13 = v12;
    v14 = [(PGSchemaPGPromptResponseTier1 *)self promptResponse];
    v15 = [v4 promptResponse];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PGSchemaPGPromptResponseTier1 *)self grammar];
  v6 = [v4 grammar];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PGSchemaPGPromptResponseTier1 *)self grammar];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PGSchemaPGPromptResponseTier1 *)self grammar];
    v20 = [v4 grammar];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(PGSchemaPGPromptResponseTier1 *)self linkId];

  if (v4)
  {
    v5 = [(PGSchemaPGPromptResponseTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PGSchemaPGPromptResponseTier1 *)self promptResponse];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PGSchemaPGPromptResponseTier1 *)self grammar];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PGSchemaPGPromptResponseTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PGSchemaPGPromptResponseTier1 *)self deletePromptResponse];
    [(PGSchemaPGPromptResponseTier1 *)self deleteGrammar];
  }

  if ([v4 isConditionSet:4])
  {
    [(PGSchemaPGPromptResponseTier1 *)self deletePromptResponse];
    [(PGSchemaPGPromptResponseTier1 *)self deleteGrammar];
  }

  if ([v4 isConditionSet:5])
  {
    [(PGSchemaPGPromptResponseTier1 *)self deletePromptResponse];
    [(PGSchemaPGPromptResponseTier1 *)self deleteGrammar];
  }

  if ([v4 isConditionSet:6])
  {
    [(PGSchemaPGPromptResponseTier1 *)self deletePromptResponse];
    [(PGSchemaPGPromptResponseTier1 *)self deleteGrammar];
  }

  if ([v4 isConditionSet:7])
  {
    [(PGSchemaPGPromptResponseTier1 *)self deletePromptResponse];
    [(PGSchemaPGPromptResponseTier1 *)self deleteGrammar];
  }

  v6 = [(PGSchemaPGPromptResponseTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PGSchemaPGPromptResponseTier1 *)self deleteLinkId];
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