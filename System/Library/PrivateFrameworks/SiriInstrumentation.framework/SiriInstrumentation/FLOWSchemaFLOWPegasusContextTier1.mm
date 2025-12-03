@interface FLOWSchemaFLOWPegasusContextTier1
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWPegasusContextTier1)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWPegasusContextTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWPegasusContextTier1

- (FLOWSchemaFLOWPegasusContextTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = FLOWSchemaFLOWPegasusContextTier1;
  v5 = [(FLOWSchemaFLOWPegasusContextTier1 *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"intentTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSIntentTier1 alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setIntentTier1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"kgQAExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[FLOWSchemaFLOWKGQAExecutionTier1 alloc] initWithDictionary:v10];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setKgQAExecutionTier1:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"webAnswerExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[FLOWSchemaFLOWWebAnswerExecutionTier1 alloc] initWithDictionary:v12];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setWebAnswerExecutionTier1:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sportsExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[FLOWSchemaFLOWSportsExecutionTier1 alloc] initWithDictionary:v14];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setSportsExecutionTier1:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"mapsExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWMapsExecutionTier1 alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWPegasusContextTier1 *)v5 setMapsExecutionTier1:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWPegasusContextTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPegasusContextTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWPegasusContextTier1 *)self dictionaryRepresentation];
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
  if (self->_intentTier1)
  {
    intentTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
    dictionaryRepresentation = [intentTier1 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentTier1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"intentTier1"];
    }
  }

  if (self->_kgQAExecutionTier1)
  {
    kgQAExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
    dictionaryRepresentation2 = [kgQAExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"kgQAExecutionTier1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"kgQAExecutionTier1"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
    dictionaryRepresentation3 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_mapsExecutionTier1)
  {
    mapsExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
    dictionaryRepresentation4 = [mapsExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"mapsExecutionTier1"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"mapsExecutionTier1"];
    }
  }

  if (self->_sportsExecutionTier1)
  {
    sportsExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
    dictionaryRepresentation5 = [sportsExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"sportsExecutionTier1"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"sportsExecutionTier1"];
    }
  }

  if (self->_webAnswerExecutionTier1)
  {
    webAnswerExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
    dictionaryRepresentation6 = [webAnswerExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"webAnswerExecutionTier1"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"webAnswerExecutionTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(PEGASUSSchemaPEGASUSIntentTier1 *)self->_intentTier1 hash]^ v3;
  v5 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self->_kgQAExecutionTier1 hash];
  v6 = v4 ^ v5 ^ [(FLOWSchemaFLOWWebAnswerExecutionTier1 *)self->_webAnswerExecutionTier1 hash];
  v7 = [(FLOWSchemaFLOWSportsExecutionTier1 *)self->_sportsExecutionTier1 hash];
  return v6 ^ v7 ^ [(FLOWSchemaFLOWMapsExecutionTier1 *)self->_mapsExecutionTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_31;
  }

  linkId3 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
  linkId2 = [equalCopy intentTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_31;
  }

  intentTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
  if (intentTier1)
  {
    v13 = intentTier1;
    intentTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
    intentTier13 = [equalCopy intentTier1];
    v16 = [intentTier12 isEqual:intentTier13];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
  linkId2 = [equalCopy kgQAExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_31;
  }

  kgQAExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
  if (kgQAExecutionTier1)
  {
    v18 = kgQAExecutionTier1;
    kgQAExecutionTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
    kgQAExecutionTier13 = [equalCopy kgQAExecutionTier1];
    v21 = [kgQAExecutionTier12 isEqual:kgQAExecutionTier13];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
  linkId2 = [equalCopy webAnswerExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_31;
  }

  webAnswerExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
  if (webAnswerExecutionTier1)
  {
    v23 = webAnswerExecutionTier1;
    webAnswerExecutionTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
    webAnswerExecutionTier13 = [equalCopy webAnswerExecutionTier1];
    v26 = [webAnswerExecutionTier12 isEqual:webAnswerExecutionTier13];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
  linkId2 = [equalCopy sportsExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_31;
  }

  sportsExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
  if (sportsExecutionTier1)
  {
    v28 = sportsExecutionTier1;
    sportsExecutionTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
    sportsExecutionTier13 = [equalCopy sportsExecutionTier1];
    v31 = [sportsExecutionTier12 isEqual:sportsExecutionTier13];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
  linkId2 = [equalCopy mapsExecutionTier1];
  if ((linkId != 0) != (linkId2 == 0))
  {
    mapsExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
    if (!mapsExecutionTier1)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = mapsExecutionTier1;
    mapsExecutionTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
    mapsExecutionTier13 = [equalCopy mapsExecutionTier1];
    v36 = [mapsExecutionTier12 isEqual:mapsExecutionTier13];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  intentTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];

  if (intentTier1)
  {
    intentTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
    PBDataWriterWriteSubmessage();
  }

  kgQAExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];

  if (kgQAExecutionTier1)
  {
    kgQAExecutionTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  webAnswerExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];

  if (webAnswerExecutionTier1)
  {
    webAnswerExecutionTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  sportsExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];

  if (sportsExecutionTier1)
  {
    sportsExecutionTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  mapsExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];

  v15 = toCopy;
  if (mapsExecutionTier1)
  {
    mapsExecutionTier12 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
    PBDataWriterWriteSubmessage();

    v15 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWPegasusContextTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v25 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(FLOWSchemaFLOWPegasusContextTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteLinkId];
  }

  intentTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self intentTier1];
  v10 = [intentTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteIntentTier1];
  }

  kgQAExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self kgQAExecutionTier1];
  v13 = [kgQAExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteKgQAExecutionTier1];
  }

  webAnswerExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self webAnswerExecutionTier1];
  v16 = [webAnswerExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteWebAnswerExecutionTier1];
  }

  sportsExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self sportsExecutionTier1];
  v19 = [sportsExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteSportsExecutionTier1];
  }

  mapsExecutionTier1 = [(FLOWSchemaFLOWPegasusContextTier1 *)self mapsExecutionTier1];
  v22 = [mapsExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(FLOWSchemaFLOWPegasusContextTier1 *)self deleteMapsExecutionTier1];
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