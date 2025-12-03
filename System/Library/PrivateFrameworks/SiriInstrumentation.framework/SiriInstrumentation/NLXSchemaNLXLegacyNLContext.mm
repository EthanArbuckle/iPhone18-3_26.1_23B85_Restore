@interface NLXSchemaNLXLegacyNLContext
- (BOOL)isEqual:(id)equal;
- (NLXSchemaNLXLegacyNLContext)initWithDictionary:(id)dictionary;
- (NLXSchemaNLXLegacyNLContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsListenAfterSpeaking:(BOOL)speaking;
- (void)setHasIsStrictPrompt:(BOOL)prompt;
- (void)setHasLegacyContextSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaNLXLegacyNLContext

- (NLXSchemaNLXLegacyNLContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = NLXSchemaNLXLegacyNLContext;
  v5 = [(NLXSchemaNLXLegacyNLContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isDictationPrompt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXLegacyNLContext setIsDictationPrompt:](v5, "setIsDictationPrompt:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isStrictPrompt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXLegacyNLContext setIsStrictPrompt:](v5, "setIsStrictPrompt:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"previousDomainName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLXSchemaNLXLegacyNLContext *)v5 setPreviousDomainName:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isListenAfterSpeaking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXLegacyNLContext setIsListenAfterSpeaking:](v5, "setIsListenAfterSpeaking:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(NLXSchemaNLXLegacyNLContext *)v5 setLinkId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"legacyContextSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXLegacyNLContext setLegacyContextSource:](v5, "setLegacyContextSource:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (NLXSchemaNLXLegacyNLContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaNLXLegacyNLContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaNLXLegacyNLContext *)self dictionaryRepresentation];
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
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaNLXLegacyNLContext isDictationPrompt](self, "isDictationPrompt")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isDictationPrompt"];

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
      [dictionary setObject:v12 forKeyedSubscript:@"isStrictPrompt"];

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
  [dictionary setObject:v11 forKeyedSubscript:@"isListenAfterSpeaking"];

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
  legacyContextSource = [(NLXSchemaNLXLegacyNLContext *)self legacyContextSource];
  v6 = @"NLXLEGACYCONTEXTSOURCE_UNKNOWN";
  if (legacyContextSource == 1)
  {
    v6 = @"NLXLEGACYCONTEXTSOURCE_MODALITY";
  }

  if (legacyContextSource == 2)
  {
    v7 = @"NLXLEGACYCONTEXTSOURCE_POMMES";
  }

  else
  {
    v7 = v6;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"legacyContextSource"];
LABEL_11:
  if (self->_linkId)
  {
    linkId = [(NLXSchemaNLXLegacyNLContext *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_previousDomainName)
  {
    previousDomainName = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];
    v15 = [previousDomainName copy];
    [dictionary setObject:v15 forKeyedSubscript:@"previousDomainName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = equalCopy[44];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    isDictationPrompt = self->_isDictationPrompt;
    if (isDictationPrompt != [equalCopy isDictationPrompt])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[44];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    isStrictPrompt = self->_isStrictPrompt;
    if (isStrictPrompt != [equalCopy isStrictPrompt])
    {
      goto LABEL_22;
    }
  }

  previousDomainName = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];
  previousDomainName2 = [equalCopy previousDomainName];
  if ((previousDomainName != 0) == (previousDomainName2 == 0))
  {
    goto LABEL_21;
  }

  previousDomainName3 = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];
  if (previousDomainName3)
  {
    v13 = previousDomainName3;
    previousDomainName4 = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];
    previousDomainName5 = [equalCopy previousDomainName];
    v16 = [previousDomainName4 isEqual:previousDomainName5];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v17 = (*&self->_has >> 2) & 1;
  if (v17 != ((equalCopy[44] >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v17)
  {
    isListenAfterSpeaking = self->_isListenAfterSpeaking;
    if (isListenAfterSpeaking != [equalCopy isListenAfterSpeaking])
    {
      goto LABEL_22;
    }
  }

  previousDomainName = [(NLXSchemaNLXLegacyNLContext *)self linkId];
  previousDomainName2 = [equalCopy linkId];
  if ((previousDomainName != 0) == (previousDomainName2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  linkId = [(NLXSchemaNLXLegacyNLContext *)self linkId];
  if (linkId)
  {
    v20 = linkId;
    linkId2 = [(NLXSchemaNLXLegacyNLContext *)self linkId];
    linkId3 = [equalCopy linkId];
    v23 = [linkId2 isEqual:linkId3];

    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v26 = (*&self->_has >> 3) & 1;
  if (v26 == ((equalCopy[44] >> 3) & 1))
  {
    if (!v26 || (legacyContextSource = self->_legacyContextSource, legacyContextSource == [equalCopy legacyContextSource]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  previousDomainName = [(NLXSchemaNLXLegacyNLContext *)self previousDomainName];

  if (previousDomainName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  linkId = [(NLXSchemaNLXLegacyNLContext *)self linkId];

  if (linkId)
  {
    linkId2 = [(NLXSchemaNLXLegacyNLContext *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasLegacyContextSource:(BOOL)source
{
  if (source)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsListenAfterSpeaking:(BOOL)speaking
{
  if (speaking)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsStrictPrompt:(BOOL)prompt
{
  if (prompt)
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
  v9.super_class = NLXSchemaNLXLegacyNLContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaNLXLegacyNLContext *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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