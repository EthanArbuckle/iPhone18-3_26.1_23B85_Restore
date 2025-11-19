@interface AWDIMessageAttachmentUpload
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
- (void)setHasFirstLevelMMCSError:(BOOL)a3;
- (void)setHasFourthLevelMMCSError:(BOOL)a3;
- (void)setHasFzError:(BOOL)a3;
- (void)setHasGenericError:(BOOL)a3;
- (void)setHasLastPrewarmDuration:(BOOL)a3;
- (void)setHasLinkQuality:(BOOL)a3;
- (void)setHasMessageError:(BOOL)a3;
- (void)setHasSecondLevelMMCSError:(BOOL)a3;
- (void)setHasThirdLevelMMCSError:(BOOL)a3;
- (void)setHasTimeFromLastPrewarm:(BOOL)a3;
- (void)setHasTokenError:(BOOL)a3;
- (void)setHasUploadDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIMessageAttachmentUpload

- (void)dealloc
{
  [(AWDIMessageAttachmentUpload *)self setGuid:0];
  [(AWDIMessageAttachmentUpload *)self setFirstLevelMMCSErrorDomain:0];
  [(AWDIMessageAttachmentUpload *)self setSecondLevelMMCSErrorDomain:0];
  [(AWDIMessageAttachmentUpload *)self setThirdLevelMMCSErrorDomain:0];
  [(AWDIMessageAttachmentUpload *)self setFourthLevelMMCSErrorDomain:0];
  v3.receiver = self;
  v3.super_class = AWDIMessageAttachmentUpload;
  [(AWDIMessageAttachmentUpload *)&v3 dealloc];
}

- (void)setHasFzError:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasMessageError:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasTokenError:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasGenericError:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasUploadDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasLinkQuality:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
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

  *&self->_has = *&self->_has & 0xFFFB | v3;
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

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTimeFromLastPrewarm:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasLastPrewarmDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasFirstLevelMMCSError:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSecondLevelMMCSError:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasThirdLevelMMCSError:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasFourthLevelMMCSError:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIMessageAttachmentUpload;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIMessageAttachmentUpload description](&v3, sel_description), -[AWDIMessageAttachmentUpload dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_33;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_fzError), @"fzError"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_messageError), @"messageError"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tokenError), @"tokenError"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_genericError), @"genericError"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uploadDuration), @"uploadDuration"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_attachmentSize), @"attachmentSize"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_timeFromLastPrewarm), @"timeFromLastPrewarm"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_41:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lastPrewarmDuration), @"lastPrewarmDuration"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_firstLevelMMCSError), @"firstLevelMMCSError"}];
  }

LABEL_16:
  firstLevelMMCSErrorDomain = self->_firstLevelMMCSErrorDomain;
  if (firstLevelMMCSErrorDomain)
  {
    [v4 setObject:firstLevelMMCSErrorDomain forKey:@"firstLevelMMCSErrorDomain"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_secondLevelMMCSError), @"secondLevelMMCSError"}];
  }

  secondLevelMMCSErrorDomain = self->_secondLevelMMCSErrorDomain;
  if (secondLevelMMCSErrorDomain)
  {
    [v4 setObject:secondLevelMMCSErrorDomain forKey:@"secondLevelMMCSErrorDomain"];
  }

  if ((*&self->_has & 0x800) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_thirdLevelMMCSError), @"thirdLevelMMCSError"}];
  }

  thirdLevelMMCSErrorDomain = self->_thirdLevelMMCSErrorDomain;
  if (thirdLevelMMCSErrorDomain)
  {
    [v4 setObject:thirdLevelMMCSErrorDomain forKey:@"thirdLevelMMCSErrorDomain"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_fourthLevelMMCSError), @"fourthLevelMMCSError"}];
  }

  fourthLevelMMCSErrorDomain = self->_fourthLevelMMCSErrorDomain;
  if (fourthLevelMMCSErrorDomain)
  {
    [v4 setObject:fourthLevelMMCSErrorDomain forKey:@"fourthLevelMMCSErrorDomain"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  fzError = self->_fzError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  messageError = self->_messageError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  tokenError = self->_tokenError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  genericError = self->_genericError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  uploadDuration = self->_uploadDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  linkQuality = self->_linkQuality;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  attachmentSize = self->_attachmentSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  timeFromLastPrewarm = self->_timeFromLastPrewarm;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_42:
  lastPrewarmDuration = self->_lastPrewarmDuration;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    firstLevelMMCSError = self->_firstLevelMMCSError;
    PBDataWriterWriteInt32Field();
  }

LABEL_16:
  if (self->_firstLevelMMCSErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x400) != 0)
  {
    secondLevelMMCSError = self->_secondLevelMMCSError;
    PBDataWriterWriteInt32Field();
  }

  if (self->_secondLevelMMCSErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x800) != 0)
  {
    thirdLevelMMCSError = self->_thirdLevelMMCSError;
    PBDataWriterWriteInt32Field();
  }

  if (self->_thirdLevelMMCSErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    fourthLevelMMCSError = self->_fourthLevelMMCSError;
    PBDataWriterWriteInt32Field();
  }

  if (self->_fourthLevelMMCSErrorDomain)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 62) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(a3 + 14) = self->_fzError;
  *(a3 + 62) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 20) = self->_messageError;
  *(a3 + 62) |= 0x200u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 29) = self->_tokenError;
  *(a3 + 62) |= 0x2000u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 15) = self->_genericError;
  *(a3 + 62) |= 0x40u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 30) = self->_uploadDuration;
  *(a3 + 62) |= 0x4000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 19) = self->_linkQuality;
  *(a3 + 62) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 5) = self->_connectionType;
  *(a3 + 62) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 4) = self->_attachmentSize;
  *(a3 + 62) |= 2u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 28) = self->_timeFromLastPrewarm;
  *(a3 + 62) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_42:
  *(a3 + 18) = self->_lastPrewarmDuration;
  *(a3 + 62) |= 0x80u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    *(a3 + 6) = self->_firstLevelMMCSError;
    *(a3 + 62) |= 8u;
  }

LABEL_16:
  if (self->_firstLevelMMCSErrorDomain)
  {
    [a3 setFirstLevelMMCSErrorDomain:?];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(a3 + 21) = self->_secondLevelMMCSError;
    *(a3 + 62) |= 0x400u;
  }

  if (self->_secondLevelMMCSErrorDomain)
  {
    [a3 setSecondLevelMMCSErrorDomain:?];
  }

  if ((*&self->_has & 0x800) != 0)
  {
    *(a3 + 24) = self->_thirdLevelMMCSError;
    *(a3 + 62) |= 0x800u;
  }

  if (self->_thirdLevelMMCSErrorDomain)
  {
    [a3 setThirdLevelMMCSErrorDomain:?];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(a3 + 10) = self->_fourthLevelMMCSError;
    *(a3 + 62) |= 0x10u;
  }

  if (self->_fourthLevelMMCSErrorDomain)
  {

    [a3 setFourthLevelMMCSErrorDomain:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 64) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 124) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = self->_fzError;
  *(v5 + 124) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 80) = self->_messageError;
  *(v5 + 124) |= 0x200u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 116) = self->_tokenError;
  *(v5 + 124) |= 0x2000u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 60) = self->_genericError;
  *(v5 + 124) |= 0x40u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 120) = self->_uploadDuration;
  *(v5 + 124) |= 0x4000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 76) = self->_linkQuality;
  *(v5 + 124) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 20) = self->_connectionType;
  *(v5 + 124) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 16) = self->_attachmentSize;
  *(v5 + 124) |= 2u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 112) = self->_timeFromLastPrewarm;
  *(v5 + 124) |= 0x1000u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_31:
  *(v5 + 72) = self->_lastPrewarmDuration;
  *(v5 + 124) |= 0x80u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    *(v5 + 24) = self->_firstLevelMMCSError;
    *(v5 + 124) |= 8u;
  }

LABEL_14:

  *(v5 + 32) = [(NSString *)self->_firstLevelMMCSErrorDomain copyWithZone:a3];
  if ((*&self->_has & 0x400) != 0)
  {
    *(v5 + 84) = self->_secondLevelMMCSError;
    *(v5 + 124) |= 0x400u;
  }

  *(v5 + 88) = [(NSString *)self->_secondLevelMMCSErrorDomain copyWithZone:a3];
  if ((*&self->_has & 0x800) != 0)
  {
    *(v5 + 96) = self->_thirdLevelMMCSError;
    *(v5 + 124) |= 0x800u;
  }

  *(v5 + 104) = [(NSString *)self->_thirdLevelMMCSErrorDomain copyWithZone:a3];
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_fourthLevelMMCSError;
    *(v5 + 124) |= 0x10u;
  }

  *(v5 + 48) = [(NSString *)self->_fourthLevelMMCSErrorDomain copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(a3 + 8)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      has = self->_has;
      v8 = *(a3 + 62);
      if (has)
      {
        if ((v8 & 1) == 0 || self->_timestamp != *(a3 + 1))
        {
          goto LABEL_90;
        }
      }

      else if (v8)
      {
LABEL_90:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((has & 0x20) != 0)
      {
        if ((v8 & 0x20) == 0 || self->_fzError != *(a3 + 14))
        {
          goto LABEL_90;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        goto LABEL_90;
      }

      if ((*&self->_has & 0x200) != 0)
      {
        if ((*(a3 + 62) & 0x200) == 0 || self->_messageError != *(a3 + 20))
        {
          goto LABEL_90;
        }
      }

      else if ((*(a3 + 62) & 0x200) != 0)
      {
        goto LABEL_90;
      }

      if ((*&self->_has & 0x2000) != 0)
      {
        if ((*(a3 + 62) & 0x2000) == 0 || self->_tokenError != *(a3 + 29))
        {
          goto LABEL_90;
        }
      }

      else if ((*(a3 + 62) & 0x2000) != 0)
      {
        goto LABEL_90;
      }

      if ((has & 0x40) != 0)
      {
        if ((v8 & 0x40) == 0 || self->_genericError != *(a3 + 15))
        {
          goto LABEL_90;
        }
      }

      else if ((v8 & 0x40) != 0)
      {
        goto LABEL_90;
      }

      if ((*&self->_has & 0x4000) != 0)
      {
        if ((*(a3 + 62) & 0x4000) == 0 || self->_uploadDuration != *(a3 + 30))
        {
          goto LABEL_90;
        }
      }

      else if ((*(a3 + 62) & 0x4000) != 0)
      {
        goto LABEL_90;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(a3 + 62) & 0x100) == 0 || self->_linkQuality != *(a3 + 19))
        {
          goto LABEL_90;
        }
      }

      else if ((*(a3 + 62) & 0x100) != 0)
      {
        goto LABEL_90;
      }

      if ((has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_connectionType != *(a3 + 5))
        {
          goto LABEL_90;
        }
      }

      else if ((v8 & 4) != 0)
      {
        goto LABEL_90;
      }

      if ((has & 2) != 0)
      {
        if ((v8 & 2) == 0 || self->_attachmentSize != *(a3 + 4))
        {
          goto LABEL_90;
        }
      }

      else if ((v8 & 2) != 0)
      {
        goto LABEL_90;
      }

      if ((*&self->_has & 0x1000) != 0)
      {
        if ((*(a3 + 62) & 0x1000) == 0 || self->_timeFromLastPrewarm != *(a3 + 28))
        {
          goto LABEL_90;
        }
      }

      else if ((*(a3 + 62) & 0x1000) != 0)
      {
        goto LABEL_90;
      }

      if ((has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0 || self->_lastPrewarmDuration != *(a3 + 18))
        {
          goto LABEL_90;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        goto LABEL_90;
      }

      if ((has & 8) != 0)
      {
        if ((v8 & 8) == 0 || self->_firstLevelMMCSError != *(a3 + 6))
        {
          goto LABEL_90;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_90;
      }

      firstLevelMMCSErrorDomain = self->_firstLevelMMCSErrorDomain;
      if (firstLevelMMCSErrorDomain | *(a3 + 4))
      {
        v5 = [(NSString *)firstLevelMMCSErrorDomain isEqual:?];
        if (!v5)
        {
          return v5;
        }

        has = self->_has;
      }

      v10 = *(a3 + 62);
      if ((has & 0x400) != 0)
      {
        if ((*(a3 + 62) & 0x400) == 0 || self->_secondLevelMMCSError != *(a3 + 21))
        {
          goto LABEL_90;
        }
      }

      else if ((*(a3 + 62) & 0x400) != 0)
      {
        goto LABEL_90;
      }

      secondLevelMMCSErrorDomain = self->_secondLevelMMCSErrorDomain;
      if (secondLevelMMCSErrorDomain | *(a3 + 11))
      {
        v5 = [(NSString *)secondLevelMMCSErrorDomain isEqual:?];
        if (!v5)
        {
          return v5;
        }

        has = self->_has;
      }

      v12 = *(a3 + 62);
      if ((has & 0x800) != 0)
      {
        if ((*(a3 + 62) & 0x800) == 0 || self->_thirdLevelMMCSError != *(a3 + 24))
        {
          goto LABEL_90;
        }
      }

      else if ((*(a3 + 62) & 0x800) != 0)
      {
        goto LABEL_90;
      }

      thirdLevelMMCSErrorDomain = self->_thirdLevelMMCSErrorDomain;
      if (thirdLevelMMCSErrorDomain | *(a3 + 13))
      {
        v5 = [(NSString *)thirdLevelMMCSErrorDomain isEqual:?];
        if (!v5)
        {
          return v5;
        }

        has = self->_has;
      }

      v14 = *(a3 + 62);
      if ((has & 0x10) != 0)
      {
        if ((v14 & 0x10) == 0 || self->_fourthLevelMMCSError != *(a3 + 10))
        {
          goto LABEL_90;
        }
      }

      else if ((v14 & 0x10) != 0)
      {
        goto LABEL_90;
      }

      fourthLevelMMCSErrorDomain = self->_fourthLevelMMCSErrorDomain;
      if (fourthLevelMMCSErrorDomain | *(a3 + 6))
      {

        LOBYTE(v5) = [(NSString *)fourthLevelMMCSErrorDomain isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v24 = [(NSString *)self->_guid hash];
  has = self->_has;
  if (has)
  {
    v23 = 2654435761u * self->_timestamp;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v22 = 2654435761 * self->_fzError;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v23 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v21 = 2654435761 * self->_messageError;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v21 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_5:
    v20 = 2654435761 * self->_tokenError;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v20 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_6:
    v19 = 2654435761 * self->_genericError;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v19 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_7:
    v18 = 2654435761 * self->_uploadDuration;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v18 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v17 = 2654435761 * self->_linkQuality;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v16 = 2654435761 * self->_connectionType;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v16 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v14 = 2654435761 * self->_attachmentSize;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    v4 = 2654435761 * self->_timeFromLastPrewarm;
    if ((has & 0x80) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v5 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  v4 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v5 = 2654435761 * self->_lastPrewarmDuration;
  if ((has & 8) != 0)
  {
LABEL_13:
    v6 = 2654435761 * self->_firstLevelMMCSError;
    goto LABEL_26;
  }

LABEL_25:
  v6 = 0;
LABEL_26:
  v7 = [(NSString *)self->_firstLevelMMCSErrorDomain hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v8 = 2654435761 * self->_secondLevelMMCSError;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_secondLevelMMCSErrorDomain hash];
  if ((*&self->_has & 0x800) != 0)
  {
    v10 = 2654435761 * self->_thirdLevelMMCSError;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSString *)self->_thirdLevelMMCSErrorDomain hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v12 = 2654435761 * self->_fourthLevelMMCSError;
  }

  else
  {
    v12 = 0;
  }

  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSString *)self->_fourthLevelMMCSErrorDomain hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 8))
  {
    [(AWDIMessageAttachmentUpload *)self setGuid:?];
  }

  v5 = *(a3 + 62);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 62);
    if ((v5 & 0x20) == 0)
    {
LABEL_5:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  self->_fzError = *(a3 + 14);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 62);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_messageError = *(a3 + 20);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 62);
  if ((v5 & 0x2000) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_tokenError = *(a3 + 29);
  *&self->_has |= 0x2000u;
  v5 = *(a3 + 62);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_genericError = *(a3 + 15);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 62);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_uploadDuration = *(a3 + 30);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 62);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_linkQuality = *(a3 + 19);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 62);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_connectionType = *(a3 + 5);
  *&self->_has |= 4u;
  v5 = *(a3 + 62);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_attachmentSize = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 62);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_timeFromLastPrewarm = *(a3 + 28);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 62);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_42:
  self->_lastPrewarmDuration = *(a3 + 18);
  *&self->_has |= 0x80u;
  if ((*(a3 + 62) & 8) != 0)
  {
LABEL_15:
    self->_firstLevelMMCSError = *(a3 + 6);
    *&self->_has |= 8u;
  }

LABEL_16:
  if (*(a3 + 4))
  {
    [(AWDIMessageAttachmentUpload *)self setFirstLevelMMCSErrorDomain:?];
  }

  if ((*(a3 + 62) & 0x400) != 0)
  {
    self->_secondLevelMMCSError = *(a3 + 21);
    *&self->_has |= 0x400u;
  }

  if (*(a3 + 11))
  {
    [(AWDIMessageAttachmentUpload *)self setSecondLevelMMCSErrorDomain:?];
  }

  if ((*(a3 + 62) & 0x800) != 0)
  {
    self->_thirdLevelMMCSError = *(a3 + 24);
    *&self->_has |= 0x800u;
  }

  if (*(a3 + 13))
  {
    [(AWDIMessageAttachmentUpload *)self setThirdLevelMMCSErrorDomain:?];
  }

  if ((*(a3 + 62) & 0x10) != 0)
  {
    self->_fourthLevelMMCSError = *(a3 + 10);
    *&self->_has |= 0x10u;
  }

  if (*(a3 + 6))
  {

    [(AWDIMessageAttachmentUpload *)self setFourthLevelMMCSErrorDomain:?];
  }
}

@end