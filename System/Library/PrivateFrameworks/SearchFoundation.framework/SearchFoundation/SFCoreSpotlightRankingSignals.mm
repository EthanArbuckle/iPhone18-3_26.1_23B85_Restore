@interface SFCoreSpotlightRankingSignals
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCoreSpotlightRankingSignals)initWithCoder:(id)coder;
- (SFCoreSpotlightRankingSignals)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCoreSpotlightRankingSignals

- (unint64_t)hash
{
  topicalityScore = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
  v3 = [topicalityScore hash];
  freshness = [(SFCoreSpotlightRankingSignals *)self freshness];
  v5 = [freshness hash] ^ v3;
  engagementScore = [(SFCoreSpotlightRankingSignals *)self engagementScore];
  v7 = [engagementScore hash];
  predictedLikelihoodOfEngagement = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
  v9 = v5 ^ v7 ^ [predictedLikelihoodOfEngagement hash];
  wasNominatedAsTopHit = [(SFCoreSpotlightRankingSignals *)self wasNominatedAsTopHit];
  sodiumL2Score = [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
  v12 = v9 ^ wasNominatedAsTopHit ^ [sodiumL2Score hash];
  isExactMatchOfLaunchString = [(SFCoreSpotlightRankingSignals *)self isExactMatchOfLaunchString];
  v14 = isExactMatchOfLaunchString ^ [(SFCoreSpotlightRankingSignals *)self wasEngagedInSpotlight];
  v15 = v12 ^ v14 ^ [(SFCoreSpotlightRankingSignals *)self resultQueryRecency];
  pommesL2Score = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
  v17 = [pommesL2Score hash];
  v18 = v17 ^ [(SFCoreSpotlightRankingSignals *)self isSemanticMatch];
  semanticScore = [(SFCoreSpotlightRankingSignals *)self semanticScore];
  v20 = v18 ^ [semanticScore hash];
  v21 = v15 ^ v20 ^ [(SFCoreSpotlightRankingSignals *)self isSyntacticMatch];
  syntacticScore = [(SFCoreSpotlightRankingSignals *)self syntacticScore];
  v23 = [syntacticScore hash];
  v24 = v23 ^ [(SFCoreSpotlightRankingSignals *)self embeddingStatus];
  v25 = v24 ^ [(SFCoreSpotlightRankingSignals *)self itemAgeInDays];

  return v21 ^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCoreSpotlightRankingSignals *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      topicalityScore = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
      topicalityScore2 = [(SFCoreSpotlightRankingSignals *)v5 topicalityScore];
      if ((topicalityScore != 0) == (topicalityScore2 == 0))
      {
        v11 = 0;
LABEL_54:

        goto LABEL_55;
      }

      topicalityScore3 = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
      if (topicalityScore3)
      {
        topicalityScore4 = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
        topicalityScore5 = [(SFCoreSpotlightRankingSignals *)v5 topicalityScore];
        if (![topicalityScore4 isEqual:topicalityScore5])
        {
          v11 = 0;
LABEL_52:

          goto LABEL_53;
        }

        v73 = topicalityScore5;
        v74 = topicalityScore4;
      }

      freshness = [(SFCoreSpotlightRankingSignals *)self freshness];
      freshness2 = [(SFCoreSpotlightRankingSignals *)v5 freshness];
      if ((freshness != 0) == (freshness2 == 0))
      {
        goto LABEL_50;
      }

      freshness3 = [(SFCoreSpotlightRankingSignals *)self freshness];
      if (freshness3)
      {
        freshness4 = [(SFCoreSpotlightRankingSignals *)self freshness];
        freshness5 = [(SFCoreSpotlightRankingSignals *)v5 freshness];
        v71 = freshness4;
        if (![freshness4 isEqual:freshness5])
        {
          goto LABEL_20;
        }
      }

      v72 = freshness3;
      engagementScore = [(SFCoreSpotlightRankingSignals *)self engagementScore];
      engagementScore2 = [(SFCoreSpotlightRankingSignals *)v5 engagementScore];
      if ((engagementScore != 0) == (engagementScore2 == 0))
      {

        if (!freshness3)
        {
          goto LABEL_50;
        }

        goto LABEL_20;
      }

      v67 = engagementScore;
      v68 = engagementScore2;
      engagementScore3 = [(SFCoreSpotlightRankingSignals *)self engagementScore];
      if (engagementScore3)
      {
        engagementScore4 = [(SFCoreSpotlightRankingSignals *)self engagementScore];
        engagementScore5 = [(SFCoreSpotlightRankingSignals *)v5 engagementScore];
        v66 = engagementScore4;
        if (![engagementScore4 isEqual:engagementScore5])
        {
LABEL_48:

LABEL_49:
          if (freshness3)
          {
LABEL_20:
          }

LABEL_50:

          v11 = 0;
          if (!topicalityScore3)
          {
LABEL_53:

            goto LABEL_54;
          }

          goto LABEL_51;
        }
      }

      predictedLikelihoodOfEngagement = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
      predictedLikelihoodOfEngagement2 = [(SFCoreSpotlightRankingSignals *)v5 predictedLikelihoodOfEngagement];
      if ((predictedLikelihoodOfEngagement != 0) == (predictedLikelihoodOfEngagement2 == 0))
      {

        goto LABEL_47;
      }

      v62 = predictedLikelihoodOfEngagement;
      v63 = predictedLikelihoodOfEngagement2;
      predictedLikelihoodOfEngagement3 = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
      if (predictedLikelihoodOfEngagement3)
      {
        predictedLikelihoodOfEngagement4 = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
        predictedLikelihoodOfEngagement5 = [(SFCoreSpotlightRankingSignals *)v5 predictedLikelihoodOfEngagement];
        v61 = predictedLikelihoodOfEngagement4;
        v22 = [predictedLikelihoodOfEngagement4 isEqual:?];
        freshness3 = v72;
        if (!v22)
        {
          goto LABEL_45;
        }
      }

      wasNominatedAsTopHit = [(SFCoreSpotlightRankingSignals *)self wasNominatedAsTopHit];
      if (wasNominatedAsTopHit == [(SFCoreSpotlightRankingSignals *)v5 wasNominatedAsTopHit])
      {
        sodiumL2Score = [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
        sodiumL2Score2 = [(SFCoreSpotlightRankingSignals *)v5 sodiumL2Score];
        if ((sodiumL2Score != 0) != (sodiumL2Score2 == 0))
        {
          v57 = sodiumL2Score;
          v58 = sodiumL2Score2;
          [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
          v59 = freshness3 = v72;
          if (v59)
          {
            sodiumL2Score3 = [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
            sodiumL2Score4 = [(SFCoreSpotlightRankingSignals *)v5 sodiumL2Score];
            v56 = sodiumL2Score3;
            v28 = sodiumL2Score3;
            sodiumL2Score = sodiumL2Score4;
            if (![v28 isEqual:sodiumL2Score4])
            {
              goto LABEL_42;
            }
          }

          isExactMatchOfLaunchString = [(SFCoreSpotlightRankingSignals *)self isExactMatchOfLaunchString];
          if (isExactMatchOfLaunchString == [(SFCoreSpotlightRankingSignals *)v5 isExactMatchOfLaunchString])
          {
            wasEngagedInSpotlight = [(SFCoreSpotlightRankingSignals *)self wasEngagedInSpotlight];
            if (wasEngagedInSpotlight == [(SFCoreSpotlightRankingSignals *)v5 wasEngagedInSpotlight])
            {
              resultQueryRecency = [(SFCoreSpotlightRankingSignals *)self resultQueryRecency];
              if (resultQueryRecency == [(SFCoreSpotlightRankingSignals *)v5 resultQueryRecency])
              {
                pommesL2Score = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
                pommesL2Score2 = [(SFCoreSpotlightRankingSignals *)v5 pommesL2Score];
                if ((pommesL2Score != 0) != (pommesL2Score2 == 0))
                {
                  v53 = sodiumL2Score;
                  pommesL2Score3 = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
                  if (pommesL2Score3)
                  {
                    pommesL2Score4 = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
                    pommesL2Score5 = [(SFCoreSpotlightRankingSignals *)v5 pommesL2Score];
                    v52 = pommesL2Score4;
                    if (![pommesL2Score4 isEqual:?])
                    {
                      goto LABEL_63;
                    }
                  }

                  isSemanticMatch = [(SFCoreSpotlightRankingSignals *)self isSemanticMatch];
                  if (isSemanticMatch == [(SFCoreSpotlightRankingSignals *)v5 isSemanticMatch])
                  {
                    semanticScore = [(SFCoreSpotlightRankingSignals *)self semanticScore];
                    semanticScore2 = [(SFCoreSpotlightRankingSignals *)v5 semanticScore];
                    if ((semanticScore != 0) != (semanticScore2 == 0))
                    {
                      semanticScore3 = [(SFCoreSpotlightRankingSignals *)self semanticScore];
                      if (semanticScore3)
                      {
                        semanticScore4 = [(SFCoreSpotlightRankingSignals *)self semanticScore];
                        semanticScore5 = [(SFCoreSpotlightRankingSignals *)v5 semanticScore];
                        v47 = semanticScore4;
                        if (![semanticScore4 isEqual:?])
                        {
                          v11 = 0;
LABEL_87:

LABEL_88:
                          if (pommesL2Score3)
                          {
                          }

                          if (v59)
                          {
                          }

                          if (predictedLikelihoodOfEngagement3)
                          {
                          }

                          if (engagementScore3)
                          {
                          }

                          if (v72)
                          {
                          }

                          if (!topicalityScore3)
                          {
                            goto LABEL_53;
                          }

LABEL_51:
                          topicalityScore5 = v73;
                          topicalityScore4 = v74;
                          goto LABEL_52;
                        }
                      }

                      isSyntacticMatch = [(SFCoreSpotlightRankingSignals *)self isSyntacticMatch];
                      if (isSyntacticMatch == [(SFCoreSpotlightRankingSignals *)v5 isSyntacticMatch])
                      {
                        syntacticScore = [(SFCoreSpotlightRankingSignals *)self syntacticScore];
                        syntacticScore2 = [(SFCoreSpotlightRankingSignals *)v5 syntacticScore];
                        if ((syntacticScore != 0) != (syntacticScore2 == 0))
                        {
                          syntacticScore3 = [(SFCoreSpotlightRankingSignals *)self syntacticScore];
                          if (!syntacticScore3 || (-[SFCoreSpotlightRankingSignals syntacticScore](self, "syntacticScore"), v38 = objc_claimAutoreleasedReturnValue(), -[SFCoreSpotlightRankingSignals syntacticScore](v5, "syntacticScore"), v41 = objc_claimAutoreleasedReturnValue(), v42 = v38, [v38 isEqual:?]))
                          {
                            embeddingStatus = [(SFCoreSpotlightRankingSignals *)self embeddingStatus];
                            if (embeddingStatus == [(SFCoreSpotlightRankingSignals *)v5 embeddingStatus])
                            {
                              itemAgeInDays = [(SFCoreSpotlightRankingSignals *)self itemAgeInDays];
                              v11 = itemAgeInDays == [(SFCoreSpotlightRankingSignals *)v5 itemAgeInDays];
                            }

                            else
                            {
                              v11 = 0;
                            }

                            if (!syntacticScore3)
                            {
                              goto LABEL_85;
                            }
                          }

                          else
                          {
                            v11 = 0;
                          }

LABEL_85:
LABEL_86:
                          if (!semanticScore3)
                          {
                            goto LABEL_88;
                          }

                          goto LABEL_87;
                        }
                      }

                      v11 = 0;
                      goto LABEL_86;
                    }
                  }

                  if (!pommesL2Score3)
                  {
LABEL_64:

                    if (v59)
                    {
                    }

                    if (predictedLikelihoodOfEngagement3)
                    {
                    }

                    if (engagementScore3)
                    {
                    }

                    if (v72)
                    {
                    }

                    goto LABEL_50;
                  }

LABEL_63:

                  goto LABEL_64;
                }
              }
            }
          }

          freshness3 = v72;
          if (!v59)
          {
LABEL_43:

LABEL_44:
            if (!predictedLikelihoodOfEngagement3)
            {
LABEL_46:

LABEL_47:
              if (!engagementScore3)
              {
                goto LABEL_49;
              }

              goto LABEL_48;
            }

LABEL_45:

            goto LABEL_46;
          }

LABEL_42:

          goto LABEL_43;
        }
      }

      freshness3 = v72;
      goto LABEL_44;
    }

    v11 = 0;
  }

LABEL_55:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  topicalityScore = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
  v6 = [topicalityScore copy];
  [v4 setTopicalityScore:v6];

  freshness = [(SFCoreSpotlightRankingSignals *)self freshness];
  v8 = [freshness copy];
  [v4 setFreshness:v8];

  engagementScore = [(SFCoreSpotlightRankingSignals *)self engagementScore];
  v10 = [engagementScore copy];
  [v4 setEngagementScore:v10];

  predictedLikelihoodOfEngagement = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
  v12 = [predictedLikelihoodOfEngagement copy];
  [v4 setPredictedLikelihoodOfEngagement:v12];

  [v4 setWasNominatedAsTopHit:{-[SFCoreSpotlightRankingSignals wasNominatedAsTopHit](self, "wasNominatedAsTopHit")}];
  sodiumL2Score = [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
  v14 = [sodiumL2Score copy];
  [v4 setSodiumL2Score:v14];

  [v4 setIsExactMatchOfLaunchString:{-[SFCoreSpotlightRankingSignals isExactMatchOfLaunchString](self, "isExactMatchOfLaunchString")}];
  [v4 setWasEngagedInSpotlight:{-[SFCoreSpotlightRankingSignals wasEngagedInSpotlight](self, "wasEngagedInSpotlight")}];
  [v4 setResultQueryRecency:{-[SFCoreSpotlightRankingSignals resultQueryRecency](self, "resultQueryRecency")}];
  pommesL2Score = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
  v16 = [pommesL2Score copy];
  [v4 setPommesL2Score:v16];

  [v4 setIsSemanticMatch:{-[SFCoreSpotlightRankingSignals isSemanticMatch](self, "isSemanticMatch")}];
  semanticScore = [(SFCoreSpotlightRankingSignals *)self semanticScore];
  v18 = [semanticScore copy];
  [v4 setSemanticScore:v18];

  [v4 setIsSyntacticMatch:{-[SFCoreSpotlightRankingSignals isSyntacticMatch](self, "isSyntacticMatch")}];
  syntacticScore = [(SFCoreSpotlightRankingSignals *)self syntacticScore];
  v20 = [syntacticScore copy];
  [v4 setSyntacticScore:v20];

  [v4 setEmbeddingStatus:{-[SFCoreSpotlightRankingSignals embeddingStatus](self, "embeddingStatus")}];
  [v4 setItemAgeInDays:{-[SFCoreSpotlightRankingSignals itemAgeInDays](self, "itemAgeInDays")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCoreSpotlightRankingSignals alloc] initWithFacade:self];
  jsonData = [(_SFPBCoreSpotlightRankingSignals *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCoreSpotlightRankingSignals alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCoreSpotlightRankingSignals *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCoreSpotlightRankingSignals alloc] initWithFacade:self];
  data = [(_SFPBCoreSpotlightRankingSignals *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCoreSpotlightRankingSignals)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCoreSpotlightRankingSignals alloc] initWithData:v5];
  v7 = [(SFCoreSpotlightRankingSignals *)self initWithProtobuf:v6];

  return v7;
}

- (SFCoreSpotlightRankingSignals)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v32.receiver = self;
  v32.super_class = SFCoreSpotlightRankingSignals;
  v5 = [(SFCoreSpotlightRankingSignals *)&v32 init];
  if (v5)
  {
    [protobufCopy topicalityScore];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [protobufCopy topicalityScore];
      v8 = [v7 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setTopicalityScore:v8];
    }

    [protobufCopy freshness];
    if (v9 != 0.0)
    {
      v10 = MEMORY[0x1E696AD98];
      [protobufCopy freshness];
      v11 = [v10 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setFreshness:v11];
    }

    [protobufCopy engagementScore];
    if (v12 != 0.0)
    {
      v13 = MEMORY[0x1E696AD98];
      [protobufCopy engagementScore];
      v14 = [v13 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setEngagementScore:v14];
    }

    [protobufCopy predictedLikelihoodOfEngagement];
    if (v15 != 0.0)
    {
      v16 = MEMORY[0x1E696AD98];
      [protobufCopy predictedLikelihoodOfEngagement];
      v17 = [v16 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setPredictedLikelihoodOfEngagement:v17];
    }

    if ([protobufCopy wasNominatedAsTopHit])
    {
      -[SFCoreSpotlightRankingSignals setWasNominatedAsTopHit:](v5, "setWasNominatedAsTopHit:", [protobufCopy wasNominatedAsTopHit]);
    }

    [protobufCopy sodiumL2Score];
    if (v18 != 0.0)
    {
      v19 = MEMORY[0x1E696AD98];
      [protobufCopy sodiumL2Score];
      v20 = [v19 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setSodiumL2Score:v20];
    }

    if ([protobufCopy isExactMatchOfLaunchString])
    {
      -[SFCoreSpotlightRankingSignals setIsExactMatchOfLaunchString:](v5, "setIsExactMatchOfLaunchString:", [protobufCopy isExactMatchOfLaunchString]);
    }

    if ([protobufCopy wasEngagedInSpotlight])
    {
      -[SFCoreSpotlightRankingSignals setWasEngagedInSpotlight:](v5, "setWasEngagedInSpotlight:", [protobufCopy wasEngagedInSpotlight]);
    }

    if ([protobufCopy resultQueryRecency])
    {
      -[SFCoreSpotlightRankingSignals setResultQueryRecency:](v5, "setResultQueryRecency:", [protobufCopy resultQueryRecency]);
    }

    [protobufCopy pommesL2Score];
    if (v21 != 0.0)
    {
      v22 = MEMORY[0x1E696AD98];
      [protobufCopy pommesL2Score];
      v23 = [v22 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setPommesL2Score:v23];
    }

    if ([protobufCopy isSemanticMatch])
    {
      -[SFCoreSpotlightRankingSignals setIsSemanticMatch:](v5, "setIsSemanticMatch:", [protobufCopy isSemanticMatch]);
    }

    [protobufCopy semanticScore];
    if (v24 != 0.0)
    {
      v25 = MEMORY[0x1E696AD98];
      [protobufCopy semanticScore];
      v26 = [v25 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setSemanticScore:v26];
    }

    if ([protobufCopy isSyntacticMatch])
    {
      -[SFCoreSpotlightRankingSignals setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [protobufCopy isSyntacticMatch]);
    }

    [protobufCopy syntacticScore];
    if (v27 != 0.0)
    {
      v28 = MEMORY[0x1E696AD98];
      [protobufCopy syntacticScore];
      v29 = [v28 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setSyntacticScore:v29];
    }

    if ([protobufCopy embeddingStatus])
    {
      -[SFCoreSpotlightRankingSignals setEmbeddingStatus:](v5, "setEmbeddingStatus:", [protobufCopy embeddingStatus]);
    }

    if ([protobufCopy itemAgeInDays])
    {
      -[SFCoreSpotlightRankingSignals setItemAgeInDays:](v5, "setItemAgeInDays:", [protobufCopy itemAgeInDays]);
    }

    v30 = v5;
  }

  return v5;
}

@end