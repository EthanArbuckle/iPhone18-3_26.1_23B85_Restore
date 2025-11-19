@interface INFERENCESchemaINFERENCEClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEABModelEvaluated)abModelEvaluated;
- (INFERENCESchemaINFERENCEABModelResultTriggered)abModelResultTriggered;
- (INFERENCESchemaINFERENCEAsrEuclidEmbedding)asrEuclidEmbedding;
- (INFERENCESchemaINFERENCECRRTrainingSampleCollected)crrTrainingSampleCollected;
- (INFERENCESchemaINFERENCEClientEvent)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEClientEvent)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAbModelEvaluated:(id)a3;
- (void)setAbModelResultTriggered:(id)a3;
- (void)setAsrEuclidEmbedding:(id)a3;
- (void)setCommsAppSelectionGroundTruthGenerated:(id)a3;
- (void)setContactCandidatesInfoGenerated:(id)a3;
- (void)setCrrTrainingSampleCollected:(id)a3;
- (void)setMusicAppSelectionGroundTruthGenerated:(id)a3;
- (void)setNotebookAppSelectionGroundTruthGenerated:(id)a3;
- (void)setPervasiveEntityResolutionGroundTruthGenerated:(id)a3;
- (void)setResolutionQueryInfoGenerated:(id)a3;
- (void)setResolutionRequestContext:(id)a3;
- (void)setSeasExecutionPathReported:(id)a3;
- (void)setSimpleTaskInfoGenerated:(id)a3;
- (void)setUserPromptSelectedInfoGenerated:(id)a3;
- (void)setVideoPlayOnThirdPartyAppGroundTruthGenerated:(id)a3;
- (void)setVideoSmartAppSelectionDisambiguation:(id)a3;
- (void)setWorkoutsAppSelectionGroundTruthGenerated:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEClientEvent

- (INFERENCESchemaINFERENCEClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = INFERENCESchemaINFERENCEClientEvent;
  v5 = [(INFERENCESchemaINFERENCEClientEvent *)&v55 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEClientEventMetadata alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"musicAppSelectionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated alloc] initWithDictionary:v8];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setMusicAppSelectionGroundTruthGenerated:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"videoPlayOnThirdPartyAppGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated alloc] initWithDictionary:v10];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setVideoPlayOnThirdPartyAppGroundTruthGenerated:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"videoSmartAppSelectionDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated alloc] initWithDictionary:v12];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setVideoSmartAppSelectionDisambiguation:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"resolutionRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[INFERENCESchemaINFERENCEResolutionRequestContext alloc] initWithDictionary:v14];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setResolutionRequestContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"simpleTaskInfoGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[INFERENCESchemaINFERENCESimpleTaskInfoGenerated alloc] initWithDictionary:v16];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setSimpleTaskInfoGenerated:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"resolutionQueryInfoGenerated"];
    objc_opt_class();
    v54 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[INFERENCESchemaINFERENCEResolutionQueryInfoGenerated alloc] initWithDictionary:v18];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setResolutionQueryInfoGenerated:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"userPromptSelectedInfoGenerated"];
    objc_opt_class();
    v53 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated alloc] initWithDictionary:v20];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setUserPromptSelectedInfoGenerated:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"contactCandidatesInfoGenerated"];
    objc_opt_class();
    v52 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[INFERENCESchemaINFERENCEContactCandidatesInfoGenerated alloc] initWithDictionary:v22];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setContactCandidatesInfoGenerated:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"crrTrainingSampleCollected"];
    objc_opt_class();
    v51 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[INFERENCESchemaINFERENCECRRTrainingSampleCollected alloc] initWithDictionary:v24];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setCrrTrainingSampleCollected:v25];
    }

    v49 = v8;
    v26 = [v4 objectForKeyedSubscript:@"abModelEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[INFERENCESchemaINFERENCEABModelEvaluated alloc] initWithDictionary:v26];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setAbModelEvaluated:v27];
    }

    v44 = v26;
    v48 = v10;
    v28 = [v4 objectForKeyedSubscript:@"abModelResultTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[INFERENCESchemaINFERENCEABModelResultTriggered alloc] initWithDictionary:v28];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setAbModelResultTriggered:v29];
    }

    v47 = v12;
    v30 = [v4 objectForKeyedSubscript:@"workoutsAppSelectionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated alloc] initWithDictionary:v30];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setWorkoutsAppSelectionGroundTruthGenerated:v31];
    }

    v46 = v14;
    v32 = [v4 objectForKeyedSubscript:@"notebookAppSelectionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated alloc] initWithDictionary:v32];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setNotebookAppSelectionGroundTruthGenerated:v33];
    }

    v45 = v16;
    v34 = [v4 objectForKeyedSubscript:@"commsAppSelectionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated alloc] initWithDictionary:v34];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setCommsAppSelectionGroundTruthGenerated:v35];
    }

    v50 = v6;
    v36 = [v4 objectForKeyedSubscript:@"pervasiveEntityResolutionGroundTruthGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated alloc] initWithDictionary:v36];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setPervasiveEntityResolutionGroundTruthGenerated:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"seasExecutionPathReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported alloc] initWithDictionary:v38];
      [(INFERENCESchemaINFERENCEClientEvent *)v5 setSeasExecutionPathReported:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"asrEuclidEmbedding"];
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

- (INFERENCESchemaINFERENCEClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEClientEvent *)self dictionaryRepresentation];
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
  if (self->_abModelEvaluated)
  {
    v4 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"abModelEvaluated"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"abModelEvaluated"];
    }
  }

  if (self->_abModelResultTriggered)
  {
    v7 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"abModelResultTriggered"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"abModelResultTriggered"];
    }
  }

  if (self->_asrEuclidEmbedding)
  {
    v10 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"asrEuclidEmbedding"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"asrEuclidEmbedding"];
    }
  }

  if (self->_commsAppSelectionGroundTruthGenerated)
  {
    v13 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"commsAppSelectionGroundTruthGenerated"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"commsAppSelectionGroundTruthGenerated"];
    }
  }

  if (self->_contactCandidatesInfoGenerated)
  {
    v16 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"contactCandidatesInfoGenerated"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"contactCandidatesInfoGenerated"];
    }
  }

  if (self->_crrTrainingSampleCollected)
  {
    v19 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"crrTrainingSampleCollected"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"crrTrainingSampleCollected"];
    }
  }

  if (self->_eventMetadata)
  {
    v22 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_musicAppSelectionGroundTruthGenerated)
  {
    v25 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"musicAppSelectionGroundTruthGenerated"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"musicAppSelectionGroundTruthGenerated"];
    }
  }

  if (self->_notebookAppSelectionGroundTruthGenerated)
  {
    v28 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"notebookAppSelectionGroundTruthGenerated"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"notebookAppSelectionGroundTruthGenerated"];
    }
  }

  if (self->_pervasiveEntityResolutionGroundTruthGenerated)
  {
    v31 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"pervasiveEntityResolutionGroundTruthGenerated"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"pervasiveEntityResolutionGroundTruthGenerated"];
    }
  }

  if (self->_resolutionQueryInfoGenerated)
  {
    v34 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"resolutionQueryInfoGenerated"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"resolutionQueryInfoGenerated"];
    }
  }

  if (self->_resolutionRequestContext)
  {
    v37 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"resolutionRequestContext"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"resolutionRequestContext"];
    }
  }

  if (self->_seasExecutionPathReported)
  {
    v40 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"seasExecutionPathReported"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"seasExecutionPathReported"];
    }
  }

  if (self->_simpleTaskInfoGenerated)
  {
    v43 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"simpleTaskInfoGenerated"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"simpleTaskInfoGenerated"];
    }
  }

  if (self->_userPromptSelectedInfoGenerated)
  {
    v46 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"userPromptSelectedInfoGenerated"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"userPromptSelectedInfoGenerated"];
    }
  }

  if (self->_videoPlayOnThirdPartyAppGroundTruthGenerated)
  {
    v49 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"videoPlayOnThirdPartyAppGroundTruthGenerated"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"videoPlayOnThirdPartyAppGroundTruthGenerated"];
    }
  }

  if (self->_videoSmartAppSelectionDisambiguation)
  {
    v52 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"videoSmartAppSelectionDisambiguation"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"videoSmartAppSelectionDisambiguation"];
    }
  }

  if (self->_workoutsAppSelectionGroundTruthGenerated)
  {
    v55 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"workoutsAppSelectionGroundTruthGenerated"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"workoutsAppSelectionGroundTruthGenerated"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_93;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_93;
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v8 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
  v7 = [v4 musicAppSelectionGroundTruthGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v13 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
  if (v13)
  {
    v14 = v13;
    v15 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
    v16 = [v4 musicAppSelectionGroundTruthGenerated];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
  v7 = [v4 videoPlayOnThirdPartyAppGroundTruthGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v18 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
  if (v18)
  {
    v19 = v18;
    v20 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
    v21 = [v4 videoPlayOnThirdPartyAppGroundTruthGenerated];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
  v7 = [v4 videoSmartAppSelectionDisambiguation];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v23 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
  if (v23)
  {
    v24 = v23;
    v25 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
    v26 = [v4 videoSmartAppSelectionDisambiguation];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
  v7 = [v4 resolutionRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v28 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
    v31 = [v4 resolutionRequestContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
  v7 = [v4 simpleTaskInfoGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v33 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
  if (v33)
  {
    v34 = v33;
    v35 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
    v36 = [v4 simpleTaskInfoGenerated];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
  v7 = [v4 resolutionQueryInfoGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v38 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
  if (v38)
  {
    v39 = v38;
    v40 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
    v41 = [v4 resolutionQueryInfoGenerated];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
  v7 = [v4 userPromptSelectedInfoGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v43 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
  if (v43)
  {
    v44 = v43;
    v45 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
    v46 = [v4 userPromptSelectedInfoGenerated];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
  v7 = [v4 contactCandidatesInfoGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v48 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
  if (v48)
  {
    v49 = v48;
    v50 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
    v51 = [v4 contactCandidatesInfoGenerated];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
  v7 = [v4 crrTrainingSampleCollected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v53 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
  if (v53)
  {
    v54 = v53;
    v55 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
    v56 = [v4 crrTrainingSampleCollected];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
  v7 = [v4 abModelEvaluated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v58 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
  if (v58)
  {
    v59 = v58;
    v60 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
    v61 = [v4 abModelEvaluated];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
  v7 = [v4 abModelResultTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v63 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
  if (v63)
  {
    v64 = v63;
    v65 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
    v66 = [v4 abModelResultTriggered];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
  v7 = [v4 workoutsAppSelectionGroundTruthGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v68 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
  if (v68)
  {
    v69 = v68;
    v70 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
    v71 = [v4 workoutsAppSelectionGroundTruthGenerated];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
  v7 = [v4 notebookAppSelectionGroundTruthGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v73 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
  if (v73)
  {
    v74 = v73;
    v75 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
    v76 = [v4 notebookAppSelectionGroundTruthGenerated];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
  v7 = [v4 commsAppSelectionGroundTruthGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v78 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
  if (v78)
  {
    v79 = v78;
    v80 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
    v81 = [v4 commsAppSelectionGroundTruthGenerated];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
  v7 = [v4 pervasiveEntityResolutionGroundTruthGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v83 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
  if (v83)
  {
    v84 = v83;
    v85 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
    v86 = [v4 pervasiveEntityResolutionGroundTruthGenerated];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
  v7 = [v4 seasExecutionPathReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_92;
  }

  v88 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
  if (v88)
  {
    v89 = v88;
    v90 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
    v91 = [v4 seasExecutionPathReported];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_93;
    }
  }

  else
  {
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
  v7 = [v4 asrEuclidEmbedding];
  if ((v6 != 0) != (v7 == 0))
  {
    v93 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
    if (!v93)
    {

LABEL_96:
      v98 = 1;
      goto LABEL_94;
    }

    v94 = v93;
    v95 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
    v96 = [v4 asrEuclidEmbedding];
    v97 = [v95 isEqual:v96];

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

- (void)writeTo:(id)a3
{
  v41 = a3;
  v4 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];

  if (v6)
  {
    v7 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];

  if (v8)
  {
    v9 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];

  if (v10)
  {
    v11 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];

  if (v12)
  {
    v13 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];

  if (v14)
  {
    v15 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];

  if (v16)
  {
    v17 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];

  if (v18)
  {
    v19 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];

  if (v20)
  {
    v21 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];

  if (v22)
  {
    v23 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];

  if (v24)
  {
    v25 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];

  if (v26)
  {
    v27 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];

  if (v28)
  {
    v29 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];

  if (v30)
  {
    v31 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];

  if (v32)
  {
    v33 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];

  if (v34)
  {
    v35 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];

  if (v36)
  {
    v37 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];

  v39 = v41;
  if (v38)
  {
    v40 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
    PBDataWriterWriteSubmessage();

    v39 = v41;
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

- (void)setAsrEuclidEmbedding:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  asrEuclidEmbedding = self->_asrEuclidEmbedding;
  self->_asrEuclidEmbedding = v4;
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

- (void)setSeasExecutionPathReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  seasExecutionPathReported = self->_seasExecutionPathReported;
  self->_seasExecutionPathReported = v4;
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

- (void)setPervasiveEntityResolutionGroundTruthGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  pervasiveEntityResolutionGroundTruthGenerated = self->_pervasiveEntityResolutionGroundTruthGenerated;
  self->_pervasiveEntityResolutionGroundTruthGenerated = v4;
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

- (void)setCommsAppSelectionGroundTruthGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  commsAppSelectionGroundTruthGenerated = self->_commsAppSelectionGroundTruthGenerated;
  self->_commsAppSelectionGroundTruthGenerated = v4;
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

- (void)setNotebookAppSelectionGroundTruthGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  notebookAppSelectionGroundTruthGenerated = self->_notebookAppSelectionGroundTruthGenerated;
  self->_notebookAppSelectionGroundTruthGenerated = v4;
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

- (void)setWorkoutsAppSelectionGroundTruthGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  workoutsAppSelectionGroundTruthGenerated = self->_workoutsAppSelectionGroundTruthGenerated;
  self->_workoutsAppSelectionGroundTruthGenerated = v4;
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

- (void)setAbModelResultTriggered:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  abModelResultTriggered = self->_abModelResultTriggered;
  self->_abModelResultTriggered = v4;
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

- (void)setAbModelEvaluated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  abModelEvaluated = self->_abModelEvaluated;
  self->_abModelEvaluated = v4;
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

- (void)setCrrTrainingSampleCollected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  crrTrainingSampleCollected = self->_crrTrainingSampleCollected;
  self->_crrTrainingSampleCollected = v4;
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

- (void)setContactCandidatesInfoGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  contactCandidatesInfoGenerated = self->_contactCandidatesInfoGenerated;
  self->_contactCandidatesInfoGenerated = v4;
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

- (void)setUserPromptSelectedInfoGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  userPromptSelectedInfoGenerated = self->_userPromptSelectedInfoGenerated;
  self->_userPromptSelectedInfoGenerated = v4;
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

- (void)setResolutionQueryInfoGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  resolutionQueryInfoGenerated = self->_resolutionQueryInfoGenerated;
  self->_resolutionQueryInfoGenerated = v4;
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

- (void)setSimpleTaskInfoGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  simpleTaskInfoGenerated = self->_simpleTaskInfoGenerated;
  self->_simpleTaskInfoGenerated = v4;
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

- (void)setResolutionRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  resolutionRequestContext = self->_resolutionRequestContext;
  self->_resolutionRequestContext = v4;
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

- (void)setVideoSmartAppSelectionDisambiguation:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  videoSmartAppSelectionDisambiguation = self->_videoSmartAppSelectionDisambiguation;
  self->_videoSmartAppSelectionDisambiguation = v4;
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

- (void)setVideoPlayOnThirdPartyAppGroundTruthGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  videoPlayOnThirdPartyAppGroundTruthGenerated = self->_videoPlayOnThirdPartyAppGroundTruthGenerated;
  self->_videoPlayOnThirdPartyAppGroundTruthGenerated = v4;
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

- (void)setMusicAppSelectionGroundTruthGenerated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v21 = 0;
  }

  self->_whichEvent_Type = v21;
  musicAppSelectionGroundTruthGenerated = self->_musicAppSelectionGroundTruthGenerated;
  self->_musicAppSelectionGroundTruthGenerated = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(INFERENCESchemaINFERENCEClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0x10)
  {
    return @"com.apple.aiml.siri.inference.INFERENCEClientEvent";
  }

  else
  {
    return off_1E78D87E0[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = INFERENCESchemaINFERENCEClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v61 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteEventMetadata];
  }

  v9 = [(INFERENCESchemaINFERENCEClientEvent *)self musicAppSelectionGroundTruthGenerated];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteMusicAppSelectionGroundTruthGenerated];
  }

  v12 = [(INFERENCESchemaINFERENCEClientEvent *)self videoPlayOnThirdPartyAppGroundTruthGenerated];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteVideoPlayOnThirdPartyAppGroundTruthGenerated];
  }

  v15 = [(INFERENCESchemaINFERENCEClientEvent *)self videoSmartAppSelectionDisambiguation];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteVideoSmartAppSelectionDisambiguation];
  }

  v18 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionRequestContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteResolutionRequestContext];
  }

  v21 = [(INFERENCESchemaINFERENCEClientEvent *)self simpleTaskInfoGenerated];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteSimpleTaskInfoGenerated];
  }

  v24 = [(INFERENCESchemaINFERENCEClientEvent *)self resolutionQueryInfoGenerated];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteResolutionQueryInfoGenerated];
  }

  v27 = [(INFERENCESchemaINFERENCEClientEvent *)self userPromptSelectedInfoGenerated];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteUserPromptSelectedInfoGenerated];
  }

  v30 = [(INFERENCESchemaINFERENCEClientEvent *)self contactCandidatesInfoGenerated];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteContactCandidatesInfoGenerated];
  }

  v33 = [(INFERENCESchemaINFERENCEClientEvent *)self crrTrainingSampleCollected];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteCrrTrainingSampleCollected];
  }

  v36 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelEvaluated];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteAbModelEvaluated];
  }

  v39 = [(INFERENCESchemaINFERENCEClientEvent *)self abModelResultTriggered];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteAbModelResultTriggered];
  }

  v42 = [(INFERENCESchemaINFERENCEClientEvent *)self workoutsAppSelectionGroundTruthGenerated];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteWorkoutsAppSelectionGroundTruthGenerated];
  }

  v45 = [(INFERENCESchemaINFERENCEClientEvent *)self notebookAppSelectionGroundTruthGenerated];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteNotebookAppSelectionGroundTruthGenerated];
  }

  v48 = [(INFERENCESchemaINFERENCEClientEvent *)self commsAppSelectionGroundTruthGenerated];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteCommsAppSelectionGroundTruthGenerated];
  }

  v51 = [(INFERENCESchemaINFERENCEClientEvent *)self pervasiveEntityResolutionGroundTruthGenerated];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deletePervasiveEntityResolutionGroundTruthGenerated];
  }

  v54 = [(INFERENCESchemaINFERENCEClientEvent *)self seasExecutionPathReported];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(INFERENCESchemaINFERENCEClientEvent *)self deleteSeasExecutionPathReported];
  }

  v57 = [(INFERENCESchemaINFERENCEClientEvent *)self asrEuclidEmbedding];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
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
  v2 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  v3 = [v2 inferenceId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 27;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(INFERENCESchemaINFERENCEClientEvent *)self eventMetadata];
  v3 = [v2 inferenceId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(INFERENCESchemaINFERENCEClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 0x10)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9C08[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0x10)
  {
    return 0;
  }

  else
  {
    return off_1E78E9C90[a3 - 101];
  }
}

- (int)clockIsolationLevel
{
  v2 = [(INFERENCESchemaINFERENCEClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0xE)
  {
    return 1;
  }

  else
  {
    return dword_1AA738C28[v2 - 101];
  }
}

@end