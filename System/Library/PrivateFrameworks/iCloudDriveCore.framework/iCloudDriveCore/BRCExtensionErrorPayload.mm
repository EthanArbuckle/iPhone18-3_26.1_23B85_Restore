@interface BRCExtensionErrorPayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRecordIds:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BRCExtensionErrorPayload

- (void)addRecordIds:(id)a3
{
  v4 = a3;
  recordIds = self->_recordIds;
  v8 = v4;
  if (!recordIds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_recordIds;
    self->_recordIds = v6;

    v4 = v8;
    recordIds = self->_recordIds;
  }

  [(NSMutableArray *)recordIds addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BRCExtensionErrorPayload;
  v4 = [(BRCExtensionErrorPayload *)&v8 description];
  v5 = [(BRCExtensionErrorPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  minimumOSName = self->_minimumOSName;
  if (minimumOSName)
  {
    [v3 setObject:minimumOSName forKey:@"minimumOSName"];
  }

  recordId = self->_recordId;
  if (recordId)
  {
    [v4 setObject:recordId forKey:@"recordId"];
  }

  fieldName = self->_fieldName;
  if (fieldName)
  {
    [v4 setObject:fieldName forKey:@"fieldName"];
  }

  recordIds = self->_recordIds;
  if (recordIds)
  {
    [v4 setObject:recordIds forKey:@"recordIds"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_minimumOSName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recordId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_recordIds;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_minimumOSName)
  {
    [v8 setMinimumOSName:?];
  }

  if (self->_recordId)
  {
    [v8 setRecordId:?];
  }

  if (self->_fieldName)
  {
    [v8 setFieldName:?];
  }

  if ([(BRCExtensionErrorPayload *)self recordIdsCount])
  {
    [v8 clearRecordIds];
    v4 = [(BRCExtensionErrorPayload *)self recordIdsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BRCExtensionErrorPayload *)self recordIdsAtIndex:i];
        [v8 addRecordIds:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_minimumOSName copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_recordId copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_fieldName copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_recordIds;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{a3, v20}];
        [v5 addRecordIds:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((minimumOSName = self->_minimumOSName, !(minimumOSName | v4[2])) || -[NSString isEqual:](minimumOSName, "isEqual:")) && ((recordId = self->_recordId, !(recordId | v4[3])) || -[NSString isEqual:](recordId, "isEqual:")) && ((fieldName = self->_fieldName, !(fieldName | v4[1])) || -[NSString isEqual:](fieldName, "isEqual:")))
  {
    recordIds = self->_recordIds;
    if (recordIds | v4[4])
    {
      v9 = [(NSMutableArray *)recordIds isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_minimumOSName hash];
  v4 = [(NSString *)self->_recordId hash]^ v3;
  v5 = [(NSString *)self->_fieldName hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_recordIds hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(BRCExtensionErrorPayload *)self setMinimumOSName:?];
  }

  if (*(v4 + 3))
  {
    [(BRCExtensionErrorPayload *)self setRecordId:?];
  }

  if (*(v4 + 1))
  {
    [(BRCExtensionErrorPayload *)self setFieldName:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 4);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BRCExtensionErrorPayload *)self addRecordIds:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end