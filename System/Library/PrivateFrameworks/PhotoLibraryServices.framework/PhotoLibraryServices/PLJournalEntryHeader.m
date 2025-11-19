@interface PLJournalEntryHeader
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)entryTypeAsString:(int)a3;
- (int)StringAsEntryType:(id)a3;
- (int)entryType;
- (unint64_t)hash;
- (void)addNilProperties:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEntryType:(BOOL)a3;
- (void)setHasPayloadCRC:(BOOL)a3;
- (void)setHasPayloadVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLJournalEntryHeader

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ((v4[15] & 2) != 0)
  {
    self->_entryType = v4[4];
    *&self->_has |= 2u;
  }

  if (*(v4 + 6))
  {
    [(PLJournalEntryHeader *)self setPayloadUUID:?];
  }

  if (*(v5 + 5))
  {
    [(PLJournalEntryHeader *)self setPayloadID:?];
  }

  v6 = *(v5 + 60);
  if ((v6 & 8) != 0)
  {
    self->_payloadVersion = *(v5 + 14);
    *&self->_has |= 8u;
    v6 = *(v5 + 60);
    if ((v6 & 1) == 0)
    {
LABEL_9:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v5 + 60) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_payloadLength = *(v5 + 1);
  *&self->_has |= 1u;
  if ((*(v5 + 60) & 4) != 0)
  {
LABEL_10:
    self->_payloadCRC = *(v5 + 8);
    *&self->_has |= 4u;
  }

LABEL_11:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v5 + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PLJournalEntryHeader *)self addNilProperties:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_entryType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_payloadUUID hash];
  v5 = [(NSString *)self->_payloadID hash];
  if ((*&self->_has & 8) == 0)
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSMutableArray *)self->_nilProperties hash];
  }

  v6 = 2654435761 * self->_payloadVersion;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761u * self->_payloadLength;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = 2654435761 * self->_payloadCRC;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSMutableArray *)self->_nilProperties hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_entryType != *(v4 + 4))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  payloadUUID = self->_payloadUUID;
  if (payloadUUID | *(v4 + 6) && ![(NSData *)payloadUUID isEqual:?])
  {
    goto LABEL_28;
  }

  payloadID = self->_payloadID;
  if (payloadID | *(v4 + 5))
  {
    if (![(NSString *)payloadID isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0 || self->_payloadVersion != *(v4 + 14))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_payloadLength != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_payloadCRC != *(v4 + 8))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_28;
  }

  nilProperties = self->_nilProperties;
  if (nilProperties | *(v4 + 3))
  {
    v8 = [(NSMutableArray *)nilProperties isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_29:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_entryType;
    *(v5 + 60) |= 2u;
  }

  v7 = [(NSData *)self->_payloadUUID copyWithZone:a3];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  v9 = [(NSString *)self->_payloadID copyWithZone:a3];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 56) = self->_payloadVersion;
    *(v6 + 60) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 8) = self->_payloadLength;
  *(v6 + 60) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(v6 + 32) = self->_payloadCRC;
    *(v6 + 60) |= 4u;
  }

LABEL_7:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_nilProperties;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v6 addNilProperties:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[4] = self->_entryType;
    *(v4 + 60) |= 2u;
  }

  v10 = v4;
  if (self->_payloadUUID)
  {
    [v4 setPayloadUUID:?];
    v4 = v10;
  }

  if (self->_payloadID)
  {
    [v10 setPayloadID:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    *(v4 + 1) = self->_payloadLength;
    *(v4 + 60) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4[14] = self->_payloadVersion;
  *(v4 + 60) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((has & 4) != 0)
  {
LABEL_10:
    v4[8] = self->_payloadCRC;
    *(v4 + 60) |= 4u;
  }

LABEL_11:
  if ([(PLJournalEntryHeader *)self nilPropertiesCount])
  {
    [v10 clearNilProperties];
    v6 = [(PLJournalEntryHeader *)self nilPropertiesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PLJournalEntryHeader *)self nilPropertiesAtIndex:i];
        [v10 addNilProperties:v9];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_payloadUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_payloadID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_nilProperties;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    entryType = self->_entryType;
    if (entryType >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_entryType];
    }

    else
    {
      v5 = off_1E7578930[entryType];
    }

    [v3 setObject:v5 forKey:@"entryType"];
  }

  payloadUUID = self->_payloadUUID;
  if (payloadUUID)
  {
    [v3 setObject:payloadUUID forKey:@"payloadUUID"];
  }

  payloadID = self->_payloadID;
  if (payloadID)
  {
    [v3 setObject:payloadID forKey:@"payloadID"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_payloadVersion];
    [v3 setObject:v12 forKey:@"payloadVersion"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_payloadLength];
  [v3 setObject:v13 forKey:@"payloadLength"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_payloadCRC];
    [v3 setObject:v9 forKey:@"payloadCRC"];
  }

LABEL_14:
  nilProperties = self->_nilProperties;
  if (nilProperties)
  {
    [v3 setObject:nilProperties forKey:@"nilProperties"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLJournalEntryHeader;
  v4 = [(PLJournalEntryHeader *)&v8 description];
  v5 = [(PLJournalEntryHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addNilProperties:(id)a3
{
  v4 = a3;
  nilProperties = self->_nilProperties;
  v8 = v4;
  if (!nilProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nilProperties;
    self->_nilProperties = v6;

    v4 = v8;
    nilProperties = self->_nilProperties;
  }

  [(NSMutableArray *)nilProperties addObject:v4];
}

- (void)setHasPayloadCRC:(BOOL)a3
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

- (void)setHasPayloadVersion:(BOOL)a3
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

- (int)StringAsEntryType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Insert"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Update"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Delete"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)entryTypeAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E7578930[a3];
  }

  return v4;
}

- (void)setHasEntryType:(BOOL)a3
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

- (int)entryType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_entryType;
  }

  else
  {
    return 0;
  }
}

@end