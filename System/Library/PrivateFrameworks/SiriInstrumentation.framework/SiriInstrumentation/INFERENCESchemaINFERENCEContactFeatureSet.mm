@interface INFERENCESchemaINFERENCEContactFeatureSet
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEContactFeatureSet)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEContactFeatureSet)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAllHandlesMatched:(BOOL)matched;
- (void)setHasAllPrimaryNameTokensAreInQuery:(BOOL)query;
- (void)setHasAllQueryMatched:(BOOL)matched;
- (void)setHasFreqAnyGroup0MinTo2Min:(BOOL)min;
- (void)setHasFreqAnyGroup10MinTo1Hr:(BOOL)hr;
- (void)setHasFreqAnyGroup1DayTo7Day:(BOOL)day;
- (void)setHasFreqAnyGroup1HrTo6Hr:(BOOL)hr;
- (void)setHasFreqAnyGroup28DayToInf:(BOOL)inf;
- (void)setHasFreqAnyGroup2MinTo10Min:(BOOL)min;
- (void)setHasFreqAnyGroup6HrTo1Day:(BOOL)day;
- (void)setHasFreqAnyGroup7DayTo28Day:(BOOL)day;
- (void)setHasFreqSameGroup0MinTo2Min:(BOOL)min;
- (void)setHasFreqSameGroup10MinTo1Hr:(BOOL)hr;
- (void)setHasFreqSameGroup1DayTo7Day:(BOOL)day;
- (void)setHasFreqSameGroup1HrTo6Hr:(BOOL)hr;
- (void)setHasFreqSameGroup28DayToInf:(BOOL)inf;
- (void)setHasFreqSameGroup2MinTo10Min:(BOOL)min;
- (void)setHasFreqSameGroup6HrTo1Day:(BOOL)day;
- (void)setHasFreqSameGroup7DayTo28Day:(BOOL)day;
- (void)setHasIsFamilyNameMatch:(BOOL)match;
- (void)setHasIsFavorite:(BOOL)favorite;
- (void)setHasIsGivenNameMatch:(BOOL)match;
- (void)setHasIsHighQualityRequestMatch:(BOOL)match;
- (void)setHasIsHypocorism:(BOOL)hypocorism;
- (void)setHasIsMeCardRelation:(BOOL)relation;
- (void)setHasIsMiddleNameMatch:(BOOL)match;
- (void)setHasIsNamePrefixMatch:(BOOL)match;
- (void)setHasIsNameSuffixMatch:(BOOL)match;
- (void)setHasIsNicknameMatch:(BOOL)match;
- (void)setHasIsOrganizationNameMatch:(BOOL)match;
- (void)setHasIsPartialNameMatch:(BOOL)match;
- (void)setHasIsRecentInSameDomain:(BOOL)domain;
- (void)setHasIsRecentInSiriRequest:(BOOL)request;
- (void)setHasIsRecentlyCorrected:(BOOL)corrected;
- (void)setHasIsRelationAlias:(BOOL)alias;
- (void)setHasIsSuggested:(BOOL)suggested;
- (void)setHasIsWeakOrganizationMatch:(BOOL)match;
- (void)setHasNumPrimaryTokens:(BOOL)tokens;
- (void)setHasRecencyRank:(BOOL)rank;
- (void)setHasRecencyRankInSameDomain:(BOOL)domain;
- (void)setHasRecencyRankInSiriRequest:(BOOL)request;
- (void)setHasSpeechAlternativeRanksFamilyNameRank:(BOOL)rank;
- (void)setHasSpeechAlternativeRanksGivenNameRank:(BOOL)rank;
- (void)setHasSpeechAlternativeRanksMiddleNameRank:(BOOL)rank;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEContactFeatureSet

- (INFERENCESchemaINFERENCEContactFeatureSet)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v100.receiver = self;
  v100.super_class = INFERENCESchemaINFERENCEContactFeatureSet;
  v5 = [(INFERENCESchemaINFERENCEContactFeatureSet *)&v100 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isRecent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsRecent:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isRecentInSameDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsRecentInSameDomain:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isRecentInSiriRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsRecentInSiriRequest:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isRecentlyCorrected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsRecentlyCorrected:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"recencyRank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setRecencyRank:?];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"recencyRankInSameDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setRecencyRankInSameDomain:?];
    }

    v80 = v6;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"recencyRankInSiriRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setRecencyRankInSiriRequest:?];
    }

    v74 = v12;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"isHighQualityRequestMatch"];
    objc_opt_class();
    v99 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsHighQualityRequestMatch:?];
    }

    v14 = v10;
    v79 = v7;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"isFavorite"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsFavorite:?];
    }

    v16 = v9;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"isMeCardRelation"];
    objc_opt_class();
    v98 = v17;
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsMeCardRelation:?];
    }

    v18 = v8;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"isWeakOrganizationMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsWeakOrganizationMatch:?];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"speechAlternativeRanksGivenNameRank"];
    objc_opt_class();
    v97 = v20;
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setSpeechAlternativeRanksGivenNameRank:?];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"speechAlternativeRanksMiddleNameRank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setSpeechAlternativeRanksMiddleNameRank:?];
    }

    v71 = v21;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"speechAlternativeRanksFamilyNameRank"];
    objc_opt_class();
    v96 = v22;
    v78 = v18;
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setSpeechAlternativeRanksFamilyNameRank:?];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"freqAnyGroup0MinTo2Min"];
    objc_opt_class();
    v95 = v23;
    v77 = v16;
    if (objc_opt_isKindOfClass())
    {
      [v23 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqAnyGroup0MinTo2Min:?];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"freqAnyGroup2MinTo10Min"];
    objc_opt_class();
    v94 = v24;
    v76 = v14;
    if (objc_opt_isKindOfClass())
    {
      [v24 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqAnyGroup2MinTo10Min:?];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"freqAnyGroup10MinTo1Hr"];
    objc_opt_class();
    v93 = v25;
    v75 = v11;
    if (objc_opt_isKindOfClass())
    {
      [v25 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqAnyGroup10MinTo1Hr:?];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"freqAnyGroup1HrTo6Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v26 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqAnyGroup1HrTo6Hr:?];
    }

    v70 = v26;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"freqAnyGroup6HrTo1Day"];
    objc_opt_class();
    v92 = v27;
    if (objc_opt_isKindOfClass())
    {
      [v27 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqAnyGroup6HrTo1Day:?];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"freqAnyGroup1DayTo7Day"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v28 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqAnyGroup1DayTo7Day:?];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"freqAnyGroup7DayTo28Day"];
    objc_opt_class();
    v91 = v29;
    if (objc_opt_isKindOfClass())
    {
      [v29 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqAnyGroup7DayTo28Day:?];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"freqAnyGroup28DayToInf"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v30 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqAnyGroup28DayToInf:?];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"freqSameGroup0MinTo2Min"];
    objc_opt_class();
    v90 = v31;
    if (objc_opt_isKindOfClass())
    {
      [v31 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqSameGroup0MinTo2Min:?];
    }

    v32 = v28;
    v33 = [dictionaryCopy objectForKeyedSubscript:@"freqSameGroup2MinTo10Min"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v33 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqSameGroup2MinTo10Min:?];
    }

    v34 = v19;
    v35 = [dictionaryCopy objectForKeyedSubscript:@"freqSameGroup10MinTo1Hr"];
    objc_opt_class();
    v89 = v35;
    if (objc_opt_isKindOfClass())
    {
      [v35 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqSameGroup10MinTo1Hr:?];
    }

    v36 = v15;
    v37 = [dictionaryCopy objectForKeyedSubscript:@"freqSameGroup1HrTo6Hr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v37 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqSameGroup1HrTo6Hr:?];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"freqSameGroup6HrTo1Day"];
    objc_opt_class();
    v88 = v38;
    if (objc_opt_isKindOfClass())
    {
      [v38 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqSameGroup6HrTo1Day:?];
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"freqSameGroup1DayTo7Day"];
    objc_opt_class();
    v87 = v39;
    v73 = v36;
    if (objc_opt_isKindOfClass())
    {
      [v39 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqSameGroup1DayTo7Day:?];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"freqSameGroup7DayTo28Day"];
    objc_opt_class();
    v86 = v40;
    v72 = v34;
    if (objc_opt_isKindOfClass())
    {
      [v40 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqSameGroup7DayTo28Day:?];
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"freqSameGroup28DayToInf"];
    objc_opt_class();
    v85 = v41;
    v69 = v32;
    if (objc_opt_isKindOfClass())
    {
      [v41 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setFreqSameGroup28DayToInf:?];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"isSuggested"];
    objc_opt_class();
    v84 = v42;
    v43 = v30;
    if (objc_opt_isKindOfClass())
    {
      [v84 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsSuggested:?];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"isHypocorism"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v44 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsHypocorism:?];
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"hasSuggestedProperties"];
    objc_opt_class();
    v83 = v45;
    if (objc_opt_isKindOfClass())
    {
      [v45 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setHasSuggestedProperties:?];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"isPartialNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v46 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsPartialNameMatch:?];
    }

    v47 = [dictionaryCopy objectForKeyedSubscript:@"numPrimaryTokens"];
    objc_opt_class();
    v82 = v47;
    if (objc_opt_isKindOfClass())
    {
      [v47 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setNumPrimaryTokens:?];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"allQueryMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v48 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setAllQueryMatched:?];
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"allPrimaryNameTokensAreInQuery"];
    objc_opt_class();
    v81 = v49;
    if (objc_opt_isKindOfClass())
    {
      [v49 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setAllPrimaryNameTokensAreInQuery:?];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"isGivenNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v50 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsGivenNameMatch:?];
    }

    v65 = v44;
    v51 = [dictionaryCopy objectForKeyedSubscript:@"isMiddleNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v51 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsMiddleNameMatch:?];
    }

    v64 = v46;
    v52 = [dictionaryCopy objectForKeyedSubscript:{@"isFamilyNameMatch", v51}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v52 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsFamilyNameMatch:?];
    }

    v63 = v48;
    v53 = [dictionaryCopy objectForKeyedSubscript:@"isOrganizationNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v53 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsOrganizationNameMatch:?];
    }

    v62 = v50;
    v54 = [dictionaryCopy objectForKeyedSubscript:@"isNicknameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v54 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsNicknameMatch:?];
    }

    v68 = v43;
    v55 = [dictionaryCopy objectForKeyedSubscript:@"isNamePrefixMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v55 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsNamePrefixMatch:?];
    }

    v67 = v33;
    v56 = [dictionaryCopy objectForKeyedSubscript:@"isNameSuffixMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v56 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsNameSuffixMatch:?];
    }

    v66 = v37;
    v57 = [dictionaryCopy objectForKeyedSubscript:@"allHandlesMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v57 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setAllHandlesMatched:?];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"isRelationAlias"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v58 floatValue];
      [(INFERENCESchemaINFERENCEContactFeatureSet *)v5 setIsRelationAlias:?];
    }

    v59 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactFeatureSet)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactFeatureSet *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEContactFeatureSet *)self dictionaryRepresentation];
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
  p_has = &self->_has;
  v5 = *(&self->_has + 2);
  if ((v5 & 0x1000) != 0)
  {
    v43 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self allHandlesMatched];
    v44 = [v43 numberWithFloat:?];
    [dictionary setObject:v44 forKeyedSubscript:@"allHandlesMatched"];

    v5 = *(&self->_has + 2);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v45 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self allPrimaryNameTokensAreInQuery];
  v46 = [v45 numberWithFloat:?];
  [dictionary setObject:v46 forKeyedSubscript:@"allPrimaryNameTokensAreInQuery"];

  if ((*(&self->_has + 2) & 8) != 0)
  {
LABEL_4:
    v6 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self allQueryMatched];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"allQueryMatched"];
  }

LABEL_5:
  v8 = *p_has;
  if ((*p_has & 0x4000) != 0)
  {
    v47 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqAnyGroup0MinTo2Min];
    v48 = [v47 numberWithFloat:?];
    [dictionary setObject:v48 forKeyedSubscript:@"freqAnyGroup0MinTo2Min"];

    v8 = *p_has;
    if ((*p_has & 0x10000) == 0)
    {
LABEL_7:
      if ((v8 & 0x80000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_67;
    }
  }

  else if ((v8 & 0x10000) == 0)
  {
    goto LABEL_7;
  }

  v49 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqAnyGroup10MinTo1Hr];
  v50 = [v49 numberWithFloat:?];
  [dictionary setObject:v50 forKeyedSubscript:@"freqAnyGroup10MinTo1Hr"];

  v8 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_8:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_68;
  }

LABEL_67:
  v51 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqAnyGroup1DayTo7Day];
  v52 = [v51 numberWithFloat:?];
  [dictionary setObject:v52 forKeyedSubscript:@"freqAnyGroup1DayTo7Day"];

  v8 = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_9:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_69;
  }

LABEL_68:
  v53 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqAnyGroup1HrTo6Hr];
  v54 = [v53 numberWithFloat:?];
  [dictionary setObject:v54 forKeyedSubscript:@"freqAnyGroup1HrTo6Hr"];

  v8 = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_10:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_69:
  v55 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqAnyGroup28DayToInf];
  v56 = [v55 numberWithFloat:?];
  [dictionary setObject:v56 forKeyedSubscript:@"freqAnyGroup28DayToInf"];

  v8 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_11:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_71;
  }

LABEL_70:
  v57 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqAnyGroup2MinTo10Min];
  v58 = [v57 numberWithFloat:?];
  [dictionary setObject:v58 forKeyedSubscript:@"freqAnyGroup2MinTo10Min"];

  v8 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_12:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_72;
  }

LABEL_71:
  v59 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqAnyGroup6HrTo1Day];
  v60 = [v59 numberWithFloat:?];
  [dictionary setObject:v60 forKeyedSubscript:@"freqAnyGroup6HrTo1Day"];

  v8 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_13:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_73;
  }

LABEL_72:
  v61 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqAnyGroup7DayTo28Day];
  v62 = [v61 numberWithFloat:?];
  [dictionary setObject:v62 forKeyedSubscript:@"freqAnyGroup7DayTo28Day"];

  v8 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_14:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_74;
  }

LABEL_73:
  v63 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqSameGroup0MinTo2Min];
  v64 = [v63 numberWithFloat:?];
  [dictionary setObject:v64 forKeyedSubscript:@"freqSameGroup0MinTo2Min"];

  v8 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_15:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_75;
  }

LABEL_74:
  v65 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqSameGroup10MinTo1Hr];
  v66 = [v65 numberWithFloat:?];
  [dictionary setObject:v66 forKeyedSubscript:@"freqSameGroup10MinTo1Hr"];

  v8 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_16:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_76;
  }

LABEL_75:
  v67 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqSameGroup1DayTo7Day];
  v68 = [v67 numberWithFloat:?];
  [dictionary setObject:v68 forKeyedSubscript:@"freqSameGroup1DayTo7Day"];

  v8 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_17:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_77;
  }

LABEL_76:
  v69 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqSameGroup1HrTo6Hr];
  v70 = [v69 numberWithFloat:?];
  [dictionary setObject:v70 forKeyedSubscript:@"freqSameGroup1HrTo6Hr"];

  v8 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_18:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_78;
  }

LABEL_77:
  v71 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqSameGroup28DayToInf];
  v72 = [v71 numberWithFloat:?];
  [dictionary setObject:v72 forKeyedSubscript:@"freqSameGroup28DayToInf"];

  v8 = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_19:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_79;
  }

LABEL_78:
  v73 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqSameGroup2MinTo10Min];
  v74 = [v73 numberWithFloat:?];
  [dictionary setObject:v74 forKeyedSubscript:@"freqSameGroup2MinTo10Min"];

  v8 = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_20:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_79:
  v75 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqSameGroup6HrTo1Day];
  v76 = [v75 numberWithFloat:?];
  [dictionary setObject:v76 forKeyedSubscript:@"freqSameGroup6HrTo1Day"];

  if ((*p_has & 0x10000000) != 0)
  {
LABEL_21:
    v9 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self freqSameGroup7DayTo28Day];
    v10 = [v9 numberWithFloat:?];
    [dictionary setObject:v10 forKeyedSubscript:@"freqSameGroup7DayTo28Day"];
  }

LABEL_22:
  v11 = *(&self->_has + 2);
  if (v11)
  {
    v12 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self hasSuggestedProperties];
    v13 = [v12 numberWithFloat:?];
    [dictionary setObject:v13 forKeyedSubscript:@"hasSuggestedProperties"];

    v11 = *(&self->_has + 2);
  }

  if ((v11 & 0x80) != 0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isFamilyNameMatch];
    v15 = [v14 numberWithFloat:?];
    [dictionary setObject:v15 forKeyedSubscript:@"isFamilyNameMatch"];
  }

  if (*(&self->_has + 1))
  {
    v16 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isFavorite];
    v17 = [v16 numberWithFloat:?];
    [dictionary setObject:v17 forKeyedSubscript:@"isFavorite"];
  }

  if ((*(&self->_has + 2) & 0x20) != 0)
  {
    v18 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isGivenNameMatch];
    v19 = [v18 numberWithFloat:?];
    [dictionary setObject:v19 forKeyedSubscript:@"isGivenNameMatch"];
  }

  v20 = *p_has;
  if ((*p_has & 0x80) != 0)
  {
    v77 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isHighQualityRequestMatch];
    v78 = [v77 numberWithFloat:?];
    [dictionary setObject:v78 forKeyedSubscript:@"isHighQualityRequestMatch"];

    v20 = *p_has;
    if ((*p_has & 0x80000000) == 0)
    {
LABEL_32:
      if ((v20 & 0x200) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  v79 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self isHypocorism];
  v80 = [v79 numberWithFloat:?];
  [dictionary setObject:v80 forKeyedSubscript:@"isHypocorism"];

  if ((*p_has & 0x200) != 0)
  {
LABEL_33:
    v21 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isMeCardRelation];
    v22 = [v21 numberWithFloat:?];
    [dictionary setObject:v22 forKeyedSubscript:@"isMeCardRelation"];
  }

LABEL_34:
  v23 = *(&self->_has + 2);
  if ((v23 & 0x40) != 0)
  {
    v81 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isMiddleNameMatch];
    v82 = [v81 numberWithFloat:?];
    [dictionary setObject:v82 forKeyedSubscript:@"isMiddleNameMatch"];

    v23 = *(&self->_has + 2);
    if ((v23 & 0x400) == 0)
    {
LABEL_36:
      if ((v23 & 0x800) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_86;
    }
  }

  else if ((*(&self->_has + 2) & 0x400) == 0)
  {
    goto LABEL_36;
  }

  v83 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self isNamePrefixMatch];
  v84 = [v83 numberWithFloat:?];
  [dictionary setObject:v84 forKeyedSubscript:@"isNamePrefixMatch"];

  v23 = *(&self->_has + 2);
  if ((v23 & 0x800) == 0)
  {
LABEL_37:
    if ((v23 & 0x200) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  v85 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self isNameSuffixMatch];
  v86 = [v85 numberWithFloat:?];
  [dictionary setObject:v86 forKeyedSubscript:@"isNameSuffixMatch"];

  v23 = *(&self->_has + 2);
  if ((v23 & 0x200) == 0)
  {
LABEL_38:
    if ((v23 & 0x100) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  v87 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self isNicknameMatch];
  v88 = [v87 numberWithFloat:?];
  [dictionary setObject:v88 forKeyedSubscript:@"isNicknameMatch"];

  v23 = *(&self->_has + 2);
  if ((v23 & 0x100) == 0)
  {
LABEL_39:
    if ((v23 & 2) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_88:
  v89 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self isOrganizationNameMatch];
  v90 = [v89 numberWithFloat:?];
  [dictionary setObject:v90 forKeyedSubscript:@"isOrganizationNameMatch"];

  if ((*(&self->_has + 2) & 2) != 0)
  {
LABEL_40:
    v24 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isPartialNameMatch];
    v25 = [v24 numberWithFloat:?];
    [dictionary setObject:v25 forKeyedSubscript:@"isPartialNameMatch"];
  }

LABEL_41:
  v26 = *p_has;
  if (*p_has)
  {
    v91 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isRecent];
    v92 = [v91 numberWithFloat:?];
    [dictionary setObject:v92 forKeyedSubscript:@"isRecent"];

    v26 = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_43:
      if ((v26 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_92;
    }
  }

  else if ((v26 & 2) == 0)
  {
    goto LABEL_43;
  }

  v93 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self isRecentInSameDomain];
  v94 = [v93 numberWithFloat:?];
  [dictionary setObject:v94 forKeyedSubscript:@"isRecentInSameDomain"];

  v26 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_44:
    if ((v26 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_92:
  v95 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self isRecentInSiriRequest];
  v96 = [v95 numberWithFloat:?];
  [dictionary setObject:v96 forKeyedSubscript:@"isRecentInSiriRequest"];

  if ((*p_has & 8) != 0)
  {
LABEL_45:
    v27 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isRecentlyCorrected];
    v28 = [v27 numberWithFloat:?];
    [dictionary setObject:v28 forKeyedSubscript:@"isRecentlyCorrected"];
  }

LABEL_46:
  if ((*(&self->_has + 2) & 0x2000) != 0)
  {
    v29 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isRelationAlias];
    v30 = [v29 numberWithFloat:?];
    [dictionary setObject:v30 forKeyedSubscript:@"isRelationAlias"];
  }

  v31 = *p_has;
  if ((*p_has & 0x40000000) != 0)
  {
    v32 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isSuggested];
    v33 = [v32 numberWithFloat:?];
    [dictionary setObject:v33 forKeyedSubscript:@"isSuggested"];

    v31 = *p_has;
  }

  if ((v31 & 0x400) != 0)
  {
    v34 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self isWeakOrganizationMatch];
    v35 = [v34 numberWithFloat:?];
    [dictionary setObject:v35 forKeyedSubscript:@"isWeakOrganizationMatch"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    v36 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self numPrimaryTokens];
    v37 = [v36 numberWithFloat:?];
    [dictionary setObject:v37 forKeyedSubscript:@"numPrimaryTokens"];
  }

  v38 = *p_has;
  if ((*p_has & 0x10) != 0)
  {
    v97 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self recencyRank];
    v98 = [v97 numberWithFloat:?];
    [dictionary setObject:v98 forKeyedSubscript:@"recencyRank"];

    v38 = *p_has;
    if ((*p_has & 0x20) == 0)
    {
LABEL_56:
      if ((v38 & 0x40) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_96;
    }
  }

  else if ((v38 & 0x20) == 0)
  {
    goto LABEL_56;
  }

  v99 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self recencyRankInSameDomain];
  v100 = [v99 numberWithFloat:?];
  [dictionary setObject:v100 forKeyedSubscript:@"recencyRankInSameDomain"];

  v38 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_57:
    if ((v38 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_97;
  }

LABEL_96:
  v101 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self recencyRankInSiriRequest];
  v102 = [v101 numberWithFloat:?];
  [dictionary setObject:v102 forKeyedSubscript:@"recencyRankInSiriRequest"];

  v38 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_58:
    if ((v38 & 0x800) == 0)
    {
      goto LABEL_59;
    }

LABEL_98:
    v105 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self speechAlternativeRanksGivenNameRank];
    v106 = [v105 numberWithFloat:?];
    [dictionary setObject:v106 forKeyedSubscript:@"speechAlternativeRanksGivenNameRank"];

    if ((*p_has & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_97:
  v103 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactFeatureSet *)self speechAlternativeRanksFamilyNameRank];
  v104 = [v103 numberWithFloat:?];
  [dictionary setObject:v104 forKeyedSubscript:@"speechAlternativeRanksFamilyNameRank"];

  v38 = *p_has;
  if ((*p_has & 0x800) != 0)
  {
    goto LABEL_98;
  }

LABEL_59:
  if ((v38 & 0x1000) != 0)
  {
LABEL_60:
    v39 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactFeatureSet *)self speechAlternativeRanksMiddleNameRank];
    v40 = [v39 numberWithFloat:?];
    [dictionary setObject:v40 forKeyedSubscript:@"speechAlternativeRanksMiddleNameRank"];
  }

LABEL_61:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v41 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    v272 = 0;
    goto LABEL_11;
  }

  isRecent = self->_isRecent;
  if (isRecent >= 0.0)
  {
    v6 = isRecent;
  }

  else
  {
    v6 = -isRecent;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v272 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 <= 0.0)
    {
      goto LABEL_11;
    }

    v9 = v272 + v7;
  }

  else
  {
    v9 = v272 - fabs(v7);
  }

  v272 = v9;
LABEL_11:
  if ((has & 2) != 0)
  {
    isRecentInSameDomain = self->_isRecentInSameDomain;
    if (isRecentInSameDomain >= 0.0)
    {
      v12 = isRecentInSameDomain;
    }

    else
    {
      v12 = -isRecentInSameDomain;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v10 += v13;
      }
    }

    else
    {
      v10 -= fabs(v13);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((has & 4) != 0)
  {
    isRecentInSiriRequest = self->_isRecentInSiriRequest;
    if (isRecentInSiriRequest >= 0.0)
    {
      v17 = isRecentInSiriRequest;
    }

    else
    {
      v17 = -isRecentInSiriRequest;
    }

    *v2.i64 = floor(v17 + 0.5);
    v18 = (v17 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
    v15 = 2654435761u * *v2.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v15 += v18;
      }
    }

    else
    {
      v15 -= fabs(v18);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((has & 8) != 0)
  {
    isRecentlyCorrected = self->_isRecentlyCorrected;
    if (isRecentlyCorrected >= 0.0)
    {
      v22 = isRecentlyCorrected;
    }

    else
    {
      v22 = -isRecentlyCorrected;
    }

    *v2.i64 = floor(v22 + 0.5);
    v23 = (v22 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
    v20 = 2654435761u * *v2.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v20 += v23;
      }
    }

    else
    {
      v20 -= fabs(v23);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((has & 0x10) != 0)
  {
    recencyRank = self->_recencyRank;
    if (recencyRank >= 0.0)
    {
      v27 = recencyRank;
    }

    else
    {
      v27 = -recencyRank;
    }

    *v2.i64 = floor(v27 + 0.5);
    v28 = (v27 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v29), v3, v2);
    v25 = 2654435761u * *v2.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v25 += v28;
      }
    }

    else
    {
      v25 -= fabs(v28);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((has & 0x20) != 0)
  {
    recencyRankInSameDomain = self->_recencyRankInSameDomain;
    if (recencyRankInSameDomain >= 0.0)
    {
      v32 = recencyRankInSameDomain;
    }

    else
    {
      v32 = -recencyRankInSameDomain;
    }

    *v2.i64 = floor(v32 + 0.5);
    v33 = (v32 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v34), v3, v2);
    v30 = 2654435761u * *v2.i64;
    if (v33 >= 0.0)
    {
      if (v33 > 0.0)
      {
        v30 += v33;
      }
    }

    else
    {
      v30 -= fabs(v33);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((has & 0x40) != 0)
  {
    recencyRankInSiriRequest = self->_recencyRankInSiriRequest;
    if (recencyRankInSiriRequest >= 0.0)
    {
      v37 = recencyRankInSiriRequest;
    }

    else
    {
      v37 = -recencyRankInSiriRequest;
    }

    *v2.i64 = floor(v37 + 0.5);
    v38 = (v37 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v39), v3, v2);
    v35 = 2654435761u * *v2.i64;
    if (v38 >= 0.0)
    {
      if (v38 > 0.0)
      {
        v35 += v38;
      }
    }

    else
    {
      v35 -= fabs(v38);
    }
  }

  else
  {
    v35 = 0;
  }

  if ((has & 0x80) != 0)
  {
    isHighQualityRequestMatch = self->_isHighQualityRequestMatch;
    if (isHighQualityRequestMatch >= 0.0)
    {
      v42 = isHighQualityRequestMatch;
    }

    else
    {
      v42 = -isHighQualityRequestMatch;
    }

    *v2.i64 = floor(v42 + 0.5);
    v43 = (v42 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v44.f64[0] = NAN;
    v44.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v44), v3, v2);
    v40 = 2654435761u * *v2.i64;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v40 += v43;
      }
    }

    else
    {
      v40 -= fabs(v43);
    }
  }

  else
  {
    v40 = 0;
  }

  if ((has & 0x100) != 0)
  {
    isFavorite = self->_isFavorite;
    if (isFavorite >= 0.0)
    {
      v47 = isFavorite;
    }

    else
    {
      v47 = -isFavorite;
    }

    *v2.i64 = floor(v47 + 0.5);
    v48 = (v47 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v49), v3, v2);
    v45 = 2654435761u * *v2.i64;
    if (v48 >= 0.0)
    {
      if (v48 > 0.0)
      {
        v45 += v48;
      }
    }

    else
    {
      v45 -= fabs(v48);
    }
  }

  else
  {
    v45 = 0;
  }

  if ((has & 0x200) != 0)
  {
    isMeCardRelation = self->_isMeCardRelation;
    if (isMeCardRelation >= 0.0)
    {
      v52 = isMeCardRelation;
    }

    else
    {
      v52 = -isMeCardRelation;
    }

    *v2.i64 = floor(v52 + 0.5);
    v53 = (v52 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v54.f64[0] = NAN;
    v54.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v54), v3, v2);
    v50 = 2654435761u * *v2.i64;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v50 += v53;
      }
    }

    else
    {
      v50 -= fabs(v53);
    }
  }

  else
  {
    v50 = 0;
  }

  if ((has & 0x400) != 0)
  {
    isWeakOrganizationMatch = self->_isWeakOrganizationMatch;
    if (isWeakOrganizationMatch >= 0.0)
    {
      v57 = isWeakOrganizationMatch;
    }

    else
    {
      v57 = -isWeakOrganizationMatch;
    }

    *v2.i64 = floor(v57 + 0.5);
    v58 = (v57 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v59.f64[0] = NAN;
    v59.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v59), v3, v2);
    v55 = 2654435761u * *v2.i64;
    if (v58 >= 0.0)
    {
      if (v58 > 0.0)
      {
        v55 += v58;
      }
    }

    else
    {
      v55 -= fabs(v58);
    }
  }

  else
  {
    v55 = 0;
  }

  if ((has & 0x800) != 0)
  {
    speechAlternativeRanksGivenNameRank = self->_speechAlternativeRanksGivenNameRank;
    if (speechAlternativeRanksGivenNameRank >= 0.0)
    {
      v62 = speechAlternativeRanksGivenNameRank;
    }

    else
    {
      v62 = -speechAlternativeRanksGivenNameRank;
    }

    *v2.i64 = floor(v62 + 0.5);
    v63 = (v62 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v64.f64[0] = NAN;
    v64.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v64), v3, v2);
    v60 = 2654435761u * *v2.i64;
    if (v63 >= 0.0)
    {
      if (v63 > 0.0)
      {
        v60 += v63;
      }
    }

    else
    {
      v60 -= fabs(v63);
    }
  }

  else
  {
    v60 = 0;
  }

  if ((has & 0x1000) != 0)
  {
    speechAlternativeRanksMiddleNameRank = self->_speechAlternativeRanksMiddleNameRank;
    if (speechAlternativeRanksMiddleNameRank >= 0.0)
    {
      v67 = speechAlternativeRanksMiddleNameRank;
    }

    else
    {
      v67 = -speechAlternativeRanksMiddleNameRank;
    }

    *v2.i64 = floor(v67 + 0.5);
    v68 = (v67 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v69.f64[0] = NAN;
    v69.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v69), v3, v2);
    v65 = 2654435761u * *v2.i64;
    if (v68 >= 0.0)
    {
      if (v68 > 0.0)
      {
        v65 += v68;
      }
    }

    else
    {
      v65 -= fabs(v68);
    }
  }

  else
  {
    v65 = 0;
  }

  if ((has & 0x2000) != 0)
  {
    speechAlternativeRanksFamilyNameRank = self->_speechAlternativeRanksFamilyNameRank;
    if (speechAlternativeRanksFamilyNameRank >= 0.0)
    {
      v72 = speechAlternativeRanksFamilyNameRank;
    }

    else
    {
      v72 = -speechAlternativeRanksFamilyNameRank;
    }

    *v2.i64 = floor(v72 + 0.5);
    v73 = (v72 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v74.f64[0] = NAN;
    v74.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v74), v3, v2);
    v70 = 2654435761u * *v2.i64;
    if (v73 >= 0.0)
    {
      if (v73 > 0.0)
      {
        v70 += v73;
      }
    }

    else
    {
      v70 -= fabs(v73);
    }
  }

  else
  {
    v70 = 0;
  }

  if ((has & 0x4000) != 0)
  {
    freqAnyGroup0MinTo2Min = self->_freqAnyGroup0MinTo2Min;
    if (freqAnyGroup0MinTo2Min >= 0.0)
    {
      v77 = freqAnyGroup0MinTo2Min;
    }

    else
    {
      v77 = -freqAnyGroup0MinTo2Min;
    }

    *v2.i64 = floor(v77 + 0.5);
    v78 = (v77 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v79.f64[0] = NAN;
    v79.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v79), v3, v2);
    v75 = 2654435761u * *v2.i64;
    if (v78 >= 0.0)
    {
      if (v78 > 0.0)
      {
        v75 += v78;
      }
    }

    else
    {
      v75 -= fabs(v78);
    }
  }

  else
  {
    v75 = 0;
  }

  if ((has & 0x8000) != 0)
  {
    freqAnyGroup2MinTo10Min = self->_freqAnyGroup2MinTo10Min;
    if (freqAnyGroup2MinTo10Min >= 0.0)
    {
      v82 = freqAnyGroup2MinTo10Min;
    }

    else
    {
      v82 = -freqAnyGroup2MinTo10Min;
    }

    *v2.i64 = floor(v82 + 0.5);
    v83 = (v82 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v84.f64[0] = NAN;
    v84.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v84), v3, v2);
    v80 = 2654435761u * *v2.i64;
    if (v83 >= 0.0)
    {
      if (v83 > 0.0)
      {
        v80 += v83;
      }
    }

    else
    {
      v80 -= fabs(v83);
    }
  }

  else
  {
    v80 = 0;
  }

  if ((has & 0x10000) != 0)
  {
    freqAnyGroup10MinTo1Hr = self->_freqAnyGroup10MinTo1Hr;
    if (freqAnyGroup10MinTo1Hr >= 0.0)
    {
      v87 = freqAnyGroup10MinTo1Hr;
    }

    else
    {
      v87 = -freqAnyGroup10MinTo1Hr;
    }

    *v2.i64 = floor(v87 + 0.5);
    v88 = (v87 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v89.f64[0] = NAN;
    v89.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v89), v3, v2);
    v85 = 2654435761u * *v2.i64;
    if (v88 >= 0.0)
    {
      if (v88 > 0.0)
      {
        v85 += v88;
      }
    }

    else
    {
      v85 -= fabs(v88);
    }
  }

  else
  {
    v85 = 0;
  }

  if ((has & 0x20000) != 0)
  {
    freqAnyGroup1HrTo6Hr = self->_freqAnyGroup1HrTo6Hr;
    if (freqAnyGroup1HrTo6Hr >= 0.0)
    {
      v92 = freqAnyGroup1HrTo6Hr;
    }

    else
    {
      v92 = -freqAnyGroup1HrTo6Hr;
    }

    *v2.i64 = floor(v92 + 0.5);
    v93 = (v92 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v94.f64[0] = NAN;
    v94.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v94), v3, v2);
    v90 = 2654435761u * *v2.i64;
    if (v93 >= 0.0)
    {
      if (v93 > 0.0)
      {
        v90 += v93;
      }
    }

    else
    {
      v90 -= fabs(v93);
    }
  }

  else
  {
    v90 = 0;
  }

  if ((has & 0x40000) != 0)
  {
    freqAnyGroup6HrTo1Day = self->_freqAnyGroup6HrTo1Day;
    if (freqAnyGroup6HrTo1Day >= 0.0)
    {
      v97 = freqAnyGroup6HrTo1Day;
    }

    else
    {
      v97 = -freqAnyGroup6HrTo1Day;
    }

    *v2.i64 = floor(v97 + 0.5);
    v98 = (v97 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v99.f64[0] = NAN;
    v99.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v99), v3, v2);
    v95 = 2654435761u * *v2.i64;
    if (v98 >= 0.0)
    {
      if (v98 > 0.0)
      {
        v95 += v98;
      }
    }

    else
    {
      v95 -= fabs(v98);
    }
  }

  else
  {
    v95 = 0;
  }

  if ((has & 0x80000) != 0)
  {
    freqAnyGroup1DayTo7Day = self->_freqAnyGroup1DayTo7Day;
    if (freqAnyGroup1DayTo7Day >= 0.0)
    {
      v102 = freqAnyGroup1DayTo7Day;
    }

    else
    {
      v102 = -freqAnyGroup1DayTo7Day;
    }

    *v2.i64 = floor(v102 + 0.5);
    v103 = (v102 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v104.f64[0] = NAN;
    v104.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v104), v3, v2);
    v100 = 2654435761u * *v2.i64;
    if (v103 >= 0.0)
    {
      if (v103 > 0.0)
      {
        v100 += v103;
      }
    }

    else
    {
      v100 -= fabs(v103);
    }
  }

  else
  {
    v100 = 0;
  }

  if ((has & 0x100000) != 0)
  {
    freqAnyGroup7DayTo28Day = self->_freqAnyGroup7DayTo28Day;
    if (freqAnyGroup7DayTo28Day >= 0.0)
    {
      v107 = freqAnyGroup7DayTo28Day;
    }

    else
    {
      v107 = -freqAnyGroup7DayTo28Day;
    }

    *v2.i64 = floor(v107 + 0.5);
    v108 = (v107 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v109.f64[0] = NAN;
    v109.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v109), v3, v2);
    v105 = 2654435761u * *v2.i64;
    if (v108 >= 0.0)
    {
      if (v108 > 0.0)
      {
        v105 += v108;
      }
    }

    else
    {
      v105 -= fabs(v108);
    }
  }

  else
  {
    v105 = 0;
  }

  if ((has & 0x200000) != 0)
  {
    freqAnyGroup28DayToInf = self->_freqAnyGroup28DayToInf;
    if (freqAnyGroup28DayToInf >= 0.0)
    {
      v112 = freqAnyGroup28DayToInf;
    }

    else
    {
      v112 = -freqAnyGroup28DayToInf;
    }

    *v2.i64 = floor(v112 + 0.5);
    v113 = (v112 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v114.f64[0] = NAN;
    v114.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v114), v3, v2);
    v110 = 2654435761u * *v2.i64;
    if (v113 >= 0.0)
    {
      if (v113 > 0.0)
      {
        v110 += v113;
      }
    }

    else
    {
      v110 -= fabs(v113);
    }
  }

  else
  {
    v110 = 0;
  }

  if ((has & 0x400000) != 0)
  {
    freqSameGroup0MinTo2Min = self->_freqSameGroup0MinTo2Min;
    if (freqSameGroup0MinTo2Min >= 0.0)
    {
      v117 = freqSameGroup0MinTo2Min;
    }

    else
    {
      v117 = -freqSameGroup0MinTo2Min;
    }

    *v2.i64 = floor(v117 + 0.5);
    v118 = (v117 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v119.f64[0] = NAN;
    v119.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v119), v3, v2);
    v115 = 2654435761u * *v2.i64;
    if (v118 >= 0.0)
    {
      if (v118 > 0.0)
      {
        v115 += v118;
      }
    }

    else
    {
      v115 -= fabs(v118);
    }
  }

  else
  {
    v115 = 0;
  }

  if ((has & 0x800000) != 0)
  {
    freqSameGroup2MinTo10Min = self->_freqSameGroup2MinTo10Min;
    if (freqSameGroup2MinTo10Min >= 0.0)
    {
      v122 = freqSameGroup2MinTo10Min;
    }

    else
    {
      v122 = -freqSameGroup2MinTo10Min;
    }

    *v2.i64 = floor(v122 + 0.5);
    v123 = (v122 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v124.f64[0] = NAN;
    v124.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v124), v3, v2);
    v120 = 2654435761u * *v2.i64;
    if (v123 >= 0.0)
    {
      if (v123 > 0.0)
      {
        v120 += v123;
      }
    }

    else
    {
      v120 -= fabs(v123);
    }
  }

  else
  {
    v120 = 0;
  }

  if ((has & 0x1000000) != 0)
  {
    freqSameGroup10MinTo1Hr = self->_freqSameGroup10MinTo1Hr;
    if (freqSameGroup10MinTo1Hr >= 0.0)
    {
      v127 = freqSameGroup10MinTo1Hr;
    }

    else
    {
      v127 = -freqSameGroup10MinTo1Hr;
    }

    *v2.i64 = floor(v127 + 0.5);
    v128 = (v127 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v129.f64[0] = NAN;
    v129.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v129), v3, v2);
    v125 = 2654435761u * *v2.i64;
    if (v128 >= 0.0)
    {
      if (v128 > 0.0)
      {
        v125 += v128;
      }
    }

    else
    {
      v125 -= fabs(v128);
    }
  }

  else
  {
    v125 = 0;
  }

  v261 = v125;
  v262 = v120;
  if ((has & 0x2000000) != 0)
  {
    freqSameGroup1HrTo6Hr = self->_freqSameGroup1HrTo6Hr;
    if (freqSameGroup1HrTo6Hr >= 0.0)
    {
      v132 = freqSameGroup1HrTo6Hr;
    }

    else
    {
      v132 = -freqSameGroup1HrTo6Hr;
    }

    *v2.i64 = floor(v132 + 0.5);
    v133 = (v132 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v134.f64[0] = NAN;
    v134.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v134), v3, v2);
    v130 = 2654435761u * *v2.i64;
    if (v133 >= 0.0)
    {
      if (v133 > 0.0)
      {
        v130 += v133;
      }
    }

    else
    {
      v130 -= fabs(v133);
    }
  }

  else
  {
    v130 = 0;
  }

  v271 = v40;
  if ((has & 0x4000000) != 0)
  {
    freqSameGroup6HrTo1Day = self->_freqSameGroup6HrTo1Day;
    if (freqSameGroup6HrTo1Day >= 0.0)
    {
      v137 = freqSameGroup6HrTo1Day;
    }

    else
    {
      v137 = -freqSameGroup6HrTo1Day;
    }

    *v2.i64 = floor(v137 + 0.5);
    v138 = (v137 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v139.f64[0] = NAN;
    v139.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v139), v3, v2);
    v135 = 2654435761u * *v2.i64;
    if (v138 >= 0.0)
    {
      if (v138 > 0.0)
      {
        v135 += v138;
      }
    }

    else
    {
      v135 -= fabs(v138);
    }
  }

  else
  {
    v135 = 0;
  }

  v270 = v45;
  if ((has & 0x8000000) != 0)
  {
    freqSameGroup1DayTo7Day = self->_freqSameGroup1DayTo7Day;
    if (freqSameGroup1DayTo7Day >= 0.0)
    {
      v142 = freqSameGroup1DayTo7Day;
    }

    else
    {
      v142 = -freqSameGroup1DayTo7Day;
    }

    *v2.i64 = floor(v142 + 0.5);
    v143 = (v142 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v144.f64[0] = NAN;
    v144.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v144), v3, v2);
    v140 = 2654435761u * *v2.i64;
    if (v143 >= 0.0)
    {
      if (v143 > 0.0)
      {
        v140 += v143;
      }
    }

    else
    {
      v140 -= fabs(v143);
    }
  }

  else
  {
    v140 = 0;
  }

  v269 = v50;
  if ((has & 0x10000000) != 0)
  {
    freqSameGroup7DayTo28Day = self->_freqSameGroup7DayTo28Day;
    if (freqSameGroup7DayTo28Day >= 0.0)
    {
      v147 = freqSameGroup7DayTo28Day;
    }

    else
    {
      v147 = -freqSameGroup7DayTo28Day;
    }

    *v2.i64 = floor(v147 + 0.5);
    v148 = (v147 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v149.f64[0] = NAN;
    v149.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v149), v3, v2);
    v145 = 2654435761u * *v2.i64;
    if (v148 >= 0.0)
    {
      if (v148 > 0.0)
      {
        v145 += v148;
      }
    }

    else
    {
      v145 -= fabs(v148);
    }
  }

  else
  {
    v145 = 0;
  }

  v268 = v55;
  if ((has & 0x20000000) != 0)
  {
    freqSameGroup28DayToInf = self->_freqSameGroup28DayToInf;
    if (freqSameGroup28DayToInf >= 0.0)
    {
      v152 = freqSameGroup28DayToInf;
    }

    else
    {
      v152 = -freqSameGroup28DayToInf;
    }

    *v2.i64 = floor(v152 + 0.5);
    v153 = (v152 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v154.f64[0] = NAN;
    v154.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v154), v3, v2);
    v150 = 2654435761u * *v2.i64;
    if (v153 >= 0.0)
    {
      if (v153 > 0.0)
      {
        v150 += v153;
      }
    }

    else
    {
      v150 -= fabs(v153);
    }
  }

  else
  {
    v150 = 0;
  }

  v267 = v60;
  if ((has & 0x40000000) != 0)
  {
    isSuggested = self->_isSuggested;
    if (isSuggested >= 0.0)
    {
      v157 = isSuggested;
    }

    else
    {
      v157 = -isSuggested;
    }

    *v2.i64 = floor(v157 + 0.5);
    v158 = (v157 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v159.f64[0] = NAN;
    v159.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v159), v3, v2);
    v155 = 2654435761u * *v2.i64;
    if (v158 >= 0.0)
    {
      if (v158 > 0.0)
      {
        v155 += v158;
      }
    }

    else
    {
      v155 -= fabs(v158);
    }
  }

  else
  {
    v155 = 0;
  }

  v259 = v140;
  v260 = v135;
  if (has < 0)
  {
    isHypocorism = self->_isHypocorism;
    if (isHypocorism >= 0.0)
    {
      v162 = isHypocorism;
    }

    else
    {
      v162 = -isHypocorism;
    }

    *v2.i64 = floor(v162 + 0.5);
    v163 = (v162 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v164.f64[0] = NAN;
    v164.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v164), v3, v2);
    v160 = 2654435761u * *v2.i64;
    if (v163 >= 0.0)
    {
      if (v163 > 0.0)
      {
        v160 += v163;
      }
    }

    else
    {
      v160 -= fabs(v163);
    }
  }

  else
  {
    v160 = 0;
  }

  v165 = v35;
  v166 = *(&self->_has + 2);
  if (v166)
  {
    hasSuggestedProperties = self->_hasSuggestedProperties;
    if (hasSuggestedProperties >= 0.0)
    {
      v169 = hasSuggestedProperties;
    }

    else
    {
      v169 = -hasSuggestedProperties;
    }

    *v2.i64 = floor(v169 + 0.5);
    v170 = (v169 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v171.f64[0] = NAN;
    v171.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v171), v3, v2);
    v167 = 2654435761u * *v2.i64;
    if (v170 >= 0.0)
    {
      if (v170 > 0.0)
      {
        v167 += v170;
      }
    }

    else
    {
      v167 -= fabs(v170);
    }
  }

  else
  {
    v167 = 0;
  }

  v266 = v65;
  if ((v166 & 2) != 0)
  {
    isPartialNameMatch = self->_isPartialNameMatch;
    if (isPartialNameMatch >= 0.0)
    {
      v174 = isPartialNameMatch;
    }

    else
    {
      v174 = -isPartialNameMatch;
    }

    *v2.i64 = floor(v174 + 0.5);
    v175 = (v174 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v176.f64[0] = NAN;
    v176.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v176), v3, v2);
    v172 = 2654435761u * *v2.i64;
    if (v175 >= 0.0)
    {
      if (v175 > 0.0)
      {
        v172 += v175;
      }
    }

    else
    {
      v172 -= fabs(v175);
    }
  }

  else
  {
    v172 = 0;
  }

  v265 = v70;
  if ((v166 & 4) != 0)
  {
    numPrimaryTokens = self->_numPrimaryTokens;
    if (numPrimaryTokens >= 0.0)
    {
      v179 = numPrimaryTokens;
    }

    else
    {
      v179 = -numPrimaryTokens;
    }

    *v2.i64 = floor(v179 + 0.5);
    v180 = (v179 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v181.f64[0] = NAN;
    v181.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v181), v3, v2);
    v177 = 2654435761u * *v2.i64;
    if (v180 >= 0.0)
    {
      if (v180 > 0.0)
      {
        v177 += v180;
      }
    }

    else
    {
      v177 -= fabs(v180);
    }
  }

  else
  {
    v177 = 0;
  }

  v264 = v75;
  if ((v166 & 8) != 0)
  {
    allQueryMatched = self->_allQueryMatched;
    if (allQueryMatched >= 0.0)
    {
      v184 = allQueryMatched;
    }

    else
    {
      v184 = -allQueryMatched;
    }

    *v2.i64 = floor(v184 + 0.5);
    v185 = (v184 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v186.f64[0] = NAN;
    v186.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v186), v3, v2);
    v182 = 2654435761u * *v2.i64;
    if (v185 >= 0.0)
    {
      if (v185 > 0.0)
      {
        v182 += v185;
      }
    }

    else
    {
      v182 -= fabs(v185);
    }
  }

  else
  {
    v182 = 0;
  }

  v263 = v80;
  v258 = v145;
  if ((v166 & 0x10) != 0)
  {
    allPrimaryNameTokensAreInQuery = self->_allPrimaryNameTokensAreInQuery;
    if (allPrimaryNameTokensAreInQuery >= 0.0)
    {
      v189 = allPrimaryNameTokensAreInQuery;
    }

    else
    {
      v189 = -allPrimaryNameTokensAreInQuery;
    }

    *v2.i64 = floor(v189 + 0.5);
    v190 = (v189 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v191.f64[0] = NAN;
    v191.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v191), v3, v2);
    v187 = 2654435761u * *v2.i64;
    if (v190 >= 0.0)
    {
      if (v190 > 0.0)
      {
        v187 += v190;
      }
    }

    else
    {
      v187 -= fabs(v190);
    }
  }

  else
  {
    v187 = 0;
  }

  v257 = v85;
  if ((v166 & 0x20) != 0)
  {
    isGivenNameMatch = self->_isGivenNameMatch;
    if (isGivenNameMatch >= 0.0)
    {
      v194 = isGivenNameMatch;
    }

    else
    {
      v194 = -isGivenNameMatch;
    }

    *v2.i64 = floor(v194 + 0.5);
    v195 = (v194 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v196.f64[0] = NAN;
    v196.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v196), v3, v2);
    v192 = 2654435761u * *v2.i64;
    if (v195 >= 0.0)
    {
      if (v195 > 0.0)
      {
        v192 += v195;
      }
    }

    else
    {
      v192 -= fabs(v195);
    }
  }

  else
  {
    v192 = 0;
  }

  v255 = v172;
  v256 = v90;
  v253 = v160;
  v254 = v167;
  if ((v166 & 0x40) != 0)
  {
    isMiddleNameMatch = self->_isMiddleNameMatch;
    if (isMiddleNameMatch >= 0.0)
    {
      v199 = isMiddleNameMatch;
    }

    else
    {
      v199 = -isMiddleNameMatch;
    }

    *v2.i64 = floor(v199 + 0.5);
    v200 = (v199 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v201.f64[0] = NAN;
    v201.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v201), v3, v2);
    v197 = 2654435761u * *v2.i64;
    if (v200 >= 0.0)
    {
      if (v200 > 0.0)
      {
        v197 += v200;
      }
    }

    else
    {
      v197 -= fabs(v200);
    }
  }

  else
  {
    v197 = 0;
  }

  v202 = v95;
  if ((v166 & 0x80) != 0)
  {
    isFamilyNameMatch = self->_isFamilyNameMatch;
    if (isFamilyNameMatch >= 0.0)
    {
      v206 = isFamilyNameMatch;
    }

    else
    {
      v206 = -isFamilyNameMatch;
    }

    *v2.i64 = floor(v206 + 0.5);
    v207 = (v206 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v208.f64[0] = NAN;
    v208.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v208), v3, v2);
    v204 = 2654435761u * *v2.i64;
    v203 = v150;
    if (v207 >= 0.0)
    {
      if (v207 > 0.0)
      {
        v204 += v207;
      }
    }

    else
    {
      v204 -= fabs(v207);
    }
  }

  else
  {
    v203 = v150;
    v204 = 0;
  }

  v209 = v100;
  v210 = v182;
  if ((*(&self->_has + 2) & 0x100) != 0)
  {
    isOrganizationNameMatch = self->_isOrganizationNameMatch;
    if (isOrganizationNameMatch >= 0.0)
    {
      v214 = isOrganizationNameMatch;
    }

    else
    {
      v214 = -isOrganizationNameMatch;
    }

    *v2.i64 = floor(v214 + 0.5);
    v215 = (v214 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v216.f64[0] = NAN;
    v216.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v216), v3, v2);
    v212 = 2654435761u * *v2.i64;
    v211 = v155;
    if (v215 >= 0.0)
    {
      if (v215 > 0.0)
      {
        v212 += v215;
      }
    }

    else
    {
      v212 -= fabs(v215);
    }
  }

  else
  {
    v211 = v155;
    v212 = 0;
  }

  v217 = v105;
  if ((*(&self->_has + 2) & 0x200) != 0)
  {
    isNicknameMatch = self->_isNicknameMatch;
    if (isNicknameMatch >= 0.0)
    {
      v220 = isNicknameMatch;
    }

    else
    {
      v220 = -isNicknameMatch;
    }

    *v2.i64 = floor(v220 + 0.5);
    v221 = (v220 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v222.f64[0] = NAN;
    v222.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v222), v3, v2);
    v218 = 2654435761u * *v2.i64;
    if (v221 >= 0.0)
    {
      if (v221 > 0.0)
      {
        v218 += v221;
      }
    }

    else
    {
      v218 -= fabs(v221);
    }
  }

  else
  {
    v218 = 0;
  }

  v223 = v110;
  if ((*(&self->_has + 2) & 0x400) != 0)
  {
    isNamePrefixMatch = self->_isNamePrefixMatch;
    if (isNamePrefixMatch >= 0.0)
    {
      v227 = isNamePrefixMatch;
    }

    else
    {
      v227 = -isNamePrefixMatch;
    }

    *v2.i64 = floor(v227 + 0.5);
    v228 = (v227 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v229.f64[0] = NAN;
    v229.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v229), v3, v2);
    v225 = 2654435761u * *v2.i64;
    v224 = v177;
    if (v228 >= 0.0)
    {
      if (v228 > 0.0)
      {
        v225 += v228;
      }
    }

    else
    {
      v225 -= fabs(v228);
    }
  }

  else
  {
    v224 = v177;
    v225 = 0;
  }

  v230 = v115;
  if ((*(&self->_has + 2) & 0x800) != 0)
  {
    isNameSuffixMatch = self->_isNameSuffixMatch;
    if (isNameSuffixMatch >= 0.0)
    {
      v233 = isNameSuffixMatch;
    }

    else
    {
      v233 = -isNameSuffixMatch;
    }

    *v2.i64 = floor(v233 + 0.5);
    v234 = (v233 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v235.f64[0] = NAN;
    v235.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v235), v3, v2);
    v231 = 2654435761u * *v2.i64;
    if (v234 >= 0.0)
    {
      if (v234 > 0.0)
      {
        v231 += v234;
      }
    }

    else
    {
      v231 -= fabs(v234);
    }
  }

  else
  {
    v231 = 0;
  }

  if ((*(&self->_has + 2) & 0x1000) == 0)
  {
    v236 = 0;
    goto LABEL_408;
  }

  allHandlesMatched = self->_allHandlesMatched;
  if (allHandlesMatched >= 0.0)
  {
    v238 = allHandlesMatched;
  }

  else
  {
    v238 = -allHandlesMatched;
  }

  *v2.i64 = floor(v238 + 0.5);
  v239 = (v238 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v240.f64[0] = NAN;
  v240.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v240), v3, v2);
  v236 = 2654435761u * *v2.i64;
  if (v239 >= 0.0)
  {
    if (v239 <= 0.0)
    {
      goto LABEL_408;
    }

    v241 = v30;
    v242 = v25;
    v243 = v20;
    v244 = v15;
    v245 = v10;
    v246 = v130;
    v236 += v239;
  }

  else
  {
    v241 = v30;
    v242 = v25;
    v243 = v20;
    v244 = v15;
    v245 = v10;
    v246 = v130;
    v236 -= fabs(v239);
  }

  v130 = v246;
  v10 = v245;
  v15 = v244;
  v20 = v243;
  v25 = v242;
  v30 = v241;
LABEL_408:
  if ((*(&self->_has + 2) & 0x2000) != 0)
  {
    isRelationAlias = self->_isRelationAlias;
    if (isRelationAlias >= 0.0)
    {
      v249 = isRelationAlias;
    }

    else
    {
      v249 = -isRelationAlias;
    }

    *v2.i64 = floor(v249 + 0.5);
    v250 = (v249 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v251.f64[0] = NAN;
    v251.f64[1] = NAN;
    v247 = 2654435761u * *vbslq_s8(vnegq_f64(v251), v3, v2).i64;
    if (v250 >= 0.0)
    {
      if (v250 > 0.0)
      {
        v247 += v250;
      }
    }

    else
    {
      v247 -= fabs(v250);
    }
  }

  else
  {
    v247 = 0;
  }

  return v10 ^ v272 ^ v15 ^ v20 ^ v25 ^ v30 ^ v165 ^ v271 ^ v270 ^ v269 ^ v268 ^ v267 ^ v266 ^ v265 ^ v264 ^ v263 ^ v257 ^ v256 ^ v202 ^ v209 ^ v217 ^ v223 ^ v230 ^ v262 ^ v261 ^ v130 ^ v260 ^ v259 ^ v258 ^ v203 ^ v211 ^ v253 ^ v254 ^ v255 ^ v224 ^ v210 ^ v187 ^ v192 ^ v197 ^ v204 ^ v212 ^ v218 ^ v225 ^ v231 ^ v236 ^ v247;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_184;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = equalCopy + 48;
  v8 = equalCopy[48];
  if ((has & 1) != (v8 & 1))
  {
    goto LABEL_184;
  }

  if (has)
  {
    isRecent = self->_isRecent;
    [equalCopy isRecent];
    if (isRecent != v10)
    {
      goto LABEL_184;
    }

    has = *p_has;
    v8 = *v7;
  }

  v11 = (has >> 1) & 1;
  if (v11 == ((v8 >> 1) & 1))
  {
    if (v11)
    {
      isRecentInSameDomain = self->_isRecentInSameDomain;
      [equalCopy isRecentInSameDomain];
      if (isRecentInSameDomain != v13)
      {
        goto LABEL_184;
      }

      has = *p_has;
      v8 = *v7;
    }

    v14 = (has >> 2) & 1;
    if (v14 == ((v8 >> 2) & 1))
    {
      if (v14)
      {
        isRecentInSiriRequest = self->_isRecentInSiriRequest;
        [equalCopy isRecentInSiriRequest];
        if (isRecentInSiriRequest != v16)
        {
          goto LABEL_184;
        }

        has = *p_has;
        v8 = *v7;
      }

      v17 = (has >> 3) & 1;
      if (v17 == ((v8 >> 3) & 1))
      {
        if (v17)
        {
          isRecentlyCorrected = self->_isRecentlyCorrected;
          [equalCopy isRecentlyCorrected];
          if (isRecentlyCorrected != v19)
          {
            goto LABEL_184;
          }

          has = *p_has;
          v8 = *v7;
        }

        v20 = (has >> 4) & 1;
        if (v20 == ((v8 >> 4) & 1))
        {
          if (v20)
          {
            recencyRank = self->_recencyRank;
            [equalCopy recencyRank];
            if (recencyRank != v22)
            {
              goto LABEL_184;
            }

            has = *p_has;
            v8 = *v7;
          }

          v23 = (has >> 5) & 1;
          if (v23 == ((v8 >> 5) & 1))
          {
            if (v23)
            {
              recencyRankInSameDomain = self->_recencyRankInSameDomain;
              [equalCopy recencyRankInSameDomain];
              if (recencyRankInSameDomain != v25)
              {
                goto LABEL_184;
              }

              has = *p_has;
              v8 = *v7;
            }

            v26 = (has >> 6) & 1;
            if (v26 == ((v8 >> 6) & 1))
            {
              if (v26)
              {
                recencyRankInSiriRequest = self->_recencyRankInSiriRequest;
                [equalCopy recencyRankInSiriRequest];
                if (recencyRankInSiriRequest != v28)
                {
                  goto LABEL_184;
                }

                has = *p_has;
                v8 = *v7;
              }

              v29 = (has >> 7) & 1;
              if (v29 == ((v8 >> 7) & 1))
              {
                if (v29)
                {
                  isHighQualityRequestMatch = self->_isHighQualityRequestMatch;
                  [equalCopy isHighQualityRequestMatch];
                  if (isHighQualityRequestMatch != v31)
                  {
                    goto LABEL_184;
                  }

                  has = *p_has;
                  v8 = *v7;
                }

                v32 = (has >> 8) & 1;
                if (v32 == ((v8 >> 8) & 1))
                {
                  if (v32)
                  {
                    isFavorite = self->_isFavorite;
                    [equalCopy isFavorite];
                    if (isFavorite != v34)
                    {
                      goto LABEL_184;
                    }

                    has = *p_has;
                    v8 = *v7;
                  }

                  v35 = (has >> 9) & 1;
                  if (v35 == ((v8 >> 9) & 1))
                  {
                    if (v35)
                    {
                      isMeCardRelation = self->_isMeCardRelation;
                      [equalCopy isMeCardRelation];
                      if (isMeCardRelation != v37)
                      {
                        goto LABEL_184;
                      }

                      has = *p_has;
                      v8 = *v7;
                    }

                    v38 = (has >> 10) & 1;
                    if (v38 == ((v8 >> 10) & 1))
                    {
                      if (v38)
                      {
                        isWeakOrganizationMatch = self->_isWeakOrganizationMatch;
                        [equalCopy isWeakOrganizationMatch];
                        if (isWeakOrganizationMatch != v40)
                        {
                          goto LABEL_184;
                        }

                        has = *p_has;
                        v8 = *v7;
                      }

                      v41 = (has >> 11) & 1;
                      if (v41 == ((v8 >> 11) & 1))
                      {
                        if (v41)
                        {
                          speechAlternativeRanksGivenNameRank = self->_speechAlternativeRanksGivenNameRank;
                          [equalCopy speechAlternativeRanksGivenNameRank];
                          if (speechAlternativeRanksGivenNameRank != v43)
                          {
                            goto LABEL_184;
                          }

                          has = *p_has;
                          v8 = *v7;
                        }

                        v44 = (has >> 12) & 1;
                        if (v44 == ((v8 >> 12) & 1))
                        {
                          if (v44)
                          {
                            speechAlternativeRanksMiddleNameRank = self->_speechAlternativeRanksMiddleNameRank;
                            [equalCopy speechAlternativeRanksMiddleNameRank];
                            if (speechAlternativeRanksMiddleNameRank != v46)
                            {
                              goto LABEL_184;
                            }

                            has = *p_has;
                            v8 = *v7;
                          }

                          v47 = (has >> 13) & 1;
                          if (v47 == ((v8 >> 13) & 1))
                          {
                            if (v47)
                            {
                              speechAlternativeRanksFamilyNameRank = self->_speechAlternativeRanksFamilyNameRank;
                              [equalCopy speechAlternativeRanksFamilyNameRank];
                              if (speechAlternativeRanksFamilyNameRank != v49)
                              {
                                goto LABEL_184;
                              }

                              has = *p_has;
                              v8 = *v7;
                            }

                            v50 = (has >> 14) & 1;
                            if (v50 == ((v8 >> 14) & 1))
                            {
                              if (v50)
                              {
                                freqAnyGroup0MinTo2Min = self->_freqAnyGroup0MinTo2Min;
                                [equalCopy freqAnyGroup0MinTo2Min];
                                if (freqAnyGroup0MinTo2Min != v52)
                                {
                                  goto LABEL_184;
                                }

                                has = *p_has;
                                v8 = *v7;
                              }

                              v53 = (has >> 15) & 1;
                              if (v53 == ((v8 >> 15) & 1))
                              {
                                if (v53)
                                {
                                  freqAnyGroup2MinTo10Min = self->_freqAnyGroup2MinTo10Min;
                                  [equalCopy freqAnyGroup2MinTo10Min];
                                  if (freqAnyGroup2MinTo10Min != v55)
                                  {
                                    goto LABEL_184;
                                  }

                                  has = *p_has;
                                  v8 = *v7;
                                }

                                v56 = HIWORD(has) & 1;
                                if (v56 == (HIWORD(v8) & 1))
                                {
                                  if (v56)
                                  {
                                    freqAnyGroup10MinTo1Hr = self->_freqAnyGroup10MinTo1Hr;
                                    [equalCopy freqAnyGroup10MinTo1Hr];
                                    if (freqAnyGroup10MinTo1Hr != v58)
                                    {
                                      goto LABEL_184;
                                    }

                                    has = *p_has;
                                    v8 = *v7;
                                  }

                                  v59 = (has >> 17) & 1;
                                  if (v59 == ((v8 >> 17) & 1))
                                  {
                                    if (v59)
                                    {
                                      freqAnyGroup1HrTo6Hr = self->_freqAnyGroup1HrTo6Hr;
                                      [equalCopy freqAnyGroup1HrTo6Hr];
                                      if (freqAnyGroup1HrTo6Hr != v61)
                                      {
                                        goto LABEL_184;
                                      }

                                      has = *p_has;
                                      v8 = *v7;
                                    }

                                    v62 = (has >> 18) & 1;
                                    if (v62 == ((v8 >> 18) & 1))
                                    {
                                      if (v62)
                                      {
                                        freqAnyGroup6HrTo1Day = self->_freqAnyGroup6HrTo1Day;
                                        [equalCopy freqAnyGroup6HrTo1Day];
                                        if (freqAnyGroup6HrTo1Day != v64)
                                        {
                                          goto LABEL_184;
                                        }

                                        has = *p_has;
                                        v8 = *v7;
                                      }

                                      v65 = (has >> 19) & 1;
                                      if (v65 == ((v8 >> 19) & 1))
                                      {
                                        if (v65)
                                        {
                                          freqAnyGroup1DayTo7Day = self->_freqAnyGroup1DayTo7Day;
                                          [equalCopy freqAnyGroup1DayTo7Day];
                                          if (freqAnyGroup1DayTo7Day != v67)
                                          {
                                            goto LABEL_184;
                                          }

                                          has = *p_has;
                                          v8 = *v7;
                                        }

                                        v68 = (has >> 20) & 1;
                                        if (v68 == ((v8 >> 20) & 1))
                                        {
                                          if (v68)
                                          {
                                            freqAnyGroup7DayTo28Day = self->_freqAnyGroup7DayTo28Day;
                                            [equalCopy freqAnyGroup7DayTo28Day];
                                            if (freqAnyGroup7DayTo28Day != v70)
                                            {
                                              goto LABEL_184;
                                            }

                                            has = *p_has;
                                            v8 = *v7;
                                          }

                                          v71 = (has >> 21) & 1;
                                          if (v71 == ((v8 >> 21) & 1))
                                          {
                                            if (v71)
                                            {
                                              freqAnyGroup28DayToInf = self->_freqAnyGroup28DayToInf;
                                              [equalCopy freqAnyGroup28DayToInf];
                                              if (freqAnyGroup28DayToInf != v73)
                                              {
                                                goto LABEL_184;
                                              }

                                              has = *p_has;
                                              v8 = *v7;
                                            }

                                            v74 = (has >> 22) & 1;
                                            if (v74 == ((v8 >> 22) & 1))
                                            {
                                              if (v74)
                                              {
                                                freqSameGroup0MinTo2Min = self->_freqSameGroup0MinTo2Min;
                                                [equalCopy freqSameGroup0MinTo2Min];
                                                if (freqSameGroup0MinTo2Min != v76)
                                                {
                                                  goto LABEL_184;
                                                }

                                                has = *p_has;
                                                v8 = *v7;
                                              }

                                              v77 = (has >> 23) & 1;
                                              if (v77 == ((v8 >> 23) & 1))
                                              {
                                                if (v77)
                                                {
                                                  freqSameGroup2MinTo10Min = self->_freqSameGroup2MinTo10Min;
                                                  [equalCopy freqSameGroup2MinTo10Min];
                                                  if (freqSameGroup2MinTo10Min != v79)
                                                  {
                                                    goto LABEL_184;
                                                  }

                                                  has = *p_has;
                                                  v8 = *v7;
                                                }

                                                v80 = HIBYTE(has) & 1;
                                                if (v80 == (HIBYTE(v8) & 1))
                                                {
                                                  if (v80)
                                                  {
                                                    freqSameGroup10MinTo1Hr = self->_freqSameGroup10MinTo1Hr;
                                                    [equalCopy freqSameGroup10MinTo1Hr];
                                                    if (freqSameGroup10MinTo1Hr != v82)
                                                    {
                                                      goto LABEL_184;
                                                    }

                                                    has = *p_has;
                                                    v8 = *v7;
                                                  }

                                                  v83 = (has >> 25) & 1;
                                                  if (v83 == ((v8 >> 25) & 1))
                                                  {
                                                    if (v83)
                                                    {
                                                      freqSameGroup1HrTo6Hr = self->_freqSameGroup1HrTo6Hr;
                                                      [equalCopy freqSameGroup1HrTo6Hr];
                                                      if (freqSameGroup1HrTo6Hr != v85)
                                                      {
                                                        goto LABEL_184;
                                                      }

                                                      has = *p_has;
                                                      v8 = *v7;
                                                    }

                                                    v86 = (has >> 26) & 1;
                                                    if (v86 == ((v8 >> 26) & 1))
                                                    {
                                                      if (v86)
                                                      {
                                                        freqSameGroup6HrTo1Day = self->_freqSameGroup6HrTo1Day;
                                                        [equalCopy freqSameGroup6HrTo1Day];
                                                        if (freqSameGroup6HrTo1Day != v88)
                                                        {
                                                          goto LABEL_184;
                                                        }

                                                        has = *p_has;
                                                        v8 = *v7;
                                                      }

                                                      v89 = (has >> 27) & 1;
                                                      if (v89 == ((v8 >> 27) & 1))
                                                      {
                                                        if (v89)
                                                        {
                                                          freqSameGroup1DayTo7Day = self->_freqSameGroup1DayTo7Day;
                                                          [equalCopy freqSameGroup1DayTo7Day];
                                                          if (freqSameGroup1DayTo7Day != v91)
                                                          {
                                                            goto LABEL_184;
                                                          }

                                                          has = *p_has;
                                                          v8 = *v7;
                                                        }

                                                        v92 = (has >> 28) & 1;
                                                        if (v92 == ((v8 >> 28) & 1))
                                                        {
                                                          if (v92)
                                                          {
                                                            freqSameGroup7DayTo28Day = self->_freqSameGroup7DayTo28Day;
                                                            [equalCopy freqSameGroup7DayTo28Day];
                                                            if (freqSameGroup7DayTo28Day != v94)
                                                            {
                                                              goto LABEL_184;
                                                            }

                                                            has = *p_has;
                                                            v8 = *v7;
                                                          }

                                                          v95 = (has >> 29) & 1;
                                                          if (v95 == ((v8 >> 29) & 1))
                                                          {
                                                            if (v95)
                                                            {
                                                              freqSameGroup28DayToInf = self->_freqSameGroup28DayToInf;
                                                              [equalCopy freqSameGroup28DayToInf];
                                                              if (freqSameGroup28DayToInf != v97)
                                                              {
                                                                goto LABEL_184;
                                                              }

                                                              has = *p_has;
                                                              v8 = *v7;
                                                            }

                                                            v98 = (has >> 30) & 1;
                                                            if (v98 == ((v8 >> 30) & 1))
                                                            {
                                                              if (v98)
                                                              {
                                                                isSuggested = self->_isSuggested;
                                                                [equalCopy isSuggested];
                                                                if (isSuggested != v100)
                                                                {
                                                                  goto LABEL_184;
                                                                }

                                                                has = *p_has;
                                                                v8 = *v7;
                                                              }

                                                              if (((v8 ^ has) & 0x80000000) != 0)
                                                              {
                                                                goto LABEL_184;
                                                              }

                                                              if ((has & 0x80000000) != 0)
                                                              {
                                                                isHypocorism = self->_isHypocorism;
                                                                [equalCopy isHypocorism];
                                                                if (isHypocorism != v102)
                                                                {
                                                                  goto LABEL_184;
                                                                }
                                                              }

                                                              v103 = *(&self->_has + 2);
                                                              v104 = *(equalCopy + 98);
                                                              if ((v103 & 1) != (v104 & 1))
                                                              {
                                                                goto LABEL_184;
                                                              }

                                                              if (v103)
                                                              {
                                                                hasSuggestedProperties = self->_hasSuggestedProperties;
                                                                [equalCopy hasSuggestedProperties];
                                                                if (hasSuggestedProperties != v106)
                                                                {
                                                                  goto LABEL_184;
                                                                }

                                                                v103 = *(&self->_has + 2);
                                                                v104 = *(equalCopy + 98);
                                                              }

                                                              v107 = (v103 >> 1) & 1;
                                                              if (v107 == ((v104 >> 1) & 1))
                                                              {
                                                                if (v107)
                                                                {
                                                                  isPartialNameMatch = self->_isPartialNameMatch;
                                                                  [equalCopy isPartialNameMatch];
                                                                  if (isPartialNameMatch != v109)
                                                                  {
                                                                    goto LABEL_184;
                                                                  }

                                                                  v103 = *(&self->_has + 2);
                                                                  v104 = *(equalCopy + 98);
                                                                }

                                                                v110 = (v103 >> 2) & 1;
                                                                if (v110 == ((v104 >> 2) & 1))
                                                                {
                                                                  if (v110)
                                                                  {
                                                                    numPrimaryTokens = self->_numPrimaryTokens;
                                                                    [equalCopy numPrimaryTokens];
                                                                    if (numPrimaryTokens != v112)
                                                                    {
                                                                      goto LABEL_184;
                                                                    }

                                                                    v103 = *(&self->_has + 2);
                                                                    v104 = *(equalCopy + 98);
                                                                  }

                                                                  v113 = (v103 >> 3) & 1;
                                                                  if (v113 == ((v104 >> 3) & 1))
                                                                  {
                                                                    if (v113)
                                                                    {
                                                                      allQueryMatched = self->_allQueryMatched;
                                                                      [equalCopy allQueryMatched];
                                                                      if (allQueryMatched != v115)
                                                                      {
                                                                        goto LABEL_184;
                                                                      }

                                                                      v103 = *(&self->_has + 2);
                                                                      v104 = *(equalCopy + 98);
                                                                    }

                                                                    v116 = (v103 >> 4) & 1;
                                                                    if (v116 == ((v104 >> 4) & 1))
                                                                    {
                                                                      if (v116)
                                                                      {
                                                                        allPrimaryNameTokensAreInQuery = self->_allPrimaryNameTokensAreInQuery;
                                                                        [equalCopy allPrimaryNameTokensAreInQuery];
                                                                        if (allPrimaryNameTokensAreInQuery != v118)
                                                                        {
                                                                          goto LABEL_184;
                                                                        }

                                                                        v103 = *(&self->_has + 2);
                                                                        v104 = *(equalCopy + 98);
                                                                      }

                                                                      v119 = (v103 >> 5) & 1;
                                                                      if (v119 == ((v104 >> 5) & 1))
                                                                      {
                                                                        if (v119)
                                                                        {
                                                                          isGivenNameMatch = self->_isGivenNameMatch;
                                                                          [equalCopy isGivenNameMatch];
                                                                          if (isGivenNameMatch != v121)
                                                                          {
                                                                            goto LABEL_184;
                                                                          }

                                                                          v103 = *(&self->_has + 2);
                                                                          v104 = *(equalCopy + 98);
                                                                        }

                                                                        v122 = (v103 >> 6) & 1;
                                                                        if (v122 == ((v104 >> 6) & 1))
                                                                        {
                                                                          if (v122)
                                                                          {
                                                                            isMiddleNameMatch = self->_isMiddleNameMatch;
                                                                            [equalCopy isMiddleNameMatch];
                                                                            if (isMiddleNameMatch != v124)
                                                                            {
                                                                              goto LABEL_184;
                                                                            }

                                                                            v103 = *(&self->_has + 2);
                                                                            v104 = *(equalCopy + 98);
                                                                          }

                                                                          v125 = (v103 >> 7) & 1;
                                                                          if (v125 == ((v104 >> 7) & 1))
                                                                          {
                                                                            if (v125)
                                                                            {
                                                                              isFamilyNameMatch = self->_isFamilyNameMatch;
                                                                              [equalCopy isFamilyNameMatch];
                                                                              if (isFamilyNameMatch != v127)
                                                                              {
                                                                                goto LABEL_184;
                                                                              }

                                                                              v103 = *(&self->_has + 2);
                                                                              v104 = *(equalCopy + 98);
                                                                            }

                                                                            v128 = (v103 >> 8) & 1;
                                                                            if (v128 == ((v104 >> 8) & 1))
                                                                            {
                                                                              if (v128)
                                                                              {
                                                                                isOrganizationNameMatch = self->_isOrganizationNameMatch;
                                                                                [equalCopy isOrganizationNameMatch];
                                                                                if (isOrganizationNameMatch != v130)
                                                                                {
                                                                                  goto LABEL_184;
                                                                                }

                                                                                v103 = *(&self->_has + 2);
                                                                                v104 = *(equalCopy + 98);
                                                                              }

                                                                              v131 = (v103 >> 9) & 1;
                                                                              if (v131 == ((v104 >> 9) & 1))
                                                                              {
                                                                                if (v131)
                                                                                {
                                                                                  isNicknameMatch = self->_isNicknameMatch;
                                                                                  [equalCopy isNicknameMatch];
                                                                                  if (isNicknameMatch != v133)
                                                                                  {
                                                                                    goto LABEL_184;
                                                                                  }

                                                                                  v103 = *(&self->_has + 2);
                                                                                  v104 = *(equalCopy + 98);
                                                                                }

                                                                                v134 = (v103 >> 10) & 1;
                                                                                if (v134 == ((v104 >> 10) & 1))
                                                                                {
                                                                                  if (v134)
                                                                                  {
                                                                                    isNamePrefixMatch = self->_isNamePrefixMatch;
                                                                                    [equalCopy isNamePrefixMatch];
                                                                                    if (isNamePrefixMatch != v136)
                                                                                    {
                                                                                      goto LABEL_184;
                                                                                    }

                                                                                    v103 = *(&self->_has + 2);
                                                                                    v104 = *(equalCopy + 98);
                                                                                  }

                                                                                  v137 = (v103 >> 11) & 1;
                                                                                  if (v137 == ((v104 >> 11) & 1))
                                                                                  {
                                                                                    if (v137)
                                                                                    {
                                                                                      isNameSuffixMatch = self->_isNameSuffixMatch;
                                                                                      [equalCopy isNameSuffixMatch];
                                                                                      if (isNameSuffixMatch != v139)
                                                                                      {
                                                                                        goto LABEL_184;
                                                                                      }

                                                                                      v103 = *(&self->_has + 2);
                                                                                      v104 = *(equalCopy + 98);
                                                                                    }

                                                                                    v140 = (v103 >> 12) & 1;
                                                                                    if (v140 == ((v104 >> 12) & 1))
                                                                                    {
                                                                                      if (v140)
                                                                                      {
                                                                                        allHandlesMatched = self->_allHandlesMatched;
                                                                                        [equalCopy allHandlesMatched];
                                                                                        if (allHandlesMatched != v142)
                                                                                        {
                                                                                          goto LABEL_184;
                                                                                        }

                                                                                        v103 = *(&self->_has + 2);
                                                                                        v104 = *(equalCopy + 98);
                                                                                      }

                                                                                      v143 = (v103 >> 13) & 1;
                                                                                      if (v143 == ((v104 >> 13) & 1))
                                                                                      {
                                                                                        if (!v143 || (isRelationAlias = self->_isRelationAlias, [equalCopy isRelationAlias], isRelationAlias == v145))
                                                                                        {
                                                                                          v146 = 1;
                                                                                          goto LABEL_185;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_184:
  v146 = 0;
LABEL_185:

  return v146;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_16:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_17:
    if ((has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_18:
    if ((has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_19:
    if ((has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_20:
    if ((has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_21:
    if ((has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_22:
    if ((has & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_23:
    if ((has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_24:
    if ((has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_25:
    if ((has & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_26:
    if ((has & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_27:
    if ((has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_28:
    if ((has & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_29:
    if ((has & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_30:
    if ((has & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_31:
    if ((has & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_81:
    PBDataWriterWriteFloatField();
    if ((*p_has & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_80:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x40000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_32:
  if ((has & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_82:
  PBDataWriterWriteFloatField();
LABEL_33:
  v6 = *(&self->_has + 2);
  if (v6)
  {
    PBDataWriterWriteFloatField();
    v6 = *(&self->_has + 2);
    if ((v6 & 2) == 0)
    {
LABEL_35:
      if ((v6 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_85;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_35;
  }

  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 4) == 0)
  {
LABEL_36:
    if ((v6 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 8) == 0)
  {
LABEL_37:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x10) == 0)
  {
LABEL_38:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x20) == 0)
  {
LABEL_39:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x40) == 0)
  {
LABEL_40:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x80) == 0)
  {
LABEL_41:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x100) == 0)
  {
LABEL_42:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x200) == 0)
  {
LABEL_43:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x400) == 0)
  {
LABEL_44:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x800) == 0)
  {
LABEL_45:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  PBDataWriterWriteFloatField();
  v6 = *(&self->_has + 2);
  if ((v6 & 0x1000) == 0)
  {
LABEL_46:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_95:
  PBDataWriterWriteFloatField();
  if ((*(&self->_has + 2) & 0x2000) != 0)
  {
LABEL_47:
    PBDataWriterWriteFloatField();
  }

LABEL_48:
}

- (void)setHasIsRelationAlias:(BOOL)alias
{
  if (alias)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xDFFF | v3;
}

- (void)setHasAllHandlesMatched:(BOOL)matched
{
  if (matched)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xEFFF | v3;
}

- (void)setHasIsNameSuffixMatch:(BOOL)match
{
  if (match)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xF7FF | v3;
}

- (void)setHasIsNamePrefixMatch:(BOOL)match
{
  if (match)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFBFF | v3;
}

- (void)setHasIsNicknameMatch:(BOOL)match
{
  if (match)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFDFF | v3;
}

- (void)setHasIsOrganizationNameMatch:(BOOL)match
{
  if (match)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFEFF | v3;
}

- (void)setHasIsFamilyNameMatch:(BOOL)match
{
  if (match)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFF7F | v3;
}

- (void)setHasIsMiddleNameMatch:(BOOL)match
{
  if (match)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFBF | v3;
}

- (void)setHasIsGivenNameMatch:(BOOL)match
{
  if (match)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFDF | v3;
}

- (void)setHasAllPrimaryNameTokensAreInQuery:(BOOL)query
{
  if (query)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFEF | v3;
}

- (void)setHasAllQueryMatched:(BOOL)matched
{
  if (matched)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFF7 | v3;
}

- (void)setHasNumPrimaryTokens:(BOOL)tokens
{
  if (tokens)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFB | v3;
}

- (void)setHasIsPartialNameMatch:(BOOL)match
{
  if (match)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 2) = *(&self->_has + 2) & 0xFFFD | v3;
}

- (void)setHasIsHypocorism:(BOOL)hypocorism
{
  if (hypocorism)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF;
}

- (void)setHasIsSuggested:(BOOL)suggested
{
  if (suggested)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFF | v3;
}

- (void)setHasFreqSameGroup28DayToInf:(BOOL)inf
{
  if (inf)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFF | v3;
}

- (void)setHasFreqSameGroup7DayTo28Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFF | v3;
}

- (void)setHasFreqSameGroup1DayTo7Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFF | v3;
}

- (void)setHasFreqSameGroup6HrTo1Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFF | v3;
}

- (void)setHasFreqSameGroup1HrTo6Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFF | v3;
}

- (void)setHasFreqSameGroup10MinTo1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFF | v3;
}

- (void)setHasFreqSameGroup2MinTo10Min:(BOOL)min
{
  if (min)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFF | v3;
}

- (void)setHasFreqSameGroup0MinTo2Min:(BOOL)min
{
  if (min)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFF | v3;
}

- (void)setHasFreqAnyGroup28DayToInf:(BOOL)inf
{
  if (inf)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFF | v3;
}

- (void)setHasFreqAnyGroup7DayTo28Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFF | v3;
}

- (void)setHasFreqAnyGroup1DayTo7Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFF | v3;
}

- (void)setHasFreqAnyGroup6HrTo1Day:(BOOL)day
{
  if (day)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFF | v3;
}

- (void)setHasFreqAnyGroup1HrTo6Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFF | v3;
}

- (void)setHasFreqAnyGroup10MinTo1Hr:(BOOL)hr
{
  if (hr)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFF | v3;
}

- (void)setHasFreqAnyGroup2MinTo10Min:(BOOL)min
{
  if (min)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFF | v3;
}

- (void)setHasFreqAnyGroup0MinTo2Min:(BOOL)min
{
  if (min)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFF | v3;
}

- (void)setHasSpeechAlternativeRanksFamilyNameRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFF | v3;
}

- (void)setHasSpeechAlternativeRanksMiddleNameRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFF | v3;
}

- (void)setHasSpeechAlternativeRanksGivenNameRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FF | v3;
}

- (void)setHasIsWeakOrganizationMatch:(BOOL)match
{
  if (match)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFF | v3;
}

- (void)setHasIsMeCardRelation:(BOOL)relation
{
  if (relation)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFF | v3;
}

- (void)setHasIsFavorite:(BOOL)favorite
{
  if (favorite)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFF | v3;
}

- (void)setHasIsHighQualityRequestMatch:(BOOL)match
{
  if (match)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7F | v3;
}

- (void)setHasRecencyRankInSiriRequest:(BOOL)request
{
  if (request)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBF | v3;
}

- (void)setHasRecencyRankInSameDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDF | v3;
}

- (void)setHasRecencyRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEF | v3;
}

- (void)setHasIsRecentlyCorrected:(BOOL)corrected
{
  if (corrected)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7 | v3;
}

- (void)setHasIsRecentInSiriRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFB | v3;
}

- (void)setHasIsRecentInSameDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end