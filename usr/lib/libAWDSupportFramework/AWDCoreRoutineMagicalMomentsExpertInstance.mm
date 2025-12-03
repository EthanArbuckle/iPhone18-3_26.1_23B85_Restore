@interface AWDCoreRoutineMagicalMomentsExpertInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAddons:(id)addons;
- (void)addInstances:(id)instances;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasExpertType:(BOOL)type;
- (void)setHasModelType:(BOOL)type;
- (void)setHasSampleCounts:(BOOL)counts;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineMagicalMomentsExpertInstance

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsExpertInstance *)self setInstances:0];
  [(AWDCoreRoutineMagicalMomentsExpertInstance *)self setAddons:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsExpertInstance;
  [(AWDCoreRoutineMagicalMomentsExpertInstance *)&v3 dealloc];
}

- (void)setHasModelType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasExpertType:(BOOL)type
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

- (void)setHasSampleCounts:(BOOL)counts
{
  if (counts)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)addInstances:(id)instances
{
  instances = self->_instances;
  if (!instances)
  {
    instances = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_instances = instances;
  }

  [(NSMutableArray *)instances addObject:instances];
}

- (void)addAddons:(id)addons
{
  addons = self->_addons;
  if (!addons)
  {
    addons = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_addons = addons;
  }

  [(NSMutableArray *)addons addObject:addons];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsExpertInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicalMomentsExpertInstance description](&v3, sel_description), -[AWDCoreRoutineMagicalMomentsExpertInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_modelType), @"modelType"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_expertType), @"expertType"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_confidence), @"confidence"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_sampleCounts), @"sampleCounts"}];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_instances count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_instances, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    instances = self->_instances;
    v7 = [(NSMutableArray *)instances countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(instances);
          }

          [v5 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)instances countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"instances"];
  }

  if ([(NSMutableArray *)self->_addons count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_addons, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    addons = self->_addons;
    v13 = [(NSMutableArray *)addons countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(addons);
          }

          [v11 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)addons countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"addons"];
  }

  v17 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 4) != 0)
  {
    modelType = self->_modelType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  expertType = self->_expertType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  confidence = self->_confidence;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    sampleCounts = self->_sampleCounts;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  instances = self->_instances;
  v7 = [(NSMutableArray *)instances countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(instances);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)instances countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  addons = self->_addons;
  v13 = [(NSMutableArray *)addons countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(addons);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)addons countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 8) = self->_modelType;
    *(to + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_17:
      *(to + 4) = self->_confidence;
      *(to + 40) |= 1u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_expertType;
  *(to + 40) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(to + 9) = self->_sampleCounts;
    *(to + 40) |= 8u;
  }

LABEL_6:
  if ([(AWDCoreRoutineMagicalMomentsExpertInstance *)self instancesCount])
  {
    [to clearInstances];
    instancesCount = [(AWDCoreRoutineMagicalMomentsExpertInstance *)self instancesCount];
    if (instancesCount)
    {
      v7 = instancesCount;
      for (i = 0; i != v7; ++i)
      {
        [to addInstances:{-[AWDCoreRoutineMagicalMomentsExpertInstance instancesAtIndex:](self, "instancesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineMagicalMomentsExpertInstance *)self addonsCount])
  {
    [to clearAddons];
    addonsCount = [(AWDCoreRoutineMagicalMomentsExpertInstance *)self addonsCount];
    if (addonsCount)
    {
      v10 = addonsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addAddons:{-[AWDCoreRoutineMagicalMomentsExpertInstance addonsAtIndex:](self, "addonsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_modelType;
    *(v5 + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 20) = self->_expertType;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  *(v5 + 16) = self->_confidence;
  *(v5 + 40) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v5 + 36) = self->_sampleCounts;
    *(v5 + 40) |= 8u;
  }

LABEL_6:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  instances = self->_instances;
  v9 = [(NSMutableArray *)instances countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(instances);
        }

        v13 = [*(*(&v26 + 1) + 8 * i) copyWithZone:zone];
        [v6 addInstances:v13];
      }

      v10 = [(NSMutableArray *)instances countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  addons = self->_addons;
  v15 = [(NSMutableArray *)addons countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(addons);
        }

        v19 = [*(*(&v22 + 1) + 8 * j) copyWithZone:zone];
        [v6 addAddons:v19];
      }

      v16 = [(NSMutableArray *)addons countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 40);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_modelType != *(equal + 8))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_expertType != *(equal + 5))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
      goto LABEL_26;
    }

    if (*&self->_has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_confidence != *(equal + 4))
      {
        goto LABEL_26;
      }
    }

    else if (*(equal + 40))
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 40) & 8) == 0 || self->_sampleCounts != *(equal + 9))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 40) & 8) != 0)
    {
      goto LABEL_26;
    }

    instances = self->_instances;
    if (!(instances | *(equal + 3)) || (v5 = [(NSMutableArray *)instances isEqual:?]) != 0)
    {
      addons = self->_addons;
      if (addons | *(equal + 1))
      {

        LOBYTE(v5) = [(NSMutableArray *)addons isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_modelType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_expertType;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_confidence;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v6 = 2654435761 * self->_sampleCounts;
LABEL_10:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_instances hash];
  return v7 ^ [(NSMutableArray *)self->_addons hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x29EDCA608];
  v5 = *(from + 40);
  if ((v5 & 4) != 0)
  {
    self->_modelType = *(from + 8);
    *&self->_has |= 4u;
    v5 = *(from + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(from + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_expertType = *(from + 5);
  *&self->_has |= 2u;
  v5 = *(from + 40);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  self->_confidence = *(from + 4);
  *&self->_has |= 1u;
  if ((*(from + 40) & 8) != 0)
  {
LABEL_5:
    self->_sampleCounts = *(from + 9);
    *&self->_has |= 8u;
  }

LABEL_6:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(from + 3);
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

        [(AWDCoreRoutineMagicalMomentsExpertInstance *)self addInstances:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(from + 1);
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

        [(AWDCoreRoutineMagicalMomentsExpertInstance *)self addAddons:*(*(&v17 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x29EDCA608];
}

@end