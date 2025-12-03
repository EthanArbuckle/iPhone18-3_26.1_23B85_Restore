@interface SISchemaUEIUUFRReady
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUEIUUFRReady)initWithDictionary:(id)dictionary;
- (SISchemaUEIUUFRReady)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDialogIdentifiers:(id)identifiers;
- (void)setHasDialogPhase:(BOOL)phase;
- (void)setHasUufrReadySource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUEIUUFRReady

- (SISchemaUEIUUFRReady)initWithDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = SISchemaUEIUUFRReady;
  v5 = [(SISchemaUEIUUFRReady *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIUUFRReady setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"aceCommandClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SISchemaUEIUUFRReady *)v5 setAceCommandClass:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"aceViewId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SISchemaUEIUUFRReady *)v5 setAceViewId:v10];
    }

    v30 = v9;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"uufrReadySource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIUUFRReady setUufrReadySource:](v5, "setUufrReadySource:", [v11 intValue]);
    }

    v29 = v11;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"dialogPhase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIUUFRReady setDialogPhase:](v5, "setDialogPhase:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"dialogIdentifiers"];
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

    v21 = [dictionaryCopy objectForKeyedSubscript:{@"subRequestId", v27, v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[SISchemaUUID alloc] initWithDictionary:v21];
      [(SISchemaUEIUUFRReady *)v5 setSubRequestId:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"aceCommandId"];
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

- (SISchemaUEIUUFRReady)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUEIUUFRReady *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUEIUUFRReady *)self dictionaryRepresentation];
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
  if (self->_aceCommandClass)
  {
    aceCommandClass = [(SISchemaUEIUUFRReady *)self aceCommandClass];
    v5 = [aceCommandClass copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceCommandClass"];
  }

  if (self->_aceCommandId)
  {
    aceCommandId = [(SISchemaUEIUUFRReady *)self aceCommandId];
    dictionaryRepresentation = [aceCommandId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aceCommandId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aceCommandId"];
    }
  }

  if (self->_aceViewId)
  {
    aceViewId = [(SISchemaUEIUUFRReady *)self aceViewId];
    v10 = [aceViewId copy];
    [dictionary setObject:v10 forKeyedSubscript:@"aceViewId"];
  }

  if (self->_dialogIdentifiers)
  {
    dialogIdentifiers = [(SISchemaUEIUUFRReady *)self dialogIdentifiers];
    v12 = [dialogIdentifiers copy];
    [dictionary setObject:v12 forKeyedSubscript:@"dialogIdentifiers"];
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

    [dictionary setObject:v15 forKeyedSubscript:@"dialogPhase"];
    has = self->_has;
  }

  if (has)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIUUFRReady exists](self, "exists")}];
    [dictionary setObject:v16 forKeyedSubscript:@"exists"];
  }

  if (self->_subRequestId)
  {
    subRequestId = [(SISchemaUEIUUFRReady *)self subRequestId];
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

    [dictionary setObject:v21 forKeyedSubscript:@"uufrReadySource"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 1) != (equalCopy[64] & 1))
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_37;
    }
  }

  aceCommandClass = [(SISchemaUEIUUFRReady *)self aceCommandClass];
  aceCommandClass2 = [equalCopy aceCommandClass];
  if ((aceCommandClass != 0) == (aceCommandClass2 == 0))
  {
    goto LABEL_36;
  }

  aceCommandClass3 = [(SISchemaUEIUUFRReady *)self aceCommandClass];
  if (aceCommandClass3)
  {
    v9 = aceCommandClass3;
    aceCommandClass4 = [(SISchemaUEIUUFRReady *)self aceCommandClass];
    aceCommandClass5 = [equalCopy aceCommandClass];
    v12 = [aceCommandClass4 isEqual:aceCommandClass5];

    if (!v12)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  aceCommandClass = [(SISchemaUEIUUFRReady *)self aceViewId];
  aceCommandClass2 = [equalCopy aceViewId];
  if ((aceCommandClass != 0) == (aceCommandClass2 == 0))
  {
    goto LABEL_36;
  }

  aceViewId = [(SISchemaUEIUUFRReady *)self aceViewId];
  if (aceViewId)
  {
    v14 = aceViewId;
    aceViewId2 = [(SISchemaUEIUUFRReady *)self aceViewId];
    aceViewId3 = [equalCopy aceViewId];
    v17 = [aceViewId2 isEqual:aceViewId3];

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
  v20 = equalCopy[64];
  if (v19 != ((v20 >> 1) & 1))
  {
    goto LABEL_37;
  }

  if (v19)
  {
    uufrReadySource = self->_uufrReadySource;
    if (uufrReadySource != [equalCopy uufrReadySource])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v20 = equalCopy[64];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v20 >> 2) & 1))
  {
    goto LABEL_37;
  }

  if (v22)
  {
    dialogPhase = self->_dialogPhase;
    if (dialogPhase != [equalCopy dialogPhase])
    {
      goto LABEL_37;
    }
  }

  aceCommandClass = [(SISchemaUEIUUFRReady *)self dialogIdentifiers];
  aceCommandClass2 = [equalCopy dialogIdentifiers];
  if ((aceCommandClass != 0) == (aceCommandClass2 == 0))
  {
    goto LABEL_36;
  }

  dialogIdentifiers = [(SISchemaUEIUUFRReady *)self dialogIdentifiers];
  if (dialogIdentifiers)
  {
    v25 = dialogIdentifiers;
    dialogIdentifiers2 = [(SISchemaUEIUUFRReady *)self dialogIdentifiers];
    dialogIdentifiers3 = [equalCopy dialogIdentifiers];
    v28 = [dialogIdentifiers2 isEqual:dialogIdentifiers3];

    if (!v28)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  aceCommandClass = [(SISchemaUEIUUFRReady *)self subRequestId];
  aceCommandClass2 = [equalCopy subRequestId];
  if ((aceCommandClass != 0) == (aceCommandClass2 == 0))
  {
    goto LABEL_36;
  }

  subRequestId = [(SISchemaUEIUUFRReady *)self subRequestId];
  if (subRequestId)
  {
    v30 = subRequestId;
    subRequestId2 = [(SISchemaUEIUUFRReady *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v33 = [subRequestId2 isEqual:subRequestId3];

    if (!v33)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  aceCommandClass = [(SISchemaUEIUUFRReady *)self aceCommandId];
  aceCommandClass2 = [equalCopy aceCommandId];
  if ((aceCommandClass != 0) == (aceCommandClass2 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  aceCommandId = [(SISchemaUEIUUFRReady *)self aceCommandId];
  if (!aceCommandId)
  {

LABEL_40:
    v39 = 1;
    goto LABEL_38;
  }

  v35 = aceCommandId;
  aceCommandId2 = [(SISchemaUEIUUFRReady *)self aceCommandId];
  aceCommandId3 = [equalCopy aceCommandId];
  v38 = [aceCommandId2 isEqual:aceCommandId3];

  if (v38)
  {
    goto LABEL_40;
  }

LABEL_37:
  v39 = 0;
LABEL_38:

  return v39;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  aceCommandClass = [(SISchemaUEIUUFRReady *)self aceCommandClass];

  if (aceCommandClass)
  {
    PBDataWriterWriteStringField();
  }

  aceViewId = [(SISchemaUEIUUFRReady *)self aceViewId];

  if (aceViewId)
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

  subRequestId = [(SISchemaUEIUUFRReady *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(SISchemaUEIUUFRReady *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  aceCommandId = [(SISchemaUEIUUFRReady *)self aceCommandId];

  if (aceCommandId)
  {
    aceCommandId2 = [(SISchemaUEIUUFRReady *)self aceCommandId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDialogIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dialogIdentifiers = self->_dialogIdentifiers;
  v8 = identifiersCopy;
  if (!dialogIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_dialogIdentifiers;
    self->_dialogIdentifiers = array;

    identifiersCopy = v8;
    dialogIdentifiers = self->_dialogIdentifiers;
  }

  [(NSArray *)dialogIdentifiers addObject:identifiersCopy];
}

- (void)setHasDialogPhase:(BOOL)phase
{
  if (phase)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUufrReadySource:(BOOL)source
{
  if (source)
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
  v13.super_class = SISchemaUEIUUFRReady;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(SISchemaUEIUUFRReady *)self deleteDialogIdentifiers];
  }

  subRequestId = [(SISchemaUEIUUFRReady *)self subRequestId];
  v7 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaUEIUUFRReady *)self deleteSubRequestId];
  }

  aceCommandId = [(SISchemaUEIUUFRReady *)self aceCommandId];
  v10 = [aceCommandId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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