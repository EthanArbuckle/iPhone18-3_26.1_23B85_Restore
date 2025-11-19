@interface PEGASUSSchemaPEGASUSAudioUnderstandingTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioUnderstandingTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAudioUnderstandingTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAudioUnderstandingTier1

- (PEGASUSSchemaPEGASUSAudioUnderstandingTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PEGASUSSchemaPEGASUSAudioUnderstandingTier1;
  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioArtist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)v5 setAudioArtist:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"audioAppName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)v5 setAudioAppName:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"audioEntity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)v5 setAudioEntity:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"audioEntityOriginalValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)v5 setAudioEntityOriginalValue:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioUnderstandingTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self dictionaryRepresentation];
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
  if (self->_audioAppName)
  {
    v4 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"audioAppName"];
  }

  if (self->_audioArtist)
  {
    v6 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"audioArtist"];
  }

  if (self->_audioEntity)
  {
    v8 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"audioEntity"];
  }

  if (self->_audioEntityOriginalValue)
  {
    v10 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"audioEntityOriginalValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_audioArtist hash];
  v4 = [(NSString *)self->_audioAppName hash]^ v3;
  v5 = [(NSString *)self->_audioEntity hash];
  return v4 ^ v5 ^ [(NSString *)self->_audioEntityOriginalValue hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];
  v6 = [v4 audioArtist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];
    v10 = [v4 audioArtist];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];
  v6 = [v4 audioAppName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];
    v15 = [v4 audioAppName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];
  v6 = [v4 audioEntity];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];
    v20 = [v4 audioEntity];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];
  v6 = [v4 audioEntityOriginalValue];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];
    v25 = [v4 audioEntityOriginalValue];
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
  v4 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioArtist];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioAppName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntity];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self audioEntityOriginalValue];

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
  v7.super_class = PEGASUSSchemaPEGASUSAudioUnderstandingTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioArtist];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioAppName];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntity];
    [(PEGASUSSchemaPEGASUSAudioUnderstandingTier1 *)self deleteAudioEntityOriginalValue];
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