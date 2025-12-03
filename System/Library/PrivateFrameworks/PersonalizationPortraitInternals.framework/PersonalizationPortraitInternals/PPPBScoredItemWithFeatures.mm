@interface PPPBScoredItemWithFeatures
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFeatures:(id)features;
- (void)addFeedbackItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation PPPBScoredItemWithFeatures

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 52))
  {
    self->_topicId = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[4])
  {
    [(PPPBScoredItemWithFeatures *)self setNamedEntity:?];
  }

  if ((*(v5 + 52) & 2) != 0)
  {
    self->_score = *(v5 + 12);
    *&self->_has |= 2u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(v5 + 2);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PPPBScoredItemWithFeatures *)self addFeatures:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v5 + 3);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PPPBScoredItemWithFeatures *)self addFeedbackItems:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  if (*(v5 + 5))
  {
    [(PPPBScoredItemWithFeatures *)self setNamedEntityWithFeedback:?];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_topicId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_namedEntity hash];
  if ((*&self->_has & 2) != 0)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v5.i32 = floorf(score + 0.5);
    v9 = (score - *v5.i32) * 1.8447e19;
    *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v7 = 2654435761u * *vbslq_s8(v10, v6, v5).i32;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabsf(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v4 ^ v3 ^ v7 ^ [(NSMutableArray *)self->_features hash];
  v12 = [(NSMutableArray *)self->_feedbackItems hash];
  return v11 ^ v12 ^ [(NSString *)self->_namedEntityWithFeedback hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = *(equalCopy + 52);
  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_topicId != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_21;
  }

  namedEntity = self->_namedEntity;
  if (namedEntity | *(equalCopy + 4))
  {
    if (![(NSString *)namedEntity isEqual:?])
    {
LABEL_21:
      v11 = 0;
      goto LABEL_22;
    }

    has = self->_has;
    v6 = *(equalCopy + 52);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_score != *(equalCopy + 12))
    {
      goto LABEL_21;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_21;
  }

  features = self->_features;
  if (features | *(equalCopy + 2) && ![(NSMutableArray *)features isEqual:?])
  {
    goto LABEL_21;
  }

  feedbackItems = self->_feedbackItems;
  if (feedbackItems | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)feedbackItems isEqual:?])
    {
      goto LABEL_21;
    }
  }

  namedEntityWithFeedback = self->_namedEntityWithFeedback;
  if (namedEntityWithFeedback | *(equalCopy + 5))
  {
    v11 = [(NSString *)namedEntityWithFeedback isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_22:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_topicId;
    *(v5 + 52) |= 1u;
  }

  v7 = [(NSString *)self->_namedEntity copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 48) = self->_score;
    *(v6 + 52) |= 2u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_features;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v29 + 1) + 8 * v13) copyWithZone:zone];
        [v6 addFeatures:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_feedbackItems;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v25 + 1) + 8 * v19) copyWithZone:{zone, v25}];
        [v6 addFeedbackItems:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  v21 = [(NSString *)self->_namedEntityWithFeedback copyWithZone:zone];
  v22 = *(v6 + 40);
  *(v6 + 40) = v21;

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_topicId;
    *(toCopy + 52) |= 1u;
  }

  v13 = toCopy;
  if (self->_namedEntity)
  {
    [toCopy setNamedEntity:?];
    toCopy = v13;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 12) = LODWORD(self->_score);
    *(toCopy + 52) |= 2u;
  }

  if ([(PPPBScoredItemWithFeatures *)self featuresCount])
  {
    [v13 clearFeatures];
    featuresCount = [(PPPBScoredItemWithFeatures *)self featuresCount];
    if (featuresCount)
    {
      v6 = featuresCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PPPBScoredItemWithFeatures *)self featuresAtIndex:i];
        [v13 addFeatures:v8];
      }
    }
  }

  if ([(PPPBScoredItemWithFeatures *)self feedbackItemsCount])
  {
    [v13 clearFeedbackItems];
    feedbackItemsCount = [(PPPBScoredItemWithFeatures *)self feedbackItemsCount];
    if (feedbackItemsCount)
    {
      v10 = feedbackItemsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(PPPBScoredItemWithFeatures *)self feedbackItemsAtIndex:j];
        [v13 addFeedbackItems:v12];
      }
    }
  }

  if (self->_namedEntityWithFeedback)
  {
    [v13 setNamedEntityWithFeedback:?];
  }
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    topicId = self->_topicId;
    PBDataWriterWriteUint64Field();
  }

  if (self->_namedEntity)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    score = self->_score;
    PBDataWriterWriteFloatField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_features;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_feedbackItems;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  if (self->_namedEntityWithFeedback)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_topicId];
    [dictionary setObject:v5 forKey:@"topicId"];
  }

  namedEntity = self->_namedEntity;
  if (namedEntity)
  {
    [dictionary setObject:namedEntity forKey:@"namedEntity"];
  }

  namedEntityWithFeedback = self->_namedEntityWithFeedback;
  if (namedEntityWithFeedback)
  {
    [dictionary setObject:namedEntityWithFeedback forKey:@"namedEntityWithFeedback"];
  }

  if ((*&self->_has & 2) != 0)
  {
    *&v4 = self->_score;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v8 forKey:@"score"];
  }

  if ([(NSMutableArray *)self->_features count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_features, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = self->_features;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"features"];
  }

  if ([(NSMutableArray *)self->_feedbackItems count])
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_feedbackItems, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = self->_feedbackItems;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:dictionaryRepresentation2];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [dictionary setObject:v16 forKey:@"feedbackItems"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBScoredItemWithFeatures;
  v4 = [(PPPBScoredItemWithFeatures *)&v8 description];
  dictionaryRepresentation = [(PPPBScoredItemWithFeatures *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addFeedbackItems:(id)items
{
  itemsCopy = items;
  feedbackItems = self->_feedbackItems;
  v8 = itemsCopy;
  if (!feedbackItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_feedbackItems;
    self->_feedbackItems = v6;

    itemsCopy = v8;
    feedbackItems = self->_feedbackItems;
  }

  [(NSMutableArray *)feedbackItems addObject:itemsCopy];
}

- (void)addFeatures:(id)features
{
  featuresCopy = features;
  features = self->_features;
  v8 = featuresCopy;
  if (!features)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_features;
    self->_features = v6;

    featuresCopy = v8;
    features = self->_features;
  }

  [(NSMutableArray *)features addObject:featuresCopy];
}

- (void)setHasScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end