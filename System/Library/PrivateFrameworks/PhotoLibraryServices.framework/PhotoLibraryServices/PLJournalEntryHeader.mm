@interface PLJournalEntryHeader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)entryTypeAsString:(int)string;
- (int)StringAsEntryType:(id)type;
- (int)entryType;
- (unint64_t)hash;
- (void)addNilProperties:(id)properties;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEntryType:(BOOL)type;
- (void)setHasPayloadCRC:(BOOL)c;
- (void)setHasPayloadVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation PLJournalEntryHeader

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[15] & 2) != 0)
  {
    self->_entryType = fromCopy[4];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 6))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_entryType != *(equalCopy + 4))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  payloadUUID = self->_payloadUUID;
  if (payloadUUID | *(equalCopy + 6) && ![(NSData *)payloadUUID isEqual:?])
  {
    goto LABEL_28;
  }

  payloadID = self->_payloadID;
  if (payloadID | *(equalCopy + 5))
  {
    if (![(NSString *)payloadID isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_payloadVersion != *(equalCopy + 14))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_payloadLength != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_payloadCRC != *(equalCopy + 8))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_28;
  }

  nilProperties = self->_nilProperties;
  if (nilProperties | *(equalCopy + 3))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_entryType;
    *(v5 + 60) |= 2u;
  }

  v7 = [(NSData *)self->_payloadUUID copyWithZone:zone];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  v9 = [(NSString *)self->_payloadID copyWithZone:zone];
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

        v17 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v6 addNilProperties:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[4] = self->_entryType;
    *(toCopy + 60) |= 2u;
  }

  v10 = toCopy;
  if (self->_payloadUUID)
  {
    [toCopy setPayloadUUID:?];
    toCopy = v10;
  }

  if (self->_payloadID)
  {
    [v10 setPayloadID:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    *(toCopy + 1) = self->_payloadLength;
    *(toCopy + 60) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  toCopy[14] = self->_payloadVersion;
  *(toCopy + 60) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((has & 4) != 0)
  {
LABEL_10:
    toCopy[8] = self->_payloadCRC;
    *(toCopy + 60) |= 4u;
  }

LABEL_11:
  if ([(PLJournalEntryHeader *)self nilPropertiesCount])
  {
    [v10 clearNilProperties];
    nilPropertiesCount = [(PLJournalEntryHeader *)self nilPropertiesCount];
    if (nilPropertiesCount)
    {
      v7 = nilPropertiesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PLJournalEntryHeader *)self nilPropertiesAtIndex:i];
        [v10 addNilProperties:v9];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKey:@"entryType"];
  }

  payloadUUID = self->_payloadUUID;
  if (payloadUUID)
  {
    [dictionary setObject:payloadUUID forKey:@"payloadUUID"];
  }

  payloadID = self->_payloadID;
  if (payloadID)
  {
    [dictionary setObject:payloadID forKey:@"payloadID"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_payloadVersion];
    [dictionary setObject:v12 forKey:@"payloadVersion"];

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
  [dictionary setObject:v13 forKey:@"payloadLength"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_payloadCRC];
    [dictionary setObject:v9 forKey:@"payloadCRC"];
  }

LABEL_14:
  nilProperties = self->_nilProperties;
  if (nilProperties)
  {
    [dictionary setObject:nilProperties forKey:@"nilProperties"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLJournalEntryHeader;
  v4 = [(PLJournalEntryHeader *)&v8 description];
  dictionaryRepresentation = [(PLJournalEntryHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addNilProperties:(id)properties
{
  propertiesCopy = properties;
  nilProperties = self->_nilProperties;
  v8 = propertiesCopy;
  if (!nilProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nilProperties;
    self->_nilProperties = v6;

    propertiesCopy = v8;
    nilProperties = self->_nilProperties;
  }

  [(NSMutableArray *)nilProperties addObject:propertiesCopy];
}

- (void)setHasPayloadCRC:(BOOL)c
{
  if (c)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPayloadVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsEntryType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Insert"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Update"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Delete"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)entryTypeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7578930[string];
  }

  return v4;
}

- (void)setHasEntryType:(BOOL)type
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