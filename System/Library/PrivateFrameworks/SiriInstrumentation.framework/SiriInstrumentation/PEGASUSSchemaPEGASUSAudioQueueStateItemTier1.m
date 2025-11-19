@interface PEGASUSSchemaPEGASUSAudioQueueStateItemTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioQueueStateItemTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAudioQueueStateItemTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAudioQueueStateItemTier1

- (PEGASUSSchemaPEGASUSAudioQueueStateItemTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PEGASUSSchemaPEGASUSAudioQueueStateItemTier1;
  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioAlbum"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)v5 setAudioAlbum:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"audioArtist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)v5 setAudioArtist:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"audioClientId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)v5 setAudioClientId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"audioTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)v5 setAudioTitle:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioQueueStateItemTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self dictionaryRepresentation];
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
  if (self->_audioAlbum)
  {
    v4 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"audioAlbum"];
  }

  if (self->_audioArtist)
  {
    v6 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"audioArtist"];
  }

  if (self->_audioClientId)
  {
    v8 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"audioClientId"];
  }

  if (self->_audioTitle)
  {
    v10 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"audioTitle"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_audioAlbum hash];
  v4 = [(NSString *)self->_audioArtist hash]^ v3;
  v5 = [(NSString *)self->_audioClientId hash];
  return v4 ^ v5 ^ [(NSString *)self->_audioTitle hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];
  v6 = [v4 audioAlbum];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];
    v10 = [v4 audioAlbum];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];
  v6 = [v4 audioArtist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];
    v15 = [v4 audioArtist];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];
  v6 = [v4 audioClientId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];
    v20 = [v4 audioClientId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];
  v6 = [v4 audioTitle];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];
    v25 = [v4 audioTitle];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioAlbum];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioArtist];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioClientId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self audioTitle];

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
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSAudioQueueStateItemTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioAlbum];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioClientId];
    [(PEGASUSSchemaPEGASUSAudioQueueStateItemTier1 *)self deleteAudioTitle];
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