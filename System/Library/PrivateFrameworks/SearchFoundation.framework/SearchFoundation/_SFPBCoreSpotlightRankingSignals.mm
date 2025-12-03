@interface _SFPBCoreSpotlightRankingSignals
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCoreSpotlightRankingSignals)initWithDictionary:(id)dictionary;
- (_SFPBCoreSpotlightRankingSignals)initWithFacade:(id)facade;
- (_SFPBCoreSpotlightRankingSignals)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCoreSpotlightRankingSignals

- (_SFPBCoreSpotlightRankingSignals)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCoreSpotlightRankingSignals *)self init];
  if (v5)
  {
    topicalityScore = [facadeCopy topicalityScore];

    if (topicalityScore)
    {
      topicalityScore2 = [facadeCopy topicalityScore];
      [topicalityScore2 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setTopicalityScore:?];
    }

    freshness = [facadeCopy freshness];

    if (freshness)
    {
      freshness2 = [facadeCopy freshness];
      [freshness2 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setFreshness:?];
    }

    engagementScore = [facadeCopy engagementScore];

    if (engagementScore)
    {
      engagementScore2 = [facadeCopy engagementScore];
      [engagementScore2 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setEngagementScore:?];
    }

    predictedLikelihoodOfEngagement = [facadeCopy predictedLikelihoodOfEngagement];

    if (predictedLikelihoodOfEngagement)
    {
      predictedLikelihoodOfEngagement2 = [facadeCopy predictedLikelihoodOfEngagement];
      [predictedLikelihoodOfEngagement2 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setPredictedLikelihoodOfEngagement:?];
    }

    if ([facadeCopy hasWasNominatedAsTopHit])
    {
      -[_SFPBCoreSpotlightRankingSignals setWasNominatedAsTopHit:](v5, "setWasNominatedAsTopHit:", [facadeCopy wasNominatedAsTopHit]);
    }

    sodiumL2Score = [facadeCopy sodiumL2Score];

    if (sodiumL2Score)
    {
      sodiumL2Score2 = [facadeCopy sodiumL2Score];
      [sodiumL2Score2 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setSodiumL2Score:?];
    }

    if ([facadeCopy hasIsExactMatchOfLaunchString])
    {
      -[_SFPBCoreSpotlightRankingSignals setIsExactMatchOfLaunchString:](v5, "setIsExactMatchOfLaunchString:", [facadeCopy isExactMatchOfLaunchString]);
    }

    if ([facadeCopy hasWasEngagedInSpotlight])
    {
      -[_SFPBCoreSpotlightRankingSignals setWasEngagedInSpotlight:](v5, "setWasEngagedInSpotlight:", [facadeCopy wasEngagedInSpotlight]);
    }

    if ([facadeCopy hasResultQueryRecency])
    {
      -[_SFPBCoreSpotlightRankingSignals setResultQueryRecency:](v5, "setResultQueryRecency:", [facadeCopy resultQueryRecency]);
    }

    pommesL2Score = [facadeCopy pommesL2Score];

    if (pommesL2Score)
    {
      pommesL2Score2 = [facadeCopy pommesL2Score];
      [pommesL2Score2 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setPommesL2Score:?];
    }

    if ([facadeCopy hasIsSemanticMatch])
    {
      -[_SFPBCoreSpotlightRankingSignals setIsSemanticMatch:](v5, "setIsSemanticMatch:", [facadeCopy isSemanticMatch]);
    }

    semanticScore = [facadeCopy semanticScore];

    if (semanticScore)
    {
      semanticScore2 = [facadeCopy semanticScore];
      [semanticScore2 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setSemanticScore:?];
    }

    if ([facadeCopy hasIsSyntacticMatch])
    {
      -[_SFPBCoreSpotlightRankingSignals setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [facadeCopy isSyntacticMatch]);
    }

    syntacticScore = [facadeCopy syntacticScore];

    if (syntacticScore)
    {
      syntacticScore2 = [facadeCopy syntacticScore];
      [syntacticScore2 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setSyntacticScore:?];
    }

    if ([facadeCopy hasEmbeddingStatus])
    {
      -[_SFPBCoreSpotlightRankingSignals setEmbeddingStatus:](v5, "setEmbeddingStatus:", [facadeCopy embeddingStatus]);
    }

    if ([facadeCopy hasItemAgeInDays])
    {
      -[_SFPBCoreSpotlightRankingSignals setItemAgeInDays:](v5, "setItemAgeInDays:", [facadeCopy itemAgeInDays]);
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBCoreSpotlightRankingSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = _SFPBCoreSpotlightRankingSignals;
  v5 = [(_SFPBCoreSpotlightRankingSignals *)&v36 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"topicalityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setTopicalityScore:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"freshness"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setFreshness:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"engagementScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setEngagementScore:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"predictedLikelihoodOfEngagement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setPredictedLikelihoodOfEngagement:?];
    }

    v32 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"wasNominatedAsTopHit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightRankingSignals setWasNominatedAsTopHit:](v5, "setWasNominatedAsTopHit:", [v10 BOOLValue]);
    }

    v11 = v7;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"sodiumL2Score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setSodiumL2Score:?];
    }

    v13 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"isExactMatchOfLaunchString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightRankingSignals setIsExactMatchOfLaunchString:](v5, "setIsExactMatchOfLaunchString:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"wasEngagedInSpotlight"];
    objc_opt_class();
    v35 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightRankingSignals setWasEngagedInSpotlight:](v5, "setWasEngagedInSpotlight:", [v15 BOOLValue]);
    }

    v34 = v13;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"resultQueryRecency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightRankingSignals setResultQueryRecency:](v5, "setResultQueryRecency:", [v16 intValue]);
    }

    v33 = v11;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"pommesL2Score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setPommesL2Score:?];
    }

    v27 = v17;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"isSemanticMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightRankingSignals setIsSemanticMatch:](v5, "setIsSemanticMatch:", [v18 BOOLValue]);
    }

    v31 = v9;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"semanticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setSemanticScore:?];
    }

    v30 = v10;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"isSyntacticMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightRankingSignals setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [v20 BOOLValue]);
    }

    v28 = v16;
    v29 = v12;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"syntacticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 floatValue];
      [(_SFPBCoreSpotlightRankingSignals *)v5 setSyntacticScore:?];
    }

    v22 = v14;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"embeddingStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightRankingSignals setEmbeddingStatus:](v5, "setEmbeddingStatus:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"itemAgeInDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightRankingSignals setItemAgeInDays:](v5, "setItemAgeInDays:", [v24 unsignedIntValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (_SFPBCoreSpotlightRankingSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCoreSpotlightRankingSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCoreSpotlightRankingSignals *)self dictionaryRepresentation];
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
  if (self->_embeddingStatus)
  {
    embeddingStatus = [(_SFPBCoreSpotlightRankingSignals *)self embeddingStatus];
    if (embeddingStatus >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", embeddingStatus];
    }

    else
    {
      v5 = off_1E7ACE548[embeddingStatus];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"embeddingStatus"];
  }

  if (self->_engagementScore != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(_SFPBCoreSpotlightRankingSignals *)self engagementScore];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"engagementScore"];
  }

  if (self->_freshness != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(_SFPBCoreSpotlightRankingSignals *)self freshness];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"freshness"];
  }

  if (self->_isExactMatchOfLaunchString)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCoreSpotlightRankingSignals isExactMatchOfLaunchString](self, "isExactMatchOfLaunchString")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isExactMatchOfLaunchString"];
  }

  if (self->_isSemanticMatch)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCoreSpotlightRankingSignals isSemanticMatch](self, "isSemanticMatch")}];
    [dictionary setObject:v11 forKeyedSubscript:@"isSemanticMatch"];
  }

  if (self->_isSyntacticMatch)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCoreSpotlightRankingSignals isSyntacticMatch](self, "isSyntacticMatch")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isSyntacticMatch"];
  }

  if (self->_itemAgeInDays)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBCoreSpotlightRankingSignals itemAgeInDays](self, "itemAgeInDays")}];
    [dictionary setObject:v13 forKeyedSubscript:@"itemAgeInDays"];
  }

  if (self->_pommesL2Score != 0.0)
  {
    v14 = MEMORY[0x1E696AD98];
    [(_SFPBCoreSpotlightRankingSignals *)self pommesL2Score];
    v15 = [v14 numberWithFloat:?];
    [dictionary setObject:v15 forKeyedSubscript:@"pommesL2Score"];
  }

  if (self->_predictedLikelihoodOfEngagement != 0.0)
  {
    v16 = MEMORY[0x1E696AD98];
    [(_SFPBCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
    v17 = [v16 numberWithFloat:?];
    [dictionary setObject:v17 forKeyedSubscript:@"predictedLikelihoodOfEngagement"];
  }

  if (self->_resultQueryRecency)
  {
    resultQueryRecency = [(_SFPBCoreSpotlightRankingSignals *)self resultQueryRecency];
    if (resultQueryRecency >= 9)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", resultQueryRecency];
    }

    else
    {
      v19 = off_1E7ACE500[resultQueryRecency];
    }

    [dictionary setObject:v19 forKeyedSubscript:@"resultQueryRecency"];
  }

  if (self->_semanticScore != 0.0)
  {
    v20 = MEMORY[0x1E696AD98];
    [(_SFPBCoreSpotlightRankingSignals *)self semanticScore];
    v21 = [v20 numberWithFloat:?];
    [dictionary setObject:v21 forKeyedSubscript:@"semanticScore"];
  }

  if (self->_sodiumL2Score != 0.0)
  {
    v22 = MEMORY[0x1E696AD98];
    [(_SFPBCoreSpotlightRankingSignals *)self sodiumL2Score];
    v23 = [v22 numberWithFloat:?];
    [dictionary setObject:v23 forKeyedSubscript:@"sodiumL2Score"];
  }

  if (self->_syntacticScore != 0.0)
  {
    v24 = MEMORY[0x1E696AD98];
    [(_SFPBCoreSpotlightRankingSignals *)self syntacticScore];
    v25 = [v24 numberWithFloat:?];
    [dictionary setObject:v25 forKeyedSubscript:@"syntacticScore"];
  }

  if (self->_topicalityScore != 0.0)
  {
    v26 = MEMORY[0x1E696AD98];
    [(_SFPBCoreSpotlightRankingSignals *)self topicalityScore];
    v27 = [v26 numberWithFloat:?];
    [dictionary setObject:v27 forKeyedSubscript:@"topicalityScore"];
  }

  if (self->_wasEngagedInSpotlight)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCoreSpotlightRankingSignals wasEngagedInSpotlight](self, "wasEngagedInSpotlight")}];
    [dictionary setObject:v28 forKeyedSubscript:@"wasEngagedInSpotlight"];
  }

  if (self->_wasNominatedAsTopHit)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCoreSpotlightRankingSignals wasNominatedAsTopHit](self, "wasNominatedAsTopHit")}];
    [dictionary setObject:v29 forKeyedSubscript:@"wasNominatedAsTopHit"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  topicalityScore = self->_topicalityScore;
  v5 = topicalityScore < 0.0;
  if (topicalityScore == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = topicalityScore;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  freshness = self->_freshness;
  v11 = freshness < 0.0;
  if (freshness == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = freshness;
    if (v11)
    {
      v12 = -v12;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v15 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v15 += v13;
      }
    }

    else
    {
      v15 -= fabs(v13);
    }
  }

  engagementScore = self->_engagementScore;
  v17 = engagementScore < 0.0;
  if (engagementScore == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v18 = engagementScore;
    if (v17)
    {
      v18 = -v18;
    }

    *v2.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v21 += v19;
      }
    }

    else
    {
      v21 -= fabs(v19);
    }
  }

  predictedLikelihoodOfEngagement = self->_predictedLikelihoodOfEngagement;
  v23 = predictedLikelihoodOfEngagement < 0.0;
  if (predictedLikelihoodOfEngagement == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v24 = predictedLikelihoodOfEngagement;
    if (v23)
    {
      v24 = -v24;
    }

    *v2.i64 = floor(v24 + 0.5);
    v25 = (v24 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v26), v3, v2);
    v27 = 2654435761u * *v2.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v27 += v25;
      }
    }

    else
    {
      v27 -= fabs(v25);
    }
  }

  sodiumL2Score = self->_sodiumL2Score;
  v29 = sodiumL2Score < 0.0;
  if (sodiumL2Score == 0.0)
  {
    v33 = 0;
  }

  else
  {
    v30 = sodiumL2Score;
    if (v29)
    {
      v30 = -v30;
    }

    *v2.i64 = floor(v30 + 0.5);
    v31 = (v30 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v32), v3, v2);
    v33 = 2654435761u * *v2.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v33 += v31;
      }
    }

    else
    {
      v33 -= fabs(v31);
    }
  }

  pommesL2Score = self->_pommesL2Score;
  v35 = pommesL2Score < 0.0;
  if (pommesL2Score == 0.0)
  {
    v39 = 0;
  }

  else
  {
    v36 = pommesL2Score;
    if (v35)
    {
      v36 = -v36;
    }

    *v2.i64 = floor(v36 + 0.5);
    v37 = (v36 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v38.f64[0] = NAN;
    v38.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v38), v3, v2);
    v39 = 2654435761u * *v2.i64;
    if (v37 >= 0.0)
    {
      if (v37 > 0.0)
      {
        v39 += v37;
      }
    }

    else
    {
      v39 -= fabs(v37);
    }
  }

  semanticScore = self->_semanticScore;
  v41 = semanticScore < 0.0;
  if (semanticScore == 0.0)
  {
    v45 = 0;
  }

  else
  {
    v42 = semanticScore;
    if (v41)
    {
      v42 = -v42;
    }

    *v2.i64 = floor(v42 + 0.5);
    v43 = (v42 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v44.f64[0] = NAN;
    v44.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v44), v3, v2);
    v45 = 2654435761u * *v2.i64;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v45 += v43;
      }
    }

    else
    {
      v45 -= fabs(v43);
    }
  }

  syntacticScore = self->_syntacticScore;
  v47 = syntacticScore < 0.0;
  if (syntacticScore == 0.0)
  {
    v51 = 0;
  }

  else
  {
    v48 = syntacticScore;
    if (v47)
    {
      v48 = -v48;
    }

    *v2.i64 = floor(v48 + 0.5);
    v49 = (v48 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v50.f64[0] = NAN;
    v50.f64[1] = NAN;
    v51 = 2654435761u * *vbslq_s8(vnegq_f64(v50), v3, v2).i64;
    if (v49 >= 0.0)
    {
      if (v49 > 0.0)
      {
        v51 += v49;
      }
    }

    else
    {
      v51 -= fabs(v49);
    }
  }

  if (self->_isSyntacticMatch)
  {
    v52 = 2654435761;
  }

  else
  {
    v52 = 0;
  }

  if (self->_isSemanticMatch)
  {
    v53 = 2654435761;
  }

  else
  {
    v53 = 0;
  }

  if (self->_wasEngagedInSpotlight)
  {
    v54 = 2654435761;
  }

  else
  {
    v54 = 0;
  }

  if (self->_isExactMatchOfLaunchString)
  {
    v55 = 2654435761;
  }

  else
  {
    v55 = 0;
  }

  if (self->_wasNominatedAsTopHit)
  {
    v56 = 2654435761;
  }

  else
  {
    v56 = 0;
  }

  return v15 ^ v9 ^ v21 ^ v27 ^ v33 ^ v56 ^ v55 ^ v54 ^ v39 ^ (2654435761 * self->_resultQueryRecency) ^ v53 ^ v45 ^ v52 ^ v51 ^ (2654435761 * self->_embeddingStatus) ^ (2654435761 * self->_itemAgeInDays);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  topicalityScore = self->_topicalityScore;
  [equalCopy topicalityScore];
  if (topicalityScore != v6)
  {
    goto LABEL_18;
  }

  freshness = self->_freshness;
  [equalCopy freshness];
  if (freshness != v8)
  {
    goto LABEL_18;
  }

  engagementScore = self->_engagementScore;
  [equalCopy engagementScore];
  if (engagementScore != v10)
  {
    goto LABEL_18;
  }

  predictedLikelihoodOfEngagement = self->_predictedLikelihoodOfEngagement;
  [equalCopy predictedLikelihoodOfEngagement];
  if (predictedLikelihoodOfEngagement != v12)
  {
    goto LABEL_18;
  }

  wasNominatedAsTopHit = self->_wasNominatedAsTopHit;
  if (wasNominatedAsTopHit != [equalCopy wasNominatedAsTopHit])
  {
    goto LABEL_18;
  }

  sodiumL2Score = self->_sodiumL2Score;
  [equalCopy sodiumL2Score];
  if (sodiumL2Score != v15)
  {
    goto LABEL_18;
  }

  isExactMatchOfLaunchString = self->_isExactMatchOfLaunchString;
  if (isExactMatchOfLaunchString != [equalCopy isExactMatchOfLaunchString])
  {
    goto LABEL_18;
  }

  wasEngagedInSpotlight = self->_wasEngagedInSpotlight;
  if (wasEngagedInSpotlight != [equalCopy wasEngagedInSpotlight])
  {
    goto LABEL_18;
  }

  resultQueryRecency = self->_resultQueryRecency;
  if (resultQueryRecency != [equalCopy resultQueryRecency])
  {
    goto LABEL_18;
  }

  pommesL2Score = self->_pommesL2Score;
  [equalCopy pommesL2Score];
  if (pommesL2Score != v20)
  {
    goto LABEL_18;
  }

  isSemanticMatch = self->_isSemanticMatch;
  if (isSemanticMatch == [equalCopy isSemanticMatch] && (semanticScore = self->_semanticScore, objc_msgSend(equalCopy, "semanticScore"), semanticScore == v23) && (isSyntacticMatch = self->_isSyntacticMatch, isSyntacticMatch == objc_msgSend(equalCopy, "isSyntacticMatch")) && (syntacticScore = self->_syntacticScore, objc_msgSend(equalCopy, "syntacticScore"), syntacticScore == v26) && (embeddingStatus = self->_embeddingStatus, embeddingStatus == objc_msgSend(equalCopy, "embeddingStatus")))
  {
    itemAgeInDays = self->_itemAgeInDays;
    v29 = itemAgeInDays == [equalCopy itemAgeInDays];
  }

  else
  {
LABEL_18:
    v29 = 0;
  }

  return v29;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  [(_SFPBCoreSpotlightRankingSignals *)self topicalityScore];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBCoreSpotlightRankingSignals *)self freshness];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBCoreSpotlightRankingSignals *)self engagementScore];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_SFPBCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBCoreSpotlightRankingSignals *)self wasNominatedAsTopHit])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_SFPBCoreSpotlightRankingSignals *)self sodiumL2Score];
  if (v8 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBCoreSpotlightRankingSignals *)self isExactMatchOfLaunchString])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCoreSpotlightRankingSignals *)self wasEngagedInSpotlight])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCoreSpotlightRankingSignals *)self resultQueryRecency])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBCoreSpotlightRankingSignals *)self pommesL2Score];
  if (v9 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBCoreSpotlightRankingSignals *)self isSemanticMatch])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_SFPBCoreSpotlightRankingSignals *)self semanticScore];
  if (v10 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBCoreSpotlightRankingSignals *)self isSyntacticMatch])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_SFPBCoreSpotlightRankingSignals *)self syntacticScore];
  if (v11 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_SFPBCoreSpotlightRankingSignals *)self embeddingStatus])
  {
    PBDataWriterWriteInt32Field();
  }

  itemAgeInDays = [(_SFPBCoreSpotlightRankingSignals *)self itemAgeInDays];
  v13 = toCopy;
  if (itemAgeInDays)
  {
    PBDataWriterWriteUint32Field();
    v13 = toCopy;
  }
}

@end