@interface SISchemaUEIUUFRReady
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUEIUUFRReady)initWithDictionary:(id)a3;
- (SISchemaUEIUUFRReady)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDialogIdentifiers:(id)a3;
- (void)setHasDialogPhase:(BOOL)a3;
- (void)setHasUufrReadySource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUEIUUFRReady

- (SISchemaUEIUUFRReady)initWithDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = SISchemaUEIUUFRReady;
  v5 = [(SISchemaUEIUUFRReady *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIUUFRReady setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"aceCommandClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SISchemaUEIUUFRReady *)v5 setAceCommandClass:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"aceViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SISchemaUEIUUFRReady *)v5 setAceViewId:v10];
    }

    v30 = v9;
    v11 = [v4 objectForKeyedSubscript:@"uufrReadySource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIUUFRReady setUufrReadySource:](v5, "setUufrReadySource:", [v11 intValue]);
    }

    v29 = v11;
    v12 = [v4 objectForKeyedSubscript:@"dialogPhase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIUUFRReady setDialogPhase:](v5, "setDialogPhase:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"dialogIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v7;
      v28 = v6;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          v18 = 0;
          do
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v19 copy];
              [(SISchemaUEIUUFRReady *)v5 addDialogIdentifiers:v20];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v16);
      }

      v7 = v27;
      v6 = v28;
    }

    v21 = [v4 objectForKeyedSubscript:{@"subRequestId", v27, v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[SISchemaUUID alloc] initWithDictionary:v21];
      [(SISchemaUEIUUFRReady *)v5 setSubRequestId:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"aceCommandId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[SISchemaUUID alloc] initWithDictionary:v23];
      [(SISchemaUEIUUFRReady *)v5 setAceCommandId:v24];
    }

    v25 = v5;
  }

  return v5;
}

- (SISchemaUEIUUFRReady)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUEIUUFRReady *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUEIUUFRReady *)self dictionaryRepresentation];
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
  if (self->_aceCommandClass)
  {
    v4 = [(SISchemaUEIUUFRReady *)self aceCommandClass];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"aceCommandClass"];
  }

  if (self->_aceCommandId)
  {
    v6 = [(SISchemaUEIUUFRReady *)self aceCommandId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"aceCommandId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"aceCommandId"];
    }
  }

  if (self->_aceViewId)
  {
    v9 = [(SISchemaUEIUUFRReady *)self aceViewId];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"aceViewId"];
  }

  if (self->_dialogIdentifiers)
  {
    v11 = [(SISchemaUEIUUFRReady *)self dialogIdentifiers];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"dialogIdentifiers"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [(SISchemaUEIUUFRReady *)self dialogPhase]- 1;
    if (v14 > 0xA)
    {
      v15 = @"UEIUUFRREADYDIALOGPHASE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78E67D0[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"dialogPhase"];
    has = self->_has;
  }

  if (has)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIUUFRReady exists](self, "exists")}];
    [v3 setObject:v16 forKeyedSubscript:@"exists"];
  }

  if (self->_subRequestId)
  {
    v17 = [(SISchemaUEIUUFRReady *)self subRequestId];
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

  if ((*&self->_has & 2) != 0)
  {
    v20 = [(SISchemaUEIUUFRReady *)self uufrReadySource]- 1;
    if (v20 > 3)
    {
      v21 = @"UUFRREADYSOURCE_UNKNOWN";
    }

    else
    {
      v21 = off_1E78E6828[v20];
    }

    [v3 setObject:v21 forKeyedSubscript:@"uufrReadySource"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_aceCommandClass hash];
  v5 = [(NSString *)self->_aceViewId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_uufrReadySource;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 2654435761 * self->_dialogPhase;
LABEL_9:
  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSArray *)self->_dialogIdentifiers hash];
  v10 = v8 ^ v9 ^ [(SISchemaUUID *)self->_subRequestId hash];
  return v10 ^ [(SISchemaUUID *)self->_aceCommandId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 1) != (v4[64] & 1))
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_37;
    }
  }

  v6 = [(SISchemaUEIUUFRReady *)self aceCommandClass];
  v7 = [v4 aceCommandClass];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_36;
  }

  v8 = [(SISchemaUEIUUFRReady *)self aceCommandClass];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaUEIUUFRReady *)self aceCommandClass];
    v11 = [v4 aceCommandClass];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUEIUUFRReady *)self aceViewId];
  v7 = [v4 aceViewId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_36;
  }

  v13 = [(SISchemaUEIUUFRReady *)self aceViewId];
  if (v13)
  {
    v14 = v13;
    v15 = [(SISchemaUEIUUFRReady *)self aceViewId];
    v16 = [v4 aceViewId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  has = self->_has;
  v19 = (*&has >> 1) & 1;
  v20 = v4[64];
  if (v19 != ((v20 >> 1) & 1))
  {
    goto LABEL_37;
  }

  if (v19)
  {
    uufrReadySource = self->_uufrReadySource;
    if (uufrReadySource != [v4 uufrReadySource])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v20 = v4[64];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v20 >> 2) & 1))
  {
    goto LABEL_37;
  }

  if (v22)
  {
    dialogPhase = self->_dialogPhase;
    if (dialogPhase != [v4 dialogPhase])
    {
      goto LABEL_37;
    }
  }

  v6 = [(SISchemaUEIUUFRReady *)self dialogIdentifiers];
  v7 = [v4 dialogIdentifiers];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_36;
  }

  v24 = [(SISchemaUEIUUFRReady *)self dialogIdentifiers];
  if (v24)
  {
    v25 = v24;
    v26 = [(SISchemaUEIUUFRReady *)self dialogIdentifiers];
    v27 = [v4 dialogIdentifiers];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUEIUUFRReady *)self subRequestId];
  v7 = [v4 subRequestId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_36;
  }

  v29 = [(SISchemaUEIUUFRReady *)self subRequestId];
  if (v29)
  {
    v30 = v29;
    v31 = [(SISchemaUEIUUFRReady *)self subRequestId];
    v32 = [v4 subRequestId];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUEIUUFRReady *)self aceCommandId];
  v7 = [v4 aceCommandId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  v34 = [(SISchemaUEIUUFRReady *)self aceCommandId];
  if (!v34)
  {

LABEL_40:
    v39 = 1;
    goto LABEL_38;
  }

  v35 = v34;
  v36 = [(SISchemaUEIUUFRReady *)self aceCommandId];
  v37 = [v4 aceCommandId];
  v38 = [v36 isEqual:v37];

  if (v38)
  {
    goto LABEL_40;
  }

LABEL_37:
  v39 = 0;
LABEL_38:

  return v39;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(SISchemaUEIUUFRReady *)self aceCommandClass];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaUEIUUFRReady *)self aceViewId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_dialogIdentifiers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteStringField();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v13 = [(SISchemaUEIUUFRReady *)self subRequestId];

  if (v13)
  {
    v14 = [(SISchemaUEIUUFRReady *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(SISchemaUEIUUFRReady *)self aceCommandId];

  if (v15)
  {
    v16 = [(SISchemaUEIUUFRReady *)self aceCommandId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDialogIdentifiers:(id)a3
{
  v4 = a3;
  dialogIdentifiers = self->_dialogIdentifiers;
  v8 = v4;
  if (!dialogIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_dialogIdentifiers;
    self->_dialogIdentifiers = v6;

    v4 = v8;
    dialogIdentifiers = self->_dialogIdentifiers;
  }

  [(NSArray *)dialogIdentifiers addObject:v4];
}

- (void)setHasDialogPhase:(BOOL)a3
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

- (void)setHasUufrReadySource:(BOOL)a3
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
  v13.super_class = SISchemaUEIUUFRReady;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(SISchemaUEIUUFRReady *)self deleteDialogIdentifiers];
  }

  v6 = [(SISchemaUEIUUFRReady *)self subRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaUEIUUFRReady *)self deleteSubRequestId];
  }

  v9 = [(SISchemaUEIUUFRReady *)self aceCommandId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaUEIUUFRReady *)self deleteAceCommandId];
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