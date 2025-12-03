@interface CNVSchemaCNVActionCandidate
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVActionCandidate)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVActionCandidate)initWithJSON:(id)n;
- (NSData)jsonData;
- (SISchemaUUID)parseHypothesisId;
- (SISchemaUUID)pommesId;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteParseHypothesisId;
- (void)deletePommesId;
- (void)setHasAffinityScore:(BOOL)score;
- (void)setParseHypothesisId:(id)id;
- (void)setPommesId:(id)id;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVActionCandidate

- (CNVSchemaCNVActionCandidate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CNVSchemaCNVActionCandidate;
  v5 = [(CNVSchemaCNVActionCandidate *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVActionCandidate *)v5 setActionCandidateId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"plugin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVActionCandidate setPlugin:](v5, "setPlugin:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"parseHypothesisId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(CNVSchemaCNVActionCandidate *)v5 setParseHypothesisId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"pommesId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(CNVSchemaCNVActionCandidate *)v5 setPommesId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"affinityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVActionCandidate setAffinityScore:](v5, "setAffinityScore:", [v13 unsignedIntValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"linkMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CNVSchemaCNVLinkMetadata alloc] initWithDictionary:v14];
      [(CNVSchemaCNVActionCandidate *)v5 setLinkMetadata:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (CNVSchemaCNVActionCandidate)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVActionCandidate *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVActionCandidate *)self dictionaryRepresentation];
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
  if (self->_actionCandidateId)
  {
    actionCandidateId = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
    dictionaryRepresentation = [actionCandidateId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionCandidateId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionCandidateId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CNVSchemaCNVActionCandidate affinityScore](self, "affinityScore")}];
    [dictionary setObject:v7 forKeyedSubscript:@"affinityScore"];
  }

  if (self->_linkMetadata)
  {
    linkMetadata = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
    dictionaryRepresentation2 = [linkMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"linkMetadata"];
    }
  }

  if (self->_parseHypothesisId)
  {
    parseHypothesisId = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
    dictionaryRepresentation3 = [parseHypothesisId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"parseHypothesisId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"parseHypothesisId"];
    }
  }

  if (*&self->_has)
  {
    v14 = [(CNVSchemaCNVActionCandidate *)self plugin]- 1;
    if (v14 > 0x27)
    {
      v15 = @"CNVPLUGIN_UNKNOWN";
    }

    else
    {
      v15 = off_1E78D2B38[v14];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"plugin"];
  }

  if (self->_pommesId)
  {
    pommesId = [(CNVSchemaCNVActionCandidate *)self pommesId];
    dictionaryRepresentation4 = [pommesId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"pommesId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"pommesId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_actionCandidateId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_plugin;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SISchemaUUID *)self->_parseHypothesisId hash];
  v6 = [(SISchemaUUID *)self->_pommesId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_affinityScore;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(CNVSchemaCNVLinkMetadata *)self->_linkMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  whichParseid = self->_whichParseid;
  if (whichParseid != [equalCopy whichParseid])
  {
    goto LABEL_29;
  }

  actionCandidateId = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
  actionCandidateId2 = [equalCopy actionCandidateId];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_28;
  }

  actionCandidateId3 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
  if (actionCandidateId3)
  {
    v9 = actionCandidateId3;
    actionCandidateId4 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
    actionCandidateId5 = [equalCopy actionCandidateId];
    v12 = [actionCandidateId4 isEqual:actionCandidateId5];

    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[56] & 1))
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    plugin = self->_plugin;
    if (plugin != [equalCopy plugin])
    {
      goto LABEL_29;
    }
  }

  actionCandidateId = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
  actionCandidateId2 = [equalCopy parseHypothesisId];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_28;
  }

  parseHypothesisId = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
  if (parseHypothesisId)
  {
    v15 = parseHypothesisId;
    parseHypothesisId2 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
    parseHypothesisId3 = [equalCopy parseHypothesisId];
    v18 = [parseHypothesisId2 isEqual:parseHypothesisId3];

    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  actionCandidateId = [(CNVSchemaCNVActionCandidate *)self pommesId];
  actionCandidateId2 = [equalCopy pommesId];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_28;
  }

  pommesId = [(CNVSchemaCNVActionCandidate *)self pommesId];
  if (pommesId)
  {
    v20 = pommesId;
    pommesId2 = [(CNVSchemaCNVActionCandidate *)self pommesId];
    pommesId3 = [equalCopy pommesId];
    v23 = [pommesId2 isEqual:pommesId3];

    if (!v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v24 = (*&self->_has >> 1) & 1;
  if (v24 != ((equalCopy[56] >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v24)
  {
    affinityScore = self->_affinityScore;
    if (affinityScore != [equalCopy affinityScore])
    {
      goto LABEL_29;
    }
  }

  actionCandidateId = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
  actionCandidateId2 = [equalCopy linkMetadata];
  if ((actionCandidateId != 0) != (actionCandidateId2 == 0))
  {
    linkMetadata = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
    if (!linkMetadata)
    {

LABEL_32:
      v31 = 1;
      goto LABEL_30;
    }

    v27 = linkMetadata;
    linkMetadata2 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
    linkMetadata3 = [equalCopy linkMetadata];
    v30 = [linkMetadata2 isEqual:linkMetadata3];

    if (v30)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_28:
  }

LABEL_29:
  v31 = 0;
LABEL_30:

  return v31;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  actionCandidateId = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];

  if (actionCandidateId)
  {
    actionCandidateId2 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  parseHypothesisId = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];

  if (parseHypothesisId)
  {
    parseHypothesisId2 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
    PBDataWriterWriteSubmessage();
  }

  pommesId = [(CNVSchemaCNVActionCandidate *)self pommesId];

  if (pommesId)
  {
    pommesId2 = [(CNVSchemaCNVActionCandidate *)self pommesId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  linkMetadata = [(CNVSchemaCNVActionCandidate *)self linkMetadata];

  v11 = toCopy;
  if (linkMetadata)
  {
    linkMetadata2 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setHasAffinityScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)deletePommesId
{
  if (self->_whichParseid == 4)
  {
    self->_whichParseid = 0;
    self->_pommesId = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaUUID)pommesId
{
  if (self->_whichParseid == 4)
  {
    v3 = self->_pommesId;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPommesId:(id)id
{
  idCopy = id;
  parseHypothesisId = self->_parseHypothesisId;
  self->_parseHypothesisId = 0;

  self->_whichParseid = 4 * (idCopy != 0);
  pommesId = self->_pommesId;
  self->_pommesId = idCopy;
}

- (void)deleteParseHypothesisId
{
  if (self->_whichParseid == 3)
  {
    self->_whichParseid = 0;
    self->_parseHypothesisId = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaUUID)parseHypothesisId
{
  if (self->_whichParseid == 3)
  {
    v3 = self->_parseHypothesisId;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParseHypothesisId:(id)id
{
  idCopy = id;
  pommesId = self->_pommesId;
  self->_pommesId = 0;

  v6 = 3;
  if (!idCopy)
  {
    v6 = 0;
  }

  self->_whichParseid = v6;
  parseHypothesisId = self->_parseHypothesisId;
  self->_parseHypothesisId = idCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = CNVSchemaCNVActionCandidate;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  actionCandidateId = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
  v7 = [actionCandidateId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CNVSchemaCNVActionCandidate *)self deleteActionCandidateId];
  }

  parseHypothesisId = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
  v10 = [parseHypothesisId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CNVSchemaCNVActionCandidate *)self deleteParseHypothesisId];
  }

  pommesId = [(CNVSchemaCNVActionCandidate *)self pommesId];
  v13 = [pommesId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CNVSchemaCNVActionCandidate *)self deletePommesId];
  }

  linkMetadata = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
  v16 = [linkMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CNVSchemaCNVActionCandidate *)self deleteLinkMetadata];
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