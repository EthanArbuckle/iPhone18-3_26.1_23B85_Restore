@interface NLXSchemaNLXLegacyNLContext
- (BOOL)isEqual:(id)a3;
- (NLXSchemaNLXLegacyNLContext)initWithDictionary:(id)a3;
- (NLXSchemaNLXLegacyNLContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsListenAfterSpeaking:(BOOL)a3;
- (void)setHasIsStrictPrompt:(BOOL)a3;
- (void)setHasLegacyContextSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaNLXLegacyNLContext

- (NLXSchemaNLXLegacyNLContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NLXSchemaNLXLegacyNLContext;
  v5 = [(NLXSchemaNLXLegacyNLContext *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isDictationPrompt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXLegacyNLContext setIsDictationPrompt:](v5, "setIsDictationPrompt:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isStrictPrompt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXLegacyNLContext setIsStrictPrompt:](v5, "setIsStrictPrompt:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"previousDomainName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLXSchemaNLXLegacyNLContext *)v5 setPreviousDomainName:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isListenAfterSpeaking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXLegacyNLContext setIsListenAfterSpeaking:](v5, "setIsListenAfterSpeaking:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(NLXSchemaNLXLegacyNLContext *)v5 setLinkId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"legacyContextSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXLegacyNLContext setLegacyContextSource:](v5, "setLegacyContextSource:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (NLXSchemaNLXLegacyNLContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaNLXLegacyNLContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaNLXLegacyNLContext *)self dictionaryRepresentation];
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
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaNLXLegacyNLContext isDictationPrompt](self, "isDictationPrompt")}];
    [v3 setObject:v10 forKeyedSubscript:@"isDictationPrompt"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_16:
      v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaNLXLegacyNLContext isStrictPrompt](self, "isStrictPrompt")}];
      [v3 setObject:v12 forKeyedSubscript:@"isStrictPrompt"];

      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaNLXLegacyNLContext isListenAfterSpeaking](self, "isListenAfterSpeaking")}];
  [v3 setObject:v11 forKeyedSubscript:@"isListenAfterSpeaking"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v5 = [(NLXSchemaNLXLegacyNLContext *)self legacyContextSource];
  v6 = @"NLXLEGACYCONTEXTSOURCE_UNKNOWN";
  if (v5 == 1)
  {
    v6 = @"NLXLEGACYCONTEXTSOURCE_MODALITY";
  }

  if (v5 == 2)
  {
    v7 = @"NLXLEGACYCONTEXTSOURCE_POMMES";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"legacyContextSource"];
LABEL_11:
  if (self->_linkId)
  {
    v8 = [(NLXSchemaNLXLegacyNLContext *)self linkId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_previousDomainName)
  {
    v14 = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"previousDomainName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isDictationPrompt;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_isStrictPrompt;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_previousDomainName hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_isListenAfterSpeaking;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SISchemaUUID *)self->_linkId hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_legacyContextSource;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[44];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    isDictationPrompt = self->_isDictationPrompt;
    if (isDictationPrompt != [v4 isDictationPrompt])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    isStrictPrompt = self->_isStrictPrompt;
    if (isStrictPrompt != [v4 isStrictPrompt])
    {
      goto LABEL_22;
    }
  }

  v10 = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];
  v11 = [v4 previousDomainName];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];
    v15 = [v4 previousDomainName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v17 = (*&self->_has >> 2) & 1;
  if (v17 != ((v4[44] >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v17)
  {
    isListenAfterSpeaking = self->_isListenAfterSpeaking;
    if (isListenAfterSpeaking != [v4 isListenAfterSpeaking])
    {
      goto LABEL_22;
    }
  }

  v10 = [(NLXSchemaNLXLegacyNLContext *)self linkId];
  v11 = [v4 linkId];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v19 = [(NLXSchemaNLXLegacyNLContext *)self linkId];
  if (v19)
  {
    v20 = v19;
    v21 = [(NLXSchemaNLXLegacyNLContext *)self linkId];
    v22 = [v4 linkId];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v26 = (*&self->_has >> 3) & 1;
  if (v26 == ((v4[44] >> 3) & 1))
  {
    if (!v26 || (legacyContextSource = self->_legacyContextSource, legacyContextSource == [v4 legacyContextSource]))
    {
      v24 = 1;
      goto LABEL_23;
    }
  }

LABEL_22:
  v24 = 0;
LABEL_23:

  return v24;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(NLXSchemaNLXLegacyNLContext *)self linkId];

  if (v6)
  {
    v7 = [(NLXSchemaNLXLegacyNLContext *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasLegacyContextSource:(BOOL)a3
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

- (void)setHasIsListenAfterSpeaking:(BOOL)a3
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

- (void)setHasIsStrictPrompt:(BOOL)a3
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
  v9.super_class = NLXSchemaNLXLegacyNLContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaNLXLegacyNLContext *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(NLXSchemaNLXLegacyNLContext *)self deleteLinkId];
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