@interface PEGASUSSchemaPEGASUSCirAlerts
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSCirAlerts)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSCirAlerts)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSCirAlerts

- (PEGASUSSchemaPEGASUSCirAlerts)initWithDictionary:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = PEGASUSSchemaPEGASUSCirAlerts;
  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)&v55 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"cirAlert"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlert:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"cirAlertContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"cirAlertDictionaryOverKgBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertDictionaryOverKgBoost:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"cirAlertDomainFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertDomainFallback:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"cirAlertEmergencyOverride"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertEmergencyOverride:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"cirAlertKgWaBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertKgWaBoost:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"cirAlertKgWaBoostQa"];
    objc_opt_class();
    v54 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertKgWaBoostQa:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"cirAlertKgWaBoostWebPost"];
    objc_opt_class();
    v53 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertKgWaBoostWebPost:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"cirAlertKgWaBoostWebPre"];
    objc_opt_class();
    v52 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertKgWaBoostWebPre:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"cirAlertMapsKgSwap"];
    objc_opt_class();
    v51 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertMapsKgSwap:v25];
    }

    v49 = v8;
    v26 = [v4 objectForKeyedSubscript:@"cirAlertMediaPodcastOverride"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertMediaPodcastOverride:v27];
    }

    v44 = v26;
    v48 = v10;
    v28 = [v4 objectForKeyedSubscript:@"cirAlertProfaneFilter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertProfaneFilter:v29];
    }

    v47 = v12;
    v30 = [v4 objectForKeyedSubscript:@"cirAlertRespectIsFollowUpHeuristicFlag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertRespectIsFollowUpHeuristicFlag:v31];
    }

    v46 = v14;
    v32 = [v4 objectForKeyedSubscript:@"cirAlertRespectMultiTurnResolvedRankingFlag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v32 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertRespectMultiTurnResolvedRankingFlag:v33];
    }

    v45 = v16;
    v34 = [v4 objectForKeyedSubscript:@"cirAlertRespectScoreOverrides"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertRespectScoreOverrides:v35];
    }

    v50 = v6;
    v36 = [v4 objectForKeyedSubscript:@"cirAlertVerblessQueriesKgBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertVerblessQueriesKgBoost:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"cirAlertVideoMediaBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [v38 copy];
      [(PEGASUSSchemaPEGASUSCirAlerts *)v5 setCirAlertVideoMediaBoost:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"cirAlertWaBoost"];
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

- (PEGASUSSchemaPEGASUSCirAlerts)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSCirAlerts *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSCirAlerts *)self dictionaryRepresentation];
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
  if (self->_cirAlert)
  {
    v4 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"cirAlert"];
  }

  if (self->_cirAlertContext)
  {
    v6 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"cirAlertContext"];
  }

  if (self->_cirAlertDictionaryOverKgBoost)
  {
    v8 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"cirAlertDictionaryOverKgBoost"];
  }

  if (self->_cirAlertDomainFallback)
  {
    v10 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"cirAlertDomainFallback"];
  }

  if (self->_cirAlertEmergencyOverride)
  {
    v12 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"cirAlertEmergencyOverride"];
  }

  if (self->_cirAlertKgWaBoost)
  {
    v14 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"cirAlertKgWaBoost"];
  }

  if (self->_cirAlertKgWaBoostQa)
  {
    v16 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"cirAlertKgWaBoostQa"];
  }

  if (self->_cirAlertKgWaBoostWebPost)
  {
    v18 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"cirAlertKgWaBoostWebPost"];
  }

  if (self->_cirAlertKgWaBoostWebPre)
  {
    v20 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"cirAlertKgWaBoostWebPre"];
  }

  if (self->_cirAlertMapsKgSwap)
  {
    v22 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"cirAlertMapsKgSwap"];
  }

  if (self->_cirAlertMediaPodcastOverride)
  {
    v24 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"cirAlertMediaPodcastOverride"];
  }

  if (self->_cirAlertProfaneFilter)
  {
    v26 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"cirAlertProfaneFilter"];
  }

  if (self->_cirAlertRespectIsFollowUpHeuristicFlag)
  {
    v28 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"cirAlertRespectIsFollowUpHeuristicFlag"];
  }

  if (self->_cirAlertRespectMultiTurnResolvedRankingFlag)
  {
    v30 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"cirAlertRespectMultiTurnResolvedRankingFlag"];
  }

  if (self->_cirAlertRespectScoreOverrides)
  {
    v32 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"cirAlertRespectScoreOverrides"];
  }

  if (self->_cirAlertVerblessQueriesKgBoost)
  {
    v34 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"cirAlertVerblessQueriesKgBoost"];
  }

  if (self->_cirAlertVideoMediaBoost)
  {
    v36 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"cirAlertVideoMediaBoost"];
  }

  if (self->_cirAlertWaBoost)
  {
    v38 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];
    v39 = [v38 copy];
    [v3 setObject:v39 forKeyedSubscript:@"cirAlertWaBoost"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_92;
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];
  v6 = [v4 cirAlert];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v7 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];
    v10 = [v4 cirAlert];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];
  v6 = [v4 cirAlertContext];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v12 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];
    v15 = [v4 cirAlertContext];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];
  v6 = [v4 cirAlertDictionaryOverKgBoost];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v17 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];
    v20 = [v4 cirAlertDictionaryOverKgBoost];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];
  v6 = [v4 cirAlertDomainFallback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v22 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];
  if (v22)
  {
    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];
    v25 = [v4 cirAlertDomainFallback];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];
  v6 = [v4 cirAlertEmergencyOverride];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v27 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];
  if (v27)
  {
    v28 = v27;
    v29 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];
    v30 = [v4 cirAlertEmergencyOverride];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];
  v6 = [v4 cirAlertKgWaBoost];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v32 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];
  if (v32)
  {
    v33 = v32;
    v34 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];
    v35 = [v4 cirAlertKgWaBoost];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];
  v6 = [v4 cirAlertKgWaBoostQa];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v37 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];
  if (v37)
  {
    v38 = v37;
    v39 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];
    v40 = [v4 cirAlertKgWaBoostQa];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];
  v6 = [v4 cirAlertKgWaBoostWebPost];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v42 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];
  if (v42)
  {
    v43 = v42;
    v44 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];
    v45 = [v4 cirAlertKgWaBoostWebPost];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];
  v6 = [v4 cirAlertKgWaBoostWebPre];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v47 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];
  if (v47)
  {
    v48 = v47;
    v49 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];
    v50 = [v4 cirAlertKgWaBoostWebPre];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];
  v6 = [v4 cirAlertMapsKgSwap];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v52 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];
  if (v52)
  {
    v53 = v52;
    v54 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];
    v55 = [v4 cirAlertMapsKgSwap];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];
  v6 = [v4 cirAlertMediaPodcastOverride];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v57 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];
  if (v57)
  {
    v58 = v57;
    v59 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];
    v60 = [v4 cirAlertMediaPodcastOverride];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];
  v6 = [v4 cirAlertProfaneFilter];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v62 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];
  if (v62)
  {
    v63 = v62;
    v64 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];
    v65 = [v4 cirAlertProfaneFilter];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];
  v6 = [v4 cirAlertRespectIsFollowUpHeuristicFlag];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v67 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];
  if (v67)
  {
    v68 = v67;
    v69 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];
    v70 = [v4 cirAlertRespectIsFollowUpHeuristicFlag];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];
  v6 = [v4 cirAlertRespectMultiTurnResolvedRankingFlag];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v72 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];
  if (v72)
  {
    v73 = v72;
    v74 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];
    v75 = [v4 cirAlertRespectMultiTurnResolvedRankingFlag];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];
  v6 = [v4 cirAlertRespectScoreOverrides];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v77 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];
  if (v77)
  {
    v78 = v77;
    v79 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];
    v80 = [v4 cirAlertRespectScoreOverrides];
    v81 = [v79 isEqual:v80];

    if (!v81)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];
  v6 = [v4 cirAlertVerblessQueriesKgBoost];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v82 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];
  if (v82)
  {
    v83 = v82;
    v84 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];
    v85 = [v4 cirAlertVerblessQueriesKgBoost];
    v86 = [v84 isEqual:v85];

    if (!v86)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];
  v6 = [v4 cirAlertVideoMediaBoost];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_91;
  }

  v87 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];
  if (v87)
  {
    v88 = v87;
    v89 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];
    v90 = [v4 cirAlertVideoMediaBoost];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];
  v6 = [v4 cirAlertWaBoost];
  if ((v5 != 0) != (v6 == 0))
  {
    v92 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];
    if (!v92)
    {

LABEL_95:
      v97 = 1;
      goto LABEL_93;
    }

    v93 = v92;
    v94 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];
    v95 = [v4 cirAlertWaBoost];
    v96 = [v94 isEqual:v95];

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

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlert];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertContext];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDictionaryOverKgBoost];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertDomainFallback];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertEmergencyOverride];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoost];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostQa];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPost];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertKgWaBoostWebPre];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMapsKgSwap];

  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  v14 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertMediaPodcastOverride];

  if (v14)
  {
    PBDataWriterWriteStringField();
  }

  v15 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertProfaneFilter];

  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectIsFollowUpHeuristicFlag];

  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectMultiTurnResolvedRankingFlag];

  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertRespectScoreOverrides];

  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVerblessQueriesKgBoost];

  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  v20 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertVideoMediaBoost];

  if (v20)
  {
    PBDataWriterWriteStringField();
  }

  v21 = [(PEGASUSSchemaPEGASUSCirAlerts *)self cirAlertWaBoost];

  v22 = v23;
  if (v21)
  {
    PBDataWriterWriteStringField();
    v22 = v23;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end