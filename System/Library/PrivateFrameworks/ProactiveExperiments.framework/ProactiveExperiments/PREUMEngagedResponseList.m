@interface PREUMEngagedResponseList
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGenerationStatus:(id)a3;
- (int)StringAsInputMethod:(id)a3;
- (int)generationStatus;
- (int)inputMethod;
- (unint64_t)hash;
- (void)addItems:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEngagedItem:(BOOL)a3;
- (void)setHasGenerationStatus:(BOOL)a3;
- (void)setHasInputMethod:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PREUMEngagedResponseList

- (void)mergeFrom:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  experiment = self->_experiment;
  v6 = *(v4 + 3);
  if (experiment)
  {
    if (v6)
    {
      [(PREUMTrialExperiment *)experiment mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PREUMEngagedResponseList *)self setExperiment:?];
  }

  msgMetadata = self->_msgMetadata;
  v8 = *(v4 + 6);
  if (msgMetadata)
  {
    if (v8)
    {
      [(PREUMMessageMetadata *)msgMetadata mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PREUMEngagedResponseList *)self setMsgMetadata:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(v4 + 5);
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

        [(PREUMEngagedResponseList *)self addItems:*(*(&v16 + 1) + 8 * i), v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = *(v4 + 56);
  if ((v14 & 2) != 0)
  {
    self->_engagedItem = *(v4 + 4);
    *&self->_has |= 2u;
    v14 = *(v4 + 56);
    if ((v14 & 1) == 0)
    {
LABEL_20:
      if ((v14 & 8) == 0)
      {
        goto LABEL_21;
      }

LABEL_26:
      self->_inputMethod = *(v4 + 9);
      *&self->_has |= 8u;
      if ((*(v4 + 56) & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*(v4 + 56) & 1) == 0)
  {
    goto LABEL_20;
  }

  self->_timeToTap = *(v4 + 1);
  *&self->_has |= 1u;
  v14 = *(v4 + 56);
  if ((v14 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_21:
  if ((v14 & 4) != 0)
  {
LABEL_22:
    self->_generationStatus = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_23:

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(PREUMTrialExperiment *)self->_experiment hash];
  v4 = [(PREUMMessageMetadata *)self->_msgMetadata hash];
  v5 = [(NSMutableArray *)self->_items hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_engagedItem;
    if (*&self->_has)
    {
LABEL_3:
      v7 = 2654435761u * self->_timeToTap;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_inputMethod;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_generationStatus;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  experiment = self->_experiment;
  if (experiment | *(v4 + 3))
  {
    if (![(PREUMTrialExperiment *)experiment isEqual:?])
    {
      goto LABEL_27;
    }
  }

  msgMetadata = self->_msgMetadata;
  if (msgMetadata | *(v4 + 6))
  {
    if (![(PREUMMessageMetadata *)msgMetadata isEqual:?])
    {
      goto LABEL_27;
    }
  }

  items = self->_items;
  if (items | *(v4 + 5))
  {
    if (![(NSMutableArray *)items isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_engagedItem != *(v4 + 4))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_timeToTap != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_inputMethod != *(v4 + 9))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
    goto LABEL_27;
  }

  v8 = (*(v4 + 56) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_generationStatus != *(v4 + 8))
    {
      goto LABEL_27;
    }

    v8 = 1;
  }

LABEL_28:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PREUMTrialExperiment *)self->_experiment copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(PREUMMessageMetadata *)self->_msgMetadata copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

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

        v15 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v5 addItems:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_engagedItem;
    *(v5 + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_10:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      *(v5 + 36) = self->_inputMethod;
      *(v5 + 56) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 8) = self->_timeToTap;
  *(v5 + 56) |= 1u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((has & 4) != 0)
  {
LABEL_12:
    *(v5 + 32) = self->_generationStatus;
    *(v5 + 56) |= 4u;
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_experiment)
  {
    [v9 setExperiment:?];
  }

  if (self->_msgMetadata)
  {
    [v9 setMsgMetadata:?];
  }

  if ([(PREUMEngagedResponseList *)self itemsCount])
  {
    [v9 clearItems];
    v4 = [(PREUMEngagedResponseList *)self itemsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PREUMEngagedResponseList *)self itemsAtIndex:i];
        [v9 addItems:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v9 + 4) = self->_engagedItem;
    *(v9 + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  *(v9 + 1) = self->_timeToTap;
  *(v9 + 56) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  *(v9 + 9) = self->_inputMethod;
  *(v9 + 56) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    *(v9 + 8) = self->_generationStatus;
    *(v9 + 56) |= 4u;
  }

LABEL_14:
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_experiment)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_msgMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    engagedItem = self->_engagedItem;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_14:
      if ((has & 8) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      inputMethod = self->_inputMethod;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

  timeToTap = self->_timeToTap;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((has & 4) != 0)
  {
LABEL_16:
    generationStatus = self->_generationStatus;
    PBDataWriterWriteInt32Field();
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  experiment = self->_experiment;
  if (experiment)
  {
    v5 = [(PREUMTrialExperiment *)experiment dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"experiment"];
  }

  msgMetadata = self->_msgMetadata;
  if (msgMetadata)
  {
    v7 = [(PREUMMessageMetadata *)msgMetadata dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"msg_metadata"];
  }

  if ([(NSMutableArray *)self->_items count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_items, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = self->_items;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"items"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_engagedItem];
    [v3 setObject:v16 forKey:@"engaged_item"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_16:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      inputMethod = self->_inputMethod;
      if (inputMethod >= 6)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_inputMethod];
      }

      else
      {
        v19 = *(&off_279ABAC80 + inputMethod);
      }

      [v3 setObject:v19 forKey:@"input_method"];

      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timeToTap];
  [v3 setObject:v17 forKey:@"time_to_tap"];

  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  if ((has & 4) != 0)
  {
LABEL_25:
    generationStatus = self->_generationStatus;
    if (generationStatus >= 6)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_generationStatus];
    }

    else
    {
      v21 = *(&off_279ABACB0 + generationStatus);
    }

    [v3 setObject:v21 forKey:@"generation_status"];
  }

LABEL_29:
  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREUMEngagedResponseList;
  v4 = [(PREUMEngagedResponseList *)&v8 description];
  v5 = [(PREUMEngagedResponseList *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsGenerationStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"STATUS_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CACHED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FALLBACK_TO_RK_NIL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FALLBACK_TO_RK_ERROR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ONLY_CANNED_QR_EMPTY_ARRAY"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasGenerationStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)generationStatus
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_generationStatus;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsInputMethod:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"METHOD_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CANNED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SCRIBBLE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DICTATION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EMOJI"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HEART"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasInputMethod:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)inputMethod
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_inputMethod;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEngagedItem:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addItems:(id)a3
{
  v4 = a3;
  items = self->_items;
  v8 = v4;
  if (!items)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_items;
    self->_items = v6;

    v4 = v8;
    items = self->_items;
  }

  [(NSMutableArray *)items addObject:v4];
}

@end