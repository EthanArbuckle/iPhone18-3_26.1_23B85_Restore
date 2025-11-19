@interface CAARSchemaCAARActionFeatureSet
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARActionFeatureSet)initWithDictionary:(id)a3;
- (CAARSchemaCAARActionFeatureSet)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppNameMentioned:(BOOL)a3;
- (void)setHasDomainProtectionLevel:(BOOL)a3;
- (void)setHasEntitySaliencyMaxScore:(BOOL)a3;
- (void)setHasEntityTypeMentioned:(BOOL)a3;
- (void)setHasIsAmbiguousFirstRunPreviouslyShown:(BOOL)a3;
- (void)setHasIsAppInForeground:(BOOL)a3;
- (void)setHasIsAutoShortcutEnabled:(BOOL)a3;
- (void)setHasIsAutoshortcut:(BOOL)a3;
- (void)setHasIsAutoshortcutAppOnScreen:(BOOL)a3;
- (void)setHasIsColdOpenAllowlist:(BOOL)a3;
- (void)setHasIsDefaultLinkAction:(BOOL)a3;
- (void)setHasIsInterpretableAsUniversalCommand:(BOOL)a3;
- (void)setHasIsLinkAction:(BOOL)a3;
- (void)setHasIsLinkActionOnScreen:(BOOL)a3;
- (void)setHasIsTopRankedParse:(BOOL)a3;
- (void)setHasIsTopRankedPlugin:(BOOL)a3;
- (void)setHasIsVocabNameMatch:(BOOL)a3;
- (void)setHasNlParseProbability:(BOOL)a3;
- (void)setHasNumSalientEntities:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARActionFeatureSet

- (CAARSchemaCAARActionFeatureSet)initWithDictionary:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = CAARSchemaCAARActionFeatureSet;
  v5 = [(CAARSchemaCAARActionFeatureSet *)&v61 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CAARSchemaCAARActionFeatureSet *)v5 setActionCandidateId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isHighConfidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsHighConfidence:](v5, "setIsHighConfidence:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isAppInForeground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAppInForeground:](v5, "setIsAppInForeground:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"appNameMentioned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setAppNameMentioned:](v5, "setAppNameMentioned:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isTopRankedPlugin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsTopRankedPlugin:](v5, "setIsTopRankedPlugin:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"entityTypeMentioned"];
    objc_opt_class();
    v60 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setEntityTypeMentioned:](v5, "setEntityTypeMentioned:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"isColdOpenAllowlist"];
    objc_opt_class();
    v59 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsColdOpenAllowlist:](v5, "setIsColdOpenAllowlist:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"isLinkActionOnScreen"];
    objc_opt_class();
    v58 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsLinkActionOnScreen:](v5, "setIsLinkActionOnScreen:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"isDefaultLinkAction"];
    objc_opt_class();
    v57 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsDefaultLinkAction:](v5, "setIsDefaultLinkAction:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"isVocabNameMatch"];
    objc_opt_class();
    v56 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsVocabNameMatch:](v5, "setIsVocabNameMatch:", [v16 BOOLValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"isLinkAction"];
    objc_opt_class();
    v55 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsLinkAction:](v5, "setIsLinkAction:", [v17 BOOLValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"isAutoshortcut"];
    objc_opt_class();
    v54 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAutoshortcut:](v5, "setIsAutoshortcut:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"isAutoshortcutAppOnScreen"];
    objc_opt_class();
    v53 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAutoshortcutAppOnScreen:](v5, "setIsAutoshortcutAppOnScreen:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"entitySaliencyMaxScore"];
    objc_opt_class();
    v52 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setEntitySaliencyMaxScore:](v5, "setEntitySaliencyMaxScore:", [v20 unsignedIntValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"numSalientEntities"];
    objc_opt_class();
    v51 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setNumSalientEntities:](v5, "setNumSalientEntities:", [v21 unsignedIntValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"nlParseProbability"];
    objc_opt_class();
    v50 = v22;
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(CAARSchemaCAARActionFeatureSet *)v5 setNlParseProbability:?];
    }

    v23 = [v4 objectForKeyedSubscript:@"isTopRankedParse"];
    objc_opt_class();
    v49 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsTopRankedParse:](v5, "setIsTopRankedParse:", [v23 BOOLValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"isRepeatedFlowHandlerId"];
    objc_opt_class();
    v48 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsRepeatedFlowHandlerId:](v5, "setIsRepeatedFlowHandlerId:", [v24 BOOLValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"appHistoryFeatures"];
    objc_opt_class();
    v47 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[CAARSchemaCAARAppHistoryFeatures alloc] initWithDictionary:v25];
      [(CAARSchemaCAARActionFeatureSet *)v5 setAppHistoryFeatures:v26];
    }

    v45 = v8;
    v27 = [v4 objectForKeyedSubscript:@"appLevelDisambiguationHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[CAARSchemaCAARAppLevelDisambiguationHistory alloc] initWithDictionary:v27];
      [(CAARSchemaCAARActionFeatureSet *)v5 setAppLevelDisambiguationHistory:v28];
    }

    v41 = v27;
    v44 = v9;
    v29 = [v4 objectForKeyedSubscript:@"actionLevelDisambiguationHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[CAARSchemaCAARActionLevelDisambiguationHistory alloc] initWithDictionary:v29];
      [(CAARSchemaCAARActionFeatureSet *)v5 setActionLevelDisambiguationHistory:v30];
    }

    v43 = v10;
    v31 = [v4 objectForKeyedSubscript:@"proactiveFeatures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[CAARSchemaCAARProactiveFeatures alloc] initWithDictionary:v31];
      [(CAARSchemaCAARActionFeatureSet *)v5 setProactiveFeatures:v32];
    }

    v42 = v11;
    v33 = [v4 objectForKeyedSubscript:@"isAutoShortcutEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAutoShortcutEnabled:](v5, "setIsAutoShortcutEnabled:", [v33 BOOLValue]);
    }

    v34 = [v4 objectForKeyedSubscript:@"isAmbiguousFirstRunPreviouslyShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsAmbiguousFirstRunPreviouslyShown:](v5, "setIsAmbiguousFirstRunPreviouslyShown:", [v34 BOOLValue]);
    }

    v35 = [v4 objectForKeyedSubscript:@"actionIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(CAARSchemaCAARActionFeatureSet *)v5 setActionIdentifier:v36];
    }

    v46 = v6;
    v37 = [v4 objectForKeyedSubscript:@"isInterpretableAsUniversalCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setIsInterpretableAsUniversalCommand:](v5, "setIsInterpretableAsUniversalCommand:", [v37 BOOLValue]);
    }

    v38 = [v4 objectForKeyedSubscript:@"domainProtectionLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARActionFeatureSet setDomainProtectionLevel:](v5, "setDomainProtectionLevel:", [v38 intValue]);
    }

    v39 = v5;
  }

  return v5;
}

- (CAARSchemaCAARActionFeatureSet)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARActionFeatureSet *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARActionFeatureSet *)self dictionaryRepresentation];
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
    v4 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
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

  if (self->_actionIdentifier)
  {
    v7 = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"actionIdentifier"];
  }

  if (self->_actionLevelDisambiguationHistory)
  {
    v9 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"actionLevelDisambiguationHistory"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"actionLevelDisambiguationHistory"];
    }
  }

  if (self->_appHistoryFeatures)
  {
    v12 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"appHistoryFeatures"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"appHistoryFeatures"];
    }
  }

  if (self->_appLevelDisambiguationHistory)
  {
    v15 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"appLevelDisambiguationHistory"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"appLevelDisambiguationHistory"];
    }
  }

  p_has = &self->_has;
  if ((*&self->_has & 4) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet appNameMentioned](self, "appNameMentioned")}];
    [v3 setObject:v19 forKeyedSubscript:@"appNameMentioned"];
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

    [v3 setObject:v21 forKeyedSubscript:@"domainProtectionLevel"];
  }

  v22 = *p_has;
  if ((*p_has & 0x1000) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionFeatureSet entitySaliencyMaxScore](self, "entitySaliencyMaxScore")}];
    [v3 setObject:v23 forKeyedSubscript:@"entitySaliencyMaxScore"];

    v22 = *p_has;
  }

  if ((v22 & 0x10) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet entityTypeMentioned](self, "entityTypeMentioned")}];
    [v3 setObject:v24 forKeyedSubscript:@"entityTypeMentioned"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAmbiguousFirstRunPreviouslyShown](self, "isAmbiguousFirstRunPreviouslyShown")}];
    [v3 setObject:v25 forKeyedSubscript:@"isAmbiguousFirstRunPreviouslyShown"];
  }

  if ((*p_has & 2) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAppInForeground](self, "isAppInForeground")}];
    [v3 setObject:v26 forKeyedSubscript:@"isAppInForeground"];
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAutoShortcutEnabled](self, "isAutoShortcutEnabled")}];
    [v3 setObject:v27 forKeyedSubscript:@"isAutoShortcutEnabled"];
  }

  v28 = *p_has;
  if ((*p_has & 0x400) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isAutoshortcut](self, "isAutoshortcut")}];
    [v3 setObject:v40 forKeyedSubscript:@"isAutoshortcut"];

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
  [v3 setObject:v41 forKeyedSubscript:@"isAutoshortcutAppOnScreen"];

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
  [v3 setObject:v42 forKeyedSubscript:@"isColdOpenAllowlist"];

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
  [v3 setObject:v43 forKeyedSubscript:@"isDefaultLinkAction"];

  if (*p_has)
  {
LABEL_45:
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isHighConfidence](self, "isHighConfidence")}];
    [v3 setObject:v29 forKeyedSubscript:@"isHighConfidence"];
  }

LABEL_46:
  if ((*(&self->_has + 2) & 8) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isInterpretableAsUniversalCommand](self, "isInterpretableAsUniversalCommand")}];
    [v3 setObject:v30 forKeyedSubscript:@"isInterpretableAsUniversalCommand"];
  }

  v31 = *p_has;
  if ((*p_has & 0x200) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isLinkAction](self, "isLinkAction")}];
    [v3 setObject:v32 forKeyedSubscript:@"isLinkAction"];

    v31 = *p_has;
  }

  if ((v31 & 0x40) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isLinkActionOnScreen](self, "isLinkActionOnScreen")}];
    [v3 setObject:v33 forKeyedSubscript:@"isLinkActionOnScreen"];
  }

  if (*(&self->_has + 2))
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isRepeatedFlowHandlerId](self, "isRepeatedFlowHandlerId")}];
    [v3 setObject:v34 forKeyedSubscript:@"isRepeatedFlowHandlerId"];
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
  [v3 setObject:v47 forKeyedSubscript:@"isTopRankedParse"];

  LOWORD(v35) = *p_has;
  if ((*p_has & 8) != 0)
  {
LABEL_56:
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isTopRankedPlugin](self, "isTopRankedPlugin")}];
    [v3 setObject:v36 forKeyedSubscript:@"isTopRankedPlugin"];

    LOWORD(v35) = *p_has;
  }

LABEL_57:
  if ((v35 & 0x100) != 0)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARActionFeatureSet isVocabNameMatch](self, "isVocabNameMatch")}];
    [v3 setObject:v44 forKeyedSubscript:@"isVocabNameMatch"];

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
  [v3 setObject:v46 forKeyedSubscript:@"nlParseProbability"];

  if ((*p_has & 0x2000) != 0)
  {
LABEL_60:
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAARSchemaCAARActionFeatureSet numSalientEntities](self, "numSalientEntities")}];
    [v3 setObject:v37 forKeyedSubscript:@"numSalientEntities"];
  }

LABEL_61:
  if (self->_proactiveFeatures)
  {
    v38 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"proactiveFeatures"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"proactiveFeatures"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_105;
  }

  v5 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
  v6 = [v4 actionCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_104;
  }

  v7 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
    v10 = [v4 actionCandidateId];
    v11 = [v9 isEqual:v10];

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
  v14 = v4 + 52;
  v15 = v4[52];
  if ((*&has & 1) != (v15 & 1))
  {
    goto LABEL_105;
  }

  if (*&has)
  {
    isHighConfidence = self->_isHighConfidence;
    if (isHighConfidence != [v4 isHighConfidence])
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
    if (isAppInForeground != [v4 isAppInForeground])
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
    if (appNameMentioned != [v4 appNameMentioned])
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
    if (isTopRankedPlugin != [v4 isTopRankedPlugin])
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
    if (entityTypeMentioned != [v4 entityTypeMentioned])
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
    if (isColdOpenAllowlist != [v4 isColdOpenAllowlist])
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
    if (isLinkActionOnScreen != [v4 isLinkActionOnScreen])
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
    if (isDefaultLinkAction != [v4 isDefaultLinkAction])
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
    if (isVocabNameMatch != [v4 isVocabNameMatch])
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
    if (isLinkAction != [v4 isLinkAction])
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
    if (isAutoshortcut != [v4 isAutoshortcut])
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
    if (isAutoshortcutAppOnScreen != [v4 isAutoshortcutAppOnScreen])
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
    if (entitySaliencyMaxScore != [v4 entitySaliencyMaxScore])
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
    if (numSalientEntities != [v4 numSalientEntities])
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
    [v4 nlParseProbability];
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
    if (isTopRankedParse != [v4 isTopRankedParse])
    {
      goto LABEL_105;
    }
  }

  if ((*(&self->_has + 2) & 1) != (v4[53] & 1))
  {
    goto LABEL_105;
  }

  if (*(&self->_has + 2))
  {
    isRepeatedFlowHandlerId = self->_isRepeatedFlowHandlerId;
    if (isRepeatedFlowHandlerId != [v4 isRepeatedFlowHandlerId])
    {
      goto LABEL_105;
    }
  }

  v5 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
  v6 = [v4 appHistoryFeatures];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_104;
  }

  v48 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
  if (v48)
  {
    v49 = v48;
    v50 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
    v51 = [v4 appHistoryFeatures];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
  v6 = [v4 appLevelDisambiguationHistory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_104;
  }

  v53 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
  if (v53)
  {
    v54 = v53;
    v55 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
    v56 = [v4 appLevelDisambiguationHistory];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
  v6 = [v4 actionLevelDisambiguationHistory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_104;
  }

  v58 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
  if (v58)
  {
    v59 = v58;
    v60 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
    v61 = [v4 actionLevelDisambiguationHistory];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_105;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
  v6 = [v4 proactiveFeatures];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_104;
  }

  v63 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
  if (v63)
  {
    v64 = v63;
    v65 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
    v66 = [v4 proactiveFeatures];
    v67 = [v65 isEqual:v66];

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
  v70 = *(v4 + 106);
  if (v69 != ((v70 >> 1) & 1))
  {
    goto LABEL_105;
  }

  if (v69)
  {
    isAutoShortcutEnabled = self->_isAutoShortcutEnabled;
    if (isAutoShortcutEnabled != [v4 isAutoShortcutEnabled])
    {
      goto LABEL_105;
    }

    v68 = *(&self->_has + 2);
    v70 = *(v4 + 106);
  }

  v72 = (v68 >> 2) & 1;
  if (v72 != ((v70 >> 2) & 1))
  {
    goto LABEL_105;
  }

  if (v72)
  {
    isAmbiguousFirstRunPreviouslyShown = self->_isAmbiguousFirstRunPreviouslyShown;
    if (isAmbiguousFirstRunPreviouslyShown != [v4 isAmbiguousFirstRunPreviouslyShown])
    {
      goto LABEL_105;
    }
  }

  v5 = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];
  v6 = [v4 actionIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_104:

    goto LABEL_105;
  }

  v74 = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];
  if (v74)
  {
    v75 = v74;
    v76 = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];
    v77 = [v4 actionIdentifier];
    v78 = [v76 isEqual:v77];

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
  v83 = *(v4 + 106);
  if (v82 == ((v83 >> 3) & 1))
  {
    if (v82)
    {
      isInterpretableAsUniversalCommand = self->_isInterpretableAsUniversalCommand;
      if (isInterpretableAsUniversalCommand != [v4 isInterpretableAsUniversalCommand])
      {
        goto LABEL_105;
      }

      v81 = *(&self->_has + 2);
      v83 = *(v4 + 106);
    }

    v85 = (v81 >> 4) & 1;
    if (v85 == ((v83 >> 4) & 1))
    {
      if (!v85 || (domainProtectionLevel = self->_domainProtectionLevel, domainProtectionLevel == [v4 domainProtectionLevel]))
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

- (void)writeTo:(id)a3
{
  v20 = a3;
  v4 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];

  if (v4)
  {
    v5 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
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

  v8 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];

  if (v8)
  {
    v9 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];

  if (v10)
  {
    v11 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];

  if (v12)
  {
    v13 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];

  if (v14)
  {
    v15 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
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

  v17 = [(CAARSchemaCAARActionFeatureSet *)self actionIdentifier];

  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = *(&self->_has + 2);
  v19 = v20;
  if ((v18 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v19 = v20;
    v18 = *(&self->_has + 2);
  }

  if ((v18 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v19 = v20;
  }
}

- (void)setHasDomainProtectionLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEF | v3;
}

- (void)setHasIsInterpretableAsUniversalCommand:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7 | v3;
}

- (void)setHasIsAmbiguousFirstRunPreviouslyShown:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFB | v3;
}

- (void)setHasIsAutoShortcutEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFD | v3;
}

- (void)setHasIsTopRankedParse:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasNlParseProbability:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasNumSalientEntities:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasEntitySaliencyMaxScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasIsAutoshortcutAppOnScreen:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIsAutoshortcut:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsLinkAction:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsVocabNameMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsDefaultLinkAction:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsLinkActionOnScreen:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsColdOpenAllowlist:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasEntityTypeMentioned:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsTopRankedPlugin:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAppNameMentioned:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsAppInForeground:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CAARSchemaCAARActionFeatureSet;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(CAARSchemaCAARActionFeatureSet *)self actionCandidateId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteActionCandidateId];
  }

  v9 = [(CAARSchemaCAARActionFeatureSet *)self appHistoryFeatures];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteAppHistoryFeatures];
  }

  v12 = [(CAARSchemaCAARActionFeatureSet *)self appLevelDisambiguationHistory];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteAppLevelDisambiguationHistory];
  }

  v15 = [(CAARSchemaCAARActionFeatureSet *)self actionLevelDisambiguationHistory];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(CAARSchemaCAARActionFeatureSet *)self deleteActionLevelDisambiguationHistory];
  }

  v18 = [(CAARSchemaCAARActionFeatureSet *)self proactiveFeatures];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
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