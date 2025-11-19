@interface SFCoreSpotlightRankingSignals
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCoreSpotlightRankingSignals)initWithCoder:(id)a3;
- (SFCoreSpotlightRankingSignals)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCoreSpotlightRankingSignals

- (unint64_t)hash
{
  v27 = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
  v3 = [v27 hash];
  v4 = [(SFCoreSpotlightRankingSignals *)self freshness];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFCoreSpotlightRankingSignals *)self engagementScore];
  v7 = [v6 hash];
  v8 = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(SFCoreSpotlightRankingSignals *)self wasNominatedAsTopHit];
  v11 = [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
  v12 = v9 ^ v10 ^ [v11 hash];
  v13 = [(SFCoreSpotlightRankingSignals *)self isExactMatchOfLaunchString];
  v14 = v13 ^ [(SFCoreSpotlightRankingSignals *)self wasEngagedInSpotlight];
  v15 = v12 ^ v14 ^ [(SFCoreSpotlightRankingSignals *)self resultQueryRecency];
  v16 = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
  v17 = [v16 hash];
  v18 = v17 ^ [(SFCoreSpotlightRankingSignals *)self isSemanticMatch];
  v19 = [(SFCoreSpotlightRankingSignals *)self semanticScore];
  v20 = v18 ^ [v19 hash];
  v21 = v15 ^ v20 ^ [(SFCoreSpotlightRankingSignals *)self isSyntacticMatch];
  v22 = [(SFCoreSpotlightRankingSignals *)self syntacticScore];
  v23 = [v22 hash];
  v24 = v23 ^ [(SFCoreSpotlightRankingSignals *)self embeddingStatus];
  v25 = v24 ^ [(SFCoreSpotlightRankingSignals *)self itemAgeInDays];

  return v21 ^ v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCoreSpotlightRankingSignals *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
      v7 = [(SFCoreSpotlightRankingSignals *)v5 topicalityScore];
      if ((v6 != 0) == (v7 == 0))
      {
        v11 = 0;
LABEL_54:

        goto LABEL_55;
      }

      v8 = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
      if (v8)
      {
        v9 = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
        v10 = [(SFCoreSpotlightRankingSignals *)v5 topicalityScore];
        if (![v9 isEqual:v10])
        {
          v11 = 0;
LABEL_52:

          goto LABEL_53;
        }

        v73 = v10;
        v74 = v9;
      }

      v12 = [(SFCoreSpotlightRankingSignals *)self freshness];
      v13 = [(SFCoreSpotlightRankingSignals *)v5 freshness];
      if ((v12 != 0) == (v13 == 0))
      {
        goto LABEL_50;
      }

      v14 = [(SFCoreSpotlightRankingSignals *)self freshness];
      if (v14)
      {
        v15 = [(SFCoreSpotlightRankingSignals *)self freshness];
        v70 = [(SFCoreSpotlightRankingSignals *)v5 freshness];
        v71 = v15;
        if (![v15 isEqual:v70])
        {
          goto LABEL_20;
        }
      }

      v72 = v14;
      v16 = [(SFCoreSpotlightRankingSignals *)self engagementScore];
      v17 = [(SFCoreSpotlightRankingSignals *)v5 engagementScore];
      if ((v16 != 0) == (v17 == 0))
      {

        if (!v14)
        {
          goto LABEL_50;
        }

        goto LABEL_20;
      }

      v67 = v16;
      v68 = v17;
      v69 = [(SFCoreSpotlightRankingSignals *)self engagementScore];
      if (v69)
      {
        v18 = [(SFCoreSpotlightRankingSignals *)self engagementScore];
        v65 = [(SFCoreSpotlightRankingSignals *)v5 engagementScore];
        v66 = v18;
        if (![v18 isEqual:v65])
        {
LABEL_48:

LABEL_49:
          if (v14)
          {
LABEL_20:
          }

LABEL_50:

          v11 = 0;
          if (!v8)
          {
LABEL_53:

            goto LABEL_54;
          }

          goto LABEL_51;
        }
      }

      v19 = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
      v20 = [(SFCoreSpotlightRankingSignals *)v5 predictedLikelihoodOfEngagement];
      if ((v19 != 0) == (v20 == 0))
      {

        goto LABEL_47;
      }

      v62 = v19;
      v63 = v20;
      v64 = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
      if (v64)
      {
        v21 = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
        v60 = [(SFCoreSpotlightRankingSignals *)v5 predictedLikelihoodOfEngagement];
        v61 = v21;
        v22 = [v21 isEqual:?];
        v14 = v72;
        if (!v22)
        {
          goto LABEL_45;
        }
      }

      v23 = [(SFCoreSpotlightRankingSignals *)self wasNominatedAsTopHit];
      if (v23 == [(SFCoreSpotlightRankingSignals *)v5 wasNominatedAsTopHit])
      {
        v24 = [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
        v25 = [(SFCoreSpotlightRankingSignals *)v5 sodiumL2Score];
        if ((v24 != 0) != (v25 == 0))
        {
          v57 = v24;
          v58 = v25;
          [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
          v59 = v14 = v72;
          if (v59)
          {
            v26 = [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
            v27 = [(SFCoreSpotlightRankingSignals *)v5 sodiumL2Score];
            v56 = v26;
            v28 = v26;
            v24 = v27;
            if (![v28 isEqual:v27])
            {
              goto LABEL_42;
            }
          }

          v29 = [(SFCoreSpotlightRankingSignals *)self isExactMatchOfLaunchString];
          if (v29 == [(SFCoreSpotlightRankingSignals *)v5 isExactMatchOfLaunchString])
          {
            v30 = [(SFCoreSpotlightRankingSignals *)self wasEngagedInSpotlight];
            if (v30 == [(SFCoreSpotlightRankingSignals *)v5 wasEngagedInSpotlight])
            {
              v31 = [(SFCoreSpotlightRankingSignals *)self resultQueryRecency];
              if (v31 == [(SFCoreSpotlightRankingSignals *)v5 resultQueryRecency])
              {
                v55 = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
                v54 = [(SFCoreSpotlightRankingSignals *)v5 pommesL2Score];
                if ((v55 != 0) != (v54 == 0))
                {
                  v53 = v24;
                  v32 = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
                  if (v32)
                  {
                    v33 = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
                    v51 = [(SFCoreSpotlightRankingSignals *)v5 pommesL2Score];
                    v52 = v33;
                    if (![v33 isEqual:?])
                    {
                      goto LABEL_63;
                    }
                  }

                  v35 = [(SFCoreSpotlightRankingSignals *)self isSemanticMatch];
                  if (v35 == [(SFCoreSpotlightRankingSignals *)v5 isSemanticMatch])
                  {
                    v50 = [(SFCoreSpotlightRankingSignals *)self semanticScore];
                    v49 = [(SFCoreSpotlightRankingSignals *)v5 semanticScore];
                    if ((v50 != 0) != (v49 == 0))
                    {
                      v48 = [(SFCoreSpotlightRankingSignals *)self semanticScore];
                      if (v48)
                      {
                        v36 = [(SFCoreSpotlightRankingSignals *)self semanticScore];
                        v46 = [(SFCoreSpotlightRankingSignals *)v5 semanticScore];
                        v47 = v36;
                        if (![v36 isEqual:?])
                        {
                          v11 = 0;
LABEL_87:

LABEL_88:
                          if (v32)
                          {
                          }

                          if (v59)
                          {
                          }

                          if (v64)
                          {
                          }

                          if (v69)
                          {
                          }

                          if (v72)
                          {
                          }

                          if (!v8)
                          {
                            goto LABEL_53;
                          }

LABEL_51:
                          v10 = v73;
                          v9 = v74;
                          goto LABEL_52;
                        }
                      }

                      v37 = [(SFCoreSpotlightRankingSignals *)self isSyntacticMatch];
                      if (v37 == [(SFCoreSpotlightRankingSignals *)v5 isSyntacticMatch])
                      {
                        v45 = [(SFCoreSpotlightRankingSignals *)self syntacticScore];
                        v44 = [(SFCoreSpotlightRankingSignals *)v5 syntacticScore];
                        if ((v45 != 0) != (v44 == 0))
                        {
                          v43 = [(SFCoreSpotlightRankingSignals *)self syntacticScore];
                          if (!v43 || (-[SFCoreSpotlightRankingSignals syntacticScore](self, "syntacticScore"), v38 = objc_claimAutoreleasedReturnValue(), -[SFCoreSpotlightRankingSignals syntacticScore](v5, "syntacticScore"), v41 = objc_claimAutoreleasedReturnValue(), v42 = v38, [v38 isEqual:?]))
                          {
                            v39 = [(SFCoreSpotlightRankingSignals *)self embeddingStatus];
                            if (v39 == [(SFCoreSpotlightRankingSignals *)v5 embeddingStatus])
                            {
                              v40 = [(SFCoreSpotlightRankingSignals *)self itemAgeInDays];
                              v11 = v40 == [(SFCoreSpotlightRankingSignals *)v5 itemAgeInDays];
                            }

                            else
                            {
                              v11 = 0;
                            }

                            if (!v43)
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
                          if (!v48)
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

                  if (!v32)
                  {
LABEL_64:

                    if (v59)
                    {
                    }

                    if (v64)
                    {
                    }

                    if (v69)
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

          v14 = v72;
          if (!v59)
          {
LABEL_43:

LABEL_44:
            if (!v64)
            {
LABEL_46:

LABEL_47:
              if (!v69)
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

      v14 = v72;
      goto LABEL_44;
    }

    v11 = 0;
  }

LABEL_55:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFCoreSpotlightRankingSignals *)self topicalityScore];
  v6 = [v5 copy];
  [v4 setTopicalityScore:v6];

  v7 = [(SFCoreSpotlightRankingSignals *)self freshness];
  v8 = [v7 copy];
  [v4 setFreshness:v8];

  v9 = [(SFCoreSpotlightRankingSignals *)self engagementScore];
  v10 = [v9 copy];
  [v4 setEngagementScore:v10];

  v11 = [(SFCoreSpotlightRankingSignals *)self predictedLikelihoodOfEngagement];
  v12 = [v11 copy];
  [v4 setPredictedLikelihoodOfEngagement:v12];

  [v4 setWasNominatedAsTopHit:{-[SFCoreSpotlightRankingSignals wasNominatedAsTopHit](self, "wasNominatedAsTopHit")}];
  v13 = [(SFCoreSpotlightRankingSignals *)self sodiumL2Score];
  v14 = [v13 copy];
  [v4 setSodiumL2Score:v14];

  [v4 setIsExactMatchOfLaunchString:{-[SFCoreSpotlightRankingSignals isExactMatchOfLaunchString](self, "isExactMatchOfLaunchString")}];
  [v4 setWasEngagedInSpotlight:{-[SFCoreSpotlightRankingSignals wasEngagedInSpotlight](self, "wasEngagedInSpotlight")}];
  [v4 setResultQueryRecency:{-[SFCoreSpotlightRankingSignals resultQueryRecency](self, "resultQueryRecency")}];
  v15 = [(SFCoreSpotlightRankingSignals *)self pommesL2Score];
  v16 = [v15 copy];
  [v4 setPommesL2Score:v16];

  [v4 setIsSemanticMatch:{-[SFCoreSpotlightRankingSignals isSemanticMatch](self, "isSemanticMatch")}];
  v17 = [(SFCoreSpotlightRankingSignals *)self semanticScore];
  v18 = [v17 copy];
  [v4 setSemanticScore:v18];

  [v4 setIsSyntacticMatch:{-[SFCoreSpotlightRankingSignals isSyntacticMatch](self, "isSyntacticMatch")}];
  v19 = [(SFCoreSpotlightRankingSignals *)self syntacticScore];
  v20 = [v19 copy];
  [v4 setSyntacticScore:v20];

  [v4 setEmbeddingStatus:{-[SFCoreSpotlightRankingSignals embeddingStatus](self, "embeddingStatus")}];
  [v4 setItemAgeInDays:{-[SFCoreSpotlightRankingSignals itemAgeInDays](self, "itemAgeInDays")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCoreSpotlightRankingSignals alloc] initWithFacade:self];
  v3 = [(_SFPBCoreSpotlightRankingSignals *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCoreSpotlightRankingSignals alloc] initWithFacade:self];
  v3 = [(_SFPBCoreSpotlightRankingSignals *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCoreSpotlightRankingSignals alloc] initWithFacade:self];
  v5 = [(_SFPBCoreSpotlightRankingSignals *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCoreSpotlightRankingSignals)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCoreSpotlightRankingSignals alloc] initWithData:v5];
  v7 = [(SFCoreSpotlightRankingSignals *)self initWithProtobuf:v6];

  return v7;
}

- (SFCoreSpotlightRankingSignals)initWithProtobuf:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SFCoreSpotlightRankingSignals;
  v5 = [(SFCoreSpotlightRankingSignals *)&v32 init];
  if (v5)
  {
    [v4 topicalityScore];
    if (v6 != 0.0)
    {
      v7 = MEMORY[0x1E696AD98];
      [v4 topicalityScore];
      v8 = [v7 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setTopicalityScore:v8];
    }

    [v4 freshness];
    if (v9 != 0.0)
    {
      v10 = MEMORY[0x1E696AD98];
      [v4 freshness];
      v11 = [v10 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setFreshness:v11];
    }

    [v4 engagementScore];
    if (v12 != 0.0)
    {
      v13 = MEMORY[0x1E696AD98];
      [v4 engagementScore];
      v14 = [v13 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setEngagementScore:v14];
    }

    [v4 predictedLikelihoodOfEngagement];
    if (v15 != 0.0)
    {
      v16 = MEMORY[0x1E696AD98];
      [v4 predictedLikelihoodOfEngagement];
      v17 = [v16 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setPredictedLikelihoodOfEngagement:v17];
    }

    if ([v4 wasNominatedAsTopHit])
    {
      -[SFCoreSpotlightRankingSignals setWasNominatedAsTopHit:](v5, "setWasNominatedAsTopHit:", [v4 wasNominatedAsTopHit]);
    }

    [v4 sodiumL2Score];
    if (v18 != 0.0)
    {
      v19 = MEMORY[0x1E696AD98];
      [v4 sodiumL2Score];
      v20 = [v19 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setSodiumL2Score:v20];
    }

    if ([v4 isExactMatchOfLaunchString])
    {
      -[SFCoreSpotlightRankingSignals setIsExactMatchOfLaunchString:](v5, "setIsExactMatchOfLaunchString:", [v4 isExactMatchOfLaunchString]);
    }

    if ([v4 wasEngagedInSpotlight])
    {
      -[SFCoreSpotlightRankingSignals setWasEngagedInSpotlight:](v5, "setWasEngagedInSpotlight:", [v4 wasEngagedInSpotlight]);
    }

    if ([v4 resultQueryRecency])
    {
      -[SFCoreSpotlightRankingSignals setResultQueryRecency:](v5, "setResultQueryRecency:", [v4 resultQueryRecency]);
    }

    [v4 pommesL2Score];
    if (v21 != 0.0)
    {
      v22 = MEMORY[0x1E696AD98];
      [v4 pommesL2Score];
      v23 = [v22 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setPommesL2Score:v23];
    }

    if ([v4 isSemanticMatch])
    {
      -[SFCoreSpotlightRankingSignals setIsSemanticMatch:](v5, "setIsSemanticMatch:", [v4 isSemanticMatch]);
    }

    [v4 semanticScore];
    if (v24 != 0.0)
    {
      v25 = MEMORY[0x1E696AD98];
      [v4 semanticScore];
      v26 = [v25 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setSemanticScore:v26];
    }

    if ([v4 isSyntacticMatch])
    {
      -[SFCoreSpotlightRankingSignals setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [v4 isSyntacticMatch]);
    }

    [v4 syntacticScore];
    if (v27 != 0.0)
    {
      v28 = MEMORY[0x1E696AD98];
      [v4 syntacticScore];
      v29 = [v28 numberWithFloat:?];
      [(SFCoreSpotlightRankingSignals *)v5 setSyntacticScore:v29];
    }

    if ([v4 embeddingStatus])
    {
      -[SFCoreSpotlightRankingSignals setEmbeddingStatus:](v5, "setEmbeddingStatus:", [v4 embeddingStatus]);
    }

    if ([v4 itemAgeInDays])
    {
      -[SFCoreSpotlightRankingSignals setItemAgeInDays:](v5, "setItemAgeInDays:", [v4 itemAgeInDays]);
    }

    v30 = v5;
  }

  return v5;
}

@end