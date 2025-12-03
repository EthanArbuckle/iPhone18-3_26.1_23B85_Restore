@interface SISchemaPunchOut
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaPunchOut)initWithDictionary:(id)dictionary;
- (SISchemaPunchOut)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsPunchoutToHomeScreen:(BOOL)screen;
- (void)writeTo:(id)to;
@end

@implementation SISchemaPunchOut

- (SISchemaPunchOut)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = SISchemaPunchOut;
  v5 = [(SISchemaPunchOut *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaPunchOut *)v5 setAppID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"urlScheme"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaPunchOut *)v5 setUrlScheme:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"viewContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaViewContainer alloc] initWithDictionary:v10];
      [(SISchemaPunchOut *)v5 setViewContainer:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"viewElementID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
      [(SISchemaPunchOut *)v5 setViewElementID:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchOutUI"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPunchOut setPunchOutUI:](v5, "setPunchOutUI:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isPunchoutToHomeScreen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPunchOut setIsPunchoutToHomeScreen:](v5, "setIsPunchoutToHomeScreen:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"aceID"];
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

- (SISchemaPunchOut)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaPunchOut *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaPunchOut *)self dictionaryRepresentation];
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
  if (self->_aceID)
  {
    aceID = [(SISchemaPunchOut *)self aceID];
    v5 = [aceID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceID"];
  }

  if (self->_appID)
  {
    appID = [(SISchemaPunchOut *)self appID];
    v7 = [appID copy];
    [dictionary setObject:v7 forKeyedSubscript:@"appID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaPunchOut isPunchoutToHomeScreen](self, "isPunchoutToHomeScreen")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isPunchoutToHomeScreen"];

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

    [dictionary setObject:v11 forKeyedSubscript:@"punchOutUI"];
  }

  if (self->_urlScheme)
  {
    urlScheme = [(SISchemaPunchOut *)self urlScheme];
    v13 = [urlScheme copy];
    [dictionary setObject:v13 forKeyedSubscript:@"urlScheme"];
  }

  if (self->_viewContainer)
  {
    viewContainer = [(SISchemaPunchOut *)self viewContainer];
    dictionaryRepresentation = [viewContainer dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"viewContainer"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"viewContainer"];
    }
  }

  if (self->_viewElementID)
  {
    viewElementID = [(SISchemaPunchOut *)self viewElementID];
    v18 = [viewElementID base64EncodedStringWithOptions:0];
    if (v18)
    {
      [dictionary setObject:v18 forKeyedSubscript:@"viewElementID"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"viewElementID"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  appID = [(SISchemaPunchOut *)self appID];
  appID2 = [equalCopy appID];
  if ((appID != 0) == (appID2 == 0))
  {
    goto LABEL_33;
  }

  appID3 = [(SISchemaPunchOut *)self appID];
  if (appID3)
  {
    v8 = appID3;
    appID4 = [(SISchemaPunchOut *)self appID];
    appID5 = [equalCopy appID];
    v11 = [appID4 isEqual:appID5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  appID = [(SISchemaPunchOut *)self urlScheme];
  appID2 = [equalCopy urlScheme];
  if ((appID != 0) == (appID2 == 0))
  {
    goto LABEL_33;
  }

  urlScheme = [(SISchemaPunchOut *)self urlScheme];
  if (urlScheme)
  {
    v13 = urlScheme;
    urlScheme2 = [(SISchemaPunchOut *)self urlScheme];
    urlScheme3 = [equalCopy urlScheme];
    v16 = [urlScheme2 isEqual:urlScheme3];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  appID = [(SISchemaPunchOut *)self viewContainer];
  appID2 = [equalCopy viewContainer];
  if ((appID != 0) == (appID2 == 0))
  {
    goto LABEL_33;
  }

  viewContainer = [(SISchemaPunchOut *)self viewContainer];
  if (viewContainer)
  {
    v18 = viewContainer;
    viewContainer2 = [(SISchemaPunchOut *)self viewContainer];
    viewContainer3 = [equalCopy viewContainer];
    v21 = [viewContainer2 isEqual:viewContainer3];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  appID = [(SISchemaPunchOut *)self viewElementID];
  appID2 = [equalCopy viewElementID];
  if ((appID != 0) == (appID2 == 0))
  {
    goto LABEL_33;
  }

  viewElementID = [(SISchemaPunchOut *)self viewElementID];
  if (viewElementID)
  {
    v23 = viewElementID;
    viewElementID2 = [(SISchemaPunchOut *)self viewElementID];
    viewElementID3 = [equalCopy viewElementID];
    v26 = [viewElementID2 isEqual:viewElementID3];

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
    punchOutUI = self->_punchOutUI;
    if (punchOutUI != [equalCopy punchOutUI])
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
    isPunchoutToHomeScreen = self->_isPunchoutToHomeScreen;
    if (isPunchoutToHomeScreen != [equalCopy isPunchoutToHomeScreen])
    {
      goto LABEL_34;
    }
  }

  appID = [(SISchemaPunchOut *)self aceID];
  appID2 = [equalCopy aceID];
  if ((appID != 0) == (appID2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  aceID = [(SISchemaPunchOut *)self aceID];
  if (!aceID)
  {

LABEL_37:
    v37 = 1;
    goto LABEL_35;
  }

  v33 = aceID;
  aceID2 = [(SISchemaPunchOut *)self aceID];
  aceID3 = [equalCopy aceID];
  v36 = [aceID2 isEqual:aceID3];

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
  appID = [(SISchemaPunchOut *)self appID];

  if (appID)
  {
    PBDataWriterWriteStringField();
  }

  urlScheme = [(SISchemaPunchOut *)self urlScheme];

  if (urlScheme)
  {
    PBDataWriterWriteStringField();
  }

  viewContainer = [(SISchemaPunchOut *)self viewContainer];

  if (viewContainer)
  {
    viewContainer2 = [(SISchemaPunchOut *)self viewContainer];
    PBDataWriterWriteSubmessage();
  }

  viewElementID = [(SISchemaPunchOut *)self viewElementID];

  if (viewElementID)
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

  aceID = [(SISchemaPunchOut *)self aceID];

  v11 = toCopy;
  if (aceID)
  {
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

- (void)setHasIsPunchoutToHomeScreen:(BOOL)screen
{
  if (screen)
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
  v9.super_class = SISchemaPunchOut;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaPunchOut *)self viewContainer:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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