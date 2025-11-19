@interface CDASchemaCDAParticipant
- (BOOL)isEqual:(id)a3;
- (CDASchemaCDAParticipant)initWithDictionary:(id)a3;
- (CDASchemaCDAParticipant)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeviceClass:(BOOL)a3;
- (void)setHasProductType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CDASchemaCDAParticipant

- (CDASchemaCDAParticipant)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CDASchemaCDAParticipant;
  v5 = [(CDASchemaCDAParticipant *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"goodnessScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAParticipant setGoodnessScore:](v5, "setGoodnessScore:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"deviceClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAParticipant setDeviceClass:](v5, "setDeviceClass:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAParticipant setProductType:](v5, "setProductType:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"electionParticipantId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(CDASchemaCDAParticipant *)v5 setElectionParticipantId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"rotatedElectionParticipantId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(CDASchemaCDAParticipant *)v5 setRotatedElectionParticipantId:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (CDASchemaCDAParticipant)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CDASchemaCDAParticipant *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CDASchemaCDAParticipant *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [(CDASchemaCDAParticipant *)self deviceClass]- 1;
    if (v4 > 0xB)
    {
      v5 = @"CDADEVICECLASS_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D2830[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"deviceClass"];
  }

  if (self->_electionParticipantId)
  {
    v6 = [(CDASchemaCDAParticipant *)self electionParticipantId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"electionParticipantId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"electionParticipantId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAParticipant goodnessScore](self, "goodnessScore")}];
    [v3 setObject:v10 forKeyedSubscript:@"goodnessScore"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAParticipant productType](self, "productType")}];
    [v3 setObject:v11 forKeyedSubscript:@"productType"];
  }

  if (self->_rotatedElectionParticipantId)
  {
    v12 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"rotatedElectionParticipantId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"rotatedElectionParticipantId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_goodnessScore;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_deviceClass;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_productType;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(SISchemaUUID *)self->_electionParticipantId hash];
  return v6 ^ [(SISchemaUUID *)self->_rotatedElectionParticipantId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    goodnessScore = self->_goodnessScore;
    if (goodnessScore != [v4 goodnessScore])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      deviceClass = self->_deviceClass;
      if (deviceClass != [v4 deviceClass])
      {
        goto LABEL_23;
      }

      has = self->_has;
      v6 = v4[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      productType = self->_productType;
      if (productType != [v4 productType])
      {
        goto LABEL_23;
      }
    }

    v12 = [(CDASchemaCDAParticipant *)self electionParticipantId];
    v13 = [v4 electionParticipantId];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_22;
    }

    v14 = [(CDASchemaCDAParticipant *)self electionParticipantId];
    if (v14)
    {
      v15 = v14;
      v16 = [(CDASchemaCDAParticipant *)self electionParticipantId];
      v17 = [v4 electionParticipantId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v12 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
    v13 = [v4 rotatedElectionParticipantId];
    if ((v12 != 0) != (v13 == 0))
    {
      v19 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
      if (!v19)
      {

LABEL_26:
        v24 = 1;
        goto LABEL_24;
      }

      v20 = v19;
      v21 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
      v22 = [v4 rotatedElectionParticipantId];
      v23 = [v21 isEqual:v22];

      if (v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
LABEL_22:
    }
  }

LABEL_23:
  v24 = 0;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  v5 = [(CDASchemaCDAParticipant *)self electionParticipantId];

  if (v5)
  {
    v6 = [(CDASchemaCDAParticipant *)self electionParticipantId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];

  v8 = v10;
  if (v7)
  {
    v9 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasProductType:(BOOL)a3
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

- (void)setHasDeviceClass:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CDASchemaCDAParticipant;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(CDASchemaCDAParticipant *)self electionParticipantId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CDASchemaCDAParticipant *)self deleteElectionParticipantId];
  }

  v9 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CDASchemaCDAParticipant *)self deleteRotatedElectionParticipantId];
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