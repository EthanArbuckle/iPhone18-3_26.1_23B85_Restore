@interface PEGASUSSchemaPEGASUSRequestEndedTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRequestEndedTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSRequestEndedTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSRequestEndedTier1

- (PEGASUSSchemaPEGASUSRequestEndedTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = PEGASUSSchemaPEGASUSRequestEndedTier1;
  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"intentTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSIntentTier1 alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setIntentTier1:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"kgQAExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSKGQAExecutionTier1 alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setKgQAExecutionTier1:v11];
    }

    v30 = v10;
    v12 = [v4 objectForKeyedSubscript:@"webAnswerExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 alloc] initWithDictionary:v12];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setWebAnswerExecutionTier1:v13];
    }

    v29 = v12;
    v14 = [v4 objectForKeyedSubscript:@"sportsExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PEGASUSSchemaPEGASUSSportsExecutionTier1 alloc] initWithDictionary:v14];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setSportsExecutionTier1:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"mapsExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PEGASUSSchemaPEGASUSMapsExecutionTier1 alloc] initWithDictionary:v16];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setMapsExecutionTier1:v17];
    }

    v31 = v8;
    v18 = [v4 objectForKeyedSubscript:@"audioExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PEGASUSSchemaPEGASUSAudioExecutionTier1 alloc] initWithDictionary:v18];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setAudioExecutionTier1:v19];
    }

    v20 = v6;
    v21 = [v4 objectForKeyedSubscript:@"videoExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PEGASUSSchemaPEGASUSVideoExecutionTier1 alloc] initWithDictionary:v21];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setVideoExecutionTier1:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"alternateQuerySuggestionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1 alloc] initWithDictionary:v23];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setAlternateQuerySuggestionTier1:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"deviceExpertExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 alloc] initWithDictionary:v25];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setDeviceExpertExecutionTier1:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSRequestEndedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self dictionaryRepresentation];
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
  if (self->_alternateQuerySuggestionTier1)
  {
    v4 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"alternateQuerySuggestionTier1"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"alternateQuerySuggestionTier1"];
    }
  }

  if (self->_audioExecutionTier1)
  {
    v7 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"audioExecutionTier1"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"audioExecutionTier1"];
    }
  }

  if (self->_deviceExpertExecutionTier1)
  {
    v10 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"deviceExpertExecutionTier1"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"deviceExpertExecutionTier1"];
    }
  }

  if (self->_intentTier1)
  {
    v13 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"intentTier1"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"intentTier1"];
    }
  }

  if (self->_kgQAExecutionTier1)
  {
    v16 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"kgQAExecutionTier1"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"kgQAExecutionTier1"];
    }
  }

  if (self->_linkId)
  {
    v19 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_mapsExecutionTier1)
  {
    v22 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"mapsExecutionTier1"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"mapsExecutionTier1"];
    }
  }

  if (self->_sportsExecutionTier1)
  {
    v25 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"sportsExecutionTier1"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"sportsExecutionTier1"];
    }
  }

  if (self->_videoExecutionTier1)
  {
    v28 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"videoExecutionTier1"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"videoExecutionTier1"];
    }
  }

  if (self->_webAnswerExecutionTier1)
  {
    v31 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"webAnswerExecutionTier1"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"webAnswerExecutionTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(PEGASUSSchemaPEGASUSIntentTier1 *)self->_intentTier1 hash]^ v3;
  v5 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self->_kgQAExecutionTier1 hash];
  v6 = v4 ^ v5 ^ [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self->_webAnswerExecutionTier1 hash];
  v7 = [(PEGASUSSchemaPEGASUSSportsExecutionTier1 *)self->_sportsExecutionTier1 hash];
  v8 = v7 ^ [(PEGASUSSchemaPEGASUSMapsExecutionTier1 *)self->_mapsExecutionTier1 hash];
  v9 = v6 ^ v8 ^ [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self->_audioExecutionTier1 hash];
  v10 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self->_videoExecutionTier1 hash];
  v11 = v10 ^ [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1 *)self->_alternateQuerySuggestionTier1 hash];
  return v9 ^ v11 ^ [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self->_deviceExpertExecutionTier1 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
  v6 = [v4 intentTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
    v15 = [v4 intentTier1];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
  v6 = [v4 kgQAExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
    v20 = [v4 kgQAExecutionTier1];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
  v6 = [v4 webAnswerExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v22 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
  if (v22)
  {
    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
    v25 = [v4 webAnswerExecutionTier1];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
  v6 = [v4 sportsExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v27 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
  if (v27)
  {
    v28 = v27;
    v29 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
    v30 = [v4 sportsExecutionTier1];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
  v6 = [v4 mapsExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v32 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
  if (v32)
  {
    v33 = v32;
    v34 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
    v35 = [v4 mapsExecutionTier1];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
  v6 = [v4 audioExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v37 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
  if (v37)
  {
    v38 = v37;
    v39 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
    v40 = [v4 audioExecutionTier1];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
  v6 = [v4 videoExecutionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v42 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
  if (v42)
  {
    v43 = v42;
    v44 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
    v45 = [v4 videoExecutionTier1];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
  v6 = [v4 alternateQuerySuggestionTier1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v47 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
  if (v47)
  {
    v48 = v47;
    v49 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
    v50 = [v4 alternateQuerySuggestionTier1];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
  v6 = [v4 deviceExpertExecutionTier1];
  if ((v5 != 0) != (v6 == 0))
  {
    v52 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
    if (!v52)
    {

LABEL_55:
      v57 = 1;
      goto LABEL_53;
    }

    v53 = v52;
    v54 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
    v55 = [v4 deviceExpertExecutionTier1];
    v56 = [v54 isEqual:v55];

    if (v56)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_51:
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)a3
{
  v25 = a3;
  v4 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];

  if (v4)
  {
    v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];

  if (v6)
  {
    v7 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];

  if (v8)
  {
    v9 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];

  if (v10)
  {
    v11 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];

  if (v12)
  {
    v13 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];

  if (v14)
  {
    v15 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];

  if (v16)
  {
    v17 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];

  if (v18)
  {
    v19 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];

  if (v20)
  {
    v21 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];

  v23 = v25;
  if (v22)
  {
    v24 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
    PBDataWriterWriteSubmessage();

    v23 = v25;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PEGASUSSchemaPEGASUSRequestEndedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteLinkId];
  }

  v9 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteIntentTier1];
  }

  v12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteKgQAExecutionTier1];
  }

  v15 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteWebAnswerExecutionTier1];
  }

  v18 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteSportsExecutionTier1];
  }

  v21 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteMapsExecutionTier1];
  }

  v24 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteAudioExecutionTier1];
  }

  v27 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteVideoExecutionTier1];
  }

  v30 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteAlternateQuerySuggestionTier1];
  }

  v33 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteDeviceExpertExecutionTier1];
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