@interface CSDMessagingLinkSyncCheckInMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addGenerateDescriptorInfos:(id)a3;
- (void)addGeneratorDescriptors:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasShouldCheckAllGenerators:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingLinkSyncCheckInMessage

- (void)setHasShouldCheckAllGenerators:(BOOL)a3
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

- (void)addGeneratorDescriptors:(id)a3
{
  v4 = a3;
  generatorDescriptors = self->_generatorDescriptors;
  v8 = v4;
  if (!generatorDescriptors)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_generatorDescriptors;
    self->_generatorDescriptors = v6;

    v4 = v8;
    generatorDescriptors = self->_generatorDescriptors;
  }

  [(NSMutableArray *)generatorDescriptors addObject:v4];
}

- (void)addGenerateDescriptorInfos:(id)a3
{
  v4 = a3;
  generateDescriptorInfos = self->_generateDescriptorInfos;
  v8 = v4;
  if (!generateDescriptorInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_generateDescriptorInfos;
    self->_generateDescriptorInfos = v6;

    v4 = v8;
    generateDescriptorInfos = self->_generateDescriptorInfos;
  }

  [(NSMutableArray *)generateDescriptorInfos addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingLinkSyncCheckInMessage;
  v3 = [(CSDMessagingLinkSyncCheckInMessage *)&v7 description];
  v4 = [(CSDMessagingLinkSyncCheckInMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_shouldCheckAllGenerators];
    [v3 setObject:v6 forKey:@"shouldCheckAllGenerators"];
  }

  if ([(NSMutableArray *)self->_generatorDescriptors count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_generatorDescriptors, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = self->_generatorDescriptors;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"generatorDescriptors"];
  }

  if ([(NSMutableArray *)self->_generateDescriptorInfos count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_generateDescriptorInfos, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_generateDescriptorInfos;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:v20];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKey:@"generateDescriptorInfos"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    shouldCheckAllGenerators = self->_shouldCheckAllGenerators;
    PBDataWriterWriteBOOLField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_generatorDescriptors;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = self->_generateDescriptorInfos;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[6] = self->_version;
    *(v4 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 28) = self->_shouldCheckAllGenerators;
    *(v4 + 32) |= 2u;
  }

  v14 = v4;
  if ([(CSDMessagingLinkSyncCheckInMessage *)self generatorDescriptorsCount])
  {
    [v14 clearGeneratorDescriptors];
    v6 = [(CSDMessagingLinkSyncCheckInMessage *)self generatorDescriptorsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CSDMessagingLinkSyncCheckInMessage *)self generatorDescriptorsAtIndex:i];
        [v14 addGeneratorDescriptors:v9];
      }
    }
  }

  if ([(CSDMessagingLinkSyncCheckInMessage *)self generateDescriptorInfosCount])
  {
    [v14 clearGenerateDescriptorInfos];
    v10 = [(CSDMessagingLinkSyncCheckInMessage *)self generateDescriptorInfosCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(CSDMessagingLinkSyncCheckInMessage *)self generateDescriptorInfosAtIndex:j];
        [v14 addGenerateDescriptorInfos:v13];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 6) = self->_version;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 28) = self->_shouldCheckAllGenerators;
    *(v5 + 32) |= 2u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_generatorDescriptors;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * i) copyWithZone:a3];
        [v6 addGeneratorDescriptors:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_generateDescriptorInfos;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * j) copyWithZone:{a3, v21}];
        [v6 addGenerateDescriptorInfos:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 32) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  if ((*(v4 + 32) & 2) == 0)
  {
    goto LABEL_14;
  }

  v10 = *(v4 + 28);
  if (self->_shouldCheckAllGenerators)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_14;
  }

LABEL_9:
  generatorDescriptors = self->_generatorDescriptors;
  if (generatorDescriptors | *(v4 + 2) && ![(NSMutableArray *)generatorDescriptors isEqual:?])
  {
    goto LABEL_14;
  }

  generateDescriptorInfos = self->_generateDescriptorInfos;
  if (generateDescriptorInfos | *(v4 + 1))
  {
    v8 = [(NSMutableArray *)generateDescriptorInfos isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_shouldCheckAllGenerators;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSMutableArray *)self->_generatorDescriptors hash];
  return v5 ^ [(NSMutableArray *)self->_generateDescriptorInfos hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 32);
  if (v6)
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 1u;
    v6 = *(v4 + 32);
  }

  if ((v6 & 2) != 0)
  {
    self->_shouldCheckAllGenerators = *(v4 + 28);
    *&self->_has |= 2u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CSDMessagingLinkSyncCheckInMessage *)self addGeneratorDescriptors:*(*(&v21 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v5[1];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(CSDMessagingLinkSyncCheckInMessage *)self addGenerateDescriptorInfos:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

@end