@interface AWDIMessageCloudKitSyncFailed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasLinkQuality:(BOOL)quality;
- (void)setHasNestedErrorCode:(BOOL)code;
- (void)setHasTopLevelErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
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

- (void)setHasTopLevelErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNestedErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLinkQuality:(BOOL)quality
{
  if (quality)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  syncType = self->_syncType;
  if (syncType)
  {
    [dictionary setObject:syncType forKey:@"syncType"];
  }

  topLevelErrorDomain = self->_topLevelErrorDomain;
  if (topLevelErrorDomain)
  {
    [dictionary setObject:topLevelErrorDomain forKey:@"topLevelErrorDomain"];
  }

  if ((*&self->_has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_topLevelErrorCode), @"topLevelErrorCode"}];
  }

  nestedErrorDomain = self->_nestedErrorDomain;
  if (nestedErrorDomain)
  {
    [dictionary setObject:nestedErrorDomain forKey:@"nestedErrorDomain"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_nestedErrorCode), @"nestedErrorCode"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 56) |= 1u;
  }

  if (self->_syncType)
  {
    [to setSyncType:?];
  }

  if (self->_topLevelErrorDomain)
  {
    [to setTopLevelErrorDomain:?];
  }

  if ((*&self->_has & 8) != 0)
  {
    *(to + 10) = self->_topLevelErrorCode;
    *(to + 56) |= 8u;
  }

  if (self->_nestedErrorDomain)
  {
    [to setNestedErrorDomain:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 5) = self->_nestedErrorCode;
    *(to + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 4) = self->_linkQuality;
    *(to + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 56) |= 1u;
  }

  *(v6 + 32) = [(NSString *)self->_syncType copyWithZone:zone];
  *(v6 + 48) = [(NSString *)self->_topLevelErrorDomain copyWithZone:zone];
  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 40) = self->_topLevelErrorCode;
    *(v6 + 56) |= 8u;
  }

  *(v6 + 24) = [(NSString *)self->_nestedErrorDomain copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 56);
    if (*&self->_has)
    {
      if ((*(equal + 56) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_28;
      }
    }

    else if (*(equal + 56))
    {
LABEL_28:
      LOBYTE(v5) = 0;
      return v5;
    }

    syncType = self->_syncType;
    if (!(syncType | *(equal + 4)) || (v5 = [(NSString *)syncType isEqual:?]) != 0)
    {
      topLevelErrorDomain = self->_topLevelErrorDomain;
      if (!(topLevelErrorDomain | *(equal + 6)) || (v5 = [(NSString *)topLevelErrorDomain isEqual:?]) != 0)
      {
        has = self->_has;
        v10 = *(equal + 56);
        if ((has & 8) != 0)
        {
          if ((*(equal + 56) & 8) == 0 || self->_topLevelErrorCode != *(equal + 10))
          {
            goto LABEL_28;
          }
        }

        else if ((*(equal + 56) & 8) != 0)
        {
          goto LABEL_28;
        }

        nestedErrorDomain = self->_nestedErrorDomain;
        if (nestedErrorDomain | *(equal + 3))
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
          if ((*(equal + 56) & 4) == 0 || self->_nestedErrorCode != *(equal + 5))
          {
            goto LABEL_28;
          }
        }

        else if ((*(equal + 56) & 4) != 0)
        {
          goto LABEL_28;
        }

        LOBYTE(v5) = (*(equal + 56) & 2) == 0;
        if ((has & 2) != 0)
        {
          if ((*(equal + 56) & 2) == 0 || self->_linkQuality != *(equal + 4))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 56))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 4))
  {
    [(AWDIMessageCloudKitSyncFailed *)self setSyncType:?];
  }

  if (*(from + 6))
  {
    [(AWDIMessageCloudKitSyncFailed *)self setTopLevelErrorDomain:?];
  }

  if ((*(from + 56) & 8) != 0)
  {
    self->_topLevelErrorCode = *(from + 10);
    *&self->_has |= 8u;
  }

  if (*(from + 3))
  {
    [(AWDIMessageCloudKitSyncFailed *)self setNestedErrorDomain:?];
  }

  v5 = *(from + 56);
  if ((v5 & 4) != 0)
  {
    self->_nestedErrorCode = *(from + 5);
    *&self->_has |= 4u;
    v5 = *(from + 56);
  }

  if ((v5 & 2) != 0)
  {
    self->_linkQuality = *(from + 4);
    *&self->_has |= 2u;
  }
}

@end