@interface PEGASUSSchemaPEGASUSCirAlerts
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSCirAlerts)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSCirAlerts)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSCirAlerts

- (PEGASUSSchemaPEGASUSCirAlerts)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v55.receiver = self;
  v55.super_class = PEGASUSSchemaPEGASUSCirAlerts;
  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)&v55 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cirAlert"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlert:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertDictionaryOverKgBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertDictionaryOverKgBoost:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertDomainFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertDomainFallback:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertEmergencyOverride"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertEmergencyOverride:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertKgWaBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertKgWaBoost:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertKgWaBoostQa"];
    objc_opt_class();
    v54 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertKgWaBoostQa:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertKgWaBoostWebPost"];
    objc_opt_class();
    v53 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertKgWaBoostWebPost:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertKgWaBoostWebPre"];
    objc_opt_class();
    v52 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertKgWaBoostWebPre:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertMapsKgSwap"];
    objc_opt_class();
    v51 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertMapsKgSwap:v25];
    }

    v49 = v8;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertMediaPodcastOverride"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertMediaPodcastOverride:v27];
    }

    v44 = v26;
    v48 = v10;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertProfaneFilter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertProfaneFilter:v29];
    }

    v47 = v12;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertRespectIsFollowUpHeuristicFlag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertRespectIsFollowUpHeuristicFlag:v31];
    }

    v46 = v14;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertRespectMultiTurnResolvedRankingFlag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v32 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertRespectMultiTurnResolvedRankingFlag:v33];
    }

    v45 = v16;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertRespectScoreOverrides"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertRespectScoreOverrides:v35];
    }

    v50 = v6;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertVerblessQueriesKgBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertVerblessQueriesKgBoost:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertVideoMediaBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertVideoMediaBoost:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"cirAlertWaBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertWaBoost:v41];
    }

    v42 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSCirAlerts)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSCirAlerts *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSCirAlerts *)self dictionaryRepresentation];
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
  if (self->_cirAlert)
  {
    cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];
    v5 = [cirAlert copy];
    [dictionary setObject:v5 forKeyedSubscript:@"cirAlert"];
  }

  if (self->_cirAlertContext)
  {
    cirAlertContext = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];
    v7 = [cirAlertContext copy];
    [dictionary setObject:v7 forKeyedSubscript:@"cirAlertContext"];
  }

  if (self->_cirAlertDictionaryOverKgBoost)
  {
    cirAlertDictionaryOverKgBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];
    v9 = [cirAlertDictionaryOverKgBoost copy];
    [dictionary setObject:v9 forKeyedSubscript:@"cirAlertDictionaryOverKgBoost"];
  }

  if (self->_cirAlertDomainFallback)
  {
    cirAlertDomainFallback = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];
    v11 = [cirAlertDomainFallback copy];
    [dictionary setObject:v11 forKeyedSubscript:@"cirAlertDomainFallback"];
  }

  if (self->_cirAlertEmergencyOverride)
  {
    cirAlertEmergencyOverride = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];
    v13 = [cirAlertEmergencyOverride copy];
    [dictionary setObject:v13 forKeyedSubscript:@"cirAlertEmergencyOverride"];
  }

  if (self->_cirAlertKgWaBoost)
  {
    cirAlertKgWaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];
    v15 = [cirAlertKgWaBoost copy];
    [dictionary setObject:v15 forKeyedSubscript:@"cirAlertKgWaBoost"];
  }

  if (self->_cirAlertKgWaBoostQa)
  {
    cirAlertKgWaBoostQa = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];
    v17 = [cirAlertKgWaBoostQa copy];
    [dictionary setObject:v17 forKeyedSubscript:@"cirAlertKgWaBoostQa"];
  }

  if (self->_cirAlertKgWaBoostWebPost)
  {
    cirAlertKgWaBoostWebPost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];
    v19 = [cirAlertKgWaBoostWebPost copy];
    [dictionary setObject:v19 forKeyedSubscript:@"cirAlertKgWaBoostWebPost"];
  }

  if (self->_cirAlertKgWaBoostWebPre)
  {
    cirAlertKgWaBoostWebPre = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];
    v21 = [cirAlertKgWaBoostWebPre copy];
    [dictionary setObject:v21 forKeyedSubscript:@"cirAlertKgWaBoostWebPre"];
  }

  if (self->_cirAlertMapsKgSwap)
  {
    cirAlertMapsKgSwap = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];
    v23 = [cirAlertMapsKgSwap copy];
    [dictionary setObject:v23 forKeyedSubscript:@"cirAlertMapsKgSwap"];
  }

  if (self->_cirAlertMediaPodcastOverride)
  {
    cirAlertMediaPodcastOverride = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];
    v25 = [cirAlertMediaPodcastOverride copy];
    [dictionary setObject:v25 forKeyedSubscript:@"cirAlertMediaPodcastOverride"];
  }

  if (self->_cirAlertProfaneFilter)
  {
    cirAlertProfaneFilter = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];
    v27 = [cirAlertProfaneFilter copy];
    [dictionary setObject:v27 forKeyedSubscript:@"cirAlertProfaneFilter"];
  }

  if (self->_cirAlertRespectIsFollowUpHeuristicFlag)
  {
    cirAlertRespectIsFollowUpHeuristicFlag = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];
    v29 = [cirAlertRespectIsFollowUpHeuristicFlag copy];
    [dictionary setObject:v29 forKeyedSubscript:@"cirAlertRespectIsFollowUpHeuristicFlag"];
  }

  if (self->_cirAlertRespectMultiTurnResolvedRankingFlag)
  {
    cirAlertRespectMultiTurnResolvedRankingFlag = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];
    v31 = [cirAlertRespectMultiTurnResolvedRankingFlag copy];
    [dictionary setObject:v31 forKeyedSubscript:@"cirAlertRespectMultiTurnResolvedRankingFlag"];
  }

  if (self->_cirAlertRespectScoreOverrides)
  {
    cirAlertRespectScoreOverrides = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];
    v33 = [cirAlertRespectScoreOverrides copy];
    [dictionary setObject:v33 forKeyedSubscript:@"cirAlertRespectScoreOverrides"];
  }

  if (self->_cirAlertVerblessQueriesKgBoost)
  {
    cirAlertVerblessQueriesKgBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];
    v35 = [cirAlertVerblessQueriesKgBoost copy];
    [dictionary setObject:v35 forKeyedSubscript:@"cirAlertVerblessQueriesKgBoost"];
  }

  if (self->_cirAlertVideoMediaBoost)
  {
    cirAlertVideoMediaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];
    v37 = [cirAlertVideoMediaBoost copy];
    [dictionary setObject:v37 forKeyedSubscript:@"cirAlertVideoMediaBoost"];
  }

  if (self->_cirAlertWaBoost)
  {
    cirAlertWaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];
    v39 = [cirAlertWaBoost copy];
    [dictionary setObject:v39 forKeyedSubscript:@"cirAlertWaBoost"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_cirAlert hash];
  v4 = [(NSString *)self->_cirAlertContext hash]^ v3;
  v5 = [(NSString *)self->_cirAlertDictionaryOverKgBoost hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_cirAlertDomainFallback hash];
  v7 = [(NSString *)self->_cirAlertEmergencyOverride hash];
  v8 = v7 ^ [(NSString *)self->_cirAlertKgWaBoost hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_cirAlertKgWaBoostQa hash];
  v10 = [(NSString *)self->_cirAlertKgWaBoostWebPost hash];
  v11 = v10 ^ [(NSString *)self->_cirAlertKgWaBoostWebPre hash];
  v12 = v11 ^ [(NSString *)self->_cirAlertMapsKgSwap hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_cirAlertMediaPodcastOverride hash];
  v14 = [(NSString *)self->_cirAlertProfaneFilter hash];
  v15 = v14 ^ [(NSString *)self->_cirAlertRespectIsFollowUpHeuristicFlag hash];
  v16 = v15 ^ [(NSString *)self->_cirAlertRespectMultiTurnResolvedRankingFlag hash];
  v17 = v16 ^ [(NSString *)self->_cirAlertRespectScoreOverrides hash];
  v18 = v13 ^ v17 ^ [(NSString *)self->_cirAlertVerblessQueriesKgBoost hash];
  v19 = [(NSString *)self->_cirAlertVideoMediaBoost hash];
  return v18 ^ v19 ^ [(NSString *)self->_cirAlertWaBoost hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_92;
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];
  cirAlert2 = [equalCopy cirAlert];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlert3 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];
  if (cirAlert3)
  {
    v8 = cirAlert3;
    cirAlert4 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];
    cirAlert5 = [equalCopy cirAlert];
    v11 = [cirAlert4 isEqual:cirAlert5];

    if (!v11)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];
  cirAlert2 = [equalCopy cirAlertContext];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertContext = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];
  if (cirAlertContext)
  {
    v13 = cirAlertContext;
    cirAlertContext2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];
    cirAlertContext3 = [equalCopy cirAlertContext];
    v16 = [cirAlertContext2 isEqual:cirAlertContext3];

    if (!v16)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];
  cirAlert2 = [equalCopy cirAlertDictionaryOverKgBoost];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertDictionaryOverKgBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];
  if (cirAlertDictionaryOverKgBoost)
  {
    v18 = cirAlertDictionaryOverKgBoost;
    cirAlertDictionaryOverKgBoost2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];
    cirAlertDictionaryOverKgBoost3 = [equalCopy cirAlertDictionaryOverKgBoost];
    v21 = [cirAlertDictionaryOverKgBoost2 isEqual:cirAlertDictionaryOverKgBoost3];

    if (!v21)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];
  cirAlert2 = [equalCopy cirAlertDomainFallback];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertDomainFallback = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];
  if (cirAlertDomainFallback)
  {
    v23 = cirAlertDomainFallback;
    cirAlertDomainFallback2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];
    cirAlertDomainFallback3 = [equalCopy cirAlertDomainFallback];
    v26 = [cirAlertDomainFallback2 isEqual:cirAlertDomainFallback3];

    if (!v26)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];
  cirAlert2 = [equalCopy cirAlertEmergencyOverride];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertEmergencyOverride = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];
  if (cirAlertEmergencyOverride)
  {
    v28 = cirAlertEmergencyOverride;
    cirAlertEmergencyOverride2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];
    cirAlertEmergencyOverride3 = [equalCopy cirAlertEmergencyOverride];
    v31 = [cirAlertEmergencyOverride2 isEqual:cirAlertEmergencyOverride3];

    if (!v31)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];
  cirAlert2 = [equalCopy cirAlertKgWaBoost];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertKgWaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];
  if (cirAlertKgWaBoost)
  {
    v33 = cirAlertKgWaBoost;
    cirAlertKgWaBoost2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];
    cirAlertKgWaBoost3 = [equalCopy cirAlertKgWaBoost];
    v36 = [cirAlertKgWaBoost2 isEqual:cirAlertKgWaBoost3];

    if (!v36)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];
  cirAlert2 = [equalCopy cirAlertKgWaBoostQa];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertKgWaBoostQa = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];
  if (cirAlertKgWaBoostQa)
  {
    v38 = cirAlertKgWaBoostQa;
    cirAlertKgWaBoostQa2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];
    cirAlertKgWaBoostQa3 = [equalCopy cirAlertKgWaBoostQa];
    v41 = [cirAlertKgWaBoostQa2 isEqual:cirAlertKgWaBoostQa3];

    if (!v41)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];
  cirAlert2 = [equalCopy cirAlertKgWaBoostWebPost];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertKgWaBoostWebPost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];
  if (cirAlertKgWaBoostWebPost)
  {
    v43 = cirAlertKgWaBoostWebPost;
    cirAlertKgWaBoostWebPost2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];
    cirAlertKgWaBoostWebPost3 = [equalCopy cirAlertKgWaBoostWebPost];
    v46 = [cirAlertKgWaBoostWebPost2 isEqual:cirAlertKgWaBoostWebPost3];

    if (!v46)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];
  cirAlert2 = [equalCopy cirAlertKgWaBoostWebPre];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertKgWaBoostWebPre = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];
  if (cirAlertKgWaBoostWebPre)
  {
    v48 = cirAlertKgWaBoostWebPre;
    cirAlertKgWaBoostWebPre2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];
    cirAlertKgWaBoostWebPre3 = [equalCopy cirAlertKgWaBoostWebPre];
    v51 = [cirAlertKgWaBoostWebPre2 isEqual:cirAlertKgWaBoostWebPre3];

    if (!v51)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];
  cirAlert2 = [equalCopy cirAlertMapsKgSwap];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertMapsKgSwap = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];
  if (cirAlertMapsKgSwap)
  {
    v53 = cirAlertMapsKgSwap;
    cirAlertMapsKgSwap2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];
    cirAlertMapsKgSwap3 = [equalCopy cirAlertMapsKgSwap];
    v56 = [cirAlertMapsKgSwap2 isEqual:cirAlertMapsKgSwap3];

    if (!v56)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];
  cirAlert2 = [equalCopy cirAlertMediaPodcastOverride];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertMediaPodcastOverride = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];
  if (cirAlertMediaPodcastOverride)
  {
    v58 = cirAlertMediaPodcastOverride;
    cirAlertMediaPodcastOverride2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];
    cirAlertMediaPodcastOverride3 = [equalCopy cirAlertMediaPodcastOverride];
    v61 = [cirAlertMediaPodcastOverride2 isEqual:cirAlertMediaPodcastOverride3];

    if (!v61)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];
  cirAlert2 = [equalCopy cirAlertProfaneFilter];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertProfaneFilter = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];
  if (cirAlertProfaneFilter)
  {
    v63 = cirAlertProfaneFilter;
    cirAlertProfaneFilter2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];
    cirAlertProfaneFilter3 = [equalCopy cirAlertProfaneFilter];
    v66 = [cirAlertProfaneFilter2 isEqual:cirAlertProfaneFilter3];

    if (!v66)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];
  cirAlert2 = [equalCopy cirAlertRespectIsFollowUpHeuristicFlag];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertRespectIsFollowUpHeuristicFlag = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];
  if (cirAlertRespectIsFollowUpHeuristicFlag)
  {
    v68 = cirAlertRespectIsFollowUpHeuristicFlag;
    cirAlertRespectIsFollowUpHeuristicFlag2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];
    cirAlertRespectIsFollowUpHeuristicFlag3 = [equalCopy cirAlertRespectIsFollowUpHeuristicFlag];
    v71 = [cirAlertRespectIsFollowUpHeuristicFlag2 isEqual:cirAlertRespectIsFollowUpHeuristicFlag3];

    if (!v71)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];
  cirAlert2 = [equalCopy cirAlertRespectMultiTurnResolvedRankingFlag];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertRespectMultiTurnResolvedRankingFlag = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];
  if (cirAlertRespectMultiTurnResolvedRankingFlag)
  {
    v73 = cirAlertRespectMultiTurnResolvedRankingFlag;
    cirAlertRespectMultiTurnResolvedRankingFlag2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];
    cirAlertRespectMultiTurnResolvedRankingFlag3 = [equalCopy cirAlertRespectMultiTurnResolvedRankingFlag];
    v76 = [cirAlertRespectMultiTurnResolvedRankingFlag2 isEqual:cirAlertRespectMultiTurnResolvedRankingFlag3];

    if (!v76)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];
  cirAlert2 = [equalCopy cirAlertRespectScoreOverrides];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertRespectScoreOverrides = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];
  if (cirAlertRespectScoreOverrides)
  {
    v78 = cirAlertRespectScoreOverrides;
    cirAlertRespectScoreOverrides2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];
    cirAlertRespectScoreOverrides3 = [equalCopy cirAlertRespectScoreOverrides];
    v81 = [cirAlertRespectScoreOverrides2 isEqual:cirAlertRespectScoreOverrides3];

    if (!v81)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];
  cirAlert2 = [equalCopy cirAlertVerblessQueriesKgBoost];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertVerblessQueriesKgBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];
  if (cirAlertVerblessQueriesKgBoost)
  {
    v83 = cirAlertVerblessQueriesKgBoost;
    cirAlertVerblessQueriesKgBoost2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];
    cirAlertVerblessQueriesKgBoost3 = [equalCopy cirAlertVerblessQueriesKgBoost];
    v86 = [cirAlertVerblessQueriesKgBoost2 isEqual:cirAlertVerblessQueriesKgBoost3];

    if (!v86)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];
  cirAlert2 = [equalCopy cirAlertVideoMediaBoost];
  if ((cirAlert != 0) == (cirAlert2 == 0))
  {
    goto LABEL_91;
  }

  cirAlertVideoMediaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];
  if (cirAlertVideoMediaBoost)
  {
    v88 = cirAlertVideoMediaBoost;
    cirAlertVideoMediaBoost2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];
    cirAlertVideoMediaBoost3 = [equalCopy cirAlertVideoMediaBoost];
    v91 = [cirAlertVideoMediaBoost2 isEqual:cirAlertVideoMediaBoost3];

    if (!v91)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];
  cirAlert2 = [equalCopy cirAlertWaBoost];
  if ((cirAlert != 0) != (cirAlert2 == 0))
  {
    cirAlertWaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];
    if (!cirAlertWaBoost)
    {

LABEL_95:
      v97 = 1;
      goto LABEL_93;
    }

    v93 = cirAlertWaBoost;
    cirAlertWaBoost2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];
    cirAlertWaBoost3 = [equalCopy cirAlertWaBoost];
    v96 = [cirAlertWaBoost2 isEqual:cirAlertWaBoost3];

    if (v96)
    {
      goto LABEL_95;
    }
  }

  else
  {
LABEL_91:
  }

LABEL_92:
  v97 = 0;
LABEL_93:

  return v97;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  cirAlert = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];

  if (cirAlert)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertContext = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];

  if (cirAlertContext)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertDictionaryOverKgBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];

  if (cirAlertDictionaryOverKgBoost)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertDomainFallback = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];

  if (cirAlertDomainFallback)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertEmergencyOverride = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];

  if (cirAlertEmergencyOverride)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertKgWaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];

  if (cirAlertKgWaBoost)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertKgWaBoostQa = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];

  if (cirAlertKgWaBoostQa)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertKgWaBoostWebPost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];

  if (cirAlertKgWaBoostWebPost)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertKgWaBoostWebPre = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];

  if (cirAlertKgWaBoostWebPre)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertMapsKgSwap = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];

  if (cirAlertMapsKgSwap)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertMediaPodcastOverride = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];

  if (cirAlertMediaPodcastOverride)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertProfaneFilter = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];

  if (cirAlertProfaneFilter)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertRespectIsFollowUpHeuristicFlag = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];

  if (cirAlertRespectIsFollowUpHeuristicFlag)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertRespectMultiTurnResolvedRankingFlag = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];

  if (cirAlertRespectMultiTurnResolvedRankingFlag)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertRespectScoreOverrides = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];

  if (cirAlertRespectScoreOverrides)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertVerblessQueriesKgBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];

  if (cirAlertVerblessQueriesKgBoost)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertVideoMediaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];

  if (cirAlertVideoMediaBoost)
  {
    PBDataWriterWriteStringField();
  }

  cirAlertWaBoost = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];

  v22 = toCopy;
  if (cirAlertWaBoost)
  {
    PBDataWriterWriteStringField();
    v22 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end