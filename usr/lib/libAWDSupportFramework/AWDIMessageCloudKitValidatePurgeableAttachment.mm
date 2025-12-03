@interface AWDIMessageCloudKitValidatePurgeableAttachment
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
- (void)setHasLinkQuality:(BOOL)quality;
- (void)setHasOperationalErrorCode:(BOOL)code;
- (void)setHasValidatedAttachment:(BOOL)attachment;
- (void)setHasValidationErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation AWDIMessageCloudKitValidatePurgeableAttachment

- (void)dealloc
{
  [(AWDIMessageCloudKitValidatePurgeableAttachment *)self setOperationalErrorDomain:0];
  [(AWDIMessageCloudKitValidatePurgeableAttachment *)self setValidationErrorDomain:0];
  v3.receiver = self;
  v3.super_class = AWDIMessageCloudKitValidatePurgeableAttachment;
  [(AWDIMessageCloudKitValidatePurgeableAttachment *)&v3 dealloc];
}

- (void)setHasValidatedAttachment:(BOOL)attachment
{
  if (attachment)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
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

- (void)setHasOperationalErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasValidationErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasLinkQuality:(BOOL)quality
{
  if (quality)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMessageCloudKitValidatePurgeableAttachment;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageCloudKitValidatePurgeableAttachment description](&v3, sel_description), -[AWDIMessageCloudKitValidatePurgeableAttachment dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_validatedAttachment), @"validatedAttachment"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_attachmentSize), @"attachmentSize"}];
  }

LABEL_5:
  operationalErrorDomain = self->_operationalErrorDomain;
  if (operationalErrorDomain)
  {
    [dictionary setObject:operationalErrorDomain forKey:@"operationalErrorDomain"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_operationalErrorCode), @"operationalErrorCode"}];
  }

  validationErrorDomain = self->_validationErrorDomain;
  if (validationErrorDomain)
  {
    [dictionary setObject:validationErrorDomain forKey:@"validationErrorDomain"];
  }

  v7 = self->_has;
  if ((v7 & 0x40) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
    if ((*&self->_has & 4) == 0)
    {
      return dictionary;
    }

    goto LABEL_14;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_validationErrorCode), @"validationErrorCode"}];
  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v7 & 4) != 0)
  {
LABEL_14:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  validatedAttachment = self->_validatedAttachment;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    attachmentSize = self->_attachmentSize;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  if (self->_operationalErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    operationalErrorCode = self->_operationalErrorCode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_validationErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 0x40) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    linkQuality = self->_linkQuality;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  validationErrorCode = self->_validationErrorCode;
  PBDataWriterWriteUint32Field();
  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v7 & 4) == 0)
  {
    return;
  }

LABEL_20:
  connectionType = self->_connectionType;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 56) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 10) = self->_validatedAttachment;
  *(to + 56) |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(to + 4) = self->_attachmentSize;
    *(to + 56) |= 2u;
  }

LABEL_5:
  if (self->_operationalErrorDomain)
  {
    [to setOperationalErrorDomain:?];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(to + 7) = self->_operationalErrorCode;
    *(to + 56) |= 0x10u;
  }

  if (self->_validationErrorDomain)
  {
    [to setValidationErrorDomain:?];
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(to + 11) = self->_validationErrorCode;
    *(to + 56) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_13:
      if ((v6 & 4) == 0)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  *(to + 6) = self->_linkQuality;
  *(to + 56) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_14:
  *(to + 5) = self->_connectionType;
  *(to + 56) |= 4u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 56) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_validatedAttachment;
  *(v5 + 56) |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_attachmentSize;
    *(v5 + 56) |= 2u;
  }

LABEL_5:

  *(v6 + 32) = [(NSString *)self->_operationalErrorDomain copyWithZone:zone];
  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 28) = self->_operationalErrorCode;
    *(v6 + 56) |= 0x10u;
  }

  *(v6 + 48) = [(NSString *)self->_validationErrorDomain copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    *(v6 + 24) = self->_linkQuality;
    *(v6 + 56) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_10;
  }

  *(v6 + 44) = self->_validationErrorCode;
  *(v6 + 56) |= 0x40u;
  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v8 & 4) != 0)
  {
LABEL_10:
    *(v6 + 20) = self->_connectionType;
    *(v6 + 56) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 56);
    if (has)
    {
      if ((*(equal + 56) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_42;
      }
    }

    else if (*(equal + 56))
    {
LABEL_42:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 56) & 0x20) == 0 || self->_validatedAttachment != *(equal + 10))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 56) & 0x20) != 0)
    {
      goto LABEL_42;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 56) & 2) == 0 || self->_attachmentSize != *(equal + 4))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 56) & 2) != 0)
    {
      goto LABEL_42;
    }

    operationalErrorDomain = self->_operationalErrorDomain;
    if (operationalErrorDomain | *(equal + 4))
    {
      v5 = [(NSString *)operationalErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 56);
    if ((has & 0x10) != 0)
    {
      if ((*(equal + 56) & 0x10) == 0 || self->_operationalErrorCode != *(equal + 7))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 56) & 0x10) != 0)
    {
      goto LABEL_42;
    }

    validationErrorDomain = self->_validationErrorDomain;
    if (validationErrorDomain | *(equal + 6))
    {
      v5 = [(NSString *)validationErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 0x40) != 0)
    {
      if ((*(equal + 56) & 0x40) == 0 || self->_validationErrorCode != *(equal + 11))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 56) & 0x40) != 0)
    {
      goto LABEL_42;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 56) & 8) == 0 || self->_linkQuality != *(equal + 6))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 56) & 8) != 0)
    {
      goto LABEL_42;
    }

    LOBYTE(v5) = (*(equal + 56) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(equal + 56) & 4) == 0 || self->_connectionType != *(equal + 5))
      {
        goto LABEL_42;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_validatedAttachment;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_attachmentSize;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_operationalErrorDomain hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v7 = 2654435761 * self->_operationalErrorCode;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_validationErrorDomain hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v9 = 2654435761 * self->_validationErrorCode;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = 2654435761 * self->_linkQuality;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v11 = 2654435761 * self->_connectionType;
  return v4 ^ v3 ^ v5 ^ v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 56);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 56) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_validatedAttachment = *(from + 10);
  *&self->_has |= 0x20u;
  if ((*(from + 56) & 2) != 0)
  {
LABEL_4:
    self->_attachmentSize = *(from + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(from + 4))
  {
    [(AWDIMessageCloudKitValidatePurgeableAttachment *)self setOperationalErrorDomain:?];
  }

  if ((*(from + 56) & 0x10) != 0)
  {
    self->_operationalErrorCode = *(from + 7);
    *&self->_has |= 0x10u;
  }

  if (*(from + 6))
  {
    [(AWDIMessageCloudKitValidatePurgeableAttachment *)self setValidationErrorDomain:?];
  }

  v6 = *(from + 56);
  if ((v6 & 0x40) != 0)
  {
    self->_validationErrorCode = *(from + 11);
    *&self->_has |= 0x40u;
    v6 = *(from + 56);
    if ((v6 & 8) == 0)
    {
LABEL_13:
      if ((v6 & 4) == 0)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if ((*(from + 56) & 8) == 0)
  {
    goto LABEL_13;
  }

  self->_linkQuality = *(from + 6);
  *&self->_has |= 8u;
  if ((*(from + 56) & 4) == 0)
  {
    return;
  }

LABEL_14:
  self->_connectionType = *(from + 5);
  *&self->_has |= 4u;
}

@end