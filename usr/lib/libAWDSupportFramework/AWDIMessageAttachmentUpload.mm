@interface AWDIMessageAttachmentUpload
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
- (void)setHasFirstLevelMMCSError:(BOOL)error;
- (void)setHasFourthLevelMMCSError:(BOOL)error;
- (void)setHasFzError:(BOOL)error;
- (void)setHasGenericError:(BOOL)error;
- (void)setHasLastPrewarmDuration:(BOOL)duration;
- (void)setHasLinkQuality:(BOOL)quality;
- (void)setHasMessageError:(BOOL)error;
- (void)setHasSecondLevelMMCSError:(BOOL)error;
- (void)setHasThirdLevelMMCSError:(BOOL)error;
- (void)setHasTimeFromLastPrewarm:(BOOL)prewarm;
- (void)setHasTokenError:(BOOL)error;
- (void)setHasUploadDuration:(BOOL)duration;
- (void)writeTo:(id)to;
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

- (void)setHasFzError:(BOOL)error
{
  if (error)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasMessageError:(BOOL)error
{
  if (error)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasTokenError:(BOOL)error
{
  if (error)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasGenericError:(BOOL)error
{
  if (error)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasUploadDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasLinkQuality:(BOOL)quality
{
  if (quality)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
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

  *&self->_has = *&self->_has & 0xFFFB | v3;
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

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTimeFromLastPrewarm:(BOOL)prewarm
{
  if (prewarm)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasLastPrewarmDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasFirstLevelMMCSError:(BOOL)error
{
  if (error)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSecondLevelMMCSError:(BOOL)error
{
  if (error)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasThirdLevelMMCSError:(BOOL)error
{
  if (error)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasFourthLevelMMCSError:(BOOL)error
{
  if (error)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
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

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 62) |= 1u;
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

  *(to + 14) = self->_fzError;
  *(to + 62) |= 0x20u;
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
  *(to + 20) = self->_messageError;
  *(to + 62) |= 0x200u;
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
  *(to + 29) = self->_tokenError;
  *(to + 62) |= 0x2000u;
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
  *(to + 15) = self->_genericError;
  *(to + 62) |= 0x40u;
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
  *(to + 30) = self->_uploadDuration;
  *(to + 62) |= 0x4000u;
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
  *(to + 19) = self->_linkQuality;
  *(to + 62) |= 0x100u;
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
  *(to + 5) = self->_connectionType;
  *(to + 62) |= 4u;
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
  *(to + 4) = self->_attachmentSize;
  *(to + 62) |= 2u;
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
  *(to + 28) = self->_timeFromLastPrewarm;
  *(to + 62) |= 0x1000u;
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
  *(to + 18) = self->_lastPrewarmDuration;
  *(to + 62) |= 0x80u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    *(to + 6) = self->_firstLevelMMCSError;
    *(to + 62) |= 8u;
  }

LABEL_16:
  if (self->_firstLevelMMCSErrorDomain)
  {
    [to setFirstLevelMMCSErrorDomain:?];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(to + 21) = self->_secondLevelMMCSError;
    *(to + 62) |= 0x400u;
  }

  if (self->_secondLevelMMCSErrorDomain)
  {
    [to setSecondLevelMMCSErrorDomain:?];
  }

  if ((*&self->_has & 0x800) != 0)
  {
    *(to + 24) = self->_thirdLevelMMCSError;
    *(to + 62) |= 0x800u;
  }

  if (self->_thirdLevelMMCSErrorDomain)
  {
    [to setThirdLevelMMCSErrorDomain:?];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(to + 10) = self->_fourthLevelMMCSError;
    *(to + 62) |= 0x10u;
  }

  if (self->_fourthLevelMMCSErrorDomain)
  {

    [to setFourthLevelMMCSErrorDomain:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 64) = [(NSString *)self->_guid copyWithZone:zone];
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

  *(v5 + 32) = [(NSString *)self->_firstLevelMMCSErrorDomain copyWithZone:zone];
  if ((*&self->_has & 0x400) != 0)
  {
    *(v5 + 84) = self->_secondLevelMMCSError;
    *(v5 + 124) |= 0x400u;
  }

  *(v5 + 88) = [(NSString *)self->_secondLevelMMCSErrorDomain copyWithZone:zone];
  if ((*&self->_has & 0x800) != 0)
  {
    *(v5 + 96) = self->_thirdLevelMMCSError;
    *(v5 + 124) |= 0x800u;
  }

  *(v5 + 104) = [(NSString *)self->_thirdLevelMMCSErrorDomain copyWithZone:zone];
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_fourthLevelMMCSError;
    *(v5 + 124) |= 0x10u;
  }

  *(v5 + 48) = [(NSString *)self->_fourthLevelMMCSErrorDomain copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(equal + 8)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      has = self->_has;
      v8 = *(equal + 62);
      if (has)
      {
        if ((v8 & 1) == 0 || self->_timestamp != *(equal + 1))
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
        if ((v8 & 0x20) == 0 || self->_fzError != *(equal + 14))
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
        if ((*(equal + 62) & 0x200) == 0 || self->_messageError != *(equal + 20))
        {
          goto LABEL_90;
        }
      }

      else if ((*(equal + 62) & 0x200) != 0)
      {
        goto LABEL_90;
      }

      if ((*&self->_has & 0x2000) != 0)
      {
        if ((*(equal + 62) & 0x2000) == 0 || self->_tokenError != *(equal + 29))
        {
          goto LABEL_90;
        }
      }

      else if ((*(equal + 62) & 0x2000) != 0)
      {
        goto LABEL_90;
      }

      if ((has & 0x40) != 0)
      {
        if ((v8 & 0x40) == 0 || self->_genericError != *(equal + 15))
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
        if ((*(equal + 62) & 0x4000) == 0 || self->_uploadDuration != *(equal + 30))
        {
          goto LABEL_90;
        }
      }

      else if ((*(equal + 62) & 0x4000) != 0)
      {
        goto LABEL_90;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(equal + 62) & 0x100) == 0 || self->_linkQuality != *(equal + 19))
        {
          goto LABEL_90;
        }
      }

      else if ((*(equal + 62) & 0x100) != 0)
      {
        goto LABEL_90;
      }

      if ((has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_connectionType != *(equal + 5))
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
        if ((v8 & 2) == 0 || self->_attachmentSize != *(equal + 4))
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
        if ((*(equal + 62) & 0x1000) == 0 || self->_timeFromLastPrewarm != *(equal + 28))
        {
          goto LABEL_90;
        }
      }

      else if ((*(equal + 62) & 0x1000) != 0)
      {
        goto LABEL_90;
      }

      if ((has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0 || self->_lastPrewarmDuration != *(equal + 18))
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
        if ((v8 & 8) == 0 || self->_firstLevelMMCSError != *(equal + 6))
        {
          goto LABEL_90;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_90;
      }

      firstLevelMMCSErrorDomain = self->_firstLevelMMCSErrorDomain;
      if (firstLevelMMCSErrorDomain | *(equal + 4))
      {
        v5 = [(NSString *)firstLevelMMCSErrorDomain isEqual:?];
        if (!v5)
        {
          return v5;
        }

        has = self->_has;
      }

      v10 = *(equal + 62);
      if ((has & 0x400) != 0)
      {
        if ((*(equal + 62) & 0x400) == 0 || self->_secondLevelMMCSError != *(equal + 21))
        {
          goto LABEL_90;
        }
      }

      else if ((*(equal + 62) & 0x400) != 0)
      {
        goto LABEL_90;
      }

      secondLevelMMCSErrorDomain = self->_secondLevelMMCSErrorDomain;
      if (secondLevelMMCSErrorDomain | *(equal + 11))
      {
        v5 = [(NSString *)secondLevelMMCSErrorDomain isEqual:?];
        if (!v5)
        {
          return v5;
        }

        has = self->_has;
      }

      v12 = *(equal + 62);
      if ((has & 0x800) != 0)
      {
        if ((*(equal + 62) & 0x800) == 0 || self->_thirdLevelMMCSError != *(equal + 24))
        {
          goto LABEL_90;
        }
      }

      else if ((*(equal + 62) & 0x800) != 0)
      {
        goto LABEL_90;
      }

      thirdLevelMMCSErrorDomain = self->_thirdLevelMMCSErrorDomain;
      if (thirdLevelMMCSErrorDomain | *(equal + 13))
      {
        v5 = [(NSString *)thirdLevelMMCSErrorDomain isEqual:?];
        if (!v5)
        {
          return v5;
        }

        has = self->_has;
      }

      v14 = *(equal + 62);
      if ((has & 0x10) != 0)
      {
        if ((v14 & 0x10) == 0 || self->_fourthLevelMMCSError != *(equal + 10))
        {
          goto LABEL_90;
        }
      }

      else if ((v14 & 0x10) != 0)
      {
        goto LABEL_90;
      }

      fourthLevelMMCSErrorDomain = self->_fourthLevelMMCSErrorDomain;
      if (fourthLevelMMCSErrorDomain | *(equal + 6))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 8))
  {
    [(AWDIMessageAttachmentUpload *)self setGuid:?];
  }

  v5 = *(from + 62);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 62);
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

  self->_fzError = *(from + 14);
  *&self->_has |= 0x20u;
  v5 = *(from + 62);
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
  self->_messageError = *(from + 20);
  *&self->_has |= 0x200u;
  v5 = *(from + 62);
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
  self->_tokenError = *(from + 29);
  *&self->_has |= 0x2000u;
  v5 = *(from + 62);
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
  self->_genericError = *(from + 15);
  *&self->_has |= 0x40u;
  v5 = *(from + 62);
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
  self->_uploadDuration = *(from + 30);
  *&self->_has |= 0x4000u;
  v5 = *(from + 62);
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
  self->_linkQuality = *(from + 19);
  *&self->_has |= 0x100u;
  v5 = *(from + 62);
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
  self->_connectionType = *(from + 5);
  *&self->_has |= 4u;
  v5 = *(from + 62);
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
  self->_attachmentSize = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 62);
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
  self->_timeFromLastPrewarm = *(from + 28);
  *&self->_has |= 0x1000u;
  v5 = *(from + 62);
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
  self->_lastPrewarmDuration = *(from + 18);
  *&self->_has |= 0x80u;
  if ((*(from + 62) & 8) != 0)
  {
LABEL_15:
    self->_firstLevelMMCSError = *(from + 6);
    *&self->_has |= 8u;
  }

LABEL_16:
  if (*(from + 4))
  {
    [(AWDIMessageAttachmentUpload *)self setFirstLevelMMCSErrorDomain:?];
  }

  if ((*(from + 62) & 0x400) != 0)
  {
    self->_secondLevelMMCSError = *(from + 21);
    *&self->_has |= 0x400u;
  }

  if (*(from + 11))
  {
    [(AWDIMessageAttachmentUpload *)self setSecondLevelMMCSErrorDomain:?];
  }

  if ((*(from + 62) & 0x800) != 0)
  {
    self->_thirdLevelMMCSError = *(from + 24);
    *&self->_has |= 0x800u;
  }

  if (*(from + 13))
  {
    [(AWDIMessageAttachmentUpload *)self setThirdLevelMMCSErrorDomain:?];
  }

  if ((*(from + 62) & 0x10) != 0)
  {
    self->_fourthLevelMMCSError = *(from + 10);
    *&self->_has |= 0x10u;
  }

  if (*(from + 6))
  {

    [(AWDIMessageAttachmentUpload *)self setFourthLevelMMCSErrorDomain:?];
  }
}

@end