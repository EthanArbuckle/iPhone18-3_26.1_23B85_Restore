@interface CNVSchemaCNVActionCandidate
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVActionCandidate)initWithDictionary:(id)a3;
- (CNVSchemaCNVActionCandidate)initWithJSON:(id)a3;
- (NSData)jsonData;
- (SISchemaUUID)parseHypothesisId;
- (SISchemaUUID)pommesId;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteParseHypothesisId;
- (void)deletePommesId;
- (void)setHasAffinityScore:(BOOL)a3;
- (void)setParseHypothesisId:(id)a3;
- (void)setPommesId:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVActionCandidate

- (CNVSchemaCNVActionCandidate)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CNVSchemaCNVActionCandidate;
  v5 = [(CNVSchemaCNVActionCandidate *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CNVSchemaCNVActionCandidate *)v5 setActionCandidateId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"plugin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVActionCandidate setPlugin:](v5, "setPlugin:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"parseHypothesisId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(CNVSchemaCNVActionCandidate *)v5 setParseHypothesisId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"pommesId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SISchemaUUID alloc] initWithDictionary:v11];
      [(CNVSchemaCNVActionCandidate *)v5 setPommesId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"affinityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVActionCandidate setAffinityScore:](v5, "setAffinityScore:", [v13 unsignedIntValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"linkMetadata"];
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

- (CNVSchemaCNVActionCandidate)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVActionCandidate *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVActionCandidate *)self dictionaryRepresentation];
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
  if (self->_actionCandidateId)
  {
    v4 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionCandidateId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionCandidateId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CNVSchemaCNVActionCandidate affinityScore](self, "affinityScore")}];
    [v3 setObject:v7 forKeyedSubscript:@"affinityScore"];
  }

  if (self->_linkMetadata)
  {
    v8 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"linkMetadata"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"linkMetadata"];
    }
  }

  if (self->_parseHypothesisId)
  {
    v11 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"parseHypothesisId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"parseHypothesisId"];
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

    [v3 setObject:v15 forKeyedSubscript:@"plugin"];
  }

  if (self->_pommesId)
  {
    v16 = [(CNVSchemaCNVActionCandidate *)self pommesId];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"pommesId"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"pommesId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  whichParseid = self->_whichParseid;
  if (whichParseid != [v4 whichParseid])
  {
    goto LABEL_29;
  }

  v6 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
  v7 = [v4 actionCandidateId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_28;
  }

  v8 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
  if (v8)
  {
    v9 = v8;
    v10 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
    v11 = [v4 actionCandidateId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[56] & 1))
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    plugin = self->_plugin;
    if (plugin != [v4 plugin])
    {
      goto LABEL_29;
    }
  }

  v6 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
  v7 = [v4 parseHypothesisId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_28;
  }

  v14 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
  if (v14)
  {
    v15 = v14;
    v16 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
    v17 = [v4 parseHypothesisId];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVActionCandidate *)self pommesId];
  v7 = [v4 pommesId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_28;
  }

  v19 = [(CNVSchemaCNVActionCandidate *)self pommesId];
  if (v19)
  {
    v20 = v19;
    v21 = [(CNVSchemaCNVActionCandidate *)self pommesId];
    v22 = [v4 pommesId];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v24 = (*&self->_has >> 1) & 1;
  if (v24 != ((v4[56] >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v24)
  {
    affinityScore = self->_affinityScore;
    if (affinityScore != [v4 affinityScore])
    {
      goto LABEL_29;
    }
  }

  v6 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
  v7 = [v4 linkMetadata];
  if ((v6 != 0) != (v7 == 0))
  {
    v26 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
    if (!v26)
    {

LABEL_32:
      v31 = 1;
      goto LABEL_30;
    }

    v27 = v26;
    v28 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
    v29 = [v4 linkMetadata];
    v30 = [v28 isEqual:v29];

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

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];

  if (v4)
  {
    v5 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];

  if (v6)
  {
    v7 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CNVSchemaCNVActionCandidate *)self pommesId];

  if (v8)
  {
    v9 = [(CNVSchemaCNVActionCandidate *)self pommesId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v10 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];

  v11 = v13;
  if (v10)
  {
    v12 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)setHasAffinityScore:(BOOL)a3
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

- (void)setPommesId:(id)a3
{
  v4 = a3;
  parseHypothesisId = self->_parseHypothesisId;
  self->_parseHypothesisId = 0;

  self->_whichParseid = 4 * (v4 != 0);
  pommesId = self->_pommesId;
  self->_pommesId = v4;
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

- (void)setParseHypothesisId:(id)a3
{
  v4 = a3;
  pommesId = self->_pommesId;
  self->_pommesId = 0;

  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichParseid = v6;
  parseHypothesisId = self->_parseHypothesisId;
  self->_parseHypothesisId = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CNVSchemaCNVActionCandidate;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(CNVSchemaCNVActionCandidate *)self actionCandidateId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CNVSchemaCNVActionCandidate *)self deleteActionCandidateId];
  }

  v9 = [(CNVSchemaCNVActionCandidate *)self parseHypothesisId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CNVSchemaCNVActionCandidate *)self deleteParseHypothesisId];
  }

  v12 = [(CNVSchemaCNVActionCandidate *)self pommesId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CNVSchemaCNVActionCandidate *)self deletePommesId];
  }

  v15 = [(CNVSchemaCNVActionCandidate *)self linkMetadata];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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