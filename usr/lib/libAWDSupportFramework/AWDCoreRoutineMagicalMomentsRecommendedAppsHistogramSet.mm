@interface AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInstance:(id)instance;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasConfidenceOfMostConfidentModel:(BOOL)model;
- (void)setHasDurationSinceLastSuccessfulTraining:(BOOL)training;
- (void)setHasFallbackModelConfidence:(BOOL)confidence;
- (void)setHasModelType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet *)self setInstances:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet;
  [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet *)&v3 dealloc];
}

- (void)addInstance:(id)instance
{
  instances = self->_instances;
  if (!instances)
  {
    instances = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_instances = instances;
  }

  [(NSMutableArray *)instances addObject:instance];
}

- (void)setHasModelType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasFallbackModelConfidence:(BOOL)confidence
{
  if (confidence)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasConfidenceOfMostConfidentModel:(BOOL)model
{
  if (model)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDurationSinceLastSuccessfulTraining:(BOOL)training
{
  if (training)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet description](&v3, sel_description), -[AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_instances count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_instances, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    instances = self->_instances;
    v6 = [(NSMutableArray *)instances countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(instances);
          }

          [v4 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)instances countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"instance"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_modelType), @"modelType"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_14:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_confidenceOfMostConfidentModel), @"confidenceOfMostConfidentModel"}];
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_fallbackModelConfidence), @"fallbackModelConfidence"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((has & 4) != 0)
  {
LABEL_16:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_durationSinceLastSuccessfulTraining), @"durationSinceLastSuccessfulTraining"}];
  }

LABEL_17:
  v11 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  instances = self->_instances;
  v6 = [(NSMutableArray *)instances countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(instances);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)instances countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    modelType = self->_modelType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_12:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      confidenceOfMostConfidentModel = self->_confidenceOfMostConfidentModel;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

  fallbackModelConfidence = self->_fallbackModelConfidence;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((has & 4) != 0)
  {
LABEL_14:
    durationSinceLastSuccessfulTraining = self->_durationSinceLastSuccessfulTraining;
    PBDataWriterWriteInt32Field();
  }

LABEL_15:
  v13 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 44) |= 1u;
  }

  if ([(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet *)self instancesCount])
  {
    [to clearInstances];
    instancesCount = [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet *)self instancesCount];
    if (instancesCount)
    {
      v6 = instancesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addInstance:{-[AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet instanceAtIndex:](self, "instanceAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 10) = self->_modelType;
    *(to + 44) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(to + 6) = self->_fallbackModelConfidence;
  *(to + 44) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(to + 4) = self->_confidenceOfMostConfidentModel;
  *(to + 44) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_11:
  *(to + 5) = self->_durationSinceLastSuccessfulTraining;
  *(to + 44) |= 4u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  instances = self->_instances;
  v8 = [(NSMutableArray *)instances countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(instances);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addInstance:v12];
      }

      v9 = [(NSMutableArray *)instances countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 40) = self->_modelType;
    *(v6 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_12:
      if ((has & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      *(v6 + 16) = self->_confidenceOfMostConfidentModel;
      *(v6 + 44) |= 2u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

  *(v6 + 24) = self->_fallbackModelConfidence;
  *(v6 + 44) |= 8u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((has & 4) != 0)
  {
LABEL_14:
    *(v6 + 20) = self->_durationSinceLastSuccessfulTraining;
    *(v6 + 44) |= 4u;
  }

LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 44);
    if (has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 44))
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    instances = self->_instances;
    if (instances | *(equal + 4))
    {
      v5 = [(NSMutableArray *)instances isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(equal + 44) & 0x10) == 0 || self->_modelType != *(equal + 10))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 0x10) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 44) & 8) == 0 || self->_fallbackModelConfidence != *(equal + 6))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 8) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_confidenceOfMostConfidentModel != *(equal + 4))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 2) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(equal + 44) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_durationSinceLastSuccessfulTraining != *(equal + 5))
      {
        goto LABEL_29;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_instances hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_modelType;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_fallbackModelConfidence;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_confidenceOfMostConfidentModel;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_durationSinceLastSuccessfulTraining;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(from + 44))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(from + 4);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramSet *)self addInstance:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *(from + 44);
  if ((v10 & 0x10) != 0)
  {
    self->_modelType = *(from + 10);
    *&self->_has |= 0x10u;
    v10 = *(from + 44);
    if ((v10 & 8) == 0)
    {
LABEL_12:
      if ((v10 & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_18:
      self->_confidenceOfMostConfidentModel = *(from + 4);
      *&self->_has |= 2u;
      if ((*(from + 44) & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(from + 44) & 8) == 0)
  {
    goto LABEL_12;
  }

  self->_fallbackModelConfidence = *(from + 6);
  *&self->_has |= 8u;
  v10 = *(from + 44);
  if ((v10 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v10 & 4) != 0)
  {
LABEL_14:
    self->_durationSinceLastSuccessfulTraining = *(from + 5);
    *&self->_has |= 4u;
  }

LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
}

@end