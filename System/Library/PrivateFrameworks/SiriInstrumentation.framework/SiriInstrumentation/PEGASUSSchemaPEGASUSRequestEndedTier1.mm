@interface PEGASUSSchemaPEGASUSRequestEndedTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRequestEndedTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSRequestEndedTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSRequestEndedTier1

- (PEGASUSSchemaPEGASUSRequestEndedTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = PEGASUSSchemaPEGASUSRequestEndedTier1;
  v5 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"intentTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSIntentTier1 alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setIntentTier1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"kgQAExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSKGQAExecutionTier1 alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setKgQAExecutionTier1:v11];
    }

    v30 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"webAnswerExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 alloc] initWithDictionary:v12];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setWebAnswerExecutionTier1:v13];
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"sportsExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PEGASUSSchemaPEGASUSSportsExecutionTier1 alloc] initWithDictionary:v14];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setSportsExecutionTier1:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"mapsExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PEGASUSSchemaPEGASUSMapsExecutionTier1 alloc] initWithDictionary:v16];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setMapsExecutionTier1:v17];
    }

    v31 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"audioExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PEGASUSSchemaPEGASUSAudioExecutionTier1 alloc] initWithDictionary:v18];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setAudioExecutionTier1:v19];
    }

    v20 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"videoExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PEGASUSSchemaPEGASUSVideoExecutionTier1 alloc] initWithDictionary:v21];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setVideoExecutionTier1:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"alternateQuerySuggestionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1 alloc] initWithDictionary:v23];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setAlternateQuerySuggestionTier1:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"deviceExpertExecutionTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 alloc] initWithDictionary:v25];
      [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)v5 setDeviceExpertExecutionTier1:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSRequestEndedTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self dictionaryRepresentation];
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
  if (self->_alternateQuerySuggestionTier1)
  {
    alternateQuerySuggestionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
    dictionaryRepresentation = [alternateQuerySuggestionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alternateQuerySuggestionTier1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alternateQuerySuggestionTier1"];
    }
  }

  if (self->_audioExecutionTier1)
  {
    audioExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
    dictionaryRepresentation2 = [audioExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"audioExecutionTier1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"audioExecutionTier1"];
    }
  }

  if (self->_deviceExpertExecutionTier1)
  {
    deviceExpertExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
    dictionaryRepresentation3 = [deviceExpertExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"deviceExpertExecutionTier1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"deviceExpertExecutionTier1"];
    }
  }

  if (self->_intentTier1)
  {
    intentTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
    dictionaryRepresentation4 = [intentTier1 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"intentTier1"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"intentTier1"];
    }
  }

  if (self->_kgQAExecutionTier1)
  {
    kgQAExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
    dictionaryRepresentation5 = [kgQAExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"kgQAExecutionTier1"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"kgQAExecutionTier1"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
    dictionaryRepresentation6 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_mapsExecutionTier1)
  {
    mapsExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
    dictionaryRepresentation7 = [mapsExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"mapsExecutionTier1"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"mapsExecutionTier1"];
    }
  }

  if (self->_sportsExecutionTier1)
  {
    sportsExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
    dictionaryRepresentation8 = [sportsExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"sportsExecutionTier1"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"sportsExecutionTier1"];
    }
  }

  if (self->_videoExecutionTier1)
  {
    videoExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
    dictionaryRepresentation9 = [videoExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"videoExecutionTier1"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"videoExecutionTier1"];
    }
  }

  if (self->_webAnswerExecutionTier1)
  {
    webAnswerExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
    dictionaryRepresentation10 = [webAnswerExecutionTier1 dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"webAnswerExecutionTier1"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"webAnswerExecutionTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(PEGASUSSchemaPEGASUSIntentTier1 *)self->_intentTier1 hash]^ v3;
  v5 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self->_kgQAExecutionTier1 hash];
  v6 = v4 ^ v5 ^ [(PEGASUSSchemaPEGASUSWebAnswerExecutionTier1 *)self->_webAnswerExecutionTier1 hash];
  v7 = [(PEGASUSSchemaPEGASUSSportsExecutionTier1 *)self->_sportsExecutionTier1 hash];
  v8 = v7 ^ [(PEGASUSSchemaPEGASUSMapsExecutionTier1 *)self->_mapsExecutionTier1 hash];
  v9 = v6 ^ v8 ^ [(PEGASUSSchemaPEGASUSAudioExecutionTier1 *)self->_audioExecutionTier1 hash];
  v10 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self->_videoExecutionTier1 hash];
  v11 = v10 ^ [(PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1 *)self->_alternateQuerySuggestionTier1 hash];
  return v9 ^ v11 ^ [(PEGASUSSchemaPEGASUSDeviceExpertExecutionTier1 *)self->_deviceExpertExecutionTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  linkId3 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
  linkId2 = [equalCopy intentTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  intentTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
  if (intentTier1)
  {
    v13 = intentTier1;
    intentTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
    intentTier13 = [equalCopy intentTier1];
    v16 = [intentTier12 isEqual:intentTier13];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
  linkId2 = [equalCopy kgQAExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  kgQAExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
  if (kgQAExecutionTier1)
  {
    v18 = kgQAExecutionTier1;
    kgQAExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
    kgQAExecutionTier13 = [equalCopy kgQAExecutionTier1];
    v21 = [kgQAExecutionTier12 isEqual:kgQAExecutionTier13];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
  linkId2 = [equalCopy webAnswerExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  webAnswerExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
  if (webAnswerExecutionTier1)
  {
    v23 = webAnswerExecutionTier1;
    webAnswerExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
    webAnswerExecutionTier13 = [equalCopy webAnswerExecutionTier1];
    v26 = [webAnswerExecutionTier12 isEqual:webAnswerExecutionTier13];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
  linkId2 = [equalCopy sportsExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  sportsExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
  if (sportsExecutionTier1)
  {
    v28 = sportsExecutionTier1;
    sportsExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
    sportsExecutionTier13 = [equalCopy sportsExecutionTier1];
    v31 = [sportsExecutionTier12 isEqual:sportsExecutionTier13];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
  linkId2 = [equalCopy mapsExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  mapsExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
  if (mapsExecutionTier1)
  {
    v33 = mapsExecutionTier1;
    mapsExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
    mapsExecutionTier13 = [equalCopy mapsExecutionTier1];
    v36 = [mapsExecutionTier12 isEqual:mapsExecutionTier13];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
  linkId2 = [equalCopy audioExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  audioExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
  if (audioExecutionTier1)
  {
    v38 = audioExecutionTier1;
    audioExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
    audioExecutionTier13 = [equalCopy audioExecutionTier1];
    v41 = [audioExecutionTier12 isEqual:audioExecutionTier13];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
  linkId2 = [equalCopy videoExecutionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  videoExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
  if (videoExecutionTier1)
  {
    v43 = videoExecutionTier1;
    videoExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
    videoExecutionTier13 = [equalCopy videoExecutionTier1];
    v46 = [videoExecutionTier12 isEqual:videoExecutionTier13];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
  linkId2 = [equalCopy alternateQuerySuggestionTier1];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_51;
  }

  alternateQuerySuggestionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
  if (alternateQuerySuggestionTier1)
  {
    v48 = alternateQuerySuggestionTier1;
    alternateQuerySuggestionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
    alternateQuerySuggestionTier13 = [equalCopy alternateQuerySuggestionTier1];
    v51 = [alternateQuerySuggestionTier12 isEqual:alternateQuerySuggestionTier13];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
  linkId2 = [equalCopy deviceExpertExecutionTier1];
  if ((linkId != 0) != (linkId2 == 0))
  {
    deviceExpertExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
    if (!deviceExpertExecutionTier1)
    {

LABEL_55:
      v57 = 1;
      goto LABEL_53;
    }

    v53 = deviceExpertExecutionTier1;
    deviceExpertExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
    deviceExpertExecutionTier13 = [equalCopy deviceExpertExecutionTier1];
    v56 = [deviceExpertExecutionTier12 isEqual:deviceExpertExecutionTier13];

    if (v56)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_51:
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  intentTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];

  if (intentTier1)
  {
    intentTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
    PBDataWriterWriteSubmessage();
  }

  kgQAExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];

  if (kgQAExecutionTier1)
  {
    kgQAExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  webAnswerExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];

  if (webAnswerExecutionTier1)
  {
    webAnswerExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  sportsExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];

  if (sportsExecutionTier1)
  {
    sportsExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  mapsExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];

  if (mapsExecutionTier1)
  {
    mapsExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  audioExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];

  if (audioExecutionTier1)
  {
    audioExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  videoExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];

  if (videoExecutionTier1)
  {
    videoExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
    PBDataWriterWriteSubmessage();
  }

  alternateQuerySuggestionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];

  if (alternateQuerySuggestionTier1)
  {
    alternateQuerySuggestionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
    PBDataWriterWriteSubmessage();
  }

  deviceExpertExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];

  v23 = toCopy;
  if (deviceExpertExecutionTier1)
  {
    deviceExpertExecutionTier12 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = PEGASUSSchemaPEGASUSRequestEndedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteLinkId];
  }

  intentTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self intentTier1];
  v10 = [intentTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteIntentTier1];
  }

  kgQAExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self kgQAExecutionTier1];
  v13 = [kgQAExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteKgQAExecutionTier1];
  }

  webAnswerExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self webAnswerExecutionTier1];
  v16 = [webAnswerExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteWebAnswerExecutionTier1];
  }

  sportsExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self sportsExecutionTier1];
  v19 = [sportsExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteSportsExecutionTier1];
  }

  mapsExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self mapsExecutionTier1];
  v22 = [mapsExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteMapsExecutionTier1];
  }

  audioExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self audioExecutionTier1];
  v25 = [audioExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteAudioExecutionTier1];
  }

  videoExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self videoExecutionTier1];
  v28 = [videoExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteVideoExecutionTier1];
  }

  alternateQuerySuggestionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self alternateQuerySuggestionTier1];
  v31 = [alternateQuerySuggestionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteAlternateQuerySuggestionTier1];
  }

  deviceExpertExecutionTier1 = [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deviceExpertExecutionTier1];
  v34 = [deviceExpertExecutionTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PEGASUSSchemaPEGASUSRequestEndedTier1 *)self deleteDeviceExpertExecutionTier1];
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