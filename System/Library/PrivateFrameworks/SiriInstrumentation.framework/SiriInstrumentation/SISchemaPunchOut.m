@interface SISchemaPunchOut
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaPunchOut)initWithDictionary:(id)a3;
- (SISchemaPunchOut)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsPunchoutToHomeScreen:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaPunchOut

- (SISchemaPunchOut)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SISchemaPunchOut;
  v5 = [(SISchemaPunchOut *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaPunchOut *)v5 setAppID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"urlScheme"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaPunchOut *)v5 setUrlScheme:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"viewContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaViewContainer alloc] initWithDictionary:v10];
      [(SISchemaPunchOut *)v5 setViewContainer:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"viewElementID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
      [(SISchemaPunchOut *)v5 setViewElementID:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"punchOutUI"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPunchOut setPunchOutUI:](v5, "setPunchOutUI:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"isPunchoutToHomeScreen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPunchOut setIsPunchoutToHomeScreen:](v5, "setIsPunchoutToHomeScreen:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"aceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(SISchemaPunchOut *)v5 setAceID:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (SISchemaPunchOut)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaPunchOut *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaPunchOut *)self dictionaryRepresentation];
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
  if (self->_aceID)
  {
    v4 = [(SISchemaPunchOut *)self aceID];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"aceID"];
  }

  if (self->_appID)
  {
    v6 = [(SISchemaPunchOut *)self appID];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"appID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaPunchOut isPunchoutToHomeScreen](self, "isPunchoutToHomeScreen")}];
    [v3 setObject:v9 forKeyedSubscript:@"isPunchoutToHomeScreen"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [(SISchemaPunchOut *)self punchOutUI]- 1;
    if (v10 > 6)
    {
      v11 = @"PUNCHOUTUI_UNKNOWN";
    }

    else
    {
      v11 = off_1E78E61D8[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"punchOutUI"];
  }

  if (self->_urlScheme)
  {
    v12 = [(SISchemaPunchOut *)self urlScheme];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"urlScheme"];
  }

  if (self->_viewContainer)
  {
    v14 = [(SISchemaPunchOut *)self viewContainer];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"viewContainer"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"viewContainer"];
    }
  }

  if (self->_viewElementID)
  {
    v17 = [(SISchemaPunchOut *)self viewElementID];
    v18 = [v17 base64EncodedStringWithOptions:0];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"viewElementID"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"viewElementID"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appID hash];
  v4 = [(NSString *)self->_urlScheme hash];
  v5 = [(SISchemaViewContainer *)self->_viewContainer hash];
  v6 = [(NSData *)self->_viewElementID hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_punchOutUI;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_aceID hash];
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_isPunchoutToHomeScreen;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_aceID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = [(SISchemaPunchOut *)self appID];
  v6 = [v4 appID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v7 = [(SISchemaPunchOut *)self appID];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaPunchOut *)self appID];
    v10 = [v4 appID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(SISchemaPunchOut *)self urlScheme];
  v6 = [v4 urlScheme];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v12 = [(SISchemaPunchOut *)self urlScheme];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaPunchOut *)self urlScheme];
    v15 = [v4 urlScheme];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(SISchemaPunchOut *)self viewContainer];
  v6 = [v4 viewContainer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v17 = [(SISchemaPunchOut *)self viewContainer];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaPunchOut *)self viewContainer];
    v20 = [v4 viewContainer];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(SISchemaPunchOut *)self viewElementID];
  v6 = [v4 viewElementID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v22 = [(SISchemaPunchOut *)self viewElementID];
  if (v22)
  {
    v23 = v22;
    v24 = [(SISchemaPunchOut *)self viewElementID];
    v25 = [v4 viewElementID];
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
    punchOutUI = self->_punchOutUI;
    if (punchOutUI != [v4 punchOutUI])
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
    isPunchoutToHomeScreen = self->_isPunchoutToHomeScreen;
    if (isPunchoutToHomeScreen != [v4 isPunchoutToHomeScreen])
    {
      goto LABEL_34;
    }
  }

  v5 = [(SISchemaPunchOut *)self aceID];
  v6 = [v4 aceID];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v32 = [(SISchemaPunchOut *)self aceID];
  if (!v32)
  {

LABEL_37:
    v37 = 1;
    goto LABEL_35;
  }

  v33 = v32;
  v34 = [(SISchemaPunchOut *)self aceID];
  v35 = [v4 aceID];
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
  v12 = a3;
  v4 = [(SISchemaPunchOut *)self appID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaPunchOut *)self urlScheme];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaPunchOut *)self viewContainer];

  if (v6)
  {
    v7 = [(SISchemaPunchOut *)self viewContainer];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SISchemaPunchOut *)self viewElementID];

  if (v8)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v10 = [(SISchemaPunchOut *)self aceID];

  v11 = v12;
  if (v10)
  {
    PBDataWriterWriteStringField();
    v11 = v12;
  }
}

- (void)setHasIsPunchoutToHomeScreen:(BOOL)a3
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
  v9.super_class = SISchemaPunchOut;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaPunchOut *)self viewContainer:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaPunchOut *)self deleteViewContainer];
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