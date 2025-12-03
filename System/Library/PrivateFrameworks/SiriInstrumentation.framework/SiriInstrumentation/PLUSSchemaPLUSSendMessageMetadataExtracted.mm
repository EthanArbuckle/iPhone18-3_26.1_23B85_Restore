@interface PLUSSchemaPLUSSendMessageMetadataExtracted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSendMessageMetadataExtracted)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSendMessageMetadataExtracted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasInitialSendMessageRequestHasPayload:(BOOL)payload;
- (void)setHasNumberOfTimesMessageContactChanged:(BOOL)changed;
- (void)setHasNumberOfTimesMessagePayloadChanged:(BOOL)changed;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSendMessageMetadataExtracted

- (PLUSSchemaPLUSSendMessageMetadataExtracted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSSendMessageMetadataExtracted;
  v5 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalPlusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSendMessageMetadataExtracted *)v5 setOriginalPlusId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"initialSendMessageRequestNumberOfContacts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSendMessageMetadataExtracted setInitialSendMessageRequestNumberOfContacts:](v5, "setInitialSendMessageRequestNumberOfContacts:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"initialSendMessageRequestHasPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSendMessageMetadataExtracted setInitialSendMessageRequestHasPayload:](v5, "setInitialSendMessageRequestHasPayload:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numberOfTimesMessageContactChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSendMessageMetadataExtracted setNumberOfTimesMessageContactChanged:](v5, "setNumberOfTimesMessageContactChanged:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"numberOfTimesMessagePayloadChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSendMessageMetadataExtracted setNumberOfTimesMessagePayloadChanged:](v5, "setNumberOfTimesMessagePayloadChanged:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSendMessageMetadataExtracted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSSendMessageMetadataExtracted initialSendMessageRequestHasPayload](self, "initialSendMessageRequestHasPayload")}];
    [dictionary setObject:v8 forKeyedSubscript:@"initialSendMessageRequestHasPayload"];

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
  [dictionary setObject:v9 forKeyedSubscript:@"initialSendMessageRequestNumberOfContacts"];

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
  [dictionary setObject:v10 forKeyedSubscript:@"numberOfTimesMessageContactChanged"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PLUSSchemaPLUSSendMessageMetadataExtracted numberOfTimesMessagePayloadChanged](self, "numberOfTimesMessagePayloadChanged")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numberOfTimesMessagePayloadChanged"];
  }

LABEL_6:
  if (self->_originalPlusId)
  {
    originalPlusId = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
    dictionaryRepresentation = [originalPlusId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalPlusId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalPlusId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  originalPlusId = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
  originalPlusId2 = [equalCopy originalPlusId];
  v7 = originalPlusId2;
  if ((originalPlusId != 0) == (originalPlusId2 == 0))
  {

    goto LABEL_24;
  }

  originalPlusId3 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
  if (originalPlusId3)
  {
    v9 = originalPlusId3;
    originalPlusId4 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
    originalPlusId5 = [equalCopy originalPlusId];
    v12 = [originalPlusId4 isEqual:originalPlusId5];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (*&has)
  {
    initialSendMessageRequestNumberOfContacts = self->_initialSendMessageRequestNumberOfContacts;
    if (initialSendMessageRequestNumberOfContacts != [equalCopy initialSendMessageRequestNumberOfContacts])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = equalCopy[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    initialSendMessageRequestHasPayload = self->_initialSendMessageRequestHasPayload;
    if (initialSendMessageRequestHasPayload != [equalCopy initialSendMessageRequestHasPayload])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = equalCopy[32];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    numberOfTimesMessageContactChanged = self->_numberOfTimesMessageContactChanged;
    if (numberOfTimesMessageContactChanged == [equalCopy numberOfTimesMessageContactChanged])
    {
      has = self->_has;
      v14 = equalCopy[32];
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
    if (numberOfTimesMessagePayloadChanged != [equalCopy numberOfTimesMessagePayloadChanged])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  originalPlusId = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];

  if (originalPlusId)
  {
    originalPlusId2 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
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
  v7 = toCopy;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }

LABEL_9:
}

- (void)setHasNumberOfTimesMessagePayloadChanged:(BOOL)changed
{
  if (changed)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumberOfTimesMessageContactChanged:(BOOL)changed
{
  if (changed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasInitialSendMessageRequestHasPayload:(BOOL)payload
{
  if (payload)
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
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSSendMessageMetadataExtracted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSSendMessageMetadataExtracted *)self originalPlusId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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