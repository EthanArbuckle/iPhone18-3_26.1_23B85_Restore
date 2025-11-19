@interface SISchemaUEIDictationVoiceCommandDisambiguationAction
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUEIDictationVoiceCommandDisambiguationAction)initWithDictionary:(id)a3;
- (SISchemaUEIDictationVoiceCommandDisambiguationAction)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDisambiguationIndex:(BOOL)a3;
- (void)setHasTotalDisambiguationAlternatives:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUEIDictationVoiceCommandDisambiguationAction

- (SISchemaUEIDictationVoiceCommandDisambiguationAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaUEIDictationVoiceCommandDisambiguationAction;
  v5 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"voiceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)v5 setVoiceCommandId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"disambiguationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandDisambiguationAction setDisambiguationType:](v5, "setDisambiguationType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"disambiguationIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandDisambiguationAction setDisambiguationIndex:](v5, "setDisambiguationIndex:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"totalDisambiguationAlternatives"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationVoiceCommandDisambiguationAction setTotalDisambiguationAlternatives:](v5, "setTotalDisambiguationAlternatives:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationVoiceCommandDisambiguationAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaUEIDictationVoiceCommandDisambiguationAction disambiguationIndex](self, "disambiguationIndex")}];
    [v3 setObject:v8 forKeyedSubscript:@"disambiguationIndex"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self disambiguationType];
  v10 = @"UEIVOICECOMMANDDISAMBIGUATIONTYPE_UNKNOWN";
  if (v9 == 1)
  {
    v10 = @"UEIVOICECOMMANDDISAMBIGUATIONTYPE_TAP";
  }

  if (v9 == 2)
  {
    v11 = @"UEIVOICECOMMANDDISAMBIGUATIONTYPE_GAZE";
  }

  else
  {
    v11 = v10;
  }

  [v3 setObject:v11 forKeyedSubscript:@"disambiguationType"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SISchemaUEIDictationVoiceCommandDisambiguationAction totalDisambiguationAlternatives](self, "totalDisambiguationAlternatives")}];
    [v3 setObject:v5 forKeyedSubscript:@"totalDisambiguationAlternatives"];
  }

LABEL_5:
  if (self->_voiceCommandId)
  {
    v6 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"voiceCommandId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"voiceCommandId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_voiceCommandId hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_disambiguationType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_disambiguationIndex;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_totalDisambiguationAlternatives;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
  v6 = [v4 voiceCommandId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_20;
  }

  v8 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
    v11 = [v4 voiceCommandId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    disambiguationType = self->_disambiguationType;
    if (disambiguationType != [v4 disambiguationType])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = v4[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    disambiguationIndex = self->_disambiguationIndex;
    if (disambiguationIndex == [v4 disambiguationIndex])
    {
      has = self->_has;
      v14 = v4[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    totalDisambiguationAlternatives = self->_totalDisambiguationAlternatives;
    if (totalDisambiguationAlternatives != [v4 totalDisambiguationAlternatives])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];

  if (v4)
  {
    v5 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = v8;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = v8;
  }
}

- (void)setHasTotalDisambiguationAlternatives:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDisambiguationIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaUEIDictationVoiceCommandDisambiguationAction;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self voiceCommandId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self deleteVoiceCommandId];
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