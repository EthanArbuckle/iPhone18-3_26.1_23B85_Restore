@interface PREUMResponseList
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGenerationStatus:(id)status;
- (int)generationStatus;
- (unint64_t)hash;
- (void)addItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGenerationStatus:(BOOL)status;
- (void)setHasIsCached:(BOOL)cached;
- (void)writeTo:(id)to;
@end

@implementation PREUMResponseList

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  experiment = self->_experiment;
  v6 = *(fromCopy + 2);
  if (experiment)
  {
    if (v6)
    {
      [(PREUMTrialExperiment *)experiment mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PREUMResponseList *)self setExperiment:?];
  }

  msgMetadata = self->_msgMetadata;
  v8 = *(fromCopy + 5);
  if (msgMetadata)
  {
    if (v8)
    {
      [(PREUMMessageMetadata *)msgMetadata mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PREUMResponseList *)self setMsgMetadata:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(fromCopy + 4);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

        [(PREUMResponseList *)self addItems:*(*(&v16 + 1) + 8 * i), v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = *(fromCopy + 52);
  if ((v14 & 4) == 0)
  {
    if ((*(fromCopy + 52) & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    self->_responseTimePerf = *(fromCopy + 1);
    *&self->_has |= 1u;
    if ((*(fromCopy + 52) & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  self->_isCached = *(fromCopy + 48);
  *&self->_has |= 4u;
  v14 = *(fromCopy + 52);
  if (v14)
  {
    goto LABEL_24;
  }

LABEL_20:
  if ((v14 & 2) != 0)
  {
LABEL_21:
    self->_generationStatus = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

LABEL_22:

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(PREUMTrialExperiment *)self->_experiment hash];
  v4 = [(PREUMMessageMetadata *)self->_msgMetadata hash];
  v5 = [(NSMutableArray *)self->_items hash];
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v6 = 2654435761 * self->_isCached;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761u * self->_responseTimePerf;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_generationStatus;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  experiment = self->_experiment;
  if (experiment | *(equalCopy + 2))
  {
    if (![(PREUMTrialExperiment *)experiment isEqual:?])
    {
      goto LABEL_24;
    }
  }

  msgMetadata = self->_msgMetadata;
  if (msgMetadata | *(equalCopy + 5))
  {
    if (![(PREUMMessageMetadata *)msgMetadata isEqual:?])
    {
      goto LABEL_24;
    }
  }

  items = self->_items;
  if (items | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)items isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 52) & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  if ((*(equalCopy + 52) & 4) == 0)
  {
    goto LABEL_24;
  }

  v8 = *(equalCopy + 48);
  if (self->_isCached)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_responseTimePerf != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_24;
  }

  v9 = (*(equalCopy + 52) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_generationStatus != *(equalCopy + 6))
    {
      goto LABEL_24;
    }

    v9 = 1;
  }

LABEL_25:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PREUMTrialExperiment *)self->_experiment copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(PREUMMessageMetadata *)self->_msgMetadata copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_items;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v5 addItems:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v5 + 8) = self->_responseTimePerf;
    *(v5 + 52) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(v5 + 48) = self->_isCached;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((has & 2) != 0)
  {
LABEL_11:
    *(v5 + 24) = self->_generationStatus;
    *(v5 + 52) |= 2u;
  }

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_experiment)
  {
    [toCopy setExperiment:?];
  }

  if (self->_msgMetadata)
  {
    [toCopy setMsgMetadata:?];
  }

  if ([(PREUMResponseList *)self itemsCount])
  {
    [toCopy clearItems];
    itemsCount = [(PREUMResponseList *)self itemsCount];
    if (itemsCount)
    {
      v5 = itemsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PREUMResponseList *)self itemsAtIndex:i];
        [toCopy addItems:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 48) = self->_isCached;
    *(toCopy + 52) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 1) = self->_responseTimePerf;
  *(toCopy + 52) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_12:
    *(toCopy + 6) = self->_generationStatus;
    *(toCopy + 52) |= 2u;
  }

LABEL_13:
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_experiment)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_msgMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    responseTimePerf = self->_responseTimePerf;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  isCached = self->_isCached;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if (has)
  {
    goto LABEL_18;
  }

LABEL_14:
  if ((has & 2) != 0)
  {
LABEL_15:
    generationStatus = self->_generationStatus;
    PBDataWriterWriteInt32Field();
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  experiment = self->_experiment;
  if (experiment)
  {
    dictionaryRepresentation = [(PREUMTrialExperiment *)experiment dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"experiment"];
  }

  msgMetadata = self->_msgMetadata;
  if (msgMetadata)
  {
    dictionaryRepresentation2 = [(PREUMMessageMetadata *)msgMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"msg_metadata"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = self->_items;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation3 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation3];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"items"];
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_responseTimePerf];
    [dictionary setObject:v17 forKey:@"response_time_perf"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    generationStatus = self->_generationStatus;
    if (generationStatus >= 6)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_generationStatus];
    }

    else
    {
      v19 = off_279ABADC8[generationStatus];
    }

    [dictionary setObject:v19 forKey:@"generation_status"];

    goto LABEL_24;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCached];
  [dictionary setObject:v16 forKey:@"is_cached"];

  has = self->_has;
  if (has)
  {
    goto LABEL_19;
  }

LABEL_16:
  if ((has & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREUMResponseList;
  v4 = [(PREUMResponseList *)&v8 description];
  dictionaryRepresentation = [(PREUMResponseList *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsGenerationStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"STATUS_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"CACHED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"FALLBACK_TO_RK_NIL"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"FALLBACK_TO_RK_ERROR"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"ONLY_CANNED_QR_EMPTY_ARRAY"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasGenerationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)generationStatus
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_generationStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIsCached:(BOOL)cached
{
  if (cached)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addItems:(id)items
{
  itemsCopy = items;
  items = self->_items;
  v8 = itemsCopy;
  if (!items)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_items;
    self->_items = v6;

    itemsCopy = v8;
    items = self->_items;
  }

  [(NSMutableArray *)items addObject:itemsCopy];
}

@end