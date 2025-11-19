@interface PLUSSchemaPLUSContactSuggestionAccuracySignalReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSContactSuggestionAccuracySignalReported

- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSContactSuggestionAccuracySignalReported;
  v5 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalPlusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)v5 setOriginalPlusId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)v5 setSuggestionId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"accuracySignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PLUSSchemaPLUSSuggestionAccuracySignal alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)v5 setAccuracySignal:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self dictionaryRepresentation];
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
  if (self->_accuracySignal)
  {
    v4 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"accuracySignal"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"accuracySignal"];
    }
  }

  if (self->_originalPlusId)
  {
    v7 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"originalPlusId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"originalPlusId"];
    }
  }

  if (self->_suggestionId)
  {
    v10 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"suggestionId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"suggestionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalPlusId hash];
  v4 = [(SISchemaUUID *)self->_suggestionId hash]^ v3;
  return v4 ^ [(PLUSSchemaPLUSSuggestionAccuracySignal *)self->_accuracySignal hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
  v6 = [v4 originalPlusId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
    v10 = [v4 originalPlusId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
  v6 = [v4 suggestionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
    v15 = [v4 suggestionId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
  v6 = [v4 accuracySignal];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
    v20 = [v4 accuracySignal];
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
  v11 = a3;
  v4 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];

  if (v6)
  {
    v7 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];

  v9 = v11;
  if (v8)
  {
    v10 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PLUSSchemaPLUSContactSuggestionAccuracySignalReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self deleteOriginalPlusId];
  }

  v9 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self deleteSuggestionId];
  }

  v12 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self deleteAccuracySignal];
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