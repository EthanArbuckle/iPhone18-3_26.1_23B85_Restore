@interface SISchemaUUFRSaid
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUUFRSaid)initWithDictionary:(id)dictionary;
- (SISchemaUUFRSaid)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResponseCategory:(BOOL)category;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUFRSaid

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_aceViewClass)
  {
    aceViewClass = [(SISchemaUUFRSaid *)self aceViewClass];
    v5 = [aceViewClass copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceViewClass"];
  }

  if (self->_aceViewID)
  {
    aceViewID = [(SISchemaUUFRSaid *)self aceViewID];
    v7 = [aceViewID copy];
    [dictionary setObject:v7 forKeyedSubscript:@"aceViewID"];
  }

  if (self->_dialogIdentifier)
  {
    dialogIdentifier = [(SISchemaUUFRSaid *)self dialogIdentifier];
    v9 = [dialogIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"dialogIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [(SISchemaUUFRSaid *)self responseCategory]- 1;
    if (v10 > 0xD)
    {
      v11 = @"RESPONSECATEGORY_UNKNOWN";
    }

    else
    {
      v11 = off_1E78E6E18[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"responseCategory"];
  }

  if (self->_siriResponseContext)
  {
    siriResponseContext = [(SISchemaUUFRSaid *)self siriResponseContext];
    dictionaryRepresentation = [siriResponseContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriResponseContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriResponseContext"];
    }
  }

  if (*&self->_has)
  {
    v15 = [(SISchemaUUFRSaid *)self sonicResponse]- 1;
    if (v15 > 3)
    {
      v16 = @"UEISONICRESPONSE_UNKNOWN";
    }

    else
    {
      v16 = off_1E78E6E88[v15];
    }

    [dictionary setObject:v16 forKeyedSubscript:@"sonicResponse"];
  }

  if (self->_subRequestId)
  {
    subRequestId = [(SISchemaUUFRSaid *)self subRequestId];
    dictionaryRepresentation2 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (SISchemaUUFRSaid)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = SISchemaUUFRSaid;
  v5 = [(SISchemaUUFRSaid *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRSaid *)v5 setDialogIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriResponseContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaSiriResponseContext alloc] initWithDictionary:v8];
      [(SISchemaUUFRSaid *)v5 setSiriResponseContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"aceViewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaUUFRSaid *)v5 setAceViewID:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"aceViewClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SISchemaUUFRSaid *)v5 setAceViewClass:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sonicResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRSaid setSonicResponse:](v5, "setSonicResponse:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"responseCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRSaid setResponseCategory:](v5, "setResponseCategory:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(SISchemaUUFRSaid *)v5 setSubRequestId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (SISchemaUUFRSaid)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUFRSaid *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUFRSaid *)self dictionaryRepresentation];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_dialogIdentifier hash];
  v4 = [(SISchemaSiriResponseContext *)self->_siriResponseContext hash];
  v5 = [(NSString *)self->_aceViewID hash];
  v6 = [(NSString *)self->_aceViewClass hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_sonicResponse;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(SISchemaUUID *)self->_subRequestId hash];
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_responseCategory;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  dialogIdentifier = [(SISchemaUUFRSaid *)self dialogIdentifier];
  dialogIdentifier2 = [equalCopy dialogIdentifier];
  if ((dialogIdentifier != 0) == (dialogIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  dialogIdentifier3 = [(SISchemaUUFRSaid *)self dialogIdentifier];
  if (dialogIdentifier3)
  {
    v8 = dialogIdentifier3;
    dialogIdentifier4 = [(SISchemaUUFRSaid *)self dialogIdentifier];
    dialogIdentifier5 = [equalCopy dialogIdentifier];
    v11 = [dialogIdentifier4 isEqual:dialogIdentifier5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  dialogIdentifier = [(SISchemaUUFRSaid *)self siriResponseContext];
  dialogIdentifier2 = [equalCopy siriResponseContext];
  if ((dialogIdentifier != 0) == (dialogIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  siriResponseContext = [(SISchemaUUFRSaid *)self siriResponseContext];
  if (siriResponseContext)
  {
    v13 = siriResponseContext;
    siriResponseContext2 = [(SISchemaUUFRSaid *)self siriResponseContext];
    siriResponseContext3 = [equalCopy siriResponseContext];
    v16 = [siriResponseContext2 isEqual:siriResponseContext3];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  dialogIdentifier = [(SISchemaUUFRSaid *)self aceViewID];
  dialogIdentifier2 = [equalCopy aceViewID];
  if ((dialogIdentifier != 0) == (dialogIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  aceViewID = [(SISchemaUUFRSaid *)self aceViewID];
  if (aceViewID)
  {
    v18 = aceViewID;
    aceViewID2 = [(SISchemaUUFRSaid *)self aceViewID];
    aceViewID3 = [equalCopy aceViewID];
    v21 = [aceViewID2 isEqual:aceViewID3];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  dialogIdentifier = [(SISchemaUUFRSaid *)self aceViewClass];
  dialogIdentifier2 = [equalCopy aceViewClass];
  if ((dialogIdentifier != 0) == (dialogIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  aceViewClass = [(SISchemaUUFRSaid *)self aceViewClass];
  if (aceViewClass)
  {
    v23 = aceViewClass;
    aceViewClass2 = [(SISchemaUUFRSaid *)self aceViewClass];
    aceViewClass3 = [equalCopy aceViewClass];
    v26 = [aceViewClass2 isEqual:aceViewClass3];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = equalCopy[56];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    sonicResponse = self->_sonicResponse;
    if (sonicResponse != [equalCopy sonicResponse])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v28 = equalCopy[56];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v30)
  {
    responseCategory = self->_responseCategory;
    if (responseCategory != [equalCopy responseCategory])
    {
      goto LABEL_34;
    }
  }

  dialogIdentifier = [(SISchemaUUFRSaid *)self subRequestId];
  dialogIdentifier2 = [equalCopy subRequestId];
  if ((dialogIdentifier != 0) == (dialogIdentifier2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  subRequestId = [(SISchemaUUFRSaid *)self subRequestId];
  if (!subRequestId)
  {

LABEL_37:
    v37 = 1;
    goto LABEL_35;
  }

  v33 = subRequestId;
  subRequestId2 = [(SISchemaUUFRSaid *)self subRequestId];
  subRequestId3 = [equalCopy subRequestId];
  v36 = [subRequestId2 isEqual:subRequestId3];

  if (v36)
  {
    goto LABEL_37;
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dialogIdentifier = [(SISchemaUUFRSaid *)self dialogIdentifier];

  if (dialogIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  siriResponseContext = [(SISchemaUUFRSaid *)self siriResponseContext];

  if (siriResponseContext)
  {
    siriResponseContext2 = [(SISchemaUUFRSaid *)self siriResponseContext];
    PBDataWriterWriteSubmessage();
  }

  aceViewID = [(SISchemaUUFRSaid *)self aceViewID];

  if (aceViewID)
  {
    PBDataWriterWriteStringField();
  }

  aceViewClass = [(SISchemaUUFRSaid *)self aceViewClass];

  if (aceViewClass)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  subRequestId = [(SISchemaUUFRSaid *)self subRequestId];

  v11 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(SISchemaUUFRSaid *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setHasResponseCategory:(BOOL)category
{
  if (category)
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
  v13.super_class = SISchemaUUFRSaid;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(SISchemaUUFRSaid *)self deleteDialogIdentifier];
  }

  siriResponseContext = [(SISchemaUUFRSaid *)self siriResponseContext];
  v7 = [siriResponseContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaUUFRSaid *)self deleteSiriResponseContext];
  }

  subRequestId = [(SISchemaUUFRSaid *)self subRequestId];
  v10 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaUUFRSaid *)self deleteSubRequestId];
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