@interface PPRankableSocialHighlight
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BOOL)isEqual:(id)a3;
- (NSSet)featureNames;
- (NSString)description;
- (id)calculatedFeatureValueForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)featureValueForName:(id)a3;
- (id)features;
- (id)json;
- (int)StringAsHighlightType:(id)a3;
- (int)highlightType;
- (unint64_t)hash;
- (void)addApplicationIdentifiers:(id)a3;
- (void)addCalculatedFeatures:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setCalculatedFeaturesFromDictionary:(id)a3;
- (void)setHasFirstPassScore:(BOOL)a3;
- (void)setHasFromMeEntitlementOverrideIsPresent:(BOOL)a3;
- (void)setHasHighlightType:(BOOL)a3;
- (void)setHasIsCollaboration:(BOOL)a3;
- (void)setHasIsConversationAutoDonating:(BOOL)a3;
- (void)setHasIsPrimary:(BOOL)a3;
- (void)setHasIsTopKResult:(BOOL)a3;
- (void)setHasRank:(BOOL)a3;
- (void)setHasRankingSecondsSinceReferenceDate:(BOOL)a3;
- (void)setHasScore:(BOOL)a3;
- (void)setHasSyndicationSecondsSinceReferenceDate:(BOOL)a3;
- (void)setHasTopKScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPRankableSocialHighlight

- (int)highlightType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_highlightType;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 20))
  {
    [(PPRankableSocialHighlight *)self setHighlightIdentifier:?];
  }

  v5 = *(v4 + 128);
  if ((v5 & 0x40) != 0)
  {
    self->_highlightType = *(v4 + 42);
    *&self->_has |= 0x40u;
    v5 = *(v4 + 128);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_syndicationSecondsSinceReferenceDate = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 29))
  {
    [(PPRankableSocialHighlight *)self setSourceBundleId:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(v4 + 7);
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PPRankableSocialHighlight *)self addApplicationIdentifiers:*(*(&v25 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  if (*(v4 + 27))
  {
    [(PPRankableSocialHighlight *)self setResourceUrl:?];
  }

  sender = self->_sender;
  v12 = *(v4 + 28);
  if (sender)
  {
    if (v12)
    {
      [(PPSocialHighlightContact *)sender mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PPRankableSocialHighlight *)self setSender:?];
  }

  if (*(v4 + 16))
  {
    [(PPRankableSocialHighlight *)self setDomainIdentifier:?];
  }

  if (*(v4 + 9))
  {
    [(PPRankableSocialHighlight *)self setBatchIdentifier:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = *(v4 + 10);
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(PPRankableSocialHighlight *)self addCalculatedFeatures:*(*(&v21 + 1) + 8 * j), v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  if (*(v4 + 11))
  {
    [(PPRankableSocialHighlight *)self setClientIdentifier:?];
  }

  if (*(v4 + 128))
  {
    self->_contentCreationSecondsSinceReferenceDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 18))
  {
    [(PPRankableSocialHighlight *)self setGroupPhotoPathDigest:?];
  }

  if (*(v4 + 15))
  {
    [(PPRankableSocialHighlight *)self setDisplayName:?];
  }

  if ((*(v4 + 128) & 0x800) != 0)
  {
    self->_isPrimary = *(v4 + 251);
    *&self->_has |= 0x800u;
  }

  if (*(v4 + 8))
  {
    [(PPRankableSocialHighlight *)self setAttributionIdentifier:?];
  }

  v18 = *(v4 + 128);
  if ((v18 & 0x80) != 0)
  {
    self->_rank = *(v4 + 50);
    *&self->_has |= 0x80u;
    v18 = *(v4 + 128);
    if ((v18 & 8) == 0)
    {
LABEL_48:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  else if ((v18 & 8) == 0)
  {
    goto LABEL_48;
  }

  self->_score = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 128) & 0x400) != 0)
  {
LABEL_49:
    self->_isConversationAutoDonating = *(v4 + 250);
    *&self->_has |= 0x400u;
  }

LABEL_50:
  if (*(v4 + 24))
  {
    [(PPRankableSocialHighlight *)self setOriginatingDeviceId:?];
  }

  if ((*(v4 + 128) & 4) != 0)
  {
    self->_rankingSecondsSinceReferenceDate = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 26))
  {
    [(PPRankableSocialHighlight *)self setResolvedUrl:?];
  }

  if (*(v4 + 30))
  {
    [(PPRankableSocialHighlight *)self setVariant:?];
  }

  v19 = *(v4 + 128);
  if ((v19 & 0x1000) != 0)
  {
    self->_isTopKResult = *(v4 + 252);
    *&self->_has |= 0x1000u;
    v19 = *(v4 + 128);
    if ((v19 & 0x20) == 0)
    {
LABEL_60:
      if ((v19 & 2) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_85;
    }
  }

  else if ((v19 & 0x20) == 0)
  {
    goto LABEL_60;
  }

  self->_topKScore = *(v4 + 6);
  *&self->_has |= 0x20u;
  v19 = *(v4 + 128);
  if ((v19 & 2) == 0)
  {
LABEL_61:
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_85:
  self->_firstPassScore = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 128) & 0x200) != 0)
  {
LABEL_62:
    self->_isCollaboration = *(v4 + 249);
    *&self->_has |= 0x200u;
  }

LABEL_63:
  if (*(v4 + 12))
  {
    [(PPRankableSocialHighlight *)self setCollaborationIdentifier:?];
  }

  if (*(v4 + 14))
  {
    [(PPRankableSocialHighlight *)self setContentType:?];
  }

  if (*(v4 + 13))
  {
    [(PPRankableSocialHighlight *)self setContentDisplayName:?];
  }

  if (*(v4 + 17))
  {
    [(PPRankableSocialHighlight *)self setFileProviderId:?];
  }

  if (*(v4 + 22))
  {
    [(PPRankableSocialHighlight *)self setLocalIdentity:?];
  }

  if (*(v4 + 23))
  {
    [(PPRankableSocialHighlight *)self setLocalIdentityProof:?];
  }

  if (*(v4 + 19))
  {
    [(PPRankableSocialHighlight *)self setHandleToIdentityMap:?];
  }

  if ((*(v4 + 128) & 0x100) != 0)
  {
    self->_fromMeEntitlementOverrideIsPresent = *(v4 + 248);
    *&self->_has |= 0x100u;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v78 = [(NSString *)self->_highlightIdentifier hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v77 = 2654435761 * self->_highlightType;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v76 = 0;
    goto LABEL_12;
  }

  v77 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  syndicationSecondsSinceReferenceDate = self->_syndicationSecondsSinceReferenceDate;
  if (syndicationSecondsSinceReferenceDate < 0.0)
  {
    syndicationSecondsSinceReferenceDate = -syndicationSecondsSinceReferenceDate;
  }

  *v3.i64 = floor(syndicationSecondsSinceReferenceDate + 0.5);
  v7 = (syndicationSecondsSinceReferenceDate - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v8), v4, v3).i64[0];
  v9 = 2654435761u * *v3.i64;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v3.i64;
  }

  v11 = v9 - fabs(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  v76 = v11;
LABEL_12:
  v75 = [(NSString *)self->_sourceBundleId hash];
  v74 = [(NSMutableArray *)self->_applicationIdentifiers hash];
  v73 = [(NSString *)self->_resourceUrl hash];
  v72 = [(PPSocialHighlightContact *)self->_sender hash];
  v71 = [(NSString *)self->_domainIdentifier hash];
  v70 = [(NSString *)self->_batchIdentifier hash];
  v69 = [(NSMutableArray *)self->_calculatedFeatures hash];
  v68 = [(NSString *)self->_clientIdentifier hash];
  if (*&self->_has)
  {
    contentCreationSecondsSinceReferenceDate = self->_contentCreationSecondsSinceReferenceDate;
    if (contentCreationSecondsSinceReferenceDate < 0.0)
    {
      contentCreationSecondsSinceReferenceDate = -contentCreationSecondsSinceReferenceDate;
    }

    *v12.i64 = floor(contentCreationSecondsSinceReferenceDate + 0.5);
    v15 = (contentCreationSecondsSinceReferenceDate - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v12.i64[0] = vbslq_s8(vnegq_f64(v16), v13, v12).i64[0];
    v17 = 2654435761u * *v12.i64;
    v18 = v17 + v15;
    if (v15 <= 0.0)
    {
      v18 = 2654435761u * *v12.i64;
    }

    v19 = v17 - fabs(v15);
    if (v15 >= 0.0)
    {
      v19 = v18;
    }

    v67 = v19;
  }

  else
  {
    v67 = 0;
  }

  v66 = [(NSString *)self->_groupPhotoPathDigest hash];
  v65 = [(NSString *)self->_displayName hash];
  if ((*&self->_has & 0x800) != 0)
  {
    v64 = 2654435761 * self->_isPrimary;
  }

  else
  {
    v64 = 0;
  }

  v63 = [(NSString *)self->_attributionIdentifier hash];
  v22 = self->_has;
  if ((v22 & 0x80) != 0)
  {
    v62 = 2654435761 * self->_rank;
    if ((v22 & 8) != 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    v26 = 0;
    goto LABEL_32;
  }

  v62 = 0;
  if ((v22 & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v20.i64 = floor(score + 0.5);
  v24 = (score - *v20.i64) * 1.84467441e19;
  *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v26 = 2654435761u * *vbslq_s8(vnegq_f64(v25), v21, v20).i64;
  if (v24 >= 0.0)
  {
    if (v24 > 0.0)
    {
      v26 += v24;
    }
  }

  else
  {
    v26 -= fabs(v24);
  }

LABEL_32:
  v61 = v26;
  if ((*&self->_has & 0x400) != 0)
  {
    v60 = 2654435761 * self->_isConversationAutoDonating;
  }

  else
  {
    v60 = 0;
  }

  v59 = [(NSString *)self->_originatingDeviceId hash];
  if ((*&self->_has & 4) != 0)
  {
    rankingSecondsSinceReferenceDate = self->_rankingSecondsSinceReferenceDate;
    if (rankingSecondsSinceReferenceDate < 0.0)
    {
      rankingSecondsSinceReferenceDate = -rankingSecondsSinceReferenceDate;
    }

    *v27.i64 = floor(rankingSecondsSinceReferenceDate + 0.5);
    v31 = (rankingSecondsSinceReferenceDate - *v27.i64) * 1.84467441e19;
    *v28.i64 = *v27.i64 - trunc(*v27.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v29 = 2654435761u * *vbslq_s8(vnegq_f64(v32), v28, v27).i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  v58 = v29;
  v57 = [(NSString *)self->_resolvedUrl hash];
  v56 = [(NSString *)self->_variant hash];
  v35 = self->_has;
  if ((v35 & 0x1000) != 0)
  {
    v55 = 2654435761 * self->_isTopKResult;
    if ((v35 & 0x20) != 0)
    {
      goto LABEL_47;
    }

LABEL_52:
    v39 = 0;
    goto LABEL_53;
  }

  v55 = 0;
  if ((v35 & 0x20) == 0)
  {
    goto LABEL_52;
  }

LABEL_47:
  topKScore = self->_topKScore;
  if (topKScore < 0.0)
  {
    topKScore = -topKScore;
  }

  *v33.i64 = floor(topKScore + 0.5);
  v37 = (topKScore - *v33.i64) * 1.84467441e19;
  *v34.i64 = *v33.i64 - trunc(*v33.i64 * 5.42101086e-20) * 1.84467441e19;
  v38.f64[0] = NAN;
  v38.f64[1] = NAN;
  v33 = vbslq_s8(vnegq_f64(v38), v34, v33);
  v39 = 2654435761u * *v33.i64;
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

LABEL_53:
  if ((v35 & 2) != 0)
  {
    firstPassScore = self->_firstPassScore;
    if (firstPassScore < 0.0)
    {
      firstPassScore = -firstPassScore;
    }

    *v33.i64 = floor(firstPassScore + 0.5);
    v42 = (firstPassScore - *v33.i64) * 1.84467441e19;
    *v34.i64 = *v33.i64 - trunc(*v33.i64 * 5.42101086e-20) * 1.84467441e19;
    v43.f64[0] = NAN;
    v43.f64[1] = NAN;
    v40 = 2654435761u * *vbslq_s8(vnegq_f64(v43), v34, v33).i64;
    if (v42 >= 0.0)
    {
      if (v42 > 0.0)
      {
        v40 += v42;
      }
    }

    else
    {
      v40 -= fabs(v42);
    }
  }

  else
  {
    v40 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v44 = 2654435761 * self->_isCollaboration;
  }

  else
  {
    v44 = 0;
  }

  v45 = [(NSString *)self->_collaborationIdentifier hash];
  v46 = [(NSString *)self->_contentType hash];
  v47 = [(NSString *)self->_contentDisplayName hash];
  v48 = [(NSString *)self->_fileProviderId hash];
  v49 = [(NSData *)self->_localIdentity hash];
  v50 = [(NSData *)self->_localIdentityProof hash];
  v51 = [(NSData *)self->_handleToIdentityMap hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v52 = 2654435761 * self->_fromMeEntitlementOverrideIsPresent;
  }

  else
  {
    v52 = 0;
  }

  return v77 ^ v78 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v40 ^ v44 ^ v45 ^ v46 ^ v47 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_123;
  }

  highlightIdentifier = self->_highlightIdentifier;
  if (highlightIdentifier | *(v4 + 20))
  {
    if (![(NSString *)highlightIdentifier isEqual:?])
    {
      goto LABEL_123;
    }
  }

  has = self->_has;
  v7 = *(v4 + 128);
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_highlightType != *(v4 + 42))
    {
      goto LABEL_123;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_123;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_syndicationSecondsSinceReferenceDate != *(v4 + 5))
    {
      goto LABEL_123;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_123;
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId | *(v4 + 29) && ![(NSString *)sourceBundleId isEqual:?])
  {
    goto LABEL_123;
  }

  applicationIdentifiers = self->_applicationIdentifiers;
  if (applicationIdentifiers | *(v4 + 7))
  {
    if (![(NSMutableArray *)applicationIdentifiers isEqual:?])
    {
      goto LABEL_123;
    }
  }

  resourceUrl = self->_resourceUrl;
  if (resourceUrl | *(v4 + 27))
  {
    if (![(NSString *)resourceUrl isEqual:?])
    {
      goto LABEL_123;
    }
  }

  sender = self->_sender;
  if (sender | *(v4 + 28))
  {
    if (![(PPSocialHighlightContact *)sender isEqual:?])
    {
      goto LABEL_123;
    }
  }

  domainIdentifier = self->_domainIdentifier;
  if (domainIdentifier | *(v4 + 16))
  {
    if (![(NSString *)domainIdentifier isEqual:?])
    {
      goto LABEL_123;
    }
  }

  batchIdentifier = self->_batchIdentifier;
  if (batchIdentifier | *(v4 + 9))
  {
    if (![(NSString *)batchIdentifier isEqual:?])
    {
      goto LABEL_123;
    }
  }

  calculatedFeatures = self->_calculatedFeatures;
  if (calculatedFeatures | *(v4 + 10))
  {
    if (![(NSMutableArray *)calculatedFeatures isEqual:?])
    {
      goto LABEL_123;
    }
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(v4 + 11))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_123;
    }
  }

  v16 = *(v4 + 128);
  if (*&self->_has)
  {
    if ((v16 & 1) == 0 || self->_contentCreationSecondsSinceReferenceDate != *(v4 + 1))
    {
      goto LABEL_123;
    }
  }

  else if (v16)
  {
    goto LABEL_123;
  }

  groupPhotoPathDigest = self->_groupPhotoPathDigest;
  if (groupPhotoPathDigest | *(v4 + 18) && ![(NSString *)groupPhotoPathDigest isEqual:?])
  {
    goto LABEL_123;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 15))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_123;
    }
  }

  v19 = self->_has;
  v20 = *(v4 + 128);
  if ((v19 & 0x800) != 0)
  {
    if ((*(v4 + 128) & 0x800) == 0)
    {
      goto LABEL_123;
    }

    v22 = *(v4 + 251);
    if (self->_isPrimary)
    {
      if ((*(v4 + 251) & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (*(v4 + 251))
    {
      goto LABEL_123;
    }
  }

  else if ((*(v4 + 128) & 0x800) != 0)
  {
    goto LABEL_123;
  }

  attributionIdentifier = self->_attributionIdentifier;
  if (attributionIdentifier | *(v4 + 8))
  {
    if (![(NSString *)attributionIdentifier isEqual:?])
    {
      goto LABEL_123;
    }

    v19 = self->_has;
    v20 = *(v4 + 128);
  }

  if ((v19 & 0x80) != 0)
  {
    if ((v20 & 0x80) == 0 || self->_rank != *(v4 + 50))
    {
      goto LABEL_123;
    }
  }

  else if ((v20 & 0x80) != 0)
  {
    goto LABEL_123;
  }

  if ((v19 & 8) != 0)
  {
    if ((v20 & 8) == 0 || self->_score != *(v4 + 4))
    {
      goto LABEL_123;
    }
  }

  else if ((v20 & 8) != 0)
  {
    goto LABEL_123;
  }

  if ((v19 & 0x400) != 0)
  {
    if ((v20 & 0x400) == 0)
    {
      goto LABEL_123;
    }

    v24 = *(v4 + 250);
    if (self->_isConversationAutoDonating)
    {
      if ((*(v4 + 250) & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (*(v4 + 250))
    {
      goto LABEL_123;
    }
  }

  else if ((v20 & 0x400) != 0)
  {
    goto LABEL_123;
  }

  originatingDeviceId = self->_originatingDeviceId;
  if (originatingDeviceId | *(v4 + 24))
  {
    if (![(NSString *)originatingDeviceId isEqual:?])
    {
      goto LABEL_123;
    }

    v19 = self->_has;
    v20 = *(v4 + 128);
  }

  if ((v19 & 4) != 0)
  {
    if ((v20 & 4) == 0 || self->_rankingSecondsSinceReferenceDate != *(v4 + 3))
    {
      goto LABEL_123;
    }
  }

  else if ((v20 & 4) != 0)
  {
    goto LABEL_123;
  }

  resolvedUrl = self->_resolvedUrl;
  if (resolvedUrl | *(v4 + 26) && ![(NSString *)resolvedUrl isEqual:?])
  {
    goto LABEL_123;
  }

  variant = self->_variant;
  if (variant | *(v4 + 30))
  {
    if (![(NSString *)variant isEqual:?])
    {
      goto LABEL_123;
    }
  }

  v27 = self->_has;
  v28 = *(v4 + 128);
  if ((v27 & 0x1000) != 0)
  {
    if ((*(v4 + 128) & 0x1000) == 0)
    {
      goto LABEL_123;
    }

    v29 = *(v4 + 252);
    if (self->_isTopKResult)
    {
      if ((*(v4 + 252) & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (*(v4 + 252))
    {
      goto LABEL_123;
    }
  }

  else if ((*(v4 + 128) & 0x1000) != 0)
  {
    goto LABEL_123;
  }

  if ((v27 & 0x20) != 0)
  {
    if ((v28 & 0x20) == 0 || self->_topKScore != *(v4 + 6))
    {
      goto LABEL_123;
    }
  }

  else if ((v28 & 0x20) != 0)
  {
    goto LABEL_123;
  }

  if ((v27 & 2) != 0)
  {
    if ((v28 & 2) == 0 || self->_firstPassScore != *(v4 + 2))
    {
      goto LABEL_123;
    }
  }

  else if ((v28 & 2) != 0)
  {
    goto LABEL_123;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 128) & 0x200) == 0)
    {
      goto LABEL_123;
    }

    v30 = *(v4 + 249);
    if (self->_isCollaboration)
    {
      if ((*(v4 + 249) & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    else if (*(v4 + 249))
    {
      goto LABEL_123;
    }
  }

  else if ((*(v4 + 128) & 0x200) != 0)
  {
    goto LABEL_123;
  }

  collaborationIdentifier = self->_collaborationIdentifier;
  if (collaborationIdentifier | *(v4 + 12) && ![(NSString *)collaborationIdentifier isEqual:?])
  {
    goto LABEL_123;
  }

  contentType = self->_contentType;
  if (contentType | *(v4 + 14))
  {
    if (![(NSString *)contentType isEqual:?])
    {
      goto LABEL_123;
    }
  }

  contentDisplayName = self->_contentDisplayName;
  if (contentDisplayName | *(v4 + 13))
  {
    if (![(NSString *)contentDisplayName isEqual:?])
    {
      goto LABEL_123;
    }
  }

  fileProviderId = self->_fileProviderId;
  if (fileProviderId | *(v4 + 17))
  {
    if (![(NSString *)fileProviderId isEqual:?])
    {
      goto LABEL_123;
    }
  }

  localIdentity = self->_localIdentity;
  if (localIdentity | *(v4 + 22))
  {
    if (![(NSData *)localIdentity isEqual:?])
    {
      goto LABEL_123;
    }
  }

  localIdentityProof = self->_localIdentityProof;
  if (localIdentityProof | *(v4 + 23))
  {
    if (![(NSData *)localIdentityProof isEqual:?])
    {
      goto LABEL_123;
    }
  }

  handleToIdentityMap = self->_handleToIdentityMap;
  if (handleToIdentityMap | *(v4 + 19))
  {
    if (![(NSData *)handleToIdentityMap isEqual:?])
    {
      goto LABEL_123;
    }
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 128) & 0x100) != 0)
    {
      if (self->_fromMeEntitlementOverrideIsPresent)
      {
        if ((*(v4 + 248) & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      else if (*(v4 + 248))
      {
        goto LABEL_123;
      }

      v38 = 1;
      goto LABEL_124;
    }

LABEL_123:
    v38 = 0;
    goto LABEL_124;
  }

  v38 = (*(v4 + 128) & 0x100) == 0;
LABEL_124:

  return v38;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_highlightIdentifier copyWithZone:a3];
  v7 = *(v5 + 160);
  *(v5 + 160) = v6;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 168) = self->_highlightType;
    *(v5 + 256) |= 0x40u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_syndicationSecondsSinceReferenceDate;
    *(v5 + 256) |= 0x10u;
  }

  v9 = [(NSString *)self->_sourceBundleId copyWithZone:a3];
  v10 = *(v5 + 232);
  *(v5 + 232) = v9;

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = self->_applicationIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v68;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v68 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v67 + 1) + 8 * i) copyWithZone:a3];
        [v5 addApplicationIdentifiers:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v13);
  }

  v17 = [(NSString *)self->_resourceUrl copyWithZone:a3];
  v18 = *(v5 + 216);
  *(v5 + 216) = v17;

  v19 = [(PPSocialHighlightContact *)self->_sender copyWithZone:a3];
  v20 = *(v5 + 224);
  *(v5 + 224) = v19;

  v21 = [(NSString *)self->_domainIdentifier copyWithZone:a3];
  v22 = *(v5 + 128);
  *(v5 + 128) = v21;

  v23 = [(NSString *)self->_batchIdentifier copyWithZone:a3];
  v24 = *(v5 + 72);
  *(v5 + 72) = v23;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v25 = self->_calculatedFeatures;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v64;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v64 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v63 + 1) + 8 * j) copyWithZone:{a3, v63}];
        [v5 addCalculatedFeatures:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v27);
  }

  v31 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v32 = *(v5 + 88);
  *(v5 + 88) = v31;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_contentCreationSecondsSinceReferenceDate;
    *(v5 + 256) |= 1u;
  }

  v33 = [(NSString *)self->_groupPhotoPathDigest copyWithZone:a3, v63];
  v34 = *(v5 + 144);
  *(v5 + 144) = v33;

  v35 = [(NSString *)self->_displayName copyWithZone:a3];
  v36 = *(v5 + 120);
  *(v5 + 120) = v35;

  if ((*&self->_has & 0x800) != 0)
  {
    *(v5 + 251) = self->_isPrimary;
    *(v5 + 256) |= 0x800u;
  }

  v37 = [(NSString *)self->_attributionIdentifier copyWithZone:a3];
  v38 = *(v5 + 64);
  *(v5 + 64) = v37;

  v39 = self->_has;
  if ((v39 & 0x80) != 0)
  {
    *(v5 + 200) = self->_rank;
    *(v5 + 256) |= 0x80u;
    v39 = self->_has;
    if ((v39 & 8) == 0)
    {
LABEL_25:
      if ((v39 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v39 & 8) == 0)
  {
    goto LABEL_25;
  }

  *(v5 + 32) = self->_score;
  *(v5 + 256) |= 8u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_26:
    *(v5 + 250) = self->_isConversationAutoDonating;
    *(v5 + 256) |= 0x400u;
  }

LABEL_27:
  v40 = [(NSString *)self->_originatingDeviceId copyWithZone:a3];
  v41 = *(v5 + 192);
  *(v5 + 192) = v40;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_rankingSecondsSinceReferenceDate;
    *(v5 + 256) |= 4u;
  }

  v42 = [(NSString *)self->_resolvedUrl copyWithZone:a3];
  v43 = *(v5 + 208);
  *(v5 + 208) = v42;

  v44 = [(NSString *)self->_variant copyWithZone:a3];
  v45 = *(v5 + 240);
  *(v5 + 240) = v44;

  v46 = self->_has;
  if ((v46 & 0x1000) != 0)
  {
    *(v5 + 252) = self->_isTopKResult;
    *(v5 + 256) |= 0x1000u;
    v46 = self->_has;
    if ((v46 & 0x20) == 0)
    {
LABEL_31:
      if ((v46 & 2) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_42;
    }
  }

  else if ((v46 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  *(v5 + 48) = self->_topKScore;
  *(v5 + 256) |= 0x20u;
  v46 = self->_has;
  if ((v46 & 2) == 0)
  {
LABEL_32:
    if ((v46 & 0x200) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_42:
  *(v5 + 16) = self->_firstPassScore;
  *(v5 + 256) |= 2u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_33:
    *(v5 + 249) = self->_isCollaboration;
    *(v5 + 256) |= 0x200u;
  }

LABEL_34:
  v47 = [(NSString *)self->_collaborationIdentifier copyWithZone:a3];
  v48 = *(v5 + 96);
  *(v5 + 96) = v47;

  v49 = [(NSString *)self->_contentType copyWithZone:a3];
  v50 = *(v5 + 112);
  *(v5 + 112) = v49;

  v51 = [(NSString *)self->_contentDisplayName copyWithZone:a3];
  v52 = *(v5 + 104);
  *(v5 + 104) = v51;

  v53 = [(NSString *)self->_fileProviderId copyWithZone:a3];
  v54 = *(v5 + 136);
  *(v5 + 136) = v53;

  v55 = [(NSData *)self->_localIdentity copyWithZone:a3];
  v56 = *(v5 + 176);
  *(v5 + 176) = v55;

  v57 = [(NSData *)self->_localIdentityProof copyWithZone:a3];
  v58 = *(v5 + 184);
  *(v5 + 184) = v57;

  v59 = [(NSData *)self->_handleToIdentityMap copyWithZone:a3];
  v60 = *(v5 + 152);
  *(v5 + 152) = v59;

  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 248) = self->_fromMeEntitlementOverrideIsPresent;
    *(v5 + 256) |= 0x100u;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (self->_highlightIdentifier)
  {
    [v4 setHighlightIdentifier:?];
    v4 = v17;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v4 + 42) = self->_highlightType;
    *(v4 + 128) |= 0x40u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v4 + 5) = *&self->_syndicationSecondsSinceReferenceDate;
    *(v4 + 128) |= 0x10u;
  }

  if (self->_sourceBundleId)
  {
    [v17 setSourceBundleId:?];
  }

  if ([(PPRankableSocialHighlight *)self applicationIdentifiersCount])
  {
    [v17 clearApplicationIdentifiers];
    v6 = [(PPRankableSocialHighlight *)self applicationIdentifiersCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PPRankableSocialHighlight *)self applicationIdentifiersAtIndex:i];
        [v17 addApplicationIdentifiers:v9];
      }
    }
  }

  if (self->_resourceUrl)
  {
    [v17 setResourceUrl:?];
  }

  if (self->_sender)
  {
    [v17 setSender:?];
  }

  if (self->_domainIdentifier)
  {
    [v17 setDomainIdentifier:?];
  }

  if (self->_batchIdentifier)
  {
    [v17 setBatchIdentifier:?];
  }

  if ([(PPRankableSocialHighlight *)self calculatedFeaturesCount])
  {
    [v17 clearCalculatedFeatures];
    v10 = [(PPRankableSocialHighlight *)self calculatedFeaturesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(PPRankableSocialHighlight *)self calculatedFeaturesAtIndex:j];
        [v17 addCalculatedFeatures:v13];
      }
    }
  }

  if (self->_clientIdentifier)
  {
    [v17 setClientIdentifier:?];
  }

  v14 = v17;
  if (*&self->_has)
  {
    *(v17 + 1) = *&self->_contentCreationSecondsSinceReferenceDate;
    *(v17 + 128) |= 1u;
  }

  if (self->_groupPhotoPathDigest)
  {
    [v17 setGroupPhotoPathDigest:?];
    v14 = v17;
  }

  if (self->_displayName)
  {
    [v17 setDisplayName:?];
    v14 = v17;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    v14[251] = self->_isPrimary;
    *(v14 + 128) |= 0x800u;
  }

  if (self->_attributionIdentifier)
  {
    [v17 setAttributionIdentifier:?];
    v14 = v17;
  }

  v15 = self->_has;
  if ((v15 & 0x80) != 0)
  {
    *(v14 + 50) = self->_rank;
    *(v14 + 128) |= 0x80u;
    v15 = self->_has;
    if ((v15 & 8) == 0)
    {
LABEL_39:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((v15 & 8) == 0)
  {
    goto LABEL_39;
  }

  *(v14 + 4) = *&self->_score;
  *(v14 + 128) |= 8u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_40:
    v14[250] = self->_isConversationAutoDonating;
    *(v14 + 128) |= 0x400u;
  }

LABEL_41:
  if (self->_originatingDeviceId)
  {
    [v17 setOriginatingDeviceId:?];
    v14 = v17;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v14 + 3) = *&self->_rankingSecondsSinceReferenceDate;
    *(v14 + 128) |= 4u;
  }

  if (self->_resolvedUrl)
  {
    [v17 setResolvedUrl:?];
    v14 = v17;
  }

  if (self->_variant)
  {
    [v17 setVariant:?];
    v14 = v17;
  }

  v16 = self->_has;
  if ((v16 & 0x1000) != 0)
  {
    v14[252] = self->_isTopKResult;
    *(v14 + 128) |= 0x1000u;
    v16 = self->_has;
    if ((v16 & 0x20) == 0)
    {
LABEL_51:
      if ((v16 & 2) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_78;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_51;
  }

  *(v14 + 6) = *&self->_topKScore;
  *(v14 + 128) |= 0x20u;
  v16 = self->_has;
  if ((v16 & 2) == 0)
  {
LABEL_52:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_78:
  *(v14 + 2) = *&self->_firstPassScore;
  *(v14 + 128) |= 2u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_53:
    v14[249] = self->_isCollaboration;
    *(v14 + 128) |= 0x200u;
  }

LABEL_54:
  if (self->_collaborationIdentifier)
  {
    [v17 setCollaborationIdentifier:?];
    v14 = v17;
  }

  if (self->_contentType)
  {
    [v17 setContentType:?];
    v14 = v17;
  }

  if (self->_contentDisplayName)
  {
    [v17 setContentDisplayName:?];
    v14 = v17;
  }

  if (self->_fileProviderId)
  {
    [v17 setFileProviderId:?];
    v14 = v17;
  }

  if (self->_localIdentity)
  {
    [v17 setLocalIdentity:?];
    v14 = v17;
  }

  if (self->_localIdentityProof)
  {
    [v17 setLocalIdentityProof:?];
    v14 = v17;
  }

  if (self->_handleToIdentityMap)
  {
    [v17 setHandleToIdentityMap:?];
    v14 = v17;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v14[248] = self->_fromMeEntitlementOverrideIsPresent;
    *(v14 + 128) |= 0x100u;
  }
}

- (void)writeTo:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_highlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    highlightType = self->_highlightType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    syndicationSecondsSinceReferenceDate = self->_syndicationSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_sourceBundleId)
  {
    PBDataWriterWriteStringField();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_applicationIdentifiers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  if (self->_resourceUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sender)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_domainIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_batchIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_calculatedFeatures;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v16);
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    contentCreationSecondsSinceReferenceDate = self->_contentCreationSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_groupPhotoPathDigest)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x800) != 0)
  {
    isPrimary = self->_isPrimary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_attributionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v22 = self->_has;
  if ((v22 & 0x80) != 0)
  {
    rank = self->_rank;
    PBDataWriterWriteUint32Field();
    v22 = self->_has;
    if ((v22 & 8) == 0)
    {
LABEL_45:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((v22 & 8) == 0)
  {
    goto LABEL_45;
  }

  score = self->_score;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_46:
    isConversationAutoDonating = self->_isConversationAutoDonating;
    PBDataWriterWriteBOOLField();
  }

LABEL_47:
  if (self->_originatingDeviceId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    rankingSecondsSinceReferenceDate = self->_rankingSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_resolvedUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_variant)
  {
    PBDataWriterWriteStringField();
  }

  v25 = self->_has;
  if ((v25 & 0x1000) != 0)
  {
    isTopKResult = self->_isTopKResult;
    PBDataWriterWriteBOOLField();
    v25 = self->_has;
    if ((v25 & 0x20) == 0)
    {
LABEL_57:
      if ((v25 & 2) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_82;
    }
  }

  else if ((v25 & 0x20) == 0)
  {
    goto LABEL_57;
  }

  topKScore = self->_topKScore;
  PBDataWriterWriteDoubleField();
  v25 = self->_has;
  if ((v25 & 2) == 0)
  {
LABEL_58:
    if ((v25 & 0x200) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_82:
  firstPassScore = self->_firstPassScore;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_59:
    isCollaboration = self->_isCollaboration;
    PBDataWriterWriteBOOLField();
  }

LABEL_60:
  if (self->_collaborationIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentDisplayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fileProviderId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localIdentity)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_localIdentityProof)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_handleToIdentityMap)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x100) != 0)
  {
    fromMeEntitlementOverrideIsPresent = self->_fromMeEntitlementOverrideIsPresent;
    PBDataWriterWriteBOOLField();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  highlightIdentifier = self->_highlightIdentifier;
  if (highlightIdentifier)
  {
    [v3 setObject:highlightIdentifier forKey:@"highlightIdentifier"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    highlightType = self->_highlightType;
    if (highlightType >= 4)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_highlightType];
    }

    else
    {
      v8 = off_278971D20[highlightType];
    }

    [v4 setObject:v8 forKey:@"highlightType"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_syndicationSecondsSinceReferenceDate];
    [v4 setObject:v9 forKey:@"syndicationSecondsSinceReferenceDate"];
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId)
  {
    [v4 setObject:sourceBundleId forKey:@"sourceBundleId"];
  }

  applicationIdentifiers = self->_applicationIdentifiers;
  if (applicationIdentifiers)
  {
    [v4 setObject:applicationIdentifiers forKey:@"applicationIdentifiers"];
  }

  resourceUrl = self->_resourceUrl;
  if (resourceUrl)
  {
    [v4 setObject:resourceUrl forKey:@"resourceUrl"];
  }

  sender = self->_sender;
  if (sender)
  {
    v14 = [(PPSocialHighlightContact *)sender dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"sender"];
  }

  domainIdentifier = self->_domainIdentifier;
  if (domainIdentifier)
  {
    [v4 setObject:domainIdentifier forKey:@"domainIdentifier"];
  }

  batchIdentifier = self->_batchIdentifier;
  if (batchIdentifier)
  {
    [v4 setObject:batchIdentifier forKey:@"batchIdentifier"];
  }

  if ([(NSMutableArray *)self->_calculatedFeatures count])
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_calculatedFeatures, "count")}];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v18 = self->_calculatedFeatures;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v55;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v54 + 1) + 8 * i) dictionaryRepresentation];
          [v17 addObject:v23];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKey:@"calculatedFeatures"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v4 setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  if (*&self->_has)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_contentCreationSecondsSinceReferenceDate];
    [v4 setObject:v25 forKey:@"contentCreationSecondsSinceReferenceDate"];
  }

  groupPhotoPathDigest = self->_groupPhotoPathDigest;
  if (groupPhotoPathDigest)
  {
    [v4 setObject:groupPhotoPathDigest forKey:@"groupPhotoPathDigest"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  if ((*&self->_has & 0x800) != 0)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPrimary];
    [v4 setObject:v28 forKey:@"isPrimary"];
  }

  attributionIdentifier = self->_attributionIdentifier;
  if (attributionIdentifier)
  {
    [v4 setObject:attributionIdentifier forKey:@"attributionIdentifier"];
  }

  v30 = self->_has;
  if ((v30 & 0x80) != 0)
  {
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rank];
    [v4 setObject:v49 forKey:@"rank"];

    v30 = self->_has;
    if ((v30 & 8) == 0)
    {
LABEL_45:
      if ((v30 & 0x400) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((v30 & 8) == 0)
  {
    goto LABEL_45;
  }

  v50 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
  [v4 setObject:v50 forKey:@"score"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_46:
    v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_isConversationAutoDonating];
    [v4 setObject:v31 forKey:@"isConversationAutoDonating"];
  }

LABEL_47:
  originatingDeviceId = self->_originatingDeviceId;
  if (originatingDeviceId)
  {
    [v4 setObject:originatingDeviceId forKey:@"originatingDeviceId"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rankingSecondsSinceReferenceDate];
    [v4 setObject:v33 forKey:@"rankingSecondsSinceReferenceDate"];
  }

  resolvedUrl = self->_resolvedUrl;
  if (resolvedUrl)
  {
    [v4 setObject:resolvedUrl forKey:@"resolvedUrl"];
  }

  variant = self->_variant;
  if (variant)
  {
    [v4 setObject:variant forKey:@"variant"];
  }

  v36 = self->_has;
  if ((v36 & 0x1000) != 0)
  {
    v51 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTopKResult];
    [v4 setObject:v51 forKey:@"isTopKResult"];

    v36 = self->_has;
    if ((v36 & 0x20) == 0)
    {
LABEL_57:
      if ((v36 & 2) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_82;
    }
  }

  else if ((v36 & 0x20) == 0)
  {
    goto LABEL_57;
  }

  v52 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topKScore];
  [v4 setObject:v52 forKey:@"topKScore"];

  v36 = self->_has;
  if ((v36 & 2) == 0)
  {
LABEL_58:
    if ((v36 & 0x200) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_82:
  v53 = [MEMORY[0x277CCABB0] numberWithDouble:self->_firstPassScore];
  [v4 setObject:v53 forKey:@"firstPassScore"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_59:
    v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCollaboration];
    [v4 setObject:v37 forKey:@"isCollaboration"];
  }

LABEL_60:
  collaborationIdentifier = self->_collaborationIdentifier;
  if (collaborationIdentifier)
  {
    [v4 setObject:collaborationIdentifier forKey:@"collaborationIdentifier"];
  }

  contentType = self->_contentType;
  if (contentType)
  {
    [v4 setObject:contentType forKey:@"contentType"];
  }

  contentDisplayName = self->_contentDisplayName;
  if (contentDisplayName)
  {
    [v4 setObject:contentDisplayName forKey:@"contentDisplayName"];
  }

  fileProviderId = self->_fileProviderId;
  if (fileProviderId)
  {
    [v4 setObject:fileProviderId forKey:@"fileProviderId"];
  }

  localIdentity = self->_localIdentity;
  if (localIdentity)
  {
    [v4 setObject:localIdentity forKey:@"localIdentity"];
  }

  localIdentityProof = self->_localIdentityProof;
  if (localIdentityProof)
  {
    [v4 setObject:localIdentityProof forKey:@"localIdentityProof"];
  }

  handleToIdentityMap = self->_handleToIdentityMap;
  if (handleToIdentityMap)
  {
    [v4 setObject:handleToIdentityMap forKey:@"handleToIdentityMap"];
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithBool:self->_fromMeEntitlementOverrideIsPresent];
    [v4 setObject:v45 forKey:@"fromMeEntitlementOverrideIsPresent"];
  }

  v46 = v4;

  v47 = *MEMORY[0x277D85DE8];
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPRankableSocialHighlight;
  v4 = [(PPRankableSocialHighlight *)&v8 description];
  v5 = [(PPRankableSocialHighlight *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasFromMeEntitlementOverrideIsPresent:(BOOL)a3
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

- (void)setHasIsCollaboration:(BOOL)a3
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

- (void)setHasFirstPassScore:(BOOL)a3
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

- (void)setHasTopKScore:(BOOL)a3
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

- (void)setHasIsTopKResult:(BOOL)a3
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

- (void)setHasRankingSecondsSinceReferenceDate:(BOOL)a3
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

- (void)setHasIsConversationAutoDonating:(BOOL)a3
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

- (void)setHasScore:(BOOL)a3
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

- (void)setHasRank:(BOOL)a3
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

- (void)setHasIsPrimary:(BOOL)a3
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

- (void)addCalculatedFeatures:(id)a3
{
  v4 = a3;
  calculatedFeatures = self->_calculatedFeatures;
  v8 = v4;
  if (!calculatedFeatures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_calculatedFeatures;
    self->_calculatedFeatures = v6;

    v4 = v8;
    calculatedFeatures = self->_calculatedFeatures;
  }

  [(NSMutableArray *)calculatedFeatures addObject:v4];
}

- (void)addApplicationIdentifiers:(id)a3
{
  v4 = a3;
  applicationIdentifiers = self->_applicationIdentifiers;
  v8 = v4;
  if (!applicationIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_applicationIdentifiers;
    self->_applicationIdentifiers = v6;

    v4 = v8;
    applicationIdentifiers = self->_applicationIdentifiers;
  }

  [(NSMutableArray *)applicationIdentifiers addObject:v4];
}

- (void)setHasSyndicationSecondsSinceReferenceDate:(BOOL)a3
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

- (int)StringAsHighlightType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Automatic"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Starred"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ManualAndAutomatic"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasHighlightType:(BOOL)a3
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

- (id)features
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_calculatedFeatures)
  {
    v3 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_calculatedFeatures;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 hasName])
          {
            v10 = [v9 name];
            if (v10)
            {
              v11 = v10;
              v12 = [v9 hasValue];

              if (v12)
              {
                v13 = MEMORY[0x277CCABB0];
                [v9 value];
                v14 = [v13 numberWithDouble:?];
                v15 = [v9 name];
                [v3 setObject:v14 forKeyedSubscript:v15];
              }
            }
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)featureValueForName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PPRankableSocialHighlight *)self calculatedFeatureValueForKey:v5];
  if (!v6)
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_fault_impl(&dword_23224A000, v7, OS_LOG_TYPE_FAULT, "Social Highlight Scorer fetched feature %@, which was not precomputed.", buf, 0xCu);
    }

    v6 = &unk_2847860B0;
  }

  v8 = objc_alloc(MEMORY[0x277CBFF48]);
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v14 = 0;
  v9 = [v8 initWithShape:&unk_284785310 dataType:65600 error:&v14];
  if (!v9)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PPRankableSocialHighlight+FeatureRanks.m" lineNumber:63 description:@"Could not allocate memory for array"];
  }

  [v9 setObject:v6 atIndexedSubscript:0];
  v10 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSSet)featureNames
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_calculatedFeatures;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 hasName])
        {
          v10 = [v9 name];

          if (v10)
          {
            v11 = [v9 name];
            [v3 addObject:v11];
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setCalculatedFeaturesFromDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_opt_new();
        [v12 setName:v11];
        v13 = [v4 objectForKeyedSubscript:v11];
        [v13 doubleValue];
        [v12 setValue:?];

        [(NSMutableArray *)v5 addObject:v12];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  calculatedFeatures = self->_calculatedFeatures;
  self->_calculatedFeatures = v5;

  v15 = *MEMORY[0x277D85DE8];
}

- (id)calculatedFeatureValueForKey:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_calculatedFeatures;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v12 = MEMORY[0x277CCABB0];
          [v9 value];
          v6 = [v12 numberWithDouble:?];
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)json
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(PPRankableSocialHighlight *)self dictionaryRepresentation];
  v4 = [v2 dataWithJSONObject:v3 options:8 error:0];

  if (!v4)
  {
    v5 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = 0;
      _os_log_error_impl(&dword_23224A000, v5, OS_LOG_TYPE_ERROR, "Unable to serialize feedback to json: %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = a3;
    v5 = [[PPRankableSocialHighlight alloc] initWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end