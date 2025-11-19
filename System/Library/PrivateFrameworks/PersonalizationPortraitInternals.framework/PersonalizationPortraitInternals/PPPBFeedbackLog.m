@interface PPPBFeedbackLog
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)predictionType;
- (unint64_t)hash;
- (void)addExperimentalGroups:(id)a3;
- (void)addExtractedDonations:(id)a3;
- (void)addScoredItems:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPPBFeedbackLog

- (void)mergeFrom:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  feedbackMetadata = self->_feedbackMetadata;
  v6 = *(v4 + 4);
  if (feedbackMetadata)
  {
    if (v6)
    {
      [(PPPBFeedbackMetadata *)feedbackMetadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PPPBFeedbackLog *)self setFeedbackMetadata:?];
  }

  if (*(v4 + 64))
  {
    self->_predictionType = *(v4 + 12);
    *&self->_has |= 1u;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = *(v4 + 7);
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PPPBFeedbackLog *)self addScoredItems:*(*(&v31 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = *(v4 + 3);
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PPPBFeedbackLog *)self addExtractedDonations:*(*(&v27 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = *(v4 + 2);
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(PPPBFeedbackLog *)self addExperimentalGroups:*(*(&v23 + 1) + 8 * k), v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v19);
  }

  if (*(v4 + 5))
  {
    [(PPPBFeedbackLog *)self setHomeLocationGeohash:?];
  }

  if (*(v4 + 1))
  {
    [(PPPBFeedbackLog *)self setAssetVersion:?];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(PPPBFeedbackMetadata *)self->_feedbackMetadata hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_predictionType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSMutableArray *)self->_scoredItems hash];
  v7 = v5 ^ v6 ^ [(NSMutableArray *)self->_extractedDonations hash];
  v8 = [(NSMutableArray *)self->_experimentalGroups hash];
  v9 = v8 ^ [(NSString *)self->_homeLocationGeohash hash];
  return v7 ^ v9 ^ [(NSString *)self->_assetVersion hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata | *(v4 + 4))
  {
    if (![(PPPBFeedbackMetadata *)feedbackMetadata isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v6 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_predictionType != *(v4 + 12))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  scoredItems = self->_scoredItems;
  if (scoredItems | *(v4 + 7) && ![(NSMutableArray *)scoredItems isEqual:?])
  {
    goto LABEL_19;
  }

  extractedDonations = self->_extractedDonations;
  if (extractedDonations | *(v4 + 3))
  {
    if (![(NSMutableArray *)extractedDonations isEqual:?])
    {
      goto LABEL_19;
    }
  }

  experimentalGroups = self->_experimentalGroups;
  if (experimentalGroups | *(v4 + 2))
  {
    if (![(NSMutableArray *)experimentalGroups isEqual:?])
    {
      goto LABEL_19;
    }
  }

  homeLocationGeohash = self->_homeLocationGeohash;
  if (homeLocationGeohash | *(v4 + 5))
  {
    if (![(NSString *)homeLocationGeohash isEqual:?])
    {
      goto LABEL_19;
    }
  }

  assetVersion = self->_assetVersion;
  if (assetVersion | *(v4 + 1))
  {
    v12 = [(NSString *)assetVersion isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PPPBFeedbackMetadata *)self->_feedbackMetadata copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_predictionType;
    *(v5 + 64) |= 1u;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = self->_scoredItems;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v40 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addScoredItems:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = self->_extractedDonations;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v37;
    do
    {
      v18 = 0;
      do
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v36 + 1) + 8 * v18) copyWithZone:a3];
        [v5 addExtractedDonations:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v16);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = self->_experimentalGroups;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      v24 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v32 + 1) + 8 * v24) copyWithZone:{a3, v32}];
        [v5 addExperimentalGroups:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v22);
  }

  v26 = [(NSString *)self->_homeLocationGeohash copyWithZone:a3];
  v27 = *(v5 + 40);
  *(v5 + 40) = v26;

  v28 = [(NSString *)self->_assetVersion copyWithZone:a3];
  v29 = *(v5 + 8);
  *(v5 + 8) = v28;

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v18 = v4;
  if (self->_feedbackMetadata)
  {
    [v4 setFeedbackMetadata:?];
    v4 = v18;
  }

  if (*&self->_has)
  {
    *(v4 + 12) = self->_predictionType;
    *(v4 + 64) |= 1u;
  }

  if ([(PPPBFeedbackLog *)self scoredItemsCount])
  {
    [v18 clearScoredItems];
    v5 = [(PPPBFeedbackLog *)self scoredItemsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PPPBFeedbackLog *)self scoredItemsAtIndex:i];
        [v18 addScoredItems:v8];
      }
    }
  }

  if ([(PPPBFeedbackLog *)self extractedDonationsCount])
  {
    [v18 clearExtractedDonations];
    v9 = [(PPPBFeedbackLog *)self extractedDonationsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(PPPBFeedbackLog *)self extractedDonationsAtIndex:j];
        [v18 addExtractedDonations:v12];
      }
    }
  }

  if ([(PPPBFeedbackLog *)self experimentalGroupsCount])
  {
    [v18 clearExperimentalGroups];
    v13 = [(PPPBFeedbackLog *)self experimentalGroupsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(PPPBFeedbackLog *)self experimentalGroupsAtIndex:k];
        [v18 addExperimentalGroups:v16];
      }
    }
  }

  if (self->_homeLocationGeohash)
  {
    [v18 setHomeLocationGeohash:?];
  }

  v17 = v18;
  if (self->_assetVersion)
  {
    [v18 setAssetVersion:?];
    v17 = v18;
  }
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_feedbackMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    predictionType = self->_predictionType;
    PBDataWriterWriteInt32Field();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = self->_scoredItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_extractedDonations;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_experimentalGroups;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  if (self->_homeLocationGeohash)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  feedbackMetadata = self->_feedbackMetadata;
  if (feedbackMetadata)
  {
    v5 = [(PPPBFeedbackMetadata *)feedbackMetadata dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"feedbackMetadata"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_predictionType];
    [v3 setObject:v6 forKey:@"predictionType"];
  }

  if ([(NSMutableArray *)self->_scoredItems count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_scoredItems, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = self->_scoredItems;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"scoredItems"];
  }

  if ([(NSMutableArray *)self->_extractedDonations count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_extractedDonations, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = self->_extractedDonations;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"extractedDonations"];
  }

  if ([(NSMutableArray *)self->_experimentalGroups count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_experimentalGroups, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = self->_experimentalGroups;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v32 + 1) + 8 * k) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKey:@"experimentalGroups"];
  }

  homeLocationGeohash = self->_homeLocationGeohash;
  if (homeLocationGeohash)
  {
    [v3 setObject:homeLocationGeohash forKey:@"homeLocationGeohash"];
  }

  assetVersion = self->_assetVersion;
  if (assetVersion)
  {
    [v3 setObject:assetVersion forKey:@"assetVersion"];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBFeedbackLog;
  v4 = [(PPPBFeedbackLog *)&v8 description];
  v5 = [(PPPBFeedbackLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addExperimentalGroups:(id)a3
{
  v4 = a3;
  experimentalGroups = self->_experimentalGroups;
  v8 = v4;
  if (!experimentalGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_experimentalGroups;
    self->_experimentalGroups = v6;

    v4 = v8;
    experimentalGroups = self->_experimentalGroups;
  }

  [(NSMutableArray *)experimentalGroups addObject:v4];
}

- (void)addExtractedDonations:(id)a3
{
  v4 = a3;
  extractedDonations = self->_extractedDonations;
  v8 = v4;
  if (!extractedDonations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_extractedDonations;
    self->_extractedDonations = v6;

    v4 = v8;
    extractedDonations = self->_extractedDonations;
  }

  [(NSMutableArray *)extractedDonations addObject:v4];
}

- (void)addScoredItems:(id)a3
{
  v4 = a3;
  scoredItems = self->_scoredItems;
  v8 = v4;
  if (!scoredItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_scoredItems;
    self->_scoredItems = v6;

    v4 = v8;
    scoredItems = self->_scoredItems;
  }

  [(NSMutableArray *)scoredItems addObject:v4];
}

- (int)predictionType
{
  if (*&self->_has)
  {
    return self->_predictionType;
  }

  else
  {
    return 0;
  }
}

@end