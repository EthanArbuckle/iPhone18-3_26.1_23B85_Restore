@interface DUSchemaDUSpeechAudioRecord
- (BOOL)isEqual:(id)a3;
- (DUSchemaDUSpeechAudioRecord)initWithDictionary:(id)a3;
- (DUSchemaDUSpeechAudioRecord)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation DUSchemaDUSpeechAudioRecord

- (DUSchemaDUSpeechAudioRecord)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DUSchemaDUSpeechAudioRecord;
  v5 = [(DUSchemaDUSpeechAudioRecord *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"language"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DUSchemaDUSpeechAudioRecord *)v5 setLanguage:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"codec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(DUSchemaDUSpeechAudioRecord *)v5 setCodec:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"interactionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(DUSchemaDUSpeechAudioRecord *)v5 setInteractionId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"speechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(DUSchemaDUSpeechAudioRecord *)v5 setSpeechId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"speechIdString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(DUSchemaDUSpeechAudioRecord *)v5 setSpeechIdString:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"audioCreatedTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DUSchemaDUSpeechAudioRecord setAudioCreatedTimestampMs:](v5, "setAudioCreatedTimestampMs:", [v16 unsignedLongLongValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (DUSchemaDUSpeechAudioRecord)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DUSchemaDUSpeechAudioRecord *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DUSchemaDUSpeechAudioRecord *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DUSchemaDUSpeechAudioRecord audioCreatedTimestampMs](self, "audioCreatedTimestampMs")}];
    [v3 setObject:v4 forKeyedSubscript:@"audioCreatedTimestampMs"];
  }

  if (self->_codec)
  {
    v5 = [(DUSchemaDUSpeechAudioRecord *)self codec];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"codec"];
  }

  if (self->_interactionId)
  {
    v7 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"interactionId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"interactionId"];
    }
  }

  if (self->_language)
  {
    v10 = [(DUSchemaDUSpeechAudioRecord *)self language];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"language"];
  }

  if (self->_speechId)
  {
    v12 = [(DUSchemaDUSpeechAudioRecord *)self speechId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"speechId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"speechId"];
    }
  }

  if (self->_speechIdString)
  {
    v15 = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"speechIdString"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_language hash];
  v4 = [(NSString *)self->_codec hash];
  v5 = [(SISchemaUUID *)self->_interactionId hash];
  v6 = [(SISchemaUUID *)self->_speechId hash];
  v7 = [(NSString *)self->_speechIdString hash];
  if (*&self->_has)
  {
    v8 = 2654435761u * self->_audioCreatedTimestampMs;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(DUSchemaDUSpeechAudioRecord *)self language];
  v6 = [v4 language];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(DUSchemaDUSpeechAudioRecord *)self language];
  if (v7)
  {
    v8 = v7;
    v9 = [(DUSchemaDUSpeechAudioRecord *)self language];
    v10 = [v4 language];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(DUSchemaDUSpeechAudioRecord *)self codec];
  v6 = [v4 codec];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(DUSchemaDUSpeechAudioRecord *)self codec];
  if (v12)
  {
    v13 = v12;
    v14 = [(DUSchemaDUSpeechAudioRecord *)self codec];
    v15 = [v4 codec];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
  v6 = [v4 interactionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
  if (v17)
  {
    v18 = v17;
    v19 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
    v20 = [v4 interactionId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(DUSchemaDUSpeechAudioRecord *)self speechId];
  v6 = [v4 speechId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(DUSchemaDUSpeechAudioRecord *)self speechId];
  if (v22)
  {
    v23 = v22;
    v24 = [(DUSchemaDUSpeechAudioRecord *)self speechId];
    v25 = [v4 speechId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];
  v6 = [v4 speechIdString];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v27 = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];
  if (v27)
  {
    v28 = v27;
    v29 = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];
    v30 = [v4 speechIdString];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[56] & 1))
  {
    if ((*&self->_has & 1) == 0 || (audioCreatedTimestampMs = self->_audioCreatedTimestampMs, audioCreatedTimestampMs == [v4 audioCreatedTimestampMs]))
    {
      v32 = 1;
      goto LABEL_28;
    }
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(DUSchemaDUSpeechAudioRecord *)self language];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(DUSchemaDUSpeechAudioRecord *)self codec];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];

  if (v6)
  {
    v7 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(DUSchemaDUSpeechAudioRecord *)self speechId];

  if (v8)
  {
    v9 = [(DUSchemaDUSpeechAudioRecord *)self speechId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = v12;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v11 = v12;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DUSchemaDUSpeechAudioRecord;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([v4 isConditionSet:4])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([v4 isConditionSet:5])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([v4 isConditionSet:6])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([v4 isConditionSet:7])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([v4 isConditionSet:8])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  v6 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
  }

  v9 = [(DUSchemaDUSpeechAudioRecord *)self speechId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
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