@interface INFERENCESchemaINFERENCEClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEABModelEvaluated)abModelEvaluated;
- (INFERENCESchemaINFERENCEABModelResultTriggered)abModelResultTriggered;
- (INFERENCESchemaINFERENCEAsrEuclidEmbedding)asrEuclidEmbedding;
- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)crrTrainingSampleCollected;
- (INFERENCESchemaINFERENCEClientEvent)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEClientEvent)initWithJSON:(id)n;
- (INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated)commsAppSelectionGroundTruthGenerated;
- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)contactCandidatesInfoGenerated;
- (INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated)musicAppSelectionGroundTruthGenerated;
- (INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated)notebookAppSelectionGroundTruthGenerated;
- (INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated)pervasiveEntityResolutionGroundTruthGenerated;
- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)userPromptSelectedInfoGenerated;
- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)resolutionQueryInfoGenerated;
- (INFERENCESchemaINFERENCEResolutionRequestContext)resolutionRequestContext;
- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)simpleTaskInfoGenerated;
- (INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported)seasExecutionPathReported;
- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated)videoPlayOnThirdPartyAppGroundTruthGenerated;
- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)videoSmartAppSelectionDisambiguation;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated)workoutsAppSelectionGroundTruthGenerated;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAbModelEvaluated;
- (void)deleteAbModelResultTriggered;
- (void)deleteAsrEuclidEmbedding;
- (void)deleteCommsAppSelectionGroundTruthGenerated;
- (void)deleteContactCandidatesInfoGenerated;
- (void)deleteCrrTrainingSampleCollected;
- (void)deleteMusicAppSelectionGroundTruthGenerated;
- (void)deleteNotebookAppSelectionGroundTruthGenerated;
- (void)deletePervasiveEntityResolutionGroundTruthGenerated;
- (void)deleteResolutionQueryInfoGenerated;
- (void)deleteResolutionRequestContext;
- (void)deleteSeasExecutionPathReported;
- (void)deleteSimpleTaskInfoGenerated;
- (void)deleteUserPromptSelectedInfoGenerated;
- (void)deleteVideoPlayOnThirdPartyAppGroundTruthGenerated;
- (void)deleteVideoSmartAppSelectionDisambiguation;
- (void)deleteWorkoutsAppSelectionGroundTruthGenerated;
- (void)setAbModelEvaluated:(id)evaluated;
- (void)setAbModelResultTriggered:(id)triggered;
- (void)setAsrEuclidEmbedding:(id)embedding;
- (void)setCommsAppSelectionGroundTruthGenerated:(id)generated;
- (void)setContactCandidatesInfoGenerated:(id)generated;
- (void)setCrrTrainingSampleCollected:(id)collected;
- (void)setMusicAppSelectionGroundTruthGenerated:(id)generated;
- (void)setNotebookAppSelectionGroundTruthGenerated:(id)generated;
- (void)setPervasiveEntityResolutionGroundTruthGenerated:(id)generated;
- (void)setResolutionQueryInfoGenerated:(id)generated;
- (void)setResolutionRequestContext:(id)context;
- (void)setSeasExecutionPathReported:(id)reported;
- (void)setSimpleTaskInfoGenerated:(id)generated;
- (void)setUserPromptSelectedInfoGenerated:(id)generated;
- (void)setVideoPlayOnThirdPartyAppGroundTruthGenerated:(id)generated;
- (void)setVideoSmartAppSelectionDisambiguation:(id)disambiguation;
- (void)setWorkoutsAppSelectionGroundTruthGenerated:(id)generated;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEClientEvent

- (INFERENCESchemaINFERENCEClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v55.receiver = self;
  v55.super_class = INFERENCESchemaINFERENCEClientEvent;
  v5 = [(INFERENCESchemaINFERENCEClientEvent *)&v55 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEClientEventMetadata alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"musicAppSelectionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setMusicAppSelectionGroundTruthGenerated:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"videoPlayOnThirdPartyAppGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setVideoPlayOnThirdPartyAppGroundTruthGenerated:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"videoSmartAppSelectionDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated alloc] initWithDictionary:v12];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setVideoSmartAppSelectionDisambiguation:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"resolutionRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[INFERENCESchemaINFERENCEResolutionRequestContext alloc] initWithDictionary:v14];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setResolutionRequestContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"simpleTaskInfoGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[INFERENCESchemaINFERENCESimpleTaskInfoGenerated alloc] initWithDictionary:v16];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setSimpleTaskInfoGenerated:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"resolutionQueryInfoGenerated"];
    objc_opt_class();
    v54 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[INFERENCESchemaINFERENCEResolutionQueryInfoGenerated alloc] initWithDictionary:v18];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setResolutionQueryInfoGenerated:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"userPromptSelectedInfoGenerated"];
    objc_opt_class();
    v53 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated alloc] initWithDictionary:v20];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setUserPromptSelectedInfoGenerated:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"contactCandidatesInfoGenerated"];
    objc_opt_class();
    v52 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[INFERENCESchemaINFERENCEContactCandidatesInfoGenerated alloc] initWithDictionary:v22];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setContactCandidatesInfoGenerated:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"crrTrainingSampleCollected"];
    objc_opt_class();
    v51 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[INFERENCESchemaINFERENCECRRTrainingSampleCollected alloc] initWithDictionary:v24];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setCrrTrainingSampleCollected:v25];
    }

    v49 = v8;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"abModelEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[INFERENCESchemaINFERENCEABModelEvaluated alloc] initWithDictionary:v26];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setAbModelEvaluated:v27];
    }

    v44 = v26;
    v48 = v10;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"abModelResultTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[INFERENCESchemaINFERENCEABModelResultTriggered alloc] initWithDictionary:v28];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setAbModelResultTriggered:v29];
    }

    v47 = v12;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"workoutsAppSelectionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated alloc] initWithDictionary:v30];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setWorkoutsAppSelectionGroundTruthGenerated:v31];
    }

    v46 = v14;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"notebookAppSelectionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated alloc] initWithDictionary:v32];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setNotebookAppSelectionGroundTruthGenerated:v33];
    }

    v45 = v16;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"commsAppSelectionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated alloc] initWithDictionary:v34];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setCommsAppSelectionGroundTruthGenerated:v35];
    }

    v50 = v6;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"pervasiveEntityResolutionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated alloc] initWithDictionary:v36];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setPervasiveEntityResolutionGroundTruthGenerated:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"seasExecutionPathReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported alloc] initWithDictionary:v38];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setSeasExecutionPathReported:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"asrEuclidEmbedding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[INFERENCESchemaINFERENCEAsrEuclidEmbedding alloc] initWithDictionary:v40];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setAsrEuclidEmbedding:v41];
    }

    v42 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEClientEvent *)self dictionaryRepresentation];
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
  if (self->_abModelEvaluated)
  {
    abModelEvaluated = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
    dictionaryRepresentation = [abModelEvaluated dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"abModelEvaluated"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"abModelEvaluated"];
    }
  }

  if (self->_abModelResultTriggered)
  {
    abModelResultTriggered = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
    dictionaryRepresentation2 = [abModelResultTriggered dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"abModelResultTriggered"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"abModelResultTriggered"];
    }
  }

  if (self->_asrEuclidEmbedding)
  {
    asrEuclidEmbedding = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
    dictionaryRepresentation3 = [asrEuclidEmbedding dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"asrEuclidEmbedding"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"asrEuclidEmbedding"];
    }
  }

  if (self->_commsAppSelectionGroundTruthGenerated)
  {
    commsAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
    dictionaryRepresentation4 = [commsAppSelectionGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"commsAppSelectionGroundTruthGenerated"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"commsAppSelectionGroundTruthGenerated"];
    }
  }

  if (self->_contactCandidatesInfoGenerated)
  {
    contactCandidatesInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
    dictionaryRepresentation5 = [contactCandidatesInfoGenerated dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"contactCandidatesInfoGenerated"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"contactCandidatesInfoGenerated"];
    }
  }

  if (self->_crrTrainingSampleCollected)
  {
    crrTrainingSampleCollected = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
    dictionaryRepresentation6 = [crrTrainingSampleCollected dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"crrTrainingSampleCollected"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"crrTrainingSampleCollected"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
    dictionaryRepresentation7 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_musicAppSelectionGroundTruthGenerated)
  {
    musicAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
    dictionaryRepresentation8 = [musicAppSelectionGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"musicAppSelectionGroundTruthGenerated"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"musicAppSelectionGroundTruthGenerated"];
    }
  }

  if (self->_notebookAppSelectionGroundTruthGenerated)
  {
    notebookAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
    dictionaryRepresentation9 = [notebookAppSelectionGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"notebookAppSelectionGroundTruthGenerated"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"notebookAppSelectionGroundTruthGenerated"];
    }
  }

  if (self->_pervasiveEntityResolutionGroundTruthGenerated)
  {
    pervasiveEntityResolutionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
    dictionaryRepresentation10 = [pervasiveEntityResolutionGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"pervasiveEntityResolutionGroundTruthGenerated"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"pervasiveEntityResolutionGroundTruthGenerated"];
    }
  }

  if (self->_resolutionQueryInfoGenerated)
  {
    resolutionQueryInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
    dictionaryRepresentation11 = [resolutionQueryInfoGenerated dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"resolutionQueryInfoGenerated"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"resolutionQueryInfoGenerated"];
    }
  }

  if (self->_resolutionRequestContext)
  {
    resolutionRequestContext = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
    dictionaryRepresentation12 = [resolutionRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"resolutionRequestContext"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"resolutionRequestContext"];
    }
  }

  if (self->_seasExecutionPathReported)
  {
    seasExecutionPathReported = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
    dictionaryRepresentation13 = [seasExecutionPathReported dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"seasExecutionPathReported"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"seasExecutionPathReported"];
    }
  }

  if (self->_simpleTaskInfoGenerated)
  {
    simpleTaskInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
    dictionaryRepresentation14 = [simpleTaskInfoGenerated dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"simpleTaskInfoGenerated"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"simpleTaskInfoGenerated"];
    }
  }

  if (self->_userPromptSelectedInfoGenerated)
  {
    userPromptSelectedInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
    dictionaryRepresentation15 = [userPromptSelectedInfoGenerated dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"userPromptSelectedInfoGenerated"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"userPromptSelectedInfoGenerated"];
    }
  }

  if (self->_videoPlayOnThirdPartyAppGroundTruthGenerated)
  {
    videoPlayOnThirdPartyAppGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
    dictionaryRepresentation16 = [videoPlayOnThirdPartyAppGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"videoPlayOnThirdPartyAppGroundTruthGenerated"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"videoPlayOnThirdPartyAppGroundTruthGenerated"];
    }
  }

  if (self->_videoSmartAppSelectionDisambiguation)
  {
    videoSmartAppSelectionDisambiguation = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
    dictionaryRepresentation17 = [videoSmartAppSelectionDisambiguation dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"videoSmartAppSelectionDisambiguation"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"videoSmartAppSelectionDisambiguation"];
    }
  }

  if (self->_workoutsAppSelectionGroundTruthGenerated)
  {
    workoutsAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
    dictionaryRepresentation18 = [workoutsAppSelectionGroundTruthGenerated dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"workoutsAppSelectionGroundTruthGenerated"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"workoutsAppSelectionGroundTruthGenerated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCEClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated *)self->_musicAppSelectionGroundTruthGenerated hash]^ v3;
  v5 = [(INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated *)self->_videoPlayOnThirdPartyAppGroundTruthGenerated hash];
  v6 = v4 ^ v5 ^ [(INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated *)self->_videoSmartAppSelectionDisambiguation hash];
  v7 = [(INFERENCESchemaINFERENCEResolutionRequestContext *)self->_resolutionRequestContext hash];
  v8 = v7 ^ [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self->_simpleTaskInfoGenerated hash];
  v9 = v6 ^ v8 ^ [(INFERENCESchemaINFERENCEResolutionQueryInfoGenerated *)self->_resolutionQueryInfoGenerated hash];
  v10 = [(INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated *)self->_userPromptSelectedInfoGenerated hash];
  v11 = v10 ^ [(INFERENCESchemaINFERENCEContactCandidatesInfoGenerated *)self->_contactCandidatesInfoGenerated hash];
  v12 = v11 ^ [(INFERENCESchemaINFERENCECRRTrainingSampleCollected *)self->_crrTrainingSampleCollected hash];
  v13 = v9 ^ v12 ^ [(INFERENCESchemaINFERENCEABModelEvaluated *)self->_abModelEvaluated hash];
  v14 = [(INFERENCESchemaINFERENCEABModelResultTriggered *)self->_abModelResultTriggered hash];
  v15 = v14 ^ [(INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated *)self->_workoutsAppSelectionGroundTruthGenerated hash];
  v16 = v15 ^ [(INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated *)self->_notebookAppSelectionGroundTruthGenerated hash];
  v17 = v16 ^ [(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated *)self->_commsAppSelectionGroundTruthGenerated hash];
  v18 = v13 ^ v17 ^ [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self->_pervasiveEntityResolutionGroundTruthGenerated hash];
  v19 = [(INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported *)self->_seasExecutionPathReported hash];
  return v18 ^ v19 ^ [(INFERENCESchemaINFERENCEAsrEuclidEmbedding *)self->_asrEuclidEmbedding hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_93;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_93;
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  eventMetadata3 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
  eventMetadata2 = [equalCopy musicAppSelectionGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  musicAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
  if (musicAppSelectionGroundTruthGenerated)
  {
    v14 = musicAppSelectionGroundTruthGenerated;
    musicAppSelectionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
    musicAppSelectionGroundTruthGenerated3 = [equalCopy musicAppSelectionGroundTruthGenerated];
    v17 = [musicAppSelectionGroundTruthGenerated2 isEqual:musicAppSelectionGroundTruthGenerated3];

    if (!v17)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
  eventMetadata2 = [equalCopy videoPlayOnThirdPartyAppGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  videoPlayOnThirdPartyAppGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
  if (videoPlayOnThirdPartyAppGroundTruthGenerated)
  {
    v19 = videoPlayOnThirdPartyAppGroundTruthGenerated;
    videoPlayOnThirdPartyAppGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
    videoPlayOnThirdPartyAppGroundTruthGenerated3 = [equalCopy videoPlayOnThirdPartyAppGroundTruthGenerated];
    v22 = [videoPlayOnThirdPartyAppGroundTruthGenerated2 isEqual:videoPlayOnThirdPartyAppGroundTruthGenerated3];

    if (!v22)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
  eventMetadata2 = [equalCopy videoSmartAppSelectionDisambiguation];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  videoSmartAppSelectionDisambiguation = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
  if (videoSmartAppSelectionDisambiguation)
  {
    v24 = videoSmartAppSelectionDisambiguation;
    videoSmartAppSelectionDisambiguation2 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
    videoSmartAppSelectionDisambiguation3 = [equalCopy videoSmartAppSelectionDisambiguation];
    v27 = [videoSmartAppSelectionDisambiguation2 isEqual:videoSmartAppSelectionDisambiguation3];

    if (!v27)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
  eventMetadata2 = [equalCopy resolutionRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  resolutionRequestContext = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
  if (resolutionRequestContext)
  {
    v29 = resolutionRequestContext;
    resolutionRequestContext2 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
    resolutionRequestContext3 = [equalCopy resolutionRequestContext];
    v32 = [resolutionRequestContext2 isEqual:resolutionRequestContext3];

    if (!v32)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
  eventMetadata2 = [equalCopy simpleTaskInfoGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  simpleTaskInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
  if (simpleTaskInfoGenerated)
  {
    v34 = simpleTaskInfoGenerated;
    simpleTaskInfoGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
    simpleTaskInfoGenerated3 = [equalCopy simpleTaskInfoGenerated];
    v37 = [simpleTaskInfoGenerated2 isEqual:simpleTaskInfoGenerated3];

    if (!v37)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
  eventMetadata2 = [equalCopy resolutionQueryInfoGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  resolutionQueryInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
  if (resolutionQueryInfoGenerated)
  {
    v39 = resolutionQueryInfoGenerated;
    resolutionQueryInfoGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
    resolutionQueryInfoGenerated3 = [equalCopy resolutionQueryInfoGenerated];
    v42 = [resolutionQueryInfoGenerated2 isEqual:resolutionQueryInfoGenerated3];

    if (!v42)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
  eventMetadata2 = [equalCopy userPromptSelectedInfoGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  userPromptSelectedInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
  if (userPromptSelectedInfoGenerated)
  {
    v44 = userPromptSelectedInfoGenerated;
    userPromptSelectedInfoGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
    userPromptSelectedInfoGenerated3 = [equalCopy userPromptSelectedInfoGenerated];
    v47 = [userPromptSelectedInfoGenerated2 isEqual:userPromptSelectedInfoGenerated3];

    if (!v47)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
  eventMetadata2 = [equalCopy contactCandidatesInfoGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  contactCandidatesInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
  if (contactCandidatesInfoGenerated)
  {
    v49 = contactCandidatesInfoGenerated;
    contactCandidatesInfoGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
    contactCandidatesInfoGenerated3 = [equalCopy contactCandidatesInfoGenerated];
    v52 = [contactCandidatesInfoGenerated2 isEqual:contactCandidatesInfoGenerated3];

    if (!v52)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
  eventMetadata2 = [equalCopy crrTrainingSampleCollected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  crrTrainingSampleCollected = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
  if (crrTrainingSampleCollected)
  {
    v54 = crrTrainingSampleCollected;
    crrTrainingSampleCollected2 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
    crrTrainingSampleCollected3 = [equalCopy crrTrainingSampleCollected];
    v57 = [crrTrainingSampleCollected2 isEqual:crrTrainingSampleCollected3];

    if (!v57)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
  eventMetadata2 = [equalCopy abModelEvaluated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  abModelEvaluated = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
  if (abModelEvaluated)
  {
    v59 = abModelEvaluated;
    abModelEvaluated2 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
    abModelEvaluated3 = [equalCopy abModelEvaluated];
    v62 = [abModelEvaluated2 isEqual:abModelEvaluated3];

    if (!v62)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
  eventMetadata2 = [equalCopy abModelResultTriggered];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  abModelResultTriggered = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
  if (abModelResultTriggered)
  {
    v64 = abModelResultTriggered;
    abModelResultTriggered2 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
    abModelResultTriggered3 = [equalCopy abModelResultTriggered];
    v67 = [abModelResultTriggered2 isEqual:abModelResultTriggered3];

    if (!v67)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
  eventMetadata2 = [equalCopy workoutsAppSelectionGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  workoutsAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
  if (workoutsAppSelectionGroundTruthGenerated)
  {
    v69 = workoutsAppSelectionGroundTruthGenerated;
    workoutsAppSelectionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
    workoutsAppSelectionGroundTruthGenerated3 = [equalCopy workoutsAppSelectionGroundTruthGenerated];
    v72 = [workoutsAppSelectionGroundTruthGenerated2 isEqual:workoutsAppSelectionGroundTruthGenerated3];

    if (!v72)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
  eventMetadata2 = [equalCopy notebookAppSelectionGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  notebookAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
  if (notebookAppSelectionGroundTruthGenerated)
  {
    v74 = notebookAppSelectionGroundTruthGenerated;
    notebookAppSelectionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
    notebookAppSelectionGroundTruthGenerated3 = [equalCopy notebookAppSelectionGroundTruthGenerated];
    v77 = [notebookAppSelectionGroundTruthGenerated2 isEqual:notebookAppSelectionGroundTruthGenerated3];

    if (!v77)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
  eventMetadata2 = [equalCopy commsAppSelectionGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  commsAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
  if (commsAppSelectionGroundTruthGenerated)
  {
    v79 = commsAppSelectionGroundTruthGenerated;
    commsAppSelectionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
    commsAppSelectionGroundTruthGenerated3 = [equalCopy commsAppSelectionGroundTruthGenerated];
    v82 = [commsAppSelectionGroundTruthGenerated2 isEqual:commsAppSelectionGroundTruthGenerated3];

    if (!v82)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
  eventMetadata2 = [equalCopy pervasiveEntityResolutionGroundTruthGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  pervasiveEntityResolutionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
  if (pervasiveEntityResolutionGroundTruthGenerated)
  {
    v84 = pervasiveEntityResolutionGroundTruthGenerated;
    pervasiveEntityResolutionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
    pervasiveEntityResolutionGroundTruthGenerated3 = [equalCopy pervasiveEntityResolutionGroundTruthGenerated];
    v87 = [pervasiveEntityResolutionGroundTruthGenerated2 isEqual:pervasiveEntityResolutionGroundTruthGenerated3];

    if (!v87)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
  eventMetadata2 = [equalCopy seasExecutionPathReported];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_92;
  }

  seasExecutionPathReported = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
  if (seasExecutionPathReported)
  {
    v89 = seasExecutionPathReported;
    seasExecutionPathReported2 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
    seasExecutionPathReported3 = [equalCopy seasExecutionPathReported];
    v92 = [seasExecutionPathReported2 isEqual:seasExecutionPathReported3];

    if (!v92)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
  eventMetadata2 = [equalCopy asrEuclidEmbedding];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    asrEuclidEmbedding = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
    if (!asrEuclidEmbedding)
    {

LABEL_96:
      v98 = 1;
      goto LABEL_94;
    }

    v94 = asrEuclidEmbedding;
    asrEuclidEmbedding2 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
    asrEuclidEmbedding3 = [equalCopy asrEuclidEmbedding];
    v97 = [asrEuclidEmbedding2 isEqual:asrEuclidEmbedding3];

    if (v97)
    {
      goto LABEL_96;
    }
  }

  else
  {
LABEL_92:
  }

LABEL_93:
  v98 = 0;
LABEL_94:

  return v98;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  musicAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];

  if (musicAppSelectionGroundTruthGenerated)
  {
    musicAppSelectionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  videoPlayOnThirdPartyAppGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];

  if (videoPlayOnThirdPartyAppGroundTruthGenerated)
  {
    videoPlayOnThirdPartyAppGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  videoSmartAppSelectionDisambiguation = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];

  if (videoSmartAppSelectionDisambiguation)
  {
    videoSmartAppSelectionDisambiguation2 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
    PBDataWriterWriteSubmessage();
  }

  resolutionRequestContext = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];

  if (resolutionRequestContext)
  {
    resolutionRequestContext2 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
    PBDataWriterWriteSubmessage();
  }

  simpleTaskInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];

  if (simpleTaskInfoGenerated)
  {
    simpleTaskInfoGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
    PBDataWriterWriteSubmessage();
  }

  resolutionQueryInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];

  if (resolutionQueryInfoGenerated)
  {
    resolutionQueryInfoGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
    PBDataWriterWriteSubmessage();
  }

  userPromptSelectedInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];

  if (userPromptSelectedInfoGenerated)
  {
    userPromptSelectedInfoGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
    PBDataWriterWriteSubmessage();
  }

  contactCandidatesInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];

  if (contactCandidatesInfoGenerated)
  {
    contactCandidatesInfoGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
    PBDataWriterWriteSubmessage();
  }

  crrTrainingSampleCollected = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];

  if (crrTrainingSampleCollected)
  {
    crrTrainingSampleCollected2 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
    PBDataWriterWriteSubmessage();
  }

  abModelEvaluated = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];

  if (abModelEvaluated)
  {
    abModelEvaluated2 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
    PBDataWriterWriteSubmessage();
  }

  abModelResultTriggered = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];

  if (abModelResultTriggered)
  {
    abModelResultTriggered2 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
    PBDataWriterWriteSubmessage();
  }

  workoutsAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];

  if (workoutsAppSelectionGroundTruthGenerated)
  {
    workoutsAppSelectionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  notebookAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];

  if (notebookAppSelectionGroundTruthGenerated)
  {
    notebookAppSelectionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  commsAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];

  if (commsAppSelectionGroundTruthGenerated)
  {
    commsAppSelectionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  pervasiveEntityResolutionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];

  if (pervasiveEntityResolutionGroundTruthGenerated)
  {
    pervasiveEntityResolutionGroundTruthGenerated2 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  seasExecutionPathReported = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];

  if (seasExecutionPathReported)
  {
    seasExecutionPathReported2 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
    PBDataWriterWriteSubmessage();
  }

  asrEuclidEmbedding = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];

  v39 = toCopy;
  if (asrEuclidEmbedding)
  {
    asrEuclidEmbedding2 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
    PBDataWriterWriteSubmessage();

    v39 = toCopy;
  }
}

- (void)deleteAsrEuclidEmbedding
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_asrEuclidEmbedding = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEAsrEuclidEmbedding)asrEuclidEmbedding
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_asrEuclidEmbedding;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAsrEuclidEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  v21 = 117;
  if (!embeddingCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = embeddingCopy;
}

- (void)deleteSeasExecutionPathReported
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_seasExecutionPathReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported)seasExecutionPathReported
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_seasExecutionPathReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSeasExecutionPathReported:(id)reported
{
  reportedCopy = reported;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 116;
  if (!reportedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = reportedCopy;
}

- (void)deletePervasiveEntityResolutionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_pervasiveEntityResolutionGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated)pervasiveEntityResolutionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_pervasiveEntityResolutionGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPervasiveEntityResolutionGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 115;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = generatedCopy;
}

- (void)deleteCommsAppSelectionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_commsAppSelectionGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated)commsAppSelectionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_commsAppSelectionGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCommsAppSelectionGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 114;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = generatedCopy;
}

- (void)deleteNotebookAppSelectionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_notebookAppSelectionGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated)notebookAppSelectionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_notebookAppSelectionGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNotebookAppSelectionGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 113;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = generatedCopy;
}

- (void)deleteWorkoutsAppSelectionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_workoutsAppSelectionGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated)workoutsAppSelectionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_workoutsAppSelectionGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setWorkoutsAppSelectionGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 112;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = generatedCopy;
}

- (void)deleteAbModelResultTriggered
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_abModelResultTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEABModelResultTriggered)abModelResultTriggered
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_abModelResultTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAbModelResultTriggered:(id)triggered
{
  triggeredCopy = triggered;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 111;
  if (!triggeredCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = triggeredCopy;
}

- (void)deleteAbModelEvaluated
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_abModelEvaluated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEABModelEvaluated)abModelEvaluated
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_abModelEvaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAbModelEvaluated:(id)evaluated
{
  evaluatedCopy = evaluated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 110;
  if (!evaluatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = evaluatedCopy;
}

- (void)deleteCrrTrainingSampleCollected
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_crrTrainingSampleCollected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)crrTrainingSampleCollected
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_crrTrainingSampleCollected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCrrTrainingSampleCollected:(id)collected
{
  collectedCopy = collected;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 109;
  if (!collectedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = collectedCopy;
}

- (void)deleteContactCandidatesInfoGenerated
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_contactCandidatesInfoGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEContactCandidatesInfoGenerated)contactCandidatesInfoGenerated
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_contactCandidatesInfoGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContactCandidatesInfoGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 108;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = generatedCopy;
}

- (void)deleteUserPromptSelectedInfoGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_userPromptSelectedInfoGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated)userPromptSelectedInfoGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_userPromptSelectedInfoGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserPromptSelectedInfoGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 107;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = generatedCopy;
}

- (void)deleteResolutionQueryInfoGenerated
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_resolutionQueryInfoGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEResolutionQueryInfoGenerated)resolutionQueryInfoGenerated
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_resolutionQueryInfoGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResolutionQueryInfoGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 106;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = generatedCopy;
}

- (void)deleteSimpleTaskInfoGenerated
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_simpleTaskInfoGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)simpleTaskInfoGenerated
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_simpleTaskInfoGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSimpleTaskInfoGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 105;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = generatedCopy;
}

- (void)deleteResolutionRequestContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_resolutionRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEResolutionRequestContext)resolutionRequestContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_resolutionRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResolutionRequestContext:(id)context
{
  contextCopy = context;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 104;
  if (!contextCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = contextCopy;
}

- (void)deleteVideoSmartAppSelectionDisambiguation
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_videoSmartAppSelectionDisambiguation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated)videoSmartAppSelectionDisambiguation
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_videoSmartAppSelectionDisambiguation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVideoSmartAppSelectionDisambiguation:(id)disambiguation
{
  disambiguationCopy = disambiguation;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 103;
  if (!disambiguationCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = disambiguationCopy;
}

- (void)deleteVideoPlayOnThirdPartyAppGroundTruthGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated)videoPlayOnThirdPartyAppGroundTruthGenerated
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVideoPlayOnThirdPartyAppGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 102;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = generatedCopy;
}

- (void)deleteMusicAppSelectionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_musicAppSelectionGroundTruthGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated)musicAppSelectionGroundTruthGenerated
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_musicAppSelectionGroundTruthGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMusicAppSelectionGroundTruthGenerated:(id)generated
{
  generatedCopy = generated;
  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = 0;

  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = 0;

  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = 0;

  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = 0;

  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = 0;

  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = 0;

  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = 0;

  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = 0;

  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = 0;

  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = 0;

  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = 0;

  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = 0;

  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = 0;

  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = 0;

  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = 0;

  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = 0;

  v21 = 101;
  if (!generatedCopy)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = generatedCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(INFERENCESchemaINFERENCEClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x10)
  {
    return @"com.apple.aiml.siri.inference.INFERENCEClientEvent";
  }

  else
  {
    return off_1E78D87E0[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v61.receiver = self;
  v61.super_class = INFERENCESchemaINFERENCEClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v61 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteEventMetadata];
  }

  musicAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
  v10 = [musicAppSelectionGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteMusicAppSelectionGroundTruthGenerated];
  }

  videoPlayOnThirdPartyAppGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
  v13 = [videoPlayOnThirdPartyAppGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteVideoPlayOnThirdPartyAppGroundTruthGenerated];
  }

  videoSmartAppSelectionDisambiguation = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
  v16 = [videoSmartAppSelectionDisambiguation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteVideoSmartAppSelectionDisambiguation];
  }

  resolutionRequestContext = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
  v19 = [resolutionRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteResolutionRequestContext];
  }

  simpleTaskInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
  v22 = [simpleTaskInfoGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteSimpleTaskInfoGenerated];
  }

  resolutionQueryInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
  v25 = [resolutionQueryInfoGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteResolutionQueryInfoGenerated];
  }

  userPromptSelectedInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
  v28 = [userPromptSelectedInfoGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteUserPromptSelectedInfoGenerated];
  }

  contactCandidatesInfoGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
  v31 = [contactCandidatesInfoGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteContactCandidatesInfoGenerated];
  }

  crrTrainingSampleCollected = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
  v34 = [crrTrainingSampleCollected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteCrrTrainingSampleCollected];
  }

  abModelEvaluated = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
  v37 = [abModelEvaluated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteAbModelEvaluated];
  }

  abModelResultTriggered = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
  v40 = [abModelResultTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteAbModelResultTriggered];
  }

  workoutsAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
  v43 = [workoutsAppSelectionGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteWorkoutsAppSelectionGroundTruthGenerated];
  }

  notebookAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
  v46 = [notebookAppSelectionGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteNotebookAppSelectionGroundTruthGenerated];
  }

  commsAppSelectionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
  v49 = [commsAppSelectionGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteCommsAppSelectionGroundTruthGenerated];
  }

  pervasiveEntityResolutionGroundTruthGenerated = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
  v52 = [pervasiveEntityResolutionGroundTruthGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deletePervasiveEntityResolutionGroundTruthGenerated];
  }

  seasExecutionPathReported = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
  v55 = [seasExecutionPathReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteSeasExecutionPathReported];
  }

  asrEuclidEmbedding = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
  v58 = [asrEuclidEmbedding applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteAsrEuclidEmbedding];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  inferenceId = [eventMetadata inferenceId];

  if (inferenceId)
  {
    value = [inferenceId value];
    if (value)
    {
      value2 = [inferenceId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 27;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  inferenceId = [eventMetadata inferenceId];

  if (!inferenceId)
  {
    goto LABEL_5;
  }

  value = [inferenceId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [inferenceId value];
  v6 = [value2 length];

  if (v6)
  {
    value = inferenceId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(INFERENCESchemaINFERENCEClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x10)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9C08[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0x10)
  {
    return 0;
  }

  else
  {
    return off_1E78E9C90[tag - 101];
  }
}

- (int)clockIsolationLevel
{
  whichEvent_Type = [(INFERENCESchemaINFERENCEClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0xE)
  {
    return 1;
  }

  else
  {
    return dword_1AA738C28[whichEvent_Type - 101];
  }
}

@end