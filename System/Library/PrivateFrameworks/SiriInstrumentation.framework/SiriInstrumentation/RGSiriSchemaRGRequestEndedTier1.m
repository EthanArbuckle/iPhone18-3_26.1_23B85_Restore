@interface RGSiriSchemaRGRequestEndedTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RGSiriSchemaRGRequestEndedTier1)initWithDictionary:(id)a3;
- (RGSiriSchemaRGRequestEndedTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RGSiriSchemaRGRequestEndedTier1

- (RGSiriSchemaRGRequestEndedTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = RGSiriSchemaRGRequestEndedTier1;
  v5 = [(RGSiriSchemaRGRequestEndedTier1 *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"displayString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setDisplayString:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"spokenString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setSpokenString:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"catId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setCatId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"staticDialogId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(RGSiriSchemaRGRequestEndedTier1 *)v5 setStaticDialogId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGRequestEndedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGRequestEndedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RGSiriSchemaRGRequestEndedTier1 *)self dictionaryRepresentation];
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
  if (self->_catId)
  {
    v4 = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"catId"];
  }

  if (self->_displayString)
  {
    v6 = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"displayString"];
  }

  if (self->_linkId)
  {
    v8 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_spokenString)
  {
    v11 = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"spokenString"];
  }

  if (self->_staticDialogId)
  {
    v13 = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"staticDialogId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_displayString hash]^ v3;
  v5 = [(NSString *)self->_spokenString hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_catId hash];
  return v6 ^ [(NSString *)self->_staticDialogId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];
  v6 = [v4 displayString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];
  if (v12)
  {
    v13 = v12;
    v14 = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];
    v15 = [v4 displayString];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];
  v6 = [v4 spokenString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];
  if (v17)
  {
    v18 = v17;
    v19 = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];
    v20 = [v4 spokenString];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];
  v6 = [v4 catId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];
  if (v22)
  {
    v23 = v22;
    v24 = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];
    v25 = [v4 catId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];
  v6 = [v4 staticDialogId];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];
    v30 = [v4 staticDialogId];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];

  if (v4)
  {
    v5 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(RGSiriSchemaRGRequestEndedTier1 *)self displayString];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(RGSiriSchemaRGRequestEndedTier1 *)self spokenString];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(RGSiriSchemaRGRequestEndedTier1 *)self catId];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(RGSiriSchemaRGRequestEndedTier1 *)self staticDialogId];

  v10 = v11;
  if (v9)
  {
    PBDataWriterWriteStringField();
    v10 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RGSiriSchemaRGRequestEndedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  if ([v4 isConditionSet:4])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  if ([v4 isConditionSet:5])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  if ([v4 isConditionSet:6])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  if ([v4 isConditionSet:7])
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteDisplayString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteSpokenString];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteCatId];
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteStaticDialogId];
  }

  v6 = [(RGSiriSchemaRGRequestEndedTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RGSiriSchemaRGRequestEndedTier1 *)self deleteLinkId];
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