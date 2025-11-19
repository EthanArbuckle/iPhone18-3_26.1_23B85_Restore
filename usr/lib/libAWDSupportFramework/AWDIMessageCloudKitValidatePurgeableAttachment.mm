@interface AWDIMessageCloudKitValidatePurgeableAttachment
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
- (void)setHasLinkQuality:(BOOL)a3;
- (void)setHasOperationalErrorCode:(BOOL)a3;
- (void)setHasValidatedAttachment:(BOOL)a3;
- (void)setHasValidationErrorCode:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasValidatedAttachment:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
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

- (void)setHasOperationalErrorCode:(BOOL)a3
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

- (void)setHasValidationErrorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasLinkQuality:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMessageCloudKitValidatePurgeableAttachment;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageCloudKitValidatePurgeableAttachment description](&v3, sel_description), -[AWDIMessageCloudKitValidatePurgeableAttachment dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_validatedAttachment), @"validatedAttachment"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_attachmentSize), @"attachmentSize"}];
  }

LABEL_5:
  operationalErrorDomain = self->_operationalErrorDomain;
  if (operationalErrorDomain)
  {
    [v3 setObject:operationalErrorDomain forKey:@"operationalErrorDomain"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_operationalErrorCode), @"operationalErrorCode"}];
  }

  validationErrorDomain = self->_validationErrorDomain;
  if (validationErrorDomain)
  {
    [v3 setObject:validationErrorDomain forKey:@"validationErrorDomain"];
  }

  v7 = self->_has;
  if ((v7 & 0x40) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_14;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_validationErrorCode), @"validationErrorCode"}];
  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v7 & 4) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 56) |= 1u;
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

  *(a3 + 10) = self->_validatedAttachment;
  *(a3 + 56) |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(a3 + 4) = self->_attachmentSize;
    *(a3 + 56) |= 2u;
  }

LABEL_5:
  if (self->_operationalErrorDomain)
  {
    [a3 setOperationalErrorDomain:?];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(a3 + 7) = self->_operationalErrorCode;
    *(a3 + 56) |= 0x10u;
  }

  if (self->_validationErrorDomain)
  {
    [a3 setValidationErrorDomain:?];
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(a3 + 11) = self->_validationErrorCode;
    *(a3 + 56) |= 0x40u;
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

  *(a3 + 6) = self->_linkQuality;
  *(a3 + 56) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_14:
  *(a3 + 5) = self->_connectionType;
  *(a3 + 56) |= 4u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  *(v6 + 32) = [(NSString *)self->_operationalErrorDomain copyWithZone:a3];
  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 28) = self->_operationalErrorCode;
    *(v6 + 56) |= 0x10u;
  }

  *(v6 + 48) = [(NSString *)self->_validationErrorDomain copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 56);
    if (has)
    {
      if ((*(a3 + 56) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_42;
      }
    }

    else if (*(a3 + 56))
    {
LABEL_42:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 56) & 0x20) == 0 || self->_validatedAttachment != *(a3 + 10))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 56) & 0x20) != 0)
    {
      goto LABEL_42;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 56) & 2) == 0 || self->_attachmentSize != *(a3 + 4))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 56) & 2) != 0)
    {
      goto LABEL_42;
    }

    operationalErrorDomain = self->_operationalErrorDomain;
    if (operationalErrorDomain | *(a3 + 4))
    {
      v5 = [(NSString *)operationalErrorDomain isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 56);
    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 56) & 0x10) == 0 || self->_operationalErrorCode != *(a3 + 7))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 56) & 0x10) != 0)
    {
      goto LABEL_42;
    }

    validationErrorDomain = self->_validationErrorDomain;
    if (validationErrorDomain | *(a3 + 6))
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
      if ((*(a3 + 56) & 0x40) == 0 || self->_validationErrorCode != *(a3 + 11))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 56) & 0x40) != 0)
    {
      goto LABEL_42;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 56) & 8) == 0 || self->_linkQuality != *(a3 + 6))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 56) & 8) != 0)
    {
      goto LABEL_42;
    }

    LOBYTE(v5) = (*(a3 + 56) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(a3 + 56) & 4) == 0 || self->_connectionType != *(a3 + 5))
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

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 56);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 56);
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

  else if ((*(a3 + 56) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_validatedAttachment = *(a3 + 10);
  *&self->_has |= 0x20u;
  if ((*(a3 + 56) & 2) != 0)
  {
LABEL_4:
    self->_attachmentSize = *(a3 + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(a3 + 4))
  {
    [(AWDIMessageCloudKitValidatePurgeableAttachment *)self setOperationalErrorDomain:?];
  }

  if ((*(a3 + 56) & 0x10) != 0)
  {
    self->_operationalErrorCode = *(a3 + 7);
    *&self->_has |= 0x10u;
  }

  if (*(a3 + 6))
  {
    [(AWDIMessageCloudKitValidatePurgeableAttachment *)self setValidationErrorDomain:?];
  }

  v6 = *(a3 + 56);
  if ((v6 & 0x40) != 0)
  {
    self->_validationErrorCode = *(a3 + 11);
    *&self->_has |= 0x40u;
    v6 = *(a3 + 56);
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

  else if ((*(a3 + 56) & 8) == 0)
  {
    goto LABEL_13;
  }

  self->_linkQuality = *(a3 + 6);
  *&self->_has |= 8u;
  if ((*(a3 + 56) & 4) == 0)
  {
    return;
  }

LABEL_14:
  self->_connectionType = *(a3 + 5);
  *&self->_has |= 4u;
}

@end