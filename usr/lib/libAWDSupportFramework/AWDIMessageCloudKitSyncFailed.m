@interface AWDIMessageCloudKitSyncFailed
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasLinkQuality:(BOOL)a3;
- (void)setHasNestedErrorCode:(BOOL)a3;
- (void)setHasTopLevelErrorCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIMessageCloudKitSyncFailed

- (void)dealloc
{
  [(AWDIMessageCloudKitSyncFailed *)self setSyncType:0];
  [(AWDIMessageCloudKitSyncFailed *)self setTopLevelErrorDomain:0];
  [(AWDIMessageCloudKitSyncFailed *)self setNestedErrorDomain:0];
  v3.receiver = self;
  v3.super_class = AWDIMessageCloudKitSyncFailed;
  [(AWDIMessageCloudKitSyncFailed *)&v3 dealloc];
}

- (void)setHasTopLevelErrorCode:(BOOL)a3
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

- (void)setHasNestedErrorCode:(BOOL)a3
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

- (void)setHasLinkQuality:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMessageCloudKitSyncFailed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageCloudKitSyncFailed description](&v3, sel_description), -[AWDIMessageCloudKitSyncFailed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  syncType = self->_syncType;
  if (syncType)
  {
    [v3 setObject:syncType forKey:@"syncType"];
  }

  topLevelErrorDomain = self->_topLevelErrorDomain;
  if (topLevelErrorDomain)
  {
    [v3 setObject:topLevelErrorDomain forKey:@"topLevelErrorDomain"];
  }

  if ((*&self->_has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_topLevelErrorCode), @"topLevelErrorCode"}];
  }

  nestedErrorDomain = self->_nestedErrorDomain;
  if (nestedErrorDomain)
  {
    [v3 setObject:nestedErrorDomain forKey:@"nestedErrorDomain"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_nestedErrorCode), @"nestedErrorCode"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_syncType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_topLevelErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    topLevelErrorCode = self->_topLevelErrorCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_nestedErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    nestedErrorCode = self->_nestedErrorCode;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    linkQuality = self->_linkQuality;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 56) |= 1u;
  }

  if (self->_syncType)
  {
    [a3 setSyncType:?];
  }

  if (self->_topLevelErrorDomain)
  {
    [a3 setTopLevelErrorDomain:?];
  }

  if ((*&self->_has & 8) != 0)
  {
    *(a3 + 10) = self->_topLevelErrorCode;
    *(a3 + 56) |= 8u;
  }

  if (self->_nestedErrorDomain)
  {
    [a3 setNestedErrorDomain:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 5) = self->_nestedErrorCode;
    *(a3 + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_linkQuality;
    *(a3 + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 56) |= 1u;
  }

  *(v6 + 32) = [(NSString *)self->_syncType copyWithZone:a3];
  *(v6 + 48) = [(NSString *)self->_topLevelErrorDomain copyWithZone:a3];
  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 40) = self->_topLevelErrorCode;
    *(v6 + 56) |= 8u;
  }

  *(v6 + 24) = [(NSString *)self->_nestedErrorDomain copyWithZone:a3];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_nestedErrorCode;
    *(v6 + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_linkQuality;
    *(v6 + 56) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 56);
    if (*&self->_has)
    {
      if ((*(a3 + 56) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_28;
      }
    }

    else if (*(a3 + 56))
    {
LABEL_28:
      LOBYTE(v5) = 0;
      return v5;
    }

    syncType = self->_syncType;
    if (!(syncType | *(a3 + 4)) || (v5 = [(NSString *)syncType isEqual:?]) != 0)
    {
      topLevelErrorDomain = self->_topLevelErrorDomain;
      if (!(topLevelErrorDomain | *(a3 + 6)) || (v5 = [(NSString *)topLevelErrorDomain isEqual:?]) != 0)
      {
        has = self->_has;
        v10 = *(a3 + 56);
        if ((has & 8) != 0)
        {
          if ((*(a3 + 56) & 8) == 0 || self->_topLevelErrorCode != *(a3 + 10))
          {
            goto LABEL_28;
          }
        }

        else if ((*(a3 + 56) & 8) != 0)
        {
          goto LABEL_28;
        }

        nestedErrorDomain = self->_nestedErrorDomain;
        if (nestedErrorDomain | *(a3 + 3))
        {
          v5 = [(NSString *)nestedErrorDomain isEqual:?];
          if (!v5)
          {
            return v5;
          }

          has = self->_has;
        }

        if ((has & 4) != 0)
        {
          if ((*(a3 + 56) & 4) == 0 || self->_nestedErrorCode != *(a3 + 5))
          {
            goto LABEL_28;
          }
        }

        else if ((*(a3 + 56) & 4) != 0)
        {
          goto LABEL_28;
        }

        LOBYTE(v5) = (*(a3 + 56) & 2) == 0;
        if ((has & 2) != 0)
        {
          if ((*(a3 + 56) & 2) == 0 || self->_linkQuality != *(a3 + 4))
          {
            goto LABEL_28;
          }

          LOBYTE(v5) = 1;
        }
      }
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

  v4 = [(NSString *)self->_syncType hash];
  v5 = [(NSString *)self->_topLevelErrorDomain hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_topLevelErrorCode;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_nestedErrorDomain hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_nestedErrorCode;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v9 = 2654435761 * self->_linkQuality;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 56))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 4))
  {
    [(AWDIMessageCloudKitSyncFailed *)self setSyncType:?];
  }

  if (*(a3 + 6))
  {
    [(AWDIMessageCloudKitSyncFailed *)self setTopLevelErrorDomain:?];
  }

  if ((*(a3 + 56) & 8) != 0)
  {
    self->_topLevelErrorCode = *(a3 + 10);
    *&self->_has |= 8u;
  }

  if (*(a3 + 3))
  {
    [(AWDIMessageCloudKitSyncFailed *)self setNestedErrorDomain:?];
  }

  v5 = *(a3 + 56);
  if ((v5 & 4) != 0)
  {
    self->_nestedErrorCode = *(a3 + 5);
    *&self->_has |= 4u;
    v5 = *(a3 + 56);
  }

  if ((v5 & 2) != 0)
  {
    self->_linkQuality = *(a3 + 4);
    *&self->_has |= 2u;
  }
}

@end