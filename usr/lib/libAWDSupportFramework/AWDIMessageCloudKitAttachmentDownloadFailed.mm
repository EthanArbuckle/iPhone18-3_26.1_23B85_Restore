@interface AWDIMessageCloudKitAttachmentDownloadFailed
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAttachmentSize:(BOOL)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasLinkQuality:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasErrorCode:(BOOL)a3
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

- (void)setHasLinkQuality:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasConnectionType:(BOOL)a3
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

- (void)setHasAttachmentSize:(BOOL)a3
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
  v3.super_class = AWDIMessageCloudKitAttachmentDownloadFailed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageCloudKitAttachmentDownloadFailed description](&v3, sel_description), -[AWDIMessageCloudKitAttachmentDownloadFailed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  messageGuid = self->_messageGuid;
  if (messageGuid)
  {
    [v3 setObject:messageGuid forKey:@"messageGuid"];
  }

  attachmentGuid = self->_attachmentGuid;
  if (attachmentGuid)
  {
    [v3 setObject:attachmentGuid forKey:@"attachmentGuid"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"errorDomain"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_errorCode), @"errorCode"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
      if ((*&self->_has & 2) == 0)
      {
        return v3;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_attachmentSize), @"attachmentSize"}];
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 64) |= 1u;
  }

  if (self->_messageGuid)
  {
    [a3 setMessageGuid:?];
  }

  if (self->_attachmentGuid)
  {
    [a3 setAttachmentGuid:?];
  }

  if (self->_errorDomain)
  {
    [a3 setErrorDomain:?];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 8) = self->_errorCode;
    *(a3 + 64) |= 8u;
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

  *(a3 + 12) = self->_linkQuality;
  *(a3 + 64) |= 0x10u;
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
  *(a3 + 7) = self->_connectionType;
  *(a3 + 64) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_13:
  *(a3 + 6) = self->_attachmentSize;
  *(a3 + 64) |= 2u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
  }

  *(v6 + 56) = [(NSString *)self->_messageGuid copyWithZone:a3];
  *(v6 + 16) = [(NSString *)self->_attachmentGuid copyWithZone:a3];

  *(v6 + 40) = [(NSString *)self->_errorDomain copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 64);
    if (*&self->_has)
    {
      if ((*(a3 + 64) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_32;
      }
    }

    else if (*(a3 + 64))
    {
LABEL_32:
      LOBYTE(v5) = 0;
      return v5;
    }

    messageGuid = self->_messageGuid;
    if (!(messageGuid | *(a3 + 7)) || (v5 = [(NSString *)messageGuid isEqual:?]) != 0)
    {
      attachmentGuid = self->_attachmentGuid;
      if (!(attachmentGuid | *(a3 + 2)) || (v5 = [(NSString *)attachmentGuid isEqual:?]) != 0)
      {
        errorDomain = self->_errorDomain;
        if (!(errorDomain | *(a3 + 5)) || (v5 = [(NSString *)errorDomain isEqual:?]) != 0)
        {
          if ((*&self->_has & 8) != 0)
          {
            if ((*(a3 + 64) & 8) == 0 || self->_errorCode != *(a3 + 8))
            {
              goto LABEL_32;
            }
          }

          else if ((*(a3 + 64) & 8) != 0)
          {
            goto LABEL_32;
          }

          if ((*&self->_has & 0x10) != 0)
          {
            if ((*(a3 + 64) & 0x10) == 0 || self->_linkQuality != *(a3 + 12))
            {
              goto LABEL_32;
            }
          }

          else if ((*(a3 + 64) & 0x10) != 0)
          {
            goto LABEL_32;
          }

          if ((*&self->_has & 4) != 0)
          {
            if ((*(a3 + 64) & 4) == 0 || self->_connectionType != *(a3 + 7))
            {
              goto LABEL_32;
            }
          }

          else if ((*(a3 + 64) & 4) != 0)
          {
            goto LABEL_32;
          }

          LOBYTE(v5) = (*(a3 + 64) & 2) == 0;
          if ((*&self->_has & 2) != 0)
          {
            if ((*(a3 + 64) & 2) == 0 || self->_attachmentSize != *(a3 + 6))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 64))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 7))
  {
    [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setMessageGuid:?];
  }

  if (*(a3 + 2))
  {
    [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setAttachmentGuid:?];
  }

  if (*(a3 + 5))
  {
    [(AWDIMessageCloudKitAttachmentDownloadFailed *)self setErrorDomain:?];
  }

  v5 = *(a3 + 64);
  if ((v5 & 8) != 0)
  {
    self->_errorCode = *(a3 + 8);
    *&self->_has |= 8u;
    v5 = *(a3 + 64);
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

  else if ((*(a3 + 64) & 0x10) == 0)
  {
    goto LABEL_11;
  }

  self->_linkQuality = *(a3 + 12);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 64);
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
  self->_connectionType = *(a3 + 7);
  *&self->_has |= 4u;
  if ((*(a3 + 64) & 2) == 0)
  {
    return;
  }

LABEL_13:
  self->_attachmentSize = *(a3 + 6);
  *&self->_has |= 2u;
}

@end