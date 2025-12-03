@interface INFERENCESchemaINFERENCEContactSignalSet
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEContactSignalSet)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEContactSignalSet)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addHandlesWithPrivacySignalSets:(id)sets;
- (void)setHasAreAllPrimaryContactTokensInQuery:(BOOL)query;
- (void)setHasAreAllQueryTokensInContact:(BOOL)contact;
- (void)setHasAreQueryDiacriticsRemoved:(BOOL)removed;
- (void)setHasHasHandleWithAllowedType:(BOOL)type;
- (void)setHasHasHandleWithPreferredType:(BOOL)type;
- (void)setHasHasSuggestedProperties:(BOOL)properties;
- (void)setHasIsAsrE3Signal:(BOOL)signal;
- (void)setHasIsCommunalRequest:(BOOL)request;
- (void)setHasIsFavorite:(BOOL)favorite;
- (void)setHasIsFromNLXSearch:(BOOL)search;
- (void)setHasIsFromSRRSearch:(BOOL)search;
- (void)setHasIsFromStandardSearch:(BOOL)search;
- (void)setHasIsHypocorism:(BOOL)hypocorism;
- (void)setHasIsMeCard:(BOOL)card;
- (void)setHasIsMeCardRelation:(BOOL)relation;
- (void)setHasIsMeCardRelationExactMatch:(BOOL)match;
- (void)setHasIsOnlyCandidate:(BOOL)candidate;
- (void)setHasIsPartialNameMatch:(BOOL)match;
- (void)setHasIsPlusSignal:(BOOL)signal;
- (void)setHasIsQueryNameDerivedFromRelationshipLabel:(BOOL)label;
- (void)setHasIsQueryNormalized:(BOOL)normalized;
- (void)setHasIsQueryRelationshipLabelDerivedFromName:(BOOL)name;
- (void)setHasIsQueryStrippedOfPunctuation:(BOOL)punctuation;
- (void)setHasIsQueryStrippedOfSymbols:(BOOL)symbols;
- (void)setHasIsQueryStrippedOfWhitespace:(BOOL)whitespace;
- (void)setHasIsRecent:(BOOL)recent;
- (void)setHasIsRecentInSameDomain:(BOOL)domain;
- (void)setHasIsRecentInSiriRequest:(BOOL)request;
- (void)setHasIsRecentlyCorrected:(BOOL)corrected;
- (void)setHasIsRelationAlias:(BOOL)alias;
- (void)setHasIsSuggestedContact:(BOOL)contact;
- (void)setHasIsThirdPartyMatch:(BOOL)match;
- (void)setHasIsTransliterated:(BOOL)transliterated;
- (void)setHasNlxScore:(BOOL)score;
- (void)setHasRecencyRank:(BOOL)rank;
- (void)setHasRecencyRankInSameDomain:(BOOL)domain;
- (void)setHasRecencyRankInSiriRequest:(BOOL)request;
- (void)setHasSrrScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEContactSignalSet

- (INFERENCESchemaINFERENCEContactSignalSet)initWithDictionary:(id)dictionary
{
  v114 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v112.receiver = self;
  v112.super_class = INFERENCESchemaINFERENCEContactSignalSet;
  v5 = [(INFERENCESchemaINFERENCEContactSignalSet *)&v112 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"speechAlternativeRanks"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCESpeechAlternativeRanks alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setSpeechAlternativeRanks:v7];
    }

    v73 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"isQueryStrippedOfTitles"];
    objc_opt_class();
    v107 = v8;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsQueryStrippedOfTitles:](v5, "setIsQueryStrippedOfTitles:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isSuggestedContact"];
    objc_opt_class();
    v106 = v9;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsSuggestedContact:](v5, "setIsSuggestedContact:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"areAllQueryTokensInContact"];
    objc_opt_class();
    v105 = v10;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setAreAllQueryTokensInContact:](v5, "setAreAllQueryTokensInContact:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"areAllPrimaryContactTokensInQuery"];
    objc_opt_class();
    v104 = v11;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setAreAllPrimaryContactTokensInQuery:](v5, "setAreAllPrimaryContactTokensInQuery:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isHypocorism"];
    objc_opt_class();
    v103 = v12;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsHypocorism:](v5, "setIsHypocorism:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"hasSuggestedProperties"];
    objc_opt_class();
    v102 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setHasSuggestedProperties:](v5, "setHasSuggestedProperties:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isPartialNameMatch"];
    objc_opt_class();
    v101 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsPartialNameMatch:](v5, "setIsPartialNameMatch:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isFromStandardSearch"];
    objc_opt_class();
    v100 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsFromStandardSearch:](v5, "setIsFromStandardSearch:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isFromNLXSearch"];
    objc_opt_class();
    v99 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsFromNLXSearch:](v5, "setIsFromNLXSearch:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"isFromSRRSearch"];
    objc_opt_class();
    v98 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsFromSRRSearch:](v5, "setIsFromSRRSearch:", [v17 BOOLValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"nlxScore"];
    objc_opt_class();
    v97 = v18;
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setNlxScore:?];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"srrScore"];
    objc_opt_class();
    v96 = v19;
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setSrrScore:?];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isRecent"];
    objc_opt_class();
    v95 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsRecent:](v5, "setIsRecent:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"isRecentInSameDomain"];
    objc_opt_class();
    v94 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsRecentInSameDomain:](v5, "setIsRecentInSameDomain:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"isRecentInSiriRequest"];
    objc_opt_class();
    v93 = v22;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsRecentInSiriRequest:](v5, "setIsRecentInSiriRequest:", [v22 BOOLValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"isRecentlyCorrected"];
    objc_opt_class();
    v92 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsRecentlyCorrected:](v5, "setIsRecentlyCorrected:", [v23 BOOLValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"recencyRank"];
    objc_opt_class();
    v91 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setRecencyRank:](v5, "setRecencyRank:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"recencyRankInSameDomain"];
    objc_opt_class();
    v90 = v25;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setRecencyRankInSameDomain:](v5, "setRecencyRankInSameDomain:", [v25 intValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"recencyRankInSiriRequest"];
    objc_opt_class();
    v89 = v26;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setRecencyRankInSiriRequest:](v5, "setRecencyRankInSiriRequest:", [v26 intValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"historyStats"];
    objc_opt_class();
    v88 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[INFERENCESchemaINFERENCEPrivatizedHistoryStats alloc] initWithDictionary:v27];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setHistoryStats:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"historyStatsInSameDomain"];
    objc_opt_class();
    v87 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[INFERENCESchemaINFERENCEPrivatizedHistoryStats alloc] initWithDictionary:v29];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setHistoryStatsInSameDomain:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"historyStatsInSiriRequests"];
    objc_opt_class();
    v86 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[INFERENCESchemaINFERENCEPrivatizedHistoryStats alloc] initWithDictionary:v31];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setHistoryStatsInSiriRequests:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"isMeCard"];
    objc_opt_class();
    v85 = v33;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsMeCard:](v5, "setIsMeCard:", [v33 BOOLValue]);
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"isMeCardRelation"];
    objc_opt_class();
    v84 = v34;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsMeCardRelation:](v5, "setIsMeCardRelation:", [v34 BOOLValue]);
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"isMeCardRelationExactMatch"];
    objc_opt_class();
    v83 = v35;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsMeCardRelationExactMatch:](v5, "setIsMeCardRelationExactMatch:", [v35 BOOLValue]);
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"isRelationAlias"];
    objc_opt_class();
    v82 = v36;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsRelationAlias:](v5, "setIsRelationAlias:", [v36 BOOLValue]);
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"areQueryDiacriticsRemoved"];
    objc_opt_class();
    v81 = v37;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setAreQueryDiacriticsRemoved:](v5, "setAreQueryDiacriticsRemoved:", [v37 BOOLValue]);
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"isQueryNameDerivedFromRelationshipLabel"];
    objc_opt_class();
    v80 = v38;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsQueryNameDerivedFromRelationshipLabel:](v5, "setIsQueryNameDerivedFromRelationshipLabel:", [v38 BOOLValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"isQueryRelationshipLabelDerivedFromName"];
    objc_opt_class();
    v79 = v39;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsQueryRelationshipLabelDerivedFromName:](v5, "setIsQueryRelationshipLabelDerivedFromName:", [v39 BOOLValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"isThirdPartyMatch"];
    objc_opt_class();
    v78 = v40;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsThirdPartyMatch:](v5, "setIsThirdPartyMatch:", [v40 BOOLValue]);
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"isFavorite"];
    objc_opt_class();
    v77 = v41;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsFavorite:](v5, "setIsFavorite:", [v41 BOOLValue]);
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"isTransliterated"];
    objc_opt_class();
    v76 = v42;
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsTransliterated:](v5, "setIsTransliterated:", [v42 BOOLValue]);
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"requestMatchSignalSet"];
    objc_opt_class();
    v75 = v43;
    if (objc_opt_isKindOfClass())
    {
      v44 = [[INFERENCESchemaINFERENCERequestMatchSignalSet alloc] initWithDictionary:v43];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setRequestMatchSignalSet:v44];
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"handlesWithPrivacySignalSets"];
    objc_opt_class();
    v74 = v45;
    if (objc_opt_isKindOfClass())
    {
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v46 = v45;
      v47 = [v46 countByEnumeratingWithState:&v108 objects:v113 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v109;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v109 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v108 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v52 = [[INFERENCESchemaINFERENCEContactHandleSignalSet alloc] initWithDictionary:v51];
              [(INFERENCESchemaINFERENCEContactSignalSet *)v5 addHandlesWithPrivacySignalSets:v52];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v108 objects:v113 count:16];
        }

        while (v48);
      }
    }

    v53 = [dictionaryCopy objectForKeyedSubscript:@"hasHandleWithPreferredType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setHasHandleWithPreferredType:](v5, "setHasHandleWithPreferredType:", [v53 BOOLValue]);
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"hasHandleWithAllowedType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setHasHandleWithAllowedType:](v5, "setHasHandleWithAllowedType:", [v54 BOOLValue]);
    }

    v55 = [dictionaryCopy objectForKeyedSubscript:@"isCommunalRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsCommunalRequest:](v5, "setIsCommunalRequest:", [v55 BOOLValue]);
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfCommunalDevicesMatchingCandidate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v56 floatValue];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setFractionOfCommunalDevicesMatchingCandidate:?];
    }

    v72 = v53;
    v57 = [dictionaryCopy objectForKeyedSubscript:@"isPlusSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsPlusSignal:](v5, "setIsPlusSignal:", [v57 BOOLValue]);
    }

    v70 = v55;
    v71 = v54;
    v58 = [dictionaryCopy objectForKeyedSubscript:{@"isOnlyCandidate", v57}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsOnlyCandidate:](v5, "setIsOnlyCandidate:", [v58 BOOLValue]);
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"thirdPartyAppBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = [v59 copy];
      [(INFERENCESchemaINFERENCEContactSignalSet *)v5 setThirdPartyAppBundleId:v60];
    }

    v69 = v56;
    v61 = [dictionaryCopy objectForKeyedSubscript:@"isQueryNormalized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsQueryNormalized:](v5, "setIsQueryNormalized:", [v61 BOOLValue]);
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"isQueryStrippedOfPunctuation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsQueryStrippedOfPunctuation:](v5, "setIsQueryStrippedOfPunctuation:", [v62 BOOLValue]);
    }

    v63 = [dictionaryCopy objectForKeyedSubscript:@"isQueryStrippedOfWhitespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsQueryStrippedOfWhitespace:](v5, "setIsQueryStrippedOfWhitespace:", [v63 BOOLValue]);
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"isQueryStrippedOfSymbols"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsQueryStrippedOfSymbols:](v5, "setIsQueryStrippedOfSymbols:", [v64 BOOLValue]);
    }

    v65 = [dictionaryCopy objectForKeyedSubscript:@"isAsrE3Signal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactSignalSet setIsAsrE3Signal:](v5, "setIsAsrE3Signal:", [v65 BOOLValue]);
    }

    v66 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactSignalSet)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactSignalSet *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEContactSignalSet *)self dictionaryRepresentation];
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
  v86 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = &self->_isAsrE3Signal + 1;
  v5 = *(&self->_isAsrE3Signal + 1);
  if ((v5 & 8) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet areAllPrimaryContactTokensInQuery](self, "areAllPrimaryContactTokensInQuery")}];
    [dictionary setObject:v21 forKeyedSubscript:@"areAllPrimaryContactTokensInQuery"];

    v5 = *v4;
    if ((*v4 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet areAllQueryTokensInContact](self, "areAllQueryTokensInContact")}];
  [dictionary setObject:v22 forKeyedSubscript:@"areAllQueryTokensInContact"];

  if ((*v4 & 0x800000) != 0)
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet areQueryDiacriticsRemoved](self, "areQueryDiacriticsRemoved")}];
    [dictionary setObject:v6 forKeyedSubscript:@"areQueryDiacriticsRemoved"];
  }

LABEL_5:
  if (*(&self->_has + 1))
  {
    v7 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactSignalSet *)self fractionOfCommunalDevicesMatchingCandidate];
    v8 = [v7 numberWithFloat:?];
    [dictionary setObject:v8 forKeyedSubscript:@"fractionOfCommunalDevicesMatchingCandidate"];
  }

  if ([(NSArray *)self->_handlesWithPrivacySignalSets count])
  {
    v80 = dictionary;
    array = [MEMORY[0x1E695DF70] array];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v10 = self->_handlesWithPrivacySignalSets;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v82;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v82 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v81 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v12);
    }

    dictionary = v80;
    [v80 setObject:array forKeyedSubscript:@"handlesWithPrivacySignalSets"];
  }

  v17 = *v4;
  if ((*v4 & 0x40000000) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet hasHandleWithAllowedType](self, "hasHandleWithAllowedType")}];
    [dictionary setObject:v23 forKeyedSubscript:@"hasHandleWithAllowedType"];

    v17 = *v4;
    if ((*v4 & 0x20000000) == 0)
    {
LABEL_21:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v17 & 0x20000000) == 0)
  {
    goto LABEL_21;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet hasHandleWithPreferredType](self, "hasHandleWithPreferredType")}];
  [dictionary setObject:v24 forKeyedSubscript:@"hasHandleWithPreferredType"];

  if ((*v4 & 0x20) != 0)
  {
LABEL_22:
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet hasSuggestedProperties](self, "hasSuggestedProperties")}];
    [dictionary setObject:v18 forKeyedSubscript:@"hasSuggestedProperties"];
  }

LABEL_23:
  if (self->_historyStats)
  {
    historyStats = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStats];
    dictionaryRepresentation2 = [historyStats dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"historyStats"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"historyStats"];
    }
  }

  if (self->_historyStatsInSameDomain)
  {
    historyStatsInSameDomain = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSameDomain];
    dictionaryRepresentation3 = [historyStatsInSameDomain dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"historyStatsInSameDomain"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"historyStatsInSameDomain"];
    }
  }

  if (self->_historyStatsInSiriRequests)
  {
    historyStatsInSiriRequests = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSiriRequests];
    dictionaryRepresentation4 = [historyStatsInSiriRequests dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"historyStatsInSiriRequests"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"historyStatsInSiriRequests"];
    }
  }

  if (*(&self->_has + 1) < 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isAsrE3Signal](self, "isAsrE3Signal")}];
    [dictionary setObject:v32 forKeyedSubscript:@"isAsrE3Signal"];
  }

  v33 = *v4;
  if ((*v4 & 0x80000000) != 0)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isCommunalRequest](self, "isCommunalRequest")}];
    [dictionary setObject:v62 forKeyedSubscript:@"isCommunalRequest"];

    v33 = *v4;
    if ((*v4 & 0x8000000) == 0)
    {
LABEL_48:
      if ((v33 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_106;
    }
  }

  else if ((v33 & 0x8000000) == 0)
  {
    goto LABEL_48;
  }

  v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isFavorite](self, "isFavorite")}];
  [dictionary setObject:v63 forKeyedSubscript:@"isFavorite"];

  v33 = *v4;
  if ((*v4 & 0x100) == 0)
  {
LABEL_49:
    if ((v33 & 0x200) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_107;
  }

LABEL_106:
  v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isFromNLXSearch](self, "isFromNLXSearch")}];
  [dictionary setObject:v64 forKeyedSubscript:@"isFromNLXSearch"];

  v33 = *v4;
  if ((*v4 & 0x200) == 0)
  {
LABEL_50:
    if ((v33 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_108;
  }

LABEL_107:
  v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isFromSRRSearch](self, "isFromSRRSearch")}];
  [dictionary setObject:v65 forKeyedSubscript:@"isFromSRRSearch"];

  v33 = *v4;
  if ((*v4 & 0x80) == 0)
  {
LABEL_51:
    if ((v33 & 0x10) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_109;
  }

LABEL_108:
  v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isFromStandardSearch](self, "isFromStandardSearch")}];
  [dictionary setObject:v66 forKeyedSubscript:@"isFromStandardSearch"];

  v33 = *v4;
  if ((*v4 & 0x10) == 0)
  {
LABEL_52:
    if ((v33 & 0x80000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_110;
  }

LABEL_109:
  v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isHypocorism](self, "isHypocorism")}];
  [dictionary setObject:v67 forKeyedSubscript:@"isHypocorism"];

  v33 = *v4;
  if ((*v4 & 0x80000) == 0)
  {
LABEL_53:
    if ((v33 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_111;
  }

LABEL_110:
  v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isMeCard](self, "isMeCard")}];
  [dictionary setObject:v68 forKeyedSubscript:@"isMeCard"];

  v33 = *v4;
  if ((*v4 & 0x100000) == 0)
  {
LABEL_54:
    if ((v33 & 0x200000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_111:
  v69 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isMeCardRelation](self, "isMeCardRelation")}];
  [dictionary setObject:v69 forKeyedSubscript:@"isMeCardRelation"];

  if ((*v4 & 0x200000) != 0)
  {
LABEL_55:
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isMeCardRelationExactMatch](self, "isMeCardRelationExactMatch")}];
    [dictionary setObject:v34 forKeyedSubscript:@"isMeCardRelationExactMatch"];
  }

LABEL_56:
  if ((*(&self->_has + 1) & 4) != 0)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isOnlyCandidate](self, "isOnlyCandidate")}];
    [dictionary setObject:v35 forKeyedSubscript:@"isOnlyCandidate"];
  }

  if ((*v4 & 0x40) != 0)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isPartialNameMatch](self, "isPartialNameMatch")}];
    [dictionary setObject:v36 forKeyedSubscript:@"isPartialNameMatch"];
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isPlusSignal](self, "isPlusSignal")}];
    [dictionary setObject:v37 forKeyedSubscript:@"isPlusSignal"];
  }

  if (*&self->_has)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isQueryNameDerivedFromRelationshipLabel](self, "isQueryNameDerivedFromRelationshipLabel")}];
    [dictionary setObject:v38 forKeyedSubscript:@"isQueryNameDerivedFromRelationshipLabel"];
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isQueryNormalized](self, "isQueryNormalized")}];
    [dictionary setObject:v39 forKeyedSubscript:@"isQueryNormalized"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isQueryRelationshipLabelDerivedFromName](self, "isQueryRelationshipLabelDerivedFromName")}];
    [dictionary setObject:v40 forKeyedSubscript:@"isQueryRelationshipLabelDerivedFromName"];
  }

  v41 = *(&self->_has + 1);
  if ((v41 & 0x10) != 0)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isQueryStrippedOfPunctuation](self, "isQueryStrippedOfPunctuation")}];
    [dictionary setObject:v42 forKeyedSubscript:@"isQueryStrippedOfPunctuation"];

    v41 = *(&self->_has + 1);
  }

  if ((v41 & 0x40) != 0)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isQueryStrippedOfSymbols](self, "isQueryStrippedOfSymbols")}];
    [dictionary setObject:v43 forKeyedSubscript:@"isQueryStrippedOfSymbols"];
  }

  if (*v4)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isQueryStrippedOfTitles](self, "isQueryStrippedOfTitles")}];
    [dictionary setObject:v44 forKeyedSubscript:@"isQueryStrippedOfTitles"];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isQueryStrippedOfWhitespace](self, "isQueryStrippedOfWhitespace")}];
    [dictionary setObject:v45 forKeyedSubscript:@"isQueryStrippedOfWhitespace"];
  }

  v46 = *v4;
  if ((*v4 & 0x1000) != 0)
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isRecent](self, "isRecent")}];
    [dictionary setObject:v50 forKeyedSubscript:@"isRecent"];

    v46 = *v4;
    if ((*v4 & 0x2000) == 0)
    {
LABEL_78:
      if ((v46 & 0x4000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_94;
    }
  }

  else if ((v46 & 0x2000) == 0)
  {
    goto LABEL_78;
  }

  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isRecentInSameDomain](self, "isRecentInSameDomain")}];
  [dictionary setObject:v51 forKeyedSubscript:@"isRecentInSameDomain"];

  v46 = *v4;
  if ((*v4 & 0x4000) == 0)
  {
LABEL_79:
    if ((v46 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_95;
  }

LABEL_94:
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isRecentInSiriRequest](self, "isRecentInSiriRequest")}];
  [dictionary setObject:v52 forKeyedSubscript:@"isRecentInSiriRequest"];

  v46 = *v4;
  if ((*v4 & 0x8000) == 0)
  {
LABEL_80:
    if ((v46 & 0x400000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_96;
  }

LABEL_95:
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isRecentlyCorrected](self, "isRecentlyCorrected")}];
  [dictionary setObject:v53 forKeyedSubscript:@"isRecentlyCorrected"];

  v46 = *v4;
  if ((*v4 & 0x400000) == 0)
  {
LABEL_81:
    if ((v46 & 2) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_97;
  }

LABEL_96:
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isRelationAlias](self, "isRelationAlias")}];
  [dictionary setObject:v54 forKeyedSubscript:@"isRelationAlias"];

  v46 = *v4;
  if ((*v4 & 2) == 0)
  {
LABEL_82:
    if ((v46 & 0x4000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_98;
  }

LABEL_97:
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isSuggestedContact](self, "isSuggestedContact")}];
  [dictionary setObject:v55 forKeyedSubscript:@"isSuggestedContact"];

  v46 = *v4;
  if ((*v4 & 0x4000000) == 0)
  {
LABEL_83:
    if ((v46 & 0x10000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_99;
  }

LABEL_98:
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isThirdPartyMatch](self, "isThirdPartyMatch")}];
  [dictionary setObject:v56 forKeyedSubscript:@"isThirdPartyMatch"];

  v46 = *v4;
  if ((*v4 & 0x10000000) == 0)
  {
LABEL_84:
    if ((v46 & 0x400) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_100;
  }

LABEL_99:
  v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactSignalSet isTransliterated](self, "isTransliterated")}];
  [dictionary setObject:v57 forKeyedSubscript:@"isTransliterated"];

  v46 = *v4;
  if ((*v4 & 0x400) == 0)
  {
LABEL_85:
    if ((v46 & 0x10000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_101;
  }

LABEL_100:
  v58 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEContactSignalSet *)self nlxScore];
  v59 = [v58 numberWithFloat:?];
  [dictionary setObject:v59 forKeyedSubscript:@"nlxScore"];

  v46 = *v4;
  if ((*v4 & 0x10000) == 0)
  {
LABEL_86:
    if ((v46 & 0x20000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_102;
  }

LABEL_101:
  v60 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEContactSignalSet recencyRank](self, "recencyRank")}];
  [dictionary setObject:v60 forKeyedSubscript:@"recencyRank"];

  v46 = *v4;
  if ((*v4 & 0x20000) == 0)
  {
LABEL_87:
    if ((v46 & 0x40000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_102:
  v61 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEContactSignalSet recencyRankInSameDomain](self, "recencyRankInSameDomain")}];
  [dictionary setObject:v61 forKeyedSubscript:@"recencyRankInSameDomain"];

  if ((*v4 & 0x40000) != 0)
  {
LABEL_88:
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEContactSignalSet recencyRankInSiriRequest](self, "recencyRankInSiriRequest")}];
    [dictionary setObject:v47 forKeyedSubscript:@"recencyRankInSiriRequest"];
  }

LABEL_89:
  if (self->_requestMatchSignalSet)
  {
    requestMatchSignalSet = [(INFERENCESchemaINFERENCEContactSignalSet *)self requestMatchSignalSet];
    dictionaryRepresentation5 = [requestMatchSignalSet dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"requestMatchSignalSet"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"requestMatchSignalSet"];
    }
  }

  if (self->_speechAlternativeRanks)
  {
    speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self speechAlternativeRanks];
    dictionaryRepresentation6 = [speechAlternativeRanks dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"speechAlternativeRanks"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"speechAlternativeRanks"];
    }
  }

  if ((*(&self->_isAsrE3Signal + 2) & 8) != 0)
  {
    v74 = MEMORY[0x1E696AD98];
    [(INFERENCESchemaINFERENCEContactSignalSet *)self srrScore];
    v75 = [v74 numberWithFloat:?];
    [dictionary setObject:v75 forKeyedSubscript:@"srrScore"];
  }

  if (self->_thirdPartyAppBundleId)
  {
    thirdPartyAppBundleId = [(INFERENCESchemaINFERENCEContactSignalSet *)self thirdPartyAppBundleId];
    v77 = [thirdPartyAppBundleId copy];
    [dictionary setObject:v77 forKeyedSubscript:@"thirdPartyAppBundleId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v78 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v72 = [(INFERENCESchemaINFERENCESpeechAlternativeRanks *)self->_speechAlternativeRanks hash];
  v5 = &self->_isAsrE3Signal + 1;
  v6 = *(&self->_isAsrE3Signal + 1);
  if (v6)
  {
    v71 = 2654435761 * self->_isQueryStrippedOfTitles;
    if ((v6 & 2) != 0)
    {
LABEL_3:
      v70 = 2654435761 * self->_isSuggestedContact;
      if ((v6 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v71 = 0;
    if ((v6 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v70 = 0;
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v69 = 2654435761 * self->_areAllQueryTokensInContact;
    if ((v6 & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v69 = 0;
  if ((v6 & 8) != 0)
  {
LABEL_5:
    v68 = 2654435761 * self->_areAllPrimaryContactTokensInQuery;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v68 = 0;
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    v67 = 2654435761 * self->_isHypocorism;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v67 = 0;
  if ((v6 & 0x20) != 0)
  {
LABEL_7:
    v66 = 2654435761 * self->_hasSuggestedProperties;
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v66 = 0;
  if ((v6 & 0x40) != 0)
  {
LABEL_8:
    v65 = 2654435761 * self->_isPartialNameMatch;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v65 = 0;
  if ((v6 & 0x80) != 0)
  {
LABEL_9:
    v64 = 2654435761 * self->_isFromStandardSearch;
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v64 = 0;
  if ((v6 & 0x100) != 0)
  {
LABEL_10:
    v63 = 2654435761 * self->_isFromNLXSearch;
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v63 = 0;
  if ((v6 & 0x200) != 0)
  {
LABEL_11:
    v62 = 2654435761 * self->_isFromSRRSearch;
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_12;
    }

LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

LABEL_26:
  v62 = 0;
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  nlxScore = self->_nlxScore;
  if (nlxScore >= 0.0)
  {
    v8 = nlxScore;
  }

  else
  {
    v8 = -nlxScore;
  }

  *v3.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v10), v4, v3);
  v11 = 2654435761u * *v3.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_28:
  if ((v6 & 0x800) != 0)
  {
    srrScore = self->_srrScore;
    if (srrScore >= 0.0)
    {
      v14 = srrScore;
    }

    else
    {
      v14 = -srrScore;
    }

    *v3.i64 = floor(v14 + 0.5);
    v15 = (v14 - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v4, v3).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v12 += v15;
      }
    }

    else
    {
      v12 -= fabs(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 & 0x1000) != 0)
  {
    v59 = 2654435761 * self->_isRecent;
    if ((v6 & 0x2000) != 0)
    {
LABEL_41:
      v58 = 2654435761 * self->_isRecentInSameDomain;
      if ((v6 & 0x4000) != 0)
      {
        goto LABEL_42;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v59 = 0;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_41;
    }
  }

  v58 = 0;
  if ((v6 & 0x4000) != 0)
  {
LABEL_42:
    v57 = 2654435761 * self->_isRecentInSiriRequest;
    if ((v6 & 0x8000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

LABEL_48:
  v57 = 0;
  if ((v6 & 0x8000) != 0)
  {
LABEL_43:
    v56 = 2654435761 * self->_isRecentlyCorrected;
    if ((v6 & 0x10000) != 0)
    {
      goto LABEL_44;
    }

LABEL_50:
    v55 = 0;
    if ((v6 & 0x20000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_51;
  }

LABEL_49:
  v56 = 0;
  if ((v6 & 0x10000) == 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  v55 = 2654435761 * self->_recencyRank;
  if ((v6 & 0x20000) != 0)
  {
LABEL_45:
    v54 = 2654435761 * self->_recencyRankInSameDomain;
    goto LABEL_52;
  }

LABEL_51:
  v54 = 0;
LABEL_52:
  v60 = v12;
  v61 = v11;
  if ((v6 & 0x40000) != 0)
  {
    v53 = 2654435761 * self->_recencyRankInSiriRequest;
  }

  else
  {
    v53 = 0;
  }

  v52 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self->_historyStats hash];
  v51 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self->_historyStatsInSameDomain hash];
  v50 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self->_historyStatsInSiriRequests hash];
  v17 = *v5;
  if ((*v5 & 0x80000) != 0)
  {
    v49 = 2654435761 * self->_isMeCard;
    if ((v17 & 0x100000) != 0)
    {
LABEL_57:
      v48 = 2654435761 * self->_isMeCardRelation;
      if ((v17 & 0x200000) != 0)
      {
        goto LABEL_58;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v49 = 0;
    if ((v17 & 0x100000) != 0)
    {
      goto LABEL_57;
    }
  }

  v48 = 0;
  if ((v17 & 0x200000) != 0)
  {
LABEL_58:
    v47 = 2654435761 * self->_isMeCardRelationExactMatch;
    if ((v17 & 0x400000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_69;
  }

LABEL_68:
  v47 = 0;
  if ((v17 & 0x400000) != 0)
  {
LABEL_59:
    v46 = 2654435761 * self->_isRelationAlias;
    if ((v17 & 0x800000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

LABEL_69:
  v46 = 0;
  if ((v17 & 0x800000) != 0)
  {
LABEL_60:
    v45 = 2654435761 * self->_areQueryDiacriticsRemoved;
    if ((v17 & 0x1000000) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_71;
  }

LABEL_70:
  v45 = 0;
  if ((v17 & 0x1000000) != 0)
  {
LABEL_61:
    v44 = 2654435761 * self->_isQueryNameDerivedFromRelationshipLabel;
    if ((v17 & 0x2000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_72;
  }

LABEL_71:
  v44 = 0;
  if ((v17 & 0x2000000) != 0)
  {
LABEL_62:
    v43 = 2654435761 * self->_isQueryRelationshipLabelDerivedFromName;
    if ((v17 & 0x4000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_73;
  }

LABEL_72:
  v43 = 0;
  if ((v17 & 0x4000000) != 0)
  {
LABEL_63:
    v42 = 2654435761 * self->_isThirdPartyMatch;
    if ((v17 & 0x8000000) != 0)
    {
      goto LABEL_64;
    }

LABEL_74:
    v41 = 0;
    if ((v17 & 0x10000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_75;
  }

LABEL_73:
  v42 = 0;
  if ((v17 & 0x8000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_64:
  v41 = 2654435761 * self->_isFavorite;
  if ((v17 & 0x10000000) != 0)
  {
LABEL_65:
    v40 = 2654435761 * self->_isTransliterated;
    goto LABEL_76;
  }

LABEL_75:
  v40 = 0;
LABEL_76:
  v39 = [(INFERENCESchemaINFERENCERequestMatchSignalSet *)self->_requestMatchSignalSet hash];
  v18 = [(NSArray *)self->_handlesWithPrivacySignalSets hash];
  v21 = *v5;
  if ((*v5 & 0x20000000) == 0)
  {
    v22 = 0;
    if ((v21 & 0x40000000) != 0)
    {
      goto LABEL_78;
    }

LABEL_81:
    v23 = 0;
    if (v21 < 0)
    {
      goto LABEL_79;
    }

    goto LABEL_82;
  }

  v22 = 2654435761 * self->_hasHandleWithPreferredType;
  if ((v21 & 0x40000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_78:
  v23 = 2654435761 * self->_hasHandleWithAllowedType;
  if (v21 < 0)
  {
LABEL_79:
    v24 = 2654435761 * self->_isCommunalRequest;
    goto LABEL_83;
  }

LABEL_82:
  v24 = 0;
LABEL_83:
  if (*(&self->_has + 1))
  {
    fractionOfCommunalDevicesMatchingCandidate = self->_fractionOfCommunalDevicesMatchingCandidate;
    if (fractionOfCommunalDevicesMatchingCandidate >= 0.0)
    {
      v27 = fractionOfCommunalDevicesMatchingCandidate;
    }

    else
    {
      v27 = -fractionOfCommunalDevicesMatchingCandidate;
    }

    *v19.i64 = floor(v27 + 0.5);
    v28 = (v27 - *v19.i64) * 1.84467441e19;
    *v20.i64 = *v19.i64 - trunc(*v19.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v25 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v20, v19).i64;
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

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v30 = 2654435761 * self->_isPlusSignal;
    if ((*(&self->_has + 1) & 4) != 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v30 = 0;
    if ((*(&self->_has + 1) & 4) != 0)
    {
LABEL_94:
      v31 = 2654435761 * self->_isOnlyCandidate;
      goto LABEL_97;
    }
  }

  v31 = 0;
LABEL_97:
  v32 = [(NSString *)self->_thirdPartyAppBundleId hash];
  if ((*(&self->_has + 1) & 8) != 0)
  {
    v33 = 2654435761 * self->_isQueryNormalized;
    if ((*(&self->_has + 1) & 0x10) != 0)
    {
LABEL_99:
      v34 = 2654435761 * self->_isQueryStrippedOfPunctuation;
      if ((*(&self->_has + 1) & 0x20) != 0)
      {
        goto LABEL_100;
      }

      goto LABEL_105;
    }
  }

  else
  {
    v33 = 0;
    if ((*(&self->_has + 1) & 0x10) != 0)
    {
      goto LABEL_99;
    }
  }

  v34 = 0;
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
LABEL_100:
    v35 = 2654435761 * self->_isQueryStrippedOfWhitespace;
    if ((*(&self->_has + 1) & 0x40) != 0)
    {
      goto LABEL_101;
    }

LABEL_106:
    v36 = 0;
    if ((*(&self->_has + 1) & 0x80) != 0)
    {
      goto LABEL_102;
    }

LABEL_107:
    v37 = 0;
    return v71 ^ v72 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v18 ^ v22 ^ v23 ^ v24 ^ v25 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37;
  }

LABEL_105:
  v35 = 0;
  if ((*(&self->_has + 1) & 0x40) == 0)
  {
    goto LABEL_106;
  }

LABEL_101:
  v36 = 2654435761 * self->_isQueryStrippedOfSymbols;
  if ((*(&self->_has + 1) & 0x80) == 0)
  {
    goto LABEL_107;
  }

LABEL_102:
  v37 = 2654435761 * self->_isAsrE3Signal;
  return v71 ^ v72 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v18 ^ v22 ^ v23 ^ v24 ^ v25 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_173;
  }

  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self speechAlternativeRanks];
  speechAlternativeRanks2 = [equalCopy speechAlternativeRanks];
  if ((speechAlternativeRanks != 0) == (speechAlternativeRanks2 == 0))
  {
    goto LABEL_172;
  }

  speechAlternativeRanks3 = [(INFERENCESchemaINFERENCEContactSignalSet *)self speechAlternativeRanks];
  if (speechAlternativeRanks3)
  {
    v8 = speechAlternativeRanks3;
    speechAlternativeRanks4 = [(INFERENCESchemaINFERENCEContactSignalSet *)self speechAlternativeRanks];
    speechAlternativeRanks5 = [equalCopy speechAlternativeRanks];
    v11 = [speechAlternativeRanks4 isEqual:speechAlternativeRanks5];

    if (!v11)
    {
      goto LABEL_173;
    }
  }

  else
  {
  }

  v12 = &self->_isAsrE3Signal + 1;
  v13 = *(&self->_isAsrE3Signal + 1);
  v14 = (equalCopy + 141);
  v15 = *(equalCopy + 141);
  if ((v13 & 1) != (v15 & 1))
  {
    goto LABEL_173;
  }

  if (v13)
  {
    isQueryStrippedOfTitles = self->_isQueryStrippedOfTitles;
    if (isQueryStrippedOfTitles != [equalCopy isQueryStrippedOfTitles])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v17 = (v13 >> 1) & 1;
  if (v17 != ((v15 >> 1) & 1))
  {
    goto LABEL_173;
  }

  if (v17)
  {
    isSuggestedContact = self->_isSuggestedContact;
    if (isSuggestedContact != [equalCopy isSuggestedContact])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v19 = (v13 >> 2) & 1;
  if (v19 != ((v15 >> 2) & 1))
  {
    goto LABEL_173;
  }

  if (v19)
  {
    areAllQueryTokensInContact = self->_areAllQueryTokensInContact;
    if (areAllQueryTokensInContact != [equalCopy areAllQueryTokensInContact])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v21 = (v13 >> 3) & 1;
  if (v21 != ((v15 >> 3) & 1))
  {
    goto LABEL_173;
  }

  if (v21)
  {
    areAllPrimaryContactTokensInQuery = self->_areAllPrimaryContactTokensInQuery;
    if (areAllPrimaryContactTokensInQuery != [equalCopy areAllPrimaryContactTokensInQuery])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v23 = (v13 >> 4) & 1;
  if (v23 != ((v15 >> 4) & 1))
  {
    goto LABEL_173;
  }

  if (v23)
  {
    isHypocorism = self->_isHypocorism;
    if (isHypocorism != [equalCopy isHypocorism])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v25 = (v13 >> 5) & 1;
  if (v25 != ((v15 >> 5) & 1))
  {
    goto LABEL_173;
  }

  if (v25)
  {
    hasSuggestedProperties = self->_hasSuggestedProperties;
    if (hasSuggestedProperties != [equalCopy hasSuggestedProperties])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v27 = (v13 >> 6) & 1;
  if (v27 != ((v15 >> 6) & 1))
  {
    goto LABEL_173;
  }

  if (v27)
  {
    isPartialNameMatch = self->_isPartialNameMatch;
    if (isPartialNameMatch != [equalCopy isPartialNameMatch])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v29 = (v13 >> 7) & 1;
  if (v29 != ((v15 >> 7) & 1))
  {
    goto LABEL_173;
  }

  if (v29)
  {
    isFromStandardSearch = self->_isFromStandardSearch;
    if (isFromStandardSearch != [equalCopy isFromStandardSearch])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v31 = (v13 >> 8) & 1;
  if (v31 != ((v15 >> 8) & 1))
  {
    goto LABEL_173;
  }

  if (v31)
  {
    isFromNLXSearch = self->_isFromNLXSearch;
    if (isFromNLXSearch != [equalCopy isFromNLXSearch])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v33 = (v13 >> 9) & 1;
  if (v33 != ((v15 >> 9) & 1))
  {
    goto LABEL_173;
  }

  if (v33)
  {
    isFromSRRSearch = self->_isFromSRRSearch;
    if (isFromSRRSearch != [equalCopy isFromSRRSearch])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v35 = (v13 >> 10) & 1;
  if (v35 != ((v15 >> 10) & 1))
  {
    goto LABEL_173;
  }

  if (v35)
  {
    nlxScore = self->_nlxScore;
    [equalCopy nlxScore];
    if (nlxScore != v37)
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v38 = (v13 >> 11) & 1;
  if (v38 != ((v15 >> 11) & 1))
  {
    goto LABEL_173;
  }

  if (v38)
  {
    srrScore = self->_srrScore;
    [equalCopy srrScore];
    if (srrScore != v40)
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v41 = (v13 >> 12) & 1;
  if (v41 != ((v15 >> 12) & 1))
  {
    goto LABEL_173;
  }

  if (v41)
  {
    isRecent = self->_isRecent;
    if (isRecent != [equalCopy isRecent])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v43 = (v13 >> 13) & 1;
  if (v43 != ((v15 >> 13) & 1))
  {
    goto LABEL_173;
  }

  if (v43)
  {
    isRecentInSameDomain = self->_isRecentInSameDomain;
    if (isRecentInSameDomain != [equalCopy isRecentInSameDomain])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v45 = (v13 >> 14) & 1;
  if (v45 != ((v15 >> 14) & 1))
  {
    goto LABEL_173;
  }

  if (v45)
  {
    isRecentInSiriRequest = self->_isRecentInSiriRequest;
    if (isRecentInSiriRequest != [equalCopy isRecentInSiriRequest])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v47 = (v13 >> 15) & 1;
  if (v47 != ((v15 >> 15) & 1))
  {
    goto LABEL_173;
  }

  if (v47)
  {
    isRecentlyCorrected = self->_isRecentlyCorrected;
    if (isRecentlyCorrected != [equalCopy isRecentlyCorrected])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v49 = HIWORD(v13) & 1;
  if (v49 != (HIWORD(v15) & 1))
  {
    goto LABEL_173;
  }

  if (v49)
  {
    recencyRank = self->_recencyRank;
    if (recencyRank != [equalCopy recencyRank])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v51 = (v13 >> 17) & 1;
  if (v51 != ((v15 >> 17) & 1))
  {
    goto LABEL_173;
  }

  if (v51)
  {
    recencyRankInSameDomain = self->_recencyRankInSameDomain;
    if (recencyRankInSameDomain != [equalCopy recencyRankInSameDomain])
    {
      goto LABEL_173;
    }

    v13 = *v12;
    v15 = *v14;
  }

  v53 = (v13 >> 18) & 1;
  if (v53 != ((v15 >> 18) & 1))
  {
    goto LABEL_173;
  }

  if (v53)
  {
    recencyRankInSiriRequest = self->_recencyRankInSiriRequest;
    if (recencyRankInSiriRequest != [equalCopy recencyRankInSiriRequest])
    {
      goto LABEL_173;
    }
  }

  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStats];
  speechAlternativeRanks2 = [equalCopy historyStats];
  if ((speechAlternativeRanks != 0) == (speechAlternativeRanks2 == 0))
  {
    goto LABEL_172;
  }

  historyStats = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStats];
  if (historyStats)
  {
    v56 = historyStats;
    historyStats2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStats];
    historyStats3 = [equalCopy historyStats];
    v59 = [historyStats2 isEqual:historyStats3];

    if (!v59)
    {
      goto LABEL_173;
    }
  }

  else
  {
  }

  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSameDomain];
  speechAlternativeRanks2 = [equalCopy historyStatsInSameDomain];
  if ((speechAlternativeRanks != 0) == (speechAlternativeRanks2 == 0))
  {
    goto LABEL_172;
  }

  historyStatsInSameDomain = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSameDomain];
  if (historyStatsInSameDomain)
  {
    v61 = historyStatsInSameDomain;
    historyStatsInSameDomain2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSameDomain];
    historyStatsInSameDomain3 = [equalCopy historyStatsInSameDomain];
    v64 = [historyStatsInSameDomain2 isEqual:historyStatsInSameDomain3];

    if (!v64)
    {
      goto LABEL_173;
    }
  }

  else
  {
  }

  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSiriRequests];
  speechAlternativeRanks2 = [equalCopy historyStatsInSiriRequests];
  if ((speechAlternativeRanks != 0) == (speechAlternativeRanks2 == 0))
  {
    goto LABEL_172;
  }

  historyStatsInSiriRequests = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSiriRequests];
  if (historyStatsInSiriRequests)
  {
    v66 = historyStatsInSiriRequests;
    historyStatsInSiriRequests2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSiriRequests];
    historyStatsInSiriRequests3 = [equalCopy historyStatsInSiriRequests];
    v69 = [historyStatsInSiriRequests2 isEqual:historyStatsInSiriRequests3];

    if (!v69)
    {
      goto LABEL_173;
    }
  }

  else
  {
  }

  v70 = *v12;
  v71 = (*v12 >> 19) & 1;
  v72 = *v14;
  if (v71 != ((*v14 >> 19) & 1))
  {
    goto LABEL_173;
  }

  if (v71)
  {
    isMeCard = self->_isMeCard;
    if (isMeCard != [equalCopy isMeCard])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v74 = (v70 >> 20) & 1;
  if (v74 != ((v72 >> 20) & 1))
  {
    goto LABEL_173;
  }

  if (v74)
  {
    isMeCardRelation = self->_isMeCardRelation;
    if (isMeCardRelation != [equalCopy isMeCardRelation])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v76 = (v70 >> 21) & 1;
  if (v76 != ((v72 >> 21) & 1))
  {
    goto LABEL_173;
  }

  if (v76)
  {
    isMeCardRelationExactMatch = self->_isMeCardRelationExactMatch;
    if (isMeCardRelationExactMatch != [equalCopy isMeCardRelationExactMatch])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v78 = (v70 >> 22) & 1;
  if (v78 != ((v72 >> 22) & 1))
  {
    goto LABEL_173;
  }

  if (v78)
  {
    isRelationAlias = self->_isRelationAlias;
    if (isRelationAlias != [equalCopy isRelationAlias])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v80 = (v70 >> 23) & 1;
  if (v80 != ((v72 >> 23) & 1))
  {
    goto LABEL_173;
  }

  if (v80)
  {
    areQueryDiacriticsRemoved = self->_areQueryDiacriticsRemoved;
    if (areQueryDiacriticsRemoved != [equalCopy areQueryDiacriticsRemoved])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v82 = HIBYTE(v70) & 1;
  if (v82 != (HIBYTE(v72) & 1))
  {
    goto LABEL_173;
  }

  if (v82)
  {
    isQueryNameDerivedFromRelationshipLabel = self->_isQueryNameDerivedFromRelationshipLabel;
    if (isQueryNameDerivedFromRelationshipLabel != [equalCopy isQueryNameDerivedFromRelationshipLabel])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v84 = (v70 >> 25) & 1;
  if (v84 != ((v72 >> 25) & 1))
  {
    goto LABEL_173;
  }

  if (v84)
  {
    isQueryRelationshipLabelDerivedFromName = self->_isQueryRelationshipLabelDerivedFromName;
    if (isQueryRelationshipLabelDerivedFromName != [equalCopy isQueryRelationshipLabelDerivedFromName])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v86 = (v70 >> 26) & 1;
  if (v86 != ((v72 >> 26) & 1))
  {
    goto LABEL_173;
  }

  if (v86)
  {
    isThirdPartyMatch = self->_isThirdPartyMatch;
    if (isThirdPartyMatch != [equalCopy isThirdPartyMatch])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v88 = (v70 >> 27) & 1;
  if (v88 != ((v72 >> 27) & 1))
  {
    goto LABEL_173;
  }

  if (v88)
  {
    isFavorite = self->_isFavorite;
    if (isFavorite != [equalCopy isFavorite])
    {
      goto LABEL_173;
    }

    v70 = *v12;
    v72 = *v14;
  }

  v90 = (v70 >> 28) & 1;
  if (v90 != ((v72 >> 28) & 1))
  {
    goto LABEL_173;
  }

  if (v90)
  {
    isTransliterated = self->_isTransliterated;
    if (isTransliterated != [equalCopy isTransliterated])
    {
      goto LABEL_173;
    }
  }

  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self requestMatchSignalSet];
  speechAlternativeRanks2 = [equalCopy requestMatchSignalSet];
  if ((speechAlternativeRanks != 0) == (speechAlternativeRanks2 == 0))
  {
    goto LABEL_172;
  }

  requestMatchSignalSet = [(INFERENCESchemaINFERENCEContactSignalSet *)self requestMatchSignalSet];
  if (requestMatchSignalSet)
  {
    v93 = requestMatchSignalSet;
    requestMatchSignalSet2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self requestMatchSignalSet];
    requestMatchSignalSet3 = [equalCopy requestMatchSignalSet];
    v96 = [requestMatchSignalSet2 isEqual:requestMatchSignalSet3];

    if (!v96)
    {
      goto LABEL_173;
    }
  }

  else
  {
  }

  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self handlesWithPrivacySignalSets];
  speechAlternativeRanks2 = [equalCopy handlesWithPrivacySignalSets];
  if ((speechAlternativeRanks != 0) == (speechAlternativeRanks2 == 0))
  {
    goto LABEL_172;
  }

  handlesWithPrivacySignalSets = [(INFERENCESchemaINFERENCEContactSignalSet *)self handlesWithPrivacySignalSets];
  if (handlesWithPrivacySignalSets)
  {
    v98 = handlesWithPrivacySignalSets;
    handlesWithPrivacySignalSets2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self handlesWithPrivacySignalSets];
    handlesWithPrivacySignalSets3 = [equalCopy handlesWithPrivacySignalSets];
    v101 = [handlesWithPrivacySignalSets2 isEqual:handlesWithPrivacySignalSets3];

    if (!v101)
    {
      goto LABEL_173;
    }
  }

  else
  {
  }

  v102 = *v12;
  v103 = (*v12 >> 29) & 1;
  v104 = *v14;
  if (v103 != ((*v14 >> 29) & 1))
  {
    goto LABEL_173;
  }

  if (v103)
  {
    hasHandleWithPreferredType = self->_hasHandleWithPreferredType;
    if (hasHandleWithPreferredType != [equalCopy hasHandleWithPreferredType])
    {
      goto LABEL_173;
    }

    v102 = *v12;
    v104 = *v14;
  }

  v106 = (v102 >> 30) & 1;
  if (v106 != ((v104 >> 30) & 1))
  {
    goto LABEL_173;
  }

  if (v106)
  {
    hasHandleWithAllowedType = self->_hasHandleWithAllowedType;
    if (hasHandleWithAllowedType != [equalCopy hasHandleWithAllowedType])
    {
      goto LABEL_173;
    }

    v102 = *v12;
    v104 = *v14;
  }

  if (((v104 ^ v102) & 0x80000000) != 0)
  {
    goto LABEL_173;
  }

  if ((v102 & 0x80000000) != 0)
  {
    isCommunalRequest = self->_isCommunalRequest;
    if (isCommunalRequest != [equalCopy isCommunalRequest])
    {
      goto LABEL_173;
    }
  }

  v109 = *(&self->_has + 1);
  v110 = equalCopy[145];
  if ((v109 & 1) != (v110 & 1))
  {
    goto LABEL_173;
  }

  if (v109)
  {
    fractionOfCommunalDevicesMatchingCandidate = self->_fractionOfCommunalDevicesMatchingCandidate;
    [equalCopy fractionOfCommunalDevicesMatchingCandidate];
    if (fractionOfCommunalDevicesMatchingCandidate != v112)
    {
      goto LABEL_173;
    }

    v109 = *(&self->_has + 1);
    v110 = equalCopy[145];
  }

  v113 = (v109 >> 1) & 1;
  if (v113 != ((v110 >> 1) & 1))
  {
    goto LABEL_173;
  }

  if (v113)
  {
    isPlusSignal = self->_isPlusSignal;
    if (isPlusSignal != [equalCopy isPlusSignal])
    {
      goto LABEL_173;
    }

    v109 = *(&self->_has + 1);
    v110 = equalCopy[145];
  }

  v115 = (v109 >> 2) & 1;
  if (v115 != ((v110 >> 2) & 1))
  {
    goto LABEL_173;
  }

  if (v115)
  {
    isOnlyCandidate = self->_isOnlyCandidate;
    if (isOnlyCandidate != [equalCopy isOnlyCandidate])
    {
      goto LABEL_173;
    }
  }

  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self thirdPartyAppBundleId];
  speechAlternativeRanks2 = [equalCopy thirdPartyAppBundleId];
  if ((speechAlternativeRanks != 0) == (speechAlternativeRanks2 == 0))
  {
LABEL_172:

    goto LABEL_173;
  }

  thirdPartyAppBundleId = [(INFERENCESchemaINFERENCEContactSignalSet *)self thirdPartyAppBundleId];
  if (thirdPartyAppBundleId)
  {
    v118 = thirdPartyAppBundleId;
    thirdPartyAppBundleId2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self thirdPartyAppBundleId];
    thirdPartyAppBundleId3 = [equalCopy thirdPartyAppBundleId];
    v121 = [thirdPartyAppBundleId2 isEqual:thirdPartyAppBundleId3];

    if (!v121)
    {
      goto LABEL_173;
    }
  }

  else
  {
  }

  v124 = *(&self->_has + 1);
  v125 = (v124 >> 3) & 1;
  v126 = equalCopy[145];
  if (v125 == ((v126 >> 3) & 1))
  {
    if (v125)
    {
      isQueryNormalized = self->_isQueryNormalized;
      if (isQueryNormalized != [equalCopy isQueryNormalized])
      {
        goto LABEL_173;
      }

      v124 = *(&self->_has + 1);
      v126 = equalCopy[145];
    }

    v128 = (v124 >> 4) & 1;
    if (v128 == ((v126 >> 4) & 1))
    {
      if (v128)
      {
        isQueryStrippedOfPunctuation = self->_isQueryStrippedOfPunctuation;
        if (isQueryStrippedOfPunctuation != [equalCopy isQueryStrippedOfPunctuation])
        {
          goto LABEL_173;
        }

        v124 = *(&self->_has + 1);
        v126 = equalCopy[145];
      }

      v130 = (v124 >> 5) & 1;
      if (v130 == ((v126 >> 5) & 1))
      {
        if (v130)
        {
          isQueryStrippedOfWhitespace = self->_isQueryStrippedOfWhitespace;
          if (isQueryStrippedOfWhitespace != [equalCopy isQueryStrippedOfWhitespace])
          {
            goto LABEL_173;
          }

          v124 = *(&self->_has + 1);
          v126 = equalCopy[145];
        }

        v132 = (v124 >> 6) & 1;
        if (v132 == ((v126 >> 6) & 1))
        {
          if (v132)
          {
            isQueryStrippedOfSymbols = self->_isQueryStrippedOfSymbols;
            if (isQueryStrippedOfSymbols != [equalCopy isQueryStrippedOfSymbols])
            {
              goto LABEL_173;
            }

            v124 = *(&self->_has + 1);
            v126 = equalCopy[145];
          }

          if (((v126 ^ v124) & 0x80) == 0)
          {
            if ((v124 & 0x80) == 0 || (isAsrE3Signal = self->_isAsrE3Signal, isAsrE3Signal == [equalCopy isAsrE3Signal]))
            {
              v122 = 1;
              goto LABEL_174;
            }
          }
        }
      }
    }
  }

LABEL_173:
  v122 = 0;
LABEL_174:

  return v122;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self speechAlternativeRanks];

  if (speechAlternativeRanks)
  {
    speechAlternativeRanks2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self speechAlternativeRanks];
    PBDataWriterWriteSubmessage();
  }

  v7 = &self->_isAsrE3Signal + 1;
  v8 = *(&self->_isAsrE3Signal + 1);
  if (v8)
  {
    PBDataWriterWriteBOOLField();
    v8 = *v7;
    if ((*v7 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_66;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 4) == 0)
  {
LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_66:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x10) == 0)
  {
LABEL_8:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x20) == 0)
  {
LABEL_9:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x40) == 0)
  {
LABEL_10:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_11:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_12:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_13:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_14:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_75;
  }

LABEL_74:
  PBDataWriterWriteFloatField();
  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_15:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_75:
  PBDataWriterWriteFloatField();
  v8 = *v7;
  if ((*v7 & 0x1000) == 0)
  {
LABEL_16:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x2000) == 0)
  {
LABEL_17:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x4000) == 0)
  {
LABEL_18:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x8000) == 0)
  {
LABEL_19:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_80;
  }

LABEL_79:
  PBDataWriterWriteBOOLField();
  v8 = *v7;
  if ((*v7 & 0x10000) == 0)
  {
LABEL_20:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_81;
  }

LABEL_80:
  PBDataWriterWriteInt32Field();
  v8 = *v7;
  if ((*v7 & 0x20000) == 0)
  {
LABEL_21:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_81:
  PBDataWriterWriteInt32Field();
  if ((*v7 & 0x40000) != 0)
  {
LABEL_22:
    PBDataWriterWriteInt32Field();
  }

LABEL_23:
  historyStats = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStats];

  if (historyStats)
  {
    historyStats2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStats];
    PBDataWriterWriteSubmessage();
  }

  historyStatsInSameDomain = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSameDomain];

  if (historyStatsInSameDomain)
  {
    historyStatsInSameDomain2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSameDomain];
    PBDataWriterWriteSubmessage();
  }

  historyStatsInSiriRequests = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSiriRequests];

  if (historyStatsInSiriRequests)
  {
    historyStatsInSiriRequests2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSiriRequests];
    PBDataWriterWriteSubmessage();
  }

  v15 = *v7;
  if ((*v7 & 0x80000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v15 = *v7;
    if ((*v7 & 0x100000) == 0)
    {
LABEL_31:
      if ((v15 & 0x200000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_85;
    }
  }

  else if ((v15 & 0x100000) == 0)
  {
    goto LABEL_31;
  }

  PBDataWriterWriteBOOLField();
  v15 = *v7;
  if ((*v7 & 0x200000) == 0)
  {
LABEL_32:
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_86;
  }

LABEL_85:
  PBDataWriterWriteBOOLField();
  v15 = *v7;
  if ((*v7 & 0x400000) == 0)
  {
LABEL_33:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_87;
  }

LABEL_86:
  PBDataWriterWriteBOOLField();
  v15 = *v7;
  if ((*v7 & 0x800000) == 0)
  {
LABEL_34:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_88;
  }

LABEL_87:
  PBDataWriterWriteBOOLField();
  v15 = *v7;
  if ((*v7 & 0x1000000) == 0)
  {
LABEL_35:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_89;
  }

LABEL_88:
  PBDataWriterWriteBOOLField();
  v15 = *v7;
  if ((*v7 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_90;
  }

LABEL_89:
  PBDataWriterWriteBOOLField();
  v15 = *v7;
  if ((*v7 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_91;
  }

LABEL_90:
  PBDataWriterWriteBOOLField();
  v15 = *v7;
  if ((*v7 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_91:
  PBDataWriterWriteBOOLField();
  if ((*v7 & 0x10000000) != 0)
  {
LABEL_39:
    PBDataWriterWriteBOOLField();
  }

LABEL_40:
  requestMatchSignalSet = [(INFERENCESchemaINFERENCEContactSignalSet *)self requestMatchSignalSet];

  if (requestMatchSignalSet)
  {
    requestMatchSignalSet2 = [(INFERENCESchemaINFERENCEContactSignalSet *)self requestMatchSignalSet];
    PBDataWriterWriteSubmessage();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_handlesWithPrivacySignalSets;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  v23 = *v7;
  if ((*v7 & 0x20000000) == 0)
  {
    if ((v23 & 0x40000000) == 0)
    {
      goto LABEL_51;
    }

LABEL_94:
    PBDataWriterWriteBOOLField();
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_95;
  }

  PBDataWriterWriteBOOLField();
  v23 = *v7;
  if ((*v7 & 0x40000000) != 0)
  {
    goto LABEL_94;
  }

LABEL_51:
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_95:
  PBDataWriterWriteBOOLField();
LABEL_52:
  v24 = *(&self->_has + 1);
  if (v24)
  {
    PBDataWriterWriteFloatField();
    v24 = *(&self->_has + 1);
    if ((v24 & 2) == 0)
    {
LABEL_54:
      if ((v24 & 4) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else if ((*(&self->_has + 1) & 2) == 0)
  {
    goto LABEL_54;
  }

  PBDataWriterWriteBOOLField();
  if ((*(&self->_has + 1) & 4) != 0)
  {
LABEL_55:
    PBDataWriterWriteBOOLField();
  }

LABEL_56:
  thirdPartyAppBundleId = [(INFERENCESchemaINFERENCEContactSignalSet *)self thirdPartyAppBundleId];

  if (thirdPartyAppBundleId)
  {
    PBDataWriterWriteStringField();
  }

  v26 = *(&self->_has + 1);
  if ((v26 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v26 = *(&self->_has + 1);
    if ((v26 & 0x10) == 0)
    {
LABEL_60:
      if ((v26 & 0x20) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_101;
    }
  }

  else if ((*(&self->_has + 1) & 0x10) == 0)
  {
    goto LABEL_60;
  }

  PBDataWriterWriteBOOLField();
  v26 = *(&self->_has + 1);
  if ((v26 & 0x20) == 0)
  {
LABEL_61:
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_62;
    }

LABEL_102:
    PBDataWriterWriteBOOLField();
    if ((*(&self->_has + 1) & 0x80) == 0)
    {
      goto LABEL_63;
    }

LABEL_103:
    PBDataWriterWriteBOOLField();
    goto LABEL_63;
  }

LABEL_101:
  PBDataWriterWriteBOOLField();
  v26 = *(&self->_has + 1);
  if ((v26 & 0x40) != 0)
  {
    goto LABEL_102;
  }

LABEL_62:
  if (v26 < 0)
  {
    goto LABEL_103;
  }

LABEL_63:
}

- (void)setHasIsAsrE3Signal:(BOOL)signal
{
  if (signal)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 1) = v3 & 0x80 | *(&self->_has + 1) & 0x7F;
}

- (void)setHasIsQueryStrippedOfSymbols:(BOOL)symbols
{
  if (symbols)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xBF | v3;
}

- (void)setHasIsQueryStrippedOfWhitespace:(BOOL)whitespace
{
  if (whitespace)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xDF | v3;
}

- (void)setHasIsQueryStrippedOfPunctuation:(BOOL)punctuation
{
  if (punctuation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xEF | v3;
}

- (void)setHasIsQueryNormalized:(BOOL)normalized
{
  if (normalized)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xF7 | v3;
}

- (void)setHasIsOnlyCandidate:(BOOL)candidate
{
  if (candidate)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFB | v3;
}

- (void)setHasIsPlusSignal:(BOOL)signal
{
  if (signal)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 1) = *(&self->_has + 1) & 0xFD | v3;
}

- (void)setHasIsCommunalRequest:(BOOL)request
{
  if (request)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = v3 & 0x80000000 | *(&self->_isAsrE3Signal + 1) & 0x7FFFFFFF;
}

- (void)setHasHasHandleWithAllowedType:(BOOL)type
{
  if (type)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xBFFFFFFF | v3;
}

- (void)setHasHasHandleWithPreferredType:(BOOL)type
{
  if (type)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xDFFFFFFF | v3;
}

- (void)addHandlesWithPrivacySignalSets:(id)sets
{
  setsCopy = sets;
  handlesWithPrivacySignalSets = self->_handlesWithPrivacySignalSets;
  v8 = setsCopy;
  if (!handlesWithPrivacySignalSets)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_handlesWithPrivacySignalSets;
    self->_handlesWithPrivacySignalSets = array;

    setsCopy = v8;
    handlesWithPrivacySignalSets = self->_handlesWithPrivacySignalSets;
  }

  [(NSArray *)handlesWithPrivacySignalSets addObject:setsCopy];
}

- (void)setHasIsTransliterated:(BOOL)transliterated
{
  if (transliterated)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xEFFFFFFF | v3;
}

- (void)setHasIsFavorite:(BOOL)favorite
{
  if (favorite)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xF7FFFFFF | v3;
}

- (void)setHasIsThirdPartyMatch:(BOOL)match
{
  if (match)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFBFFFFFF | v3;
}

- (void)setHasIsQueryRelationshipLabelDerivedFromName:(BOOL)name
{
  if (name)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFDFFFFFF | v3;
}

- (void)setHasIsQueryNameDerivedFromRelationshipLabel:(BOOL)label
{
  if (label)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFEFFFFFF | v3;
}

- (void)setHasAreQueryDiacriticsRemoved:(BOOL)removed
{
  if (removed)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFF7FFFFF | v3;
}

- (void)setHasIsRelationAlias:(BOOL)alias
{
  if (alias)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFBFFFFF | v3;
}

- (void)setHasIsMeCardRelationExactMatch:(BOOL)match
{
  if (match)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFDFFFFF | v3;
}

- (void)setHasIsMeCardRelation:(BOOL)relation
{
  if (relation)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFEFFFFF | v3;
}

- (void)setHasIsMeCard:(BOOL)card
{
  if (card)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFF7FFFF | v3;
}

- (void)setHasRecencyRankInSiriRequest:(BOOL)request
{
  if (request)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFBFFFF | v3;
}

- (void)setHasRecencyRankInSameDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFDFFFF | v3;
}

- (void)setHasRecencyRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFEFFFF | v3;
}

- (void)setHasIsRecentlyCorrected:(BOOL)corrected
{
  if (corrected)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFF7FFF | v3;
}

- (void)setHasIsRecentInSiriRequest:(BOOL)request
{
  if (request)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFBFFF | v3;
}

- (void)setHasIsRecentInSameDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFDFFF | v3;
}

- (void)setHasIsRecent:(BOOL)recent
{
  if (recent)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFEFFF | v3;
}

- (void)setHasSrrScore:(BOOL)score
{
  if (score)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFF7FF | v3;
}

- (void)setHasNlxScore:(BOOL)score
{
  if (score)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFBFF | v3;
}

- (void)setHasIsFromSRRSearch:(BOOL)search
{
  if (search)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFDFF | v3;
}

- (void)setHasIsFromNLXSearch:(BOOL)search
{
  if (search)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFEFF | v3;
}

- (void)setHasIsFromStandardSearch:(BOOL)search
{
  if (search)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFF7F | v3;
}

- (void)setHasIsPartialNameMatch:(BOOL)match
{
  if (match)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFFBF | v3;
}

- (void)setHasHasSuggestedProperties:(BOOL)properties
{
  if (properties)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFFDF | v3;
}

- (void)setHasIsHypocorism:(BOOL)hypocorism
{
  if (hypocorism)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFFEF | v3;
}

- (void)setHasAreAllPrimaryContactTokensInQuery:(BOOL)query
{
  if (query)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFFF7 | v3;
}

- (void)setHasAreAllQueryTokensInContact:(BOOL)contact
{
  if (contact)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFFFB | v3;
}

- (void)setHasIsSuggestedContact:(BOOL)contact
{
  if (contact)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAsrE3Signal + 1) = *(&self->_isAsrE3Signal + 1) & 0xFFFFFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v24.receiver = self;
  v24.super_class = INFERENCESchemaINFERENCEContactSignalSet;
  v5 = [(SISchemaInstrumentationMessage *)&v24 applySensitiveConditionsPolicy:policyCopy];
  speechAlternativeRanks = [(INFERENCESchemaINFERENCEContactSignalSet *)self speechAlternativeRanks];
  v7 = [speechAlternativeRanks applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEContactSignalSet *)self deleteSpeechAlternativeRanks];
  }

  historyStats = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStats];
  v10 = [historyStats applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEContactSignalSet *)self deleteHistoryStats];
  }

  historyStatsInSameDomain = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSameDomain];
  v13 = [historyStatsInSameDomain applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(INFERENCESchemaINFERENCEContactSignalSet *)self deleteHistoryStatsInSameDomain];
  }

  historyStatsInSiriRequests = [(INFERENCESchemaINFERENCEContactSignalSet *)self historyStatsInSiriRequests];
  v16 = [historyStatsInSiriRequests applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(INFERENCESchemaINFERENCEContactSignalSet *)self deleteHistoryStatsInSiriRequests];
  }

  requestMatchSignalSet = [(INFERENCESchemaINFERENCEContactSignalSet *)self requestMatchSignalSet];
  v19 = [requestMatchSignalSet applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(INFERENCESchemaINFERENCEContactSignalSet *)self deleteRequestMatchSignalSet];
  }

  handlesWithPrivacySignalSets = [(INFERENCESchemaINFERENCEContactSignalSet *)self handlesWithPrivacySignalSets];
  v22 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:handlesWithPrivacySignalSets underConditions:policyCopy];
  [(INFERENCESchemaINFERENCEContactSignalSet *)self setHandlesWithPrivacySignalSets:v22];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end