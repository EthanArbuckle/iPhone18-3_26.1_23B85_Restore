@interface AWDIMessageCloudKitAttachmentDownloadFailed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAttachmentSize:(BOOL)size;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasLinkQuality:(BOOL)quality;
- (void)writeTo:(id)to;
@end

@implementation AWDIMessageCloudKitAttachmentDownloadFailed

- (void)dealloc
{
  [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setMessageGuid:0];
  [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setAttachmentGuid:0];
  [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setErrorDomain:0];
  v3.receiver = self;
  v3.super_class = AWDIMessageCloudKitAttachmentDownloadFailed;
  [(AWDIMessageCloudKitAttachmentDownloadFailed *)&v3 dealloc];
}

- (void)setHasErrorCode:(BOOL)code
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

- (void)setHasLinkQuality:(BOOL)quality
{
  if (quality)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasConnectionType:(BOOL)type
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

- (void)setHasAttachmentSize:(BOOL)size
{
  if (size)
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
  v3.super_class = AWDIMessageCloudKitAttachmentDownloadFailed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageCloudKitAttachmentDownloadFailed description](&v3, sel_description), -[AWDIMessageCloudKitAttachmentDownloadFailed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  messageGuid = self->_messageGuid;
  if (messageGuid)
  {
    [dictionary setObject:messageGuid forKey:@"messageGuid"];
  }

  attachmentGuid = self->_attachmentGuid;
  if (attachmentGuid)
  {
    [dictionary setObject:attachmentGuid forKey:@"attachmentGuid"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"errorDomain"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_errorCode), @"errorCode"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
      if ((*&self->_has & 2) == 0)
      {
        return dictionary;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_attachmentSize), @"attachmentSize"}];
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

  if (self->_messageGuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachmentGuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      connectionType = self->_connectionType;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 2) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

  linkQuality = self->_linkQuality;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_17:
  attachmentSize = self->_attachmentSize;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 64) |= 1u;
  }

  if (self->_messageGuid)
  {
    [to setMessageGuid:?];
  }

  if (self->_attachmentGuid)
  {
    [to setAttachmentGuid:?];
  }

  if (self->_errorDomain)
  {
    [to setErrorDomain:?];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 8) = self->_errorCode;
    *(to + 64) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

  *(to + 12) = self->_linkQuality;
  *(to + 64) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_17:
  *(to + 7) = self->_connectionType;
  *(to + 64) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_13:
  *(to + 6) = self->_attachmentSize;
  *(to + 64) |= 2u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
  }

  *(v6 + 56) = [(NSString *)self->_messageGuid copyWithZone:zone];
  *(v6 + 16) = [(NSString *)self->_attachmentGuid copyWithZone:zone];

  *(v6 + 40) = [(NSString *)self->_errorDomain copyWithZone:zone];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 32) = self->_errorCode;
    *(v6 + 64) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 28) = self->_connectionType;
      *(v6 + 64) |= 4u;
      if ((*&self->_has & 2) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 48) = self->_linkQuality;
  *(v6 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 2) != 0)
  {
LABEL_7:
    *(v6 + 24) = self->_attachmentSize;
    *(v6 + 64) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 64);
    if (*&self->_has)
    {
      if ((*(equal + 64) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_32;
      }
    }

    else if (*(equal + 64))
    {
LABEL_32:
      LOBYTE(v5) = 0;
      return v5;
    }

    messageGuid = self->_messageGuid;
    if (!(messageGuid | *(equal + 7)) || (v5 = [(NSString *)messageGuid isEqual:?]) != 0)
    {
      attachmentGuid = self->_attachmentGuid;
      if (!(attachmentGuid | *(equal + 2)) || (v5 = [(NSString *)attachmentGuid isEqual:?]) != 0)
      {
        errorDomain = self->_errorDomain;
        if (!(errorDomain | *(equal + 5)) || (v5 = [(NSString *)errorDomain isEqual:?]) != 0)
        {
          if ((*&self->_has & 8) != 0)
          {
            if ((*(equal + 64) & 8) == 0 || self->_errorCode != *(equal + 8))
            {
              goto LABEL_32;
            }
          }

          else if ((*(equal + 64) & 8) != 0)
          {
            goto LABEL_32;
          }

          if ((*&self->_has & 0x10) != 0)
          {
            if ((*(equal + 64) & 0x10) == 0 || self->_linkQuality != *(equal + 12))
            {
              goto LABEL_32;
            }
          }

          else if ((*(equal + 64) & 0x10) != 0)
          {
            goto LABEL_32;
          }

          if ((*&self->_has & 4) != 0)
          {
            if ((*(equal + 64) & 4) == 0 || self->_connectionType != *(equal + 7))
            {
              goto LABEL_32;
            }
          }

          else if ((*(equal + 64) & 4) != 0)
          {
            goto LABEL_32;
          }

          LOBYTE(v5) = (*(equal + 64) & 2) == 0;
          if ((*&self->_has & 2) != 0)
          {
            if ((*(equal + 64) & 2) == 0 || self->_attachmentSize != *(equal + 6))
            {
              goto LABEL_32;
            }

            LOBYTE(v5) = 1;
          }
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

  v4 = [(NSString *)self->_messageGuid hash];
  v5 = [(NSString *)self->_attachmentGuid hash];
  v6 = [(NSString *)self->_errorDomain hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v8 = 2654435761 * self->_linkQuality;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v9 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v10 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = 2654435761 * self->_connectionType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v10 = 2654435761 * self->_attachmentSize;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 64))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 7))
  {
    [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setMessageGuid:?];
  }

  if (*(from + 2))
  {
    [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setAttachmentGuid:?];
  }

  if (*(from + 5))
  {
    [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setErrorDomain:?];
  }

  v5 = *(from + 64);
  if ((v5 & 8) != 0)
  {
    self->_errorCode = *(from + 8);
    *&self->_has |= 8u;
    v5 = *(from + 64);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else if ((*(from + 64) & 0x10) == 0)
  {
    goto LABEL_11;
  }

  self->_linkQuality = *(from + 12);
  *&self->_has |= 0x10u;
  v5 = *(from + 64);
  if ((v5 & 4) == 0)
  {
LABEL_12:
    if ((v5 & 2) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_17:
  self->_connectionType = *(from + 7);
  *&self->_has |= 4u;
  if ((*(from + 64) & 2) == 0)
  {
    return;
  }

LABEL_13:
  self->_attachmentSize = *(from + 6);
  *&self->_has |= 2u;
}

@end