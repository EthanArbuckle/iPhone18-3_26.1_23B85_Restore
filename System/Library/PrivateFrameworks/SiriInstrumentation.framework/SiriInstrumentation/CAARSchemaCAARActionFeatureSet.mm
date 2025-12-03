@interface CAARSchemaCAARActionFeatureSet
- (BOOL)isEqual:(id)equal;
- (CAARSchemaCAARActionFeatureSet)initWithDictionary:(id)dictionary;
- (CAARSchemaCAARActionFeatureSet)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppNameMentioned:(BOOL)mentioned;
- (void)setHasDomainProtectionLevel:(BOOL)level;
- (void)setHasEntitySaliencyMaxScore:(BOOL)score;
- (void)setHasEntityTypeMentioned:(BOOL)mentioned;
- (void)setHasIsAmbiguousFirstRunPreviouslyShown:(BOOL)shown;
- (void)setHasIsAppInForeground:(BOOL)foreground;
- (void)setHasIsAutoShortcutEnabled:(BOOL)enabled;
- (void)setHasIsAutoshortcut:(BOOL)autoshortcut;
- (void)setHasIsAutoshortcutAppOnScreen:(BOOL)screen;
- (void)setHasIsColdOpenAllowlist:(BOOL)allowlist;
- (void)setHasIsDefaultLinkAction:(BOOL)action;
- (void)setHasIsInterpretableAsUniversalCommand:(BOOL)command;
- (void)setHasIsLinkAction:(BOOL)action;
- (void)setHasIsLinkActionOnScreen:(BOOL)screen;
- (void)setHasIsTopRankedParse:(BOOL)parse;
- (void)setHasIsTopRankedPlugin:(BOOL)plugin;
- (void)setHasIsVocabNameMatch:(BOOL)match;
- (void)setHasNlParseProbability:(BOOL)probability;
- (void)setHasNumSalientEntities:(BOOL)entities;
- (void)writeTo:(id)to;
@end

@implementation CAARSchemaCAARActionFeatureSet

- (CAARSchemaCAARActionFeatureSet)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v61.receiver = self;
  v61.super_class = CAARSchemaCAARActionFeatureSet;
  v5 = [(CAARSchemaCAARActionFeatureSet *)&v61 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAARSchemaCAARActionFeatureSet *)v5 setActionCandidateId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isHighConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsHighConfidence:](v5, "setIsHighConfidence:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isAppInForeground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAppInForeground:](v5, "setIsAppInForeground:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appNameMentioned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setAppNameMentioned:](v5, "setAppNameMentioned:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isTopRankedPlugin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsTopRankedPlugin:](v5, "setIsTopRankedPlugin:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"entityTypeMentioned"];
    objc_opt_class();
    v60 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setEntityTypeMentioned:](v5, "setEntityTypeMentioned:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isColdOpenAllowlist"];
    objc_opt_class();
    v59 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsColdOpenAllowlist:](v5, "setIsColdOpenAllowlist:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isLinkActionOnScreen"];
    objc_opt_class();
    v58 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsLinkActionOnScreen:](v5, "setIsLinkActionOnScreen:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isDefaultLinkAction"];
    objc_opt_class();
    v57 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsDefaultLinkAction:](v5, "setIsDefaultLinkAction:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isVocabNameMatch"];
    objc_opt_class();
    v56 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsVocabNameMatch:](v5, "setIsVocabNameMatch:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"isLinkAction"];
    objc_opt_class();
    v55 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsLinkAction:](v5, "setIsLinkAction:", [v17 BOOLValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"isAutoshortcut"];
    objc_opt_class();
    v54 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAutoshortcut:](v5, "setIsAutoshortcut:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"isAutoshortcutAppOnScreen"];
    objc_opt_class();
    v53 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAutoshortcutAppOnScreen:](v5, "setIsAutoshortcutAppOnScreen:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"entitySaliencyMaxScore"];
    objc_opt_class();
    v52 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setEntitySaliencyMaxScore:](v5, "setEntitySaliencyMaxScore:", [v20 unsignedIntValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"numSalientEntities"];
    objc_opt_class();
    v51 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setNumSalientEntities:](v5, "setNumSalientEntities:", [v21 unsignedIntValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"nlParseProbability"];
    objc_opt_class();
    v50 = v22;
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(CAARSchemaCAARActionFeatureSet *)v5 setNlParseProbability:?];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"isTopRankedParse"];
    objc_opt_class();
    v49 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsTopRankedParse:](v5, "setIsTopRankedParse:", [v23 BOOLValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"isRepeatedFlowHandlerId"];
    objc_opt_class();
    v48 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsRepeatedFlowHandlerId:](v5, "setIsRepeatedFlowHandlerId:", [v24 BOOLValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"appHistoryFeatures"];
    objc_opt_class();
    v47 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[CAARSchemaCAARAppHistoryFeatures alloc] initWithDictionary:v25];
      [(CAARSchemaCAARActionFeatureSet *)v5 setAppHistoryFeatures:v26];
    }

    v45 = v8;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"appLevelDisambiguationHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[CAARSchemaCAARAppLevelDisambiguationHistory alloc] initWithDictionary:v27];
      [(CAARSchemaCAARActionFeatureSet *)v5 setAppLevelDisambiguationHistory:v28];
    }

    v41 = v27;
    v44 = v9;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"actionLevelDisambiguationHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[CAARSchemaCAARActionLevelDisambiguationHistory alloc] initWithDictionary:v29];
      [(CAARSchemaCAARActionFeatureSet *)v5 setActionLevelDisambiguationHistory:v30];
    }

    v43 = v10;
    v31 = [dictionaryCopy objectForKeyedSubscript:@"proactiveFeatures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[CAARSchemaCAARProactiveFeatures alloc] initWithDictionary:v31];
      [(CAARSchemaCAARActionFeatureSet *)v5 setProactiveFeatures:v32];
    }

    v42 = v11;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"isAutoShortcutEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAutoShortcutEnabled:](v5, "setIsAutoShortcutEnabled:", [v33 BOOLValue]);
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"isAmbiguousFirstRunPreviouslyShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAmbiguousFirstRunPreviouslyShown:](v5, "setIsAmbiguousFirstRunPreviouslyShown:", [v34 BOOLValue]);
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"actionIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(CAARSchemaCAARActionFeatureSet *)v5 setActionIdentifier:v36];
    }

    v46 = v6;
    v37 = [dictionaryCopy objectForKeyedSubscript:@"isInterpretableAsUniversalCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsInterpretableAsUniversalCommand:](v5, "setIsInterpretableAsUniversalCommand:", [v37 BOOLValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"domainProtectionLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setDomainProtectionLevel:](v5, "setDomainProtectionLevel:", [v38 intValue]);
    }

    v39 = v5;
  }

  return v5;
}

- (CAARSchemaCAARActionFeatureSet)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAARSchemaCAARActionFeatureSet *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAARSchemaCAARActionFeatureSet *)self dictionaryRepresentation];
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
    actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
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

  if (self->_actionIdentifier)
  {
    actionIdentifier = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];
    v8 = [actionIdentifier copy];
    [dictionary setObject:v8 forKeyedSubscript:@"actionIdentifier"];
  }

  if (self->_actionLevelDisambiguationHistory)
  {
    actionLevelDisambiguationHistory = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
    dictionaryRepresentation2 = [actionLevelDisambiguationHistory dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"actionLevelDisambiguationHistory"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"actionLevelDisambiguationHistory"];
    }
  }

  if (self->_appHistoryFeatures)
  {
    appHistoryFeatures = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
    dictionaryRepresentation3 = [appHistoryFeatures dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"appHistoryFeatures"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"appHistoryFeatures"];
    }
  }

  if (self->_appLevelDisambiguationHistory)
  {
    appLevelDisambiguationHistory = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
    dictionaryRepresentation4 = [appLevelDisambiguationHistory dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"appLevelDisambiguationHistory"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"appLevelDisambiguationHistory"];
    }
  }

  p_has = &self->_has;
  if ((*&self->_has & 4) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet appNameMentioned](self, "appNameMentioned")}];
    [dictionary setObject:v19 forKeyedSubscript:@"appNameMentioned"];
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v20 = [(CAARSchemaCAARActionFeatureSet *)self domainProtectionLevel]- 1;
    if (v20 > 2)
    {
      v21 = @"CAARDOMAINPROTECTIONLEVEL_UNKNOWN";
    }

    else
    {
      v21 = off_1E78D2288[v20];
    }

    [dictionary setObject:v21 forKeyedSubscript:@"domainProtectionLevel"];
  }

  v22 = *p_has;
  if ((*p_has & 0x1000) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionFeatureSet entitySaliencyMaxScore](self, "entitySaliencyMaxScore")}];
    [dictionary setObject:v23 forKeyedSubscript:@"entitySaliencyMaxScore"];

    v22 = *p_has;
  }

  if ((v22 & 0x10) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet entityTypeMentioned](self, "entityTypeMentioned")}];
    [dictionary setObject:v24 forKeyedSubscript:@"entityTypeMentioned"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAmbiguousFirstRunPreviouslyShown](self, "isAmbiguousFirstRunPreviouslyShown")}];
    [dictionary setObject:v25 forKeyedSubscript:@"isAmbiguousFirstRunPreviouslyShown"];
  }

  if ((*p_has & 2) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAppInForeground](self, "isAppInForeground")}];
    [dictionary setObject:v26 forKeyedSubscript:@"isAppInForeground"];
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAutoShortcutEnabled](self, "isAutoShortcutEnabled")}];
    [dictionary setObject:v27 forKeyedSubscript:@"isAutoShortcutEnabled"];
  }

  v28 = *p_has;
  if ((*p_has & 0x400) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAutoshortcut](self, "isAutoshortcut")}];
    [dictionary setObject:v40 forKeyedSubscript:@"isAutoshortcut"];

    v28 = *p_has;
    if ((*p_has & 0x800) == 0)
    {
LABEL_42:
      if ((v28 & 0x20) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_66;
    }
  }

  else if ((*p_has & 0x800) == 0)
  {
    goto LABEL_42;
  }

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAutoshortcutAppOnScreen](self, "isAutoshortcutAppOnScreen")}];
  [dictionary setObject:v41 forKeyedSubscript:@"isAutoshortcutAppOnScreen"];

  v28 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_43:
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_67;
  }

LABEL_66:
  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isColdOpenAllowlist](self, "isColdOpenAllowlist")}];
  [dictionary setObject:v42 forKeyedSubscript:@"isColdOpenAllowlist"];

  v28 = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_44:
    if ((v28 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_67:
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isDefaultLinkAction](self, "isDefaultLinkAction")}];
  [dictionary setObject:v43 forKeyedSubscript:@"isDefaultLinkAction"];

  if (*p_has)
  {
LABEL_45:
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isHighConfidence](self, "isHighConfidence")}];
    [dictionary setObject:v29 forKeyedSubscript:@"isHighConfidence"];
  }

LABEL_46:
  if ((*(&self->_has + 2) & 8) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isInterpretableAsUniversalCommand](self, "isInterpretableAsUniversalCommand")}];
    [dictionary setObject:v30 forKeyedSubscript:@"isInterpretableAsUniversalCommand"];
  }

  v31 = *p_has;
  if ((*p_has & 0x200) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isLinkAction](self, "isLinkAction")}];
    [dictionary setObject:v32 forKeyedSubscript:@"isLinkAction"];

    v31 = *p_has;
  }

  if ((v31 & 0x40) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isLinkActionOnScreen](self, "isLinkActionOnScreen")}];
    [dictionary setObject:v33 forKeyedSubscript:@"isLinkActionOnScreen"];
  }

  if (*(&self->_has + 2))
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isRepeatedFlowHandlerId](self, "isRepeatedFlowHandlerId")}];
    [dictionary setObject:v34 forKeyedSubscript:@"isRepeatedFlowHandlerId"];
  }

  v35 = *p_has;
  if ((v35 & 0x80000000) == 0)
  {
    if ((v35 & 8) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isTopRankedParse](self, "isTopRankedParse")}];
  [dictionary setObject:v47 forKeyedSubscript:@"isTopRankedParse"];

  LOWORD(v35) = *p_has;
  if ((*p_has & 8) != 0)
  {
LABEL_56:
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isTopRankedPlugin](self, "isTopRankedPlugin")}];
    [dictionary setObject:v36 forKeyedSubscript:@"isTopRankedPlugin"];

    LOWORD(v35) = *p_has;
  }

LABEL_57:
  if ((v35 & 0x100) != 0)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isVocabNameMatch](self, "isVocabNameMatch")}];
    [dictionary setObject:v44 forKeyedSubscript:@"isVocabNameMatch"];

    LOWORD(v35) = *p_has;
    if ((*p_has & 0x4000) == 0)
    {
LABEL_59:
      if ((v35 & 0x2000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((v35 & 0x4000) == 0)
  {
    goto LABEL_59;
  }

  v45 = MEMORY[0x1E696AD98];
  [(CAARSchemaCAARActionFeatureSet *)self nlParseProbability];
  v46 = [v45 numberWithFloat:?];
  [dictionary setObject:v46 forKeyedSubscript:@"nlParseProbability"];

  if ((*p_has & 0x2000) != 0)
  {
LABEL_60:
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionFeatureSet numSalientEntities](self, "numSalientEntities")}];
    [dictionary setObject:v37 forKeyedSubscript:@"numSalientEntities"];
  }

LABEL_61:
  if (self->_proactiveFeatures)
  {
    proactiveFeatures = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
    dictionaryRepresentation5 = [proactiveFeatures dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"proactiveFeatures"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"proactiveFeatures"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v37 = [(SISchemaUUID *)self->_actionCandidateId hash];
  has = self->_has;
  if (has)
  {
    v36 = 2654435761 * self->_isHighConfidence;
    if ((has & 2) != 0)
    {
LABEL_3:
      v35 = 2654435761 * self->_isAppInForeground;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v36 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v35 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v34 = 2654435761 * self->_appNameMentioned;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v34 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v33 = 2654435761 * self->_isTopRankedPlugin;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v33 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v32 = 2654435761 * self->_entityTypeMentioned;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v32 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v31 = 2654435761 * self->_isColdOpenAllowlist;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v31 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v30 = 2654435761 * self->_isLinkActionOnScreen;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v30 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v29 = 2654435761 * self->_isDefaultLinkAction;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v29 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v28 = 2654435761 * self->_isVocabNameMatch;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v28 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v27 = 2654435761 * self->_isLinkAction;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v27 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v26 = 2654435761 * self->_isAutoshortcut;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v26 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_13:
    v25 = 2654435761 * self->_isAutoshortcutAppOnScreen;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v25 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    v24 = 2654435761 * self->_entitySaliencyMaxScore;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    v23 = 2654435761 * self->_numSalientEntities;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

LABEL_35:
    v10 = 0;
    goto LABEL_36;
  }

LABEL_34:
  v23 = 0;
  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_35;
  }

LABEL_16:
  nlParseProbability = self->_nlParseProbability;
  if (nlParseProbability >= 0.0)
  {
    v7 = nlParseProbability;
  }

  else
  {
    v7 = -nlParseProbability;
  }

  *v3.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v4, v3).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_36:
  if ((*&self->_has & 0x8000) != 0)
  {
    v22 = 2654435761 * self->_isTopRankedParse;
  }

  else
  {
    v22 = 0;
  }

  if (*(&self->_has + 2))
  {
    v21 = 2654435761 * self->_isRepeatedFlowHandlerId;
  }

  else
  {
    v21 = 0;
  }

  v11 = [(CAARSchemaCAARAppHistoryFeatures *)self->_appHistoryFeatures hash];
  v12 = [(CAARSchemaCAARAppLevelDisambiguationHistory *)self->_appLevelDisambiguationHistory hash];
  v13 = [(CAARSchemaCAARActionLevelDisambiguationHistory *)self->_actionLevelDisambiguationHistory hash];
  v14 = [(CAARSchemaCAARProactiveFeatures *)self->_proactiveFeatures hash];
  if ((*(&self->_has + 2) & 2) != 0)
  {
    v15 = 2654435761 * self->_isAutoShortcutEnabled;
    if ((*(&self->_has + 2) & 4) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v15 = 0;
    if ((*(&self->_has + 2) & 4) != 0)
    {
LABEL_44:
      v16 = 2654435761 * self->_isAmbiguousFirstRunPreviouslyShown;
      goto LABEL_47;
    }
  }

  v16 = 0;
LABEL_47:
  v17 = [(NSString *)self->_actionIdentifier hash];
  if ((*(&self->_has + 2) & 8) != 0)
  {
    v18 = 2654435761 * self->_isInterpretableAsUniversalCommand;
    if ((*(&self->_has + 2) & 0x10) != 0)
    {
      goto LABEL_49;
    }

LABEL_51:
    v19 = 0;
    return v36 ^ v37 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v10 ^ v22 ^ v21 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v18 = 0;
  if ((*(&self->_has + 2) & 0x10) == 0)
  {
    goto LABEL_51;
  }

LABEL_49:
  v19 = 2654435761 * self->_domainProtectionLevel;
  return v36 ^ v37 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v10 ^ v22 ^ v21 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_105;
  }

  actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
  actionCandidateId2 = [equalCopy actionCandidateId];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_104;
  }

  actionCandidateId3 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
  if (actionCandidateId3)
  {
    v8 = actionCandidateId3;
    actionCandidateId4 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
    actionCandidateId5 = [equalCopy actionCandidateId];
    v11 = [actionCandidateId4 isEqual:actionCandidateId5];

    if (!v11)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  p_has = &self->_has;
  has = self->_has;
  v14 = equalCopy + 52;
  v15 = equalCopy[52];
  if ((*&has & 1) != (v15 & 1))
  {
    goto LABEL_105;
  }

  if (*&has)
  {
    isHighConfidence = self->_isHighConfidence;
    if (isHighConfidence != [equalCopy isHighConfidence])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v17 = (*&has >> 1) & 1;
  if (v17 != ((v15 >> 1) & 1))
  {
    goto LABEL_105;
  }

  if (v17)
  {
    isAppInForeground = self->_isAppInForeground;
    if (isAppInForeground != [equalCopy isAppInForeground])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v19 = (*&has >> 2) & 1;
  if (v19 != ((v15 >> 2) & 1))
  {
    goto LABEL_105;
  }

  if (v19)
  {
    appNameMentioned = self->_appNameMentioned;
    if (appNameMentioned != [equalCopy appNameMentioned])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v21 = (*&has >> 3) & 1;
  if (v21 != ((v15 >> 3) & 1))
  {
    goto LABEL_105;
  }

  if (v21)
  {
    isTopRankedPlugin = self->_isTopRankedPlugin;
    if (isTopRankedPlugin != [equalCopy isTopRankedPlugin])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v23 = (*&has >> 4) & 1;
  if (v23 != ((v15 >> 4) & 1))
  {
    goto LABEL_105;
  }

  if (v23)
  {
    entityTypeMentioned = self->_entityTypeMentioned;
    if (entityTypeMentioned != [equalCopy entityTypeMentioned])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v25 = (*&has >> 5) & 1;
  if (v25 != ((v15 >> 5) & 1))
  {
    goto LABEL_105;
  }

  if (v25)
  {
    isColdOpenAllowlist = self->_isColdOpenAllowlist;
    if (isColdOpenAllowlist != [equalCopy isColdOpenAllowlist])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v27 = (*&has >> 6) & 1;
  if (v27 != ((v15 >> 6) & 1))
  {
    goto LABEL_105;
  }

  if (v27)
  {
    isLinkActionOnScreen = self->_isLinkActionOnScreen;
    if (isLinkActionOnScreen != [equalCopy isLinkActionOnScreen])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v29 = (*&has >> 7) & 1;
  if (v29 != ((v15 >> 7) & 1))
  {
    goto LABEL_105;
  }

  if (v29)
  {
    isDefaultLinkAction = self->_isDefaultLinkAction;
    if (isDefaultLinkAction != [equalCopy isDefaultLinkAction])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v31 = (*&has >> 8) & 1;
  if (v31 != ((v15 >> 8) & 1))
  {
    goto LABEL_105;
  }

  if (v31)
  {
    isVocabNameMatch = self->_isVocabNameMatch;
    if (isVocabNameMatch != [equalCopy isVocabNameMatch])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v33 = (*&has >> 9) & 1;
  if (v33 != ((v15 >> 9) & 1))
  {
    goto LABEL_105;
  }

  if (v33)
  {
    isLinkAction = self->_isLinkAction;
    if (isLinkAction != [equalCopy isLinkAction])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v35 = (*&has >> 10) & 1;
  if (v35 != ((v15 >> 10) & 1))
  {
    goto LABEL_105;
  }

  if (v35)
  {
    isAutoshortcut = self->_isAutoshortcut;
    if (isAutoshortcut != [equalCopy isAutoshortcut])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v37 = (*&has >> 11) & 1;
  if (v37 != ((v15 >> 11) & 1))
  {
    goto LABEL_105;
  }

  if (v37)
  {
    isAutoshortcutAppOnScreen = self->_isAutoshortcutAppOnScreen;
    if (isAutoshortcutAppOnScreen != [equalCopy isAutoshortcutAppOnScreen])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v39 = (*&has >> 12) & 1;
  if (v39 != ((v15 >> 12) & 1))
  {
    goto LABEL_105;
  }

  if (v39)
  {
    entitySaliencyMaxScore = self->_entitySaliencyMaxScore;
    if (entitySaliencyMaxScore != [equalCopy entitySaliencyMaxScore])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v41 = (*&has >> 13) & 1;
  if (v41 != ((v15 >> 13) & 1))
  {
    goto LABEL_105;
  }

  if (v41)
  {
    numSalientEntities = self->_numSalientEntities;
    if (numSalientEntities != [equalCopy numSalientEntities])
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  v43 = (*&has >> 14) & 1;
  if (v43 != ((v15 >> 14) & 1))
  {
    goto LABEL_105;
  }

  if (v43)
  {
    nlParseProbability = self->_nlParseProbability;
    [equalCopy nlParseProbability];
    if (nlParseProbability != v45)
    {
      goto LABEL_105;
    }

    has = *p_has;
    v15 = *v14;
  }

  if (((v15 ^ *&has) & 0x8000) != 0)
  {
    goto LABEL_105;
  }

  if ((*&has & 0x8000) != 0)
  {
    isTopRankedParse = self->_isTopRankedParse;
    if (isTopRankedParse != [equalCopy isTopRankedParse])
    {
      goto LABEL_105;
    }
  }

  if ((*(&self->_has + 2) & 1) != (equalCopy[53] & 1))
  {
    goto LABEL_105;
  }

  if (*(&self->_has + 2))
  {
    isRepeatedFlowHandlerId = self->_isRepeatedFlowHandlerId;
    if (isRepeatedFlowHandlerId != [equalCopy isRepeatedFlowHandlerId])
    {
      goto LABEL_105;
    }
  }

  actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
  actionCandidateId2 = [equalCopy appHistoryFeatures];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_104;
  }

  appHistoryFeatures = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
  if (appHistoryFeatures)
  {
    v49 = appHistoryFeatures;
    appHistoryFeatures2 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
    appHistoryFeatures3 = [equalCopy appHistoryFeatures];
    v52 = [appHistoryFeatures2 isEqual:appHistoryFeatures3];

    if (!v52)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
  actionCandidateId2 = [equalCopy appLevelDisambiguationHistory];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_104;
  }

  appLevelDisambiguationHistory = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
  if (appLevelDisambiguationHistory)
  {
    v54 = appLevelDisambiguationHistory;
    appLevelDisambiguationHistory2 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
    appLevelDisambiguationHistory3 = [equalCopy appLevelDisambiguationHistory];
    v57 = [appLevelDisambiguationHistory2 isEqual:appLevelDisambiguationHistory3];

    if (!v57)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
  actionCandidateId2 = [equalCopy actionLevelDisambiguationHistory];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_104;
  }

  actionLevelDisambiguationHistory = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
  if (actionLevelDisambiguationHistory)
  {
    v59 = actionLevelDisambiguationHistory;
    actionLevelDisambiguationHistory2 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
    actionLevelDisambiguationHistory3 = [equalCopy actionLevelDisambiguationHistory];
    v62 = [actionLevelDisambiguationHistory2 isEqual:actionLevelDisambiguationHistory3];

    if (!v62)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
  actionCandidateId2 = [equalCopy proactiveFeatures];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
    goto LABEL_104;
  }

  proactiveFeatures = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
  if (proactiveFeatures)
  {
    v64 = proactiveFeatures;
    proactiveFeatures2 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
    proactiveFeatures3 = [equalCopy proactiveFeatures];
    v67 = [proactiveFeatures2 isEqual:proactiveFeatures3];

    if (!v67)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  v68 = *(&self->_has + 2);
  v69 = (v68 >> 1) & 1;
  v70 = *(equalCopy + 106);
  if (v69 != ((v70 >> 1) & 1))
  {
    goto LABEL_105;
  }

  if (v69)
  {
    isAutoShortcutEnabled = self->_isAutoShortcutEnabled;
    if (isAutoShortcutEnabled != [equalCopy isAutoShortcutEnabled])
    {
      goto LABEL_105;
    }

    v68 = *(&self->_has + 2);
    v70 = *(equalCopy + 106);
  }

  v72 = (v68 >> 2) & 1;
  if (v72 != ((v70 >> 2) & 1))
  {
    goto LABEL_105;
  }

  if (v72)
  {
    isAmbiguousFirstRunPreviouslyShown = self->_isAmbiguousFirstRunPreviouslyShown;
    if (isAmbiguousFirstRunPreviouslyShown != [equalCopy isAmbiguousFirstRunPreviouslyShown])
    {
      goto LABEL_105;
    }
  }

  actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];
  actionCandidateId2 = [equalCopy actionIdentifier];
  if ((actionCandidateId != 0) == (actionCandidateId2 == 0))
  {
LABEL_104:

    goto LABEL_105;
  }

  actionIdentifier = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];
  if (actionIdentifier)
  {
    v75 = actionIdentifier;
    actionIdentifier2 = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];
    actionIdentifier3 = [equalCopy actionIdentifier];
    v78 = [actionIdentifier2 isEqual:actionIdentifier3];

    if (!v78)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  v81 = *(&self->_has + 2);
  v82 = (v81 >> 3) & 1;
  v83 = *(equalCopy + 106);
  if (v82 == ((v83 >> 3) & 1))
  {
    if (v82)
    {
      isInterpretableAsUniversalCommand = self->_isInterpretableAsUniversalCommand;
      if (isInterpretableAsUniversalCommand != [equalCopy isInterpretableAsUniversalCommand])
      {
        goto LABEL_105;
      }

      v81 = *(&self->_has + 2);
      v83 = *(equalCopy + 106);
    }

    v85 = (v81 >> 4) & 1;
    if (v85 == ((v83 >> 4) & 1))
    {
      if (!v85 || (domainProtectionLevel = self->_domainProtectionLevel, domainProtectionLevel == [equalCopy domainProtectionLevel]))
      {
        v79 = 1;
        goto LABEL_106;
      }
    }
  }

LABEL_105:
  v79 = 0;
LABEL_106:

  return v79;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];

  if (actionCandidateId)
  {
    actionCandidateId2 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
    PBDataWriterWriteSubmessage();
  }

  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_15:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_16:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_17:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

LABEL_56:
    PBDataWriterWriteFloatField();
    if ((*p_has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_55:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    goto LABEL_56;
  }

LABEL_18:
  if ((has & 0x8000) == 0)
  {
    goto LABEL_19;
  }

LABEL_57:
  PBDataWriterWriteBOOLField();
LABEL_19:
  if (*(&self->_has + 2))
  {
    PBDataWriterWriteBOOLField();
  }

  appHistoryFeatures = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];

  if (appHistoryFeatures)
  {
    appHistoryFeatures2 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
    PBDataWriterWriteSubmessage();
  }

  appLevelDisambiguationHistory = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];

  if (appLevelDisambiguationHistory)
  {
    appLevelDisambiguationHistory2 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
    PBDataWriterWriteSubmessage();
  }

  actionLevelDisambiguationHistory = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];

  if (actionLevelDisambiguationHistory)
  {
    actionLevelDisambiguationHistory2 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
    PBDataWriterWriteSubmessage();
  }

  proactiveFeatures = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];

  if (proactiveFeatures)
  {
    proactiveFeatures2 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
    PBDataWriterWriteSubmessage();
  }

  v16 = *(&self->_has + 2);
  if ((v16 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v16 = *(&self->_has + 2);
  }

  if ((v16 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  actionIdentifier = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];

  if (actionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v18 = *(&self->_has + 2);
  v19 = toCopy;
  if ((v18 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v19 = toCopy;
    v18 = *(&self->_has + 2);
  }

  if ((v18 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v19 = toCopy;
  }
}

- (void)setHasDomainProtectionLevel:(BOOL)level
{
  if (level)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEF | v3;
}

- (void)setHasIsInterpretableAsUniversalCommand:(BOOL)command
{
  if (command)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7 | v3;
}

- (void)setHasIsAmbiguousFirstRunPreviouslyShown:(BOOL)shown
{
  if (shown)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFB | v3;
}

- (void)setHasIsAutoShortcutEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFD | v3;
}

- (void)setHasIsTopRankedParse:(BOOL)parse
{
  if (parse)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasNlParseProbability:(BOOL)probability
{
  if (probability)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasNumSalientEntities:(BOOL)entities
{
  if (entities)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasEntitySaliencyMaxScore:(BOOL)score
{
  if (score)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasIsAutoshortcutAppOnScreen:(BOOL)screen
{
  if (screen)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIsAutoshortcut:(BOOL)autoshortcut
{
  if (autoshortcut)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsLinkAction:(BOOL)action
{
  if (action)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsVocabNameMatch:(BOOL)match
{
  if (match)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsDefaultLinkAction:(BOOL)action
{
  if (action)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsLinkActionOnScreen:(BOOL)screen
{
  if (screen)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsColdOpenAllowlist:(BOOL)allowlist
{
  if (allowlist)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasEntityTypeMentioned:(BOOL)mentioned
{
  if (mentioned)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsTopRankedPlugin:(BOOL)plugin
{
  if (plugin)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAppNameMentioned:(BOOL)mentioned
{
  if (mentioned)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsAppInForeground:(BOOL)foreground
{
  if (foreground)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = CAARSchemaCAARActionFeatureSet;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  actionCandidateId = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
  v7 = [actionCandidateId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteActionCandidateId];
  }

  appHistoryFeatures = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
  v10 = [appHistoryFeatures applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteAppHistoryFeatures];
  }

  appLevelDisambiguationHistory = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
  v13 = [appLevelDisambiguationHistory applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteAppLevelDisambiguationHistory];
  }

  actionLevelDisambiguationHistory = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
  v16 = [actionLevelDisambiguationHistory applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteActionLevelDisambiguationHistory];
  }

  proactiveFeatures = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
  v19 = [proactiveFeatures applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteProactiveFeatures];
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