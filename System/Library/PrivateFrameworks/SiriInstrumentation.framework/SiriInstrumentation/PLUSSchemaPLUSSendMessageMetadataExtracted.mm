@interface PLUSSchemaPLUSSendMessageMetadataExtracted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSSendMessageMetadataExtracted)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSSendMessageMetadataExtracted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInitialSendMessageRequestHasPayload:(BOOL)a3;
- (void)setHasNumberOfTimesMessageContactChanged:(BOOL)a3;
- (void)setHasNumberOfTimesMessagePayloadChanged:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSSendMessageMetadataExtracted

- (PLUSSchemaPLUSSendMessageMetadataExtracted)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSSendMessageMetadataExtracted;
  v5 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalPlusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSendMessageMetadataExtracted *)v5 setOriginalPlusId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"initialSendMessageRequestNumberOfContacts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSendMessageMetadataExtracted setInitialSendMessageRequestNumberOfContacts:](v5, "setInitialSendMessageRequestNumberOfContacts:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"initialSendMessageRequestHasPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSendMessageMetadataExtracted setInitialSendMessageRequestHasPayload:](v5, "setInitialSendMessageRequestHasPayload:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numberOfTimesMessageContactChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSendMessageMetadataExtracted setNumberOfTimesMessageContactChanged:](v5, "setNumberOfTimesMessageContactChanged:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"numberOfTimesMessagePayloadChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSendMessageMetadataExtracted setNumberOfTimesMessagePayloadChanged:](v5, "setNumberOfTimesMessagePayloadChanged:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSendMessageMetadataExtracted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self dictionaryRepresentation];
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
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSSendMessageMetadataExtracted initialSendMessageRequestHasPayload](self, "initialSendMessageRequestHasPayload")}];
    [v3 setObject:v8 forKeyedSubscript:@"initialSendMessageRequestHasPayload"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSSendMessageMetadataExtracted initialSendMessageRequestNumberOfContacts](self, "initialSendMessageRequestNumberOfContacts")}];
  [v3 setObject:v9 forKeyedSubscript:@"initialSendMessageRequestNumberOfContacts"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSSendMessageMetadataExtracted numberOfTimesMessageContactChanged](self, "numberOfTimesMessageContactChanged")}];
  [v3 setObject:v10 forKeyedSubscript:@"numberOfTimesMessageContactChanged"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSSendMessageMetadataExtracted numberOfTimesMessagePayloadChanged](self, "numberOfTimesMessagePayloadChanged")}];
    [v3 setObject:v5 forKeyedSubscript:@"numberOfTimesMessagePayloadChanged"];
  }

LABEL_6:
  if (self->_originalPlusId)
  {
    v6 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"originalPlusId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"originalPlusId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalPlusId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_initialSendMessageRequestNumberOfContacts;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_initialSendMessageRequestHasPayload;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_numberOfTimesMessageContactChanged;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_numberOfTimesMessagePayloadChanged;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
  v6 = [v4 originalPlusId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_24;
  }

  v8 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
    v11 = [v4 originalPlusId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (*&has)
  {
    initialSendMessageRequestNumberOfContacts = self->_initialSendMessageRequestNumberOfContacts;
    if (initialSendMessageRequestNumberOfContacts != [v4 initialSendMessageRequestNumberOfContacts])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = v4[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    initialSendMessageRequestHasPayload = self->_initialSendMessageRequestHasPayload;
    if (initialSendMessageRequestHasPayload != [v4 initialSendMessageRequestHasPayload])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = v4[32];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    numberOfTimesMessageContactChanged = self->_numberOfTimesMessageContactChanged;
    if (numberOfTimesMessageContactChanged == [v4 numberOfTimesMessageContactChanged])
    {
      has = self->_has;
      v14 = v4[32];
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_20:
  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    numberOfTimesMessagePayloadChanged = self->_numberOfTimesMessagePayloadChanged;
    if (numberOfTimesMessagePayloadChanged != [v4 numberOfTimesMessagePayloadChanged])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  v7 = v8;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
    v7 = v8;
  }

LABEL_9:
}

- (void)setHasNumberOfTimesMessagePayloadChanged:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumberOfTimesMessageContactChanged:(BOOL)a3
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

- (void)setHasInitialSendMessageRequestHasPayload:(BOOL)a3
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
  v9.super_class = PLUSSchemaPLUSSendMessageMetadataExtracted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self deleteOriginalPlusId];
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