@interface SISchemaUUFRSaid
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUUFRSaid)initWithDictionary:(id)a3;
- (SISchemaUUFRSaid)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResponseCategory:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUUFRSaid

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_aceViewClass)
  {
    v4 = [(SISchemaUUFRSaid *)self aceViewClass];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"aceViewClass"];
  }

  if (self->_aceViewID)
  {
    v6 = [(SISchemaUUFRSaid *)self aceViewID];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"aceViewID"];
  }

  if (self->_dialogIdentifier)
  {
    v8 = [(SISchemaUUFRSaid *)self dialogIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"dialogIdentifier"];
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

    [v3 setObject:v11 forKeyedSubscript:@"responseCategory"];
  }

  if (self->_siriResponseContext)
  {
    v12 = [(SISchemaUUFRSaid *)self siriResponseContext];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"siriResponseContext"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"siriResponseContext"];
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

    [v3 setObject:v16 forKeyedSubscript:@"sonicResponse"];
  }

  if (self->_subRequestId)
  {
    v17 = [(SISchemaUUFRSaid *)self subRequestId];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"subRequestId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (SISchemaUUFRSaid)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SISchemaUUFRSaid;
  v5 = [(SISchemaUUFRSaid *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRSaid *)v5 setDialogIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"siriResponseContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaSiriResponseContext alloc] initWithDictionary:v8];
      [(SISchemaUUFRSaid *)v5 setSiriResponseContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"aceViewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaUUFRSaid *)v5 setAceViewID:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"aceViewClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(SISchemaUUFRSaid *)v5 setAceViewClass:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"sonicResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRSaid setSonicResponse:](v5, "setSonicResponse:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"responseCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRSaid setResponseCategory:](v5, "setResponseCategory:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"subRequestId"];
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

- (SISchemaUUFRSaid)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUUFRSaid *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUUFRSaid *)self dictionaryRepresentation];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = [(SISchemaUUFRSaid *)self dialogIdentifier];
  v6 = [v4 dialogIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v7 = [(SISchemaUUFRSaid *)self dialogIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaUUFRSaid *)self dialogIdentifier];
    v10 = [v4 dialogIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(SISchemaUUFRSaid *)self siriResponseContext];
  v6 = [v4 siriResponseContext];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v12 = [(SISchemaUUFRSaid *)self siriResponseContext];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaUUFRSaid *)self siriResponseContext];
    v15 = [v4 siriResponseContext];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(SISchemaUUFRSaid *)self aceViewID];
  v6 = [v4 aceViewID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v17 = [(SISchemaUUFRSaid *)self aceViewID];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaUUFRSaid *)self aceViewID];
    v20 = [v4 aceViewID];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(SISchemaUUFRSaid *)self aceViewClass];
  v6 = [v4 aceViewClass];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v22 = [(SISchemaUUFRSaid *)self aceViewClass];
  if (v22)
  {
    v23 = v22;
    v24 = [(SISchemaUUFRSaid *)self aceViewClass];
    v25 = [v4 aceViewClass];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = v4[56];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    sonicResponse = self->_sonicResponse;
    if (sonicResponse != [v4 sonicResponse])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v28 = v4[56];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v30)
  {
    responseCategory = self->_responseCategory;
    if (responseCategory != [v4 responseCategory])
    {
      goto LABEL_34;
    }
  }

  v5 = [(SISchemaUUFRSaid *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v32 = [(SISchemaUUFRSaid *)self subRequestId];
  if (!v32)
  {

LABEL_37:
    v37 = 1;
    goto LABEL_35;
  }

  v33 = v32;
  v34 = [(SISchemaUUFRSaid *)self subRequestId];
  v35 = [v4 subRequestId];
  v36 = [v34 isEqual:v35];

  if (v36)
  {
    goto LABEL_37;
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(SISchemaUUFRSaid *)self dialogIdentifier];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaUUFRSaid *)self siriResponseContext];

  if (v5)
  {
    v6 = [(SISchemaUUFRSaid *)self siriResponseContext];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(SISchemaUUFRSaid *)self aceViewID];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(SISchemaUUFRSaid *)self aceViewClass];

  if (v8)
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

  v10 = [(SISchemaUUFRSaid *)self subRequestId];

  v11 = v13;
  if (v10)
  {
    v12 = [(SISchemaUUFRSaid *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)setHasResponseCategory:(BOOL)a3
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
  v13.super_class = SISchemaUUFRSaid;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(SISchemaUUFRSaid *)self deleteDialogIdentifier];
  }

  v6 = [(SISchemaUUFRSaid *)self siriResponseContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaUUFRSaid *)self deleteSiriResponseContext];
  }

  v9 = [(SISchemaUUFRSaid *)self subRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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