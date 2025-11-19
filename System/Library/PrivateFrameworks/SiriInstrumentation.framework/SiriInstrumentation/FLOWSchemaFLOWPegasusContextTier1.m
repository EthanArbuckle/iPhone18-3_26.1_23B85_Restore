@interface FLOWSchemaFLOWPegasusContextTier1
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWPegasusContextTier1)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWPegasusContextTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWPegasusContextTier1

- (FLOWSchemaFLOWPegasusContextTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FLOWSchemaFLOWPegasusContextTier1;
  v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"intentTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSIntentTier1 alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setIntentTier1:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"kgQAExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWSchemaFLOWKGQAExecutionTier1 alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setKgQAExecutionTier1:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"webAnswerExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[FLOWSchemaFLOWWebAnswerExecutionTier1 alloc] initWithDictionary:v12];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setWebAnswerExecutionTier1:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"sportsExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[FLOWSchemaFLOWSportsExecutionTier1 alloc] initWithDictionary:v14];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setSportsExecutionTier1:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"mapsExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWMapsExecutionTier1 alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setMapsExecutionTier1:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWPegasusContextTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPegasusContextTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWPegasusContextTier1 *)self dictionaryRepresentation];
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
  if (self->_intentTier1)
  {
    v4 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"intentTier1"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"intentTier1"];
    }
  }

  if (self->_kgQAExecutionTier1)
  {
    v7 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"kgQAExecutionTier1"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"kgQAExecutionTier1"];
    }
  }

  if (self->_linkId)
  {
    v10 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_mapsExecutionTier1)
  {
    v13 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"mapsExecutionTier1"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"mapsExecutionTier1"];
    }
  }

  if (self->_sportsExecutionTier1)
  {
    v16 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"sportsExecutionTier1"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"sportsExecutionTier1"];
    }
  }

  if (self->_webAnswerExecutionTier1)
  {
    v19 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"webAnswerExecutionTier1"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"webAnswerExecutionTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(PEGASUSSchemaPEGASUSIntentTier1 *)self->_intentTier1 hash]^ v3;
  v5 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self->_kgQAExecutionTier1 hash];
  v6 = v4 ^ v5 ^ [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self->_webAnswerExecutionTier1 hash];
  v7 = [(FLOWSchemaFLOWSportsExecutionTier1 *)self->_sportsExecutionTier1 hash];
  return v6 ^ v7 ^ [(FLOWSchemaFLOWMapsExecutionTier1 *)self->_mapsExecutionTier1 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
  v6 = [v4 intentTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
    v15 = [v4 intentTier1];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
  v6 = [v4 kgQAExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
  if (v17)
  {
    v18 = v17;
    v19 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
    v20 = [v4 kgQAExecutionTier1];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
  v6 = [v4 webAnswerExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
  if (v22)
  {
    v23 = v22;
    v24 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
    v25 = [v4 webAnswerExecutionTier1];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
  v6 = [v4 sportsExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
  if (v27)
  {
    v28 = v27;
    v29 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
    v30 = [v4 sportsExecutionTier1];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
  v6 = [v4 mapsExecutionTier1];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
    v35 = [v4 mapsExecutionTier1];
    v36 = [v34 isEqual:v35];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  v4 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];

  if (v4)
  {
    v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];

  if (v6)
  {
    v7 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];

  if (v8)
  {
    v9 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];

  if (v10)
  {
    v11 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];

  if (v12)
  {
    v13 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];

  v15 = v17;
  if (v14)
  {
    v16 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
    PBDataWriterWriteSubmessage();

    v15 = v17;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWPegasusContextTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteLinkId];
  }

  v9 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteIntentTier1];
  }

  v12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteKgQAExecutionTier1];
  }

  v15 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteWebAnswerExecutionTier1];
  }

  v18 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteSportsExecutionTier1];
  }

  v21 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteMapsExecutionTier1];
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