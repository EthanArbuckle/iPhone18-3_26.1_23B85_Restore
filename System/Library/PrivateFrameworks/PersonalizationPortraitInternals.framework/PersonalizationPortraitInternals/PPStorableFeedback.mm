@interface PPStorableFeedback
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFeedbackItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsMapped:(BOOL)mapped;
- (void)setHasStoreType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PPStorableFeedback

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 64);
  if (v6)
  {
    self->_secondsFrom1970 = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 64);
  }

  if ((v6 & 2) != 0)
  {
    self->_storeType = *(fromCopy + 14);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(PPStorableFeedback *)self setClientBundleIdentifier:?];
  }

  if (*(v5 + 4))
  {
    [(PPStorableFeedback *)self setClientIdentifier:?];
  }

  if (*(v5 + 6))
  {
    [(PPStorableFeedback *)self setMappingId:?];
  }

  if ((*(v5 + 64) & 4) != 0)
  {
    self->_isMapped = *(v5 + 60);
    *&self->_has |= 4u;
  }

  if (*(v5 + 2))
  {
    [(PPStorableFeedback *)self setBuild:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v5 + 5);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PPStorableFeedback *)self addFeedbackItems:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    secondsFrom1970 = self->_secondsFrom1970;
    if (secondsFrom1970 < 0.0)
    {
      secondsFrom1970 = -secondsFrom1970;
    }

    *v2.i64 = floor(secondsFrom1970 + 0.5);
    v7 = (secondsFrom1970 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_storeType;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_clientBundleIdentifier hash];
  v11 = [(NSString *)self->_clientIdentifier hash];
  v12 = [(NSString *)self->_mappingId hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_isMapped;
  }

  else
  {
    v13 = 0;
  }

  v14 = v9 ^ v5 ^ v10 ^ v11 ^ v12;
  v15 = v13 ^ [(NSString *)self->_build hash];
  return v14 ^ v15 ^ [(NSMutableArray *)self->_feedbackItems hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_secondsFrom1970 != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_storeType != *(equalCopy + 14))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_25;
  }

  clientBundleIdentifier = self->_clientBundleIdentifier;
  if (clientBundleIdentifier | *(equalCopy + 3) && ![(NSString *)clientBundleIdentifier isEqual:?])
  {
    goto LABEL_25;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)clientIdentifier isEqual:?])
    {
      goto LABEL_25;
    }
  }

  mappingId = self->_mappingId;
  if (mappingId | *(equalCopy + 6))
  {
    if (![(NSString *)mappingId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v9 = *(equalCopy + 64);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 64) & 4) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  if ((*(equalCopy + 64) & 4) == 0)
  {
    goto LABEL_25;
  }

  v14 = *(equalCopy + 60);
  if (self->_isMapped)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_25;
  }

LABEL_20:
  build = self->_build;
  if (build | *(equalCopy + 2) && ![(NSString *)build isEqual:?])
  {
    goto LABEL_25;
  }

  feedbackItems = self->_feedbackItems;
  if (feedbackItems | *(equalCopy + 5))
  {
    v12 = [(NSMutableArray *)feedbackItems isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_26:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_secondsFrom1970;
    *(v5 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 56) = self->_storeType;
    *(v5 + 64) |= 2u;
  }

  v8 = [(NSString *)self->_clientBundleIdentifier copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  v10 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v11 = *(v6 + 32);
  *(v6 + 32) = v10;

  v12 = [(NSString *)self->_mappingId copyWithZone:zone];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 60) = self->_isMapped;
    *(v6 + 64) |= 4u;
  }

  v14 = [(NSString *)self->_build copyWithZone:zone];
  v15 = *(v6 + 16);
  *(v6 + 16) = v14;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_feedbackItems;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * i) copyWithZone:{zone, v24}];
        [v6 addFeedbackItems:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = *&self->_secondsFrom1970;
    *(toCopy + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 14) = self->_storeType;
    *(toCopy + 64) |= 2u;
  }

  v10 = toCopy;
  if (self->_clientBundleIdentifier)
  {
    [toCopy setClientBundleIdentifier:?];
    toCopy = v10;
  }

  if (self->_clientIdentifier)
  {
    [v10 setClientIdentifier:?];
    toCopy = v10;
  }

  if (self->_mappingId)
  {
    [v10 setMappingId:?];
    toCopy = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 60) = self->_isMapped;
    *(toCopy + 64) |= 4u;
  }

  if (self->_build)
  {
    [v10 setBuild:?];
  }

  if ([(PPStorableFeedback *)self feedbackItemsCount])
  {
    [v10 clearFeedbackItems];
    feedbackItemsCount = [(PPStorableFeedback *)self feedbackItemsCount];
    if (feedbackItemsCount)
    {
      v7 = feedbackItemsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PPStorableFeedback *)self feedbackItemsAtIndex:i];
        [v10 addFeedbackItems:v9];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    secondsFrom1970 = self->_secondsFrom1970;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    storeType = self->_storeType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_clientBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    isMapped = self->_isMapped;
    PBDataWriterWriteBOOLField();
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_feedbackItems;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_secondsFrom1970];
    [dictionary setObject:v5 forKey:@"secondsFrom1970"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_storeType];
    [dictionary setObject:v6 forKey:@"storeType"];
  }

  clientBundleIdentifier = self->_clientBundleIdentifier;
  if (clientBundleIdentifier)
  {
    [dictionary setObject:clientBundleIdentifier forKey:@"clientBundleIdentifier"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [dictionary setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [dictionary setObject:mappingId forKey:@"mappingId"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMapped];
    [dictionary setObject:v10 forKey:@"isMapped"];
  }

  build = self->_build;
  if (build)
  {
    [dictionary setObject:build forKey:@"build"];
  }

  if ([(NSMutableArray *)self->_feedbackItems count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_feedbackItems, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_feedbackItems;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"feedbackItems"];
  }

  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPStorableFeedback;
  v4 = [(PPStorableFeedback *)&v8 description];
  dictionaryRepresentation = [(PPStorableFeedback *)self dictionaryRepresentation];
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

- (void)setHasIsMapped:(BOOL)mapped
{
  if (mapped)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStoreType:(BOOL)type
{
  if (type)
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