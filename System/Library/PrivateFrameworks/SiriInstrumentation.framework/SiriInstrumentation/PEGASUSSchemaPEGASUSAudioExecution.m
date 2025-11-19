@interface PEGASUSSchemaPEGASUSAudioExecution
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioExecution)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAudioExecution)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAudioExecution

- (PEGASUSSchemaPEGASUSAudioExecution)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSAudioExecution;
  v5 = [(PEGASUSSchemaPEGASUSAudioExecution *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioPlaybackSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PEGASUSSchemaPEGASUSAudioPlaybackSignal alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSAudioExecution *)v5 setAudioPlaybackSignal:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"audioUnderstanding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSAudioUnderstanding alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSAudioExecution *)v5 setAudioUnderstanding:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"audioQueueStateInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSAudioQueueStateInfo alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSAudioExecution *)v5 setAudioQueueStateInfo:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioExecution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioExecution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAudioExecution *)self dictionaryRepresentation];
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
  if (self->_audioPlaybackSignal)
  {
    v4 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"audioPlaybackSignal"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"audioPlaybackSignal"];
    }
  }

  if (self->_audioQueueStateInfo)
  {
    v7 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"audioQueueStateInfo"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"audioQueueStateInfo"];
    }
  }

  if (self->_audioUnderstanding)
  {
    v10 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"audioUnderstanding"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"audioUnderstanding"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PEGASUSSchemaPEGASUSAudioPlaybackSignal *)self->_audioPlaybackSignal hash];
  v4 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self->_audioUnderstanding hash]^ v3;
  return v4 ^ [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self->_audioQueueStateInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
  v6 = [v4 audioPlaybackSignal];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
    v10 = [v4 audioPlaybackSignal];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
  v6 = [v4 audioUnderstanding];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
    v15 = [v4 audioUnderstanding];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
  v6 = [v4 audioQueueStateInfo];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
    v20 = [v4 audioQueueStateInfo];
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
  v4 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];

  if (v4)
  {
    v5 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];

  if (v6)
  {
    v7 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];

  v9 = v11;
  if (v8)
  {
    v10 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PEGASUSSchemaPEGASUSAudioExecution;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PEGASUSSchemaPEGASUSAudioExecution *)self deleteAudioPlaybackSignal];
  }

  v9 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PEGASUSSchemaPEGASUSAudioExecution *)self deleteAudioUnderstanding];
  }

  v12 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PEGASUSSchemaPEGASUSAudioExecution *)self deleteAudioQueueStateInfo];
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