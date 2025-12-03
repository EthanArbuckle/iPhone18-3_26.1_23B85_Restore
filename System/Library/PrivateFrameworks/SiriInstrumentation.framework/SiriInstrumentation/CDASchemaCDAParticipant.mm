@interface CDASchemaCDAParticipant
- (BOOL)isEqual:(id)equal;
- (CDASchemaCDAParticipant)initWithDictionary:(id)dictionary;
- (CDASchemaCDAParticipant)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeviceClass:(BOOL)class;
- (void)setHasProductType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CDASchemaCDAParticipant

- (CDASchemaCDAParticipant)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = CDASchemaCDAParticipant;
  v5 = [(CDASchemaCDAParticipant *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"goodnessScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAParticipant setGoodnessScore:](v5, "setGoodnessScore:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAParticipant setDeviceClass:](v5, "setDeviceClass:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAParticipant setProductType:](v5, "setProductType:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"electionParticipantId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(CDASchemaCDAParticipant *)v5 setElectionParticipantId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"rotatedElectionParticipantId"];
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

- (CDASchemaCDAParticipant)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CDASchemaCDAParticipant *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CDASchemaCDAParticipant *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKeyedSubscript:@"deviceClass"];
  }

  if (self->_electionParticipantId)
  {
    electionParticipantId = [(CDASchemaCDAParticipant *)self electionParticipantId];
    dictionaryRepresentation = [electionParticipantId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"electionParticipantId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"electionParticipantId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAParticipant goodnessScore](self, "goodnessScore")}];
    [dictionary setObject:v10 forKeyedSubscript:@"goodnessScore"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAParticipant productType](self, "productType")}];
    [dictionary setObject:v11 forKeyedSubscript:@"productType"];
  }

  if (self->_rotatedElectionParticipantId)
  {
    rotatedElectionParticipantId = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
    dictionaryRepresentation2 = [rotatedElectionParticipantId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"rotatedElectionParticipantId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"rotatedElectionParticipantId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    goodnessScore = self->_goodnessScore;
    if (goodnessScore != [equalCopy goodnessScore])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      deviceClass = self->_deviceClass;
      if (deviceClass != [equalCopy deviceClass])
      {
        goto LABEL_23;
      }

      has = self->_has;
      v6 = equalCopy[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      productType = self->_productType;
      if (productType != [equalCopy productType])
      {
        goto LABEL_23;
      }
    }

    electionParticipantId = [(CDASchemaCDAParticipant *)self electionParticipantId];
    electionParticipantId2 = [equalCopy electionParticipantId];
    if ((electionParticipantId != 0) == (electionParticipantId2 == 0))
    {
      goto LABEL_22;
    }

    electionParticipantId3 = [(CDASchemaCDAParticipant *)self electionParticipantId];
    if (electionParticipantId3)
    {
      v15 = electionParticipantId3;
      electionParticipantId4 = [(CDASchemaCDAParticipant *)self electionParticipantId];
      electionParticipantId5 = [equalCopy electionParticipantId];
      v18 = [electionParticipantId4 isEqual:electionParticipantId5];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    electionParticipantId = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
    electionParticipantId2 = [equalCopy rotatedElectionParticipantId];
    if ((electionParticipantId != 0) != (electionParticipantId2 == 0))
    {
      rotatedElectionParticipantId = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
      if (!rotatedElectionParticipantId)
      {

LABEL_26:
        v24 = 1;
        goto LABEL_24;
      }

      v20 = rotatedElectionParticipantId;
      rotatedElectionParticipantId2 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
      rotatedElectionParticipantId3 = [equalCopy rotatedElectionParticipantId];
      v23 = [rotatedElectionParticipantId2 isEqual:rotatedElectionParticipantId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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
  electionParticipantId = [(CDASchemaCDAParticipant *)self electionParticipantId];

  if (electionParticipantId)
  {
    electionParticipantId2 = [(CDASchemaCDAParticipant *)self electionParticipantId];
    PBDataWriterWriteSubmessage();
  }

  rotatedElectionParticipantId = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];

  v8 = toCopy;
  if (rotatedElectionParticipantId)
  {
    rotatedElectionParticipantId2 = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasProductType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDeviceClass:(BOOL)class
{
  if (class)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = CDASchemaCDAParticipant;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  electionParticipantId = [(CDASchemaCDAParticipant *)self electionParticipantId];
  v7 = [electionParticipantId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CDASchemaCDAParticipant *)self deleteElectionParticipantId];
  }

  rotatedElectionParticipantId = [(CDASchemaCDAParticipant *)self rotatedElectionParticipantId];
  v10 = [rotatedElectionParticipantId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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