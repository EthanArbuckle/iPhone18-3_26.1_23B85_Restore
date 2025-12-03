@interface AWDDataFrames
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCFackCFpoll:(BOOL)fpoll;
- (void)setHasCFpoll:(BOOL)fpoll;
- (void)setHasDataCFack:(BOOL)fack;
- (void)setHasDataCFackCFpoll:(BOOL)fpoll;
- (void)setHasDataCFpoll:(BOOL)fpoll;
- (void)setHasDataFrames:(BOOL)frames;
- (void)setHasNull:(BOOL)null;
- (void)setHasQoSdata:(BOOL)sdata;
- (void)setHasQoSdataCFack:(BOOL)fack;
- (void)setHasQoSdataCFackCFpoll:(BOOL)fpoll;
- (void)setHasQoSnodataCFack:(BOOL)fack;
- (void)setHasQoSnodataCFpoll:(BOOL)fpoll;
- (void)setHasQoSnull:(BOOL)snull;
- (void)writeTo:(id)to;
@end

@implementation AWDDataFrames

- (void)setHasDataFrames:(BOOL)frames
{
  if (frames)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasDataCFack:(BOOL)fack
{
  if (fack)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDataCFpoll:(BOOL)fpoll
{
  if (fpoll)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDataCFackCFpoll:(BOOL)fpoll
{
  if (fpoll)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNull:(BOOL)null
{
  if (null)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasCFpoll:(BOOL)fpoll
{
  if (fpoll)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasCFackCFpoll:(BOOL)fpoll
{
  if (fpoll)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasQoSdata:(BOOL)sdata
{
  if (sdata)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasQoSdataCFack:(BOOL)fack
{
  if (fack)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasQoSdataCFackCFpoll:(BOOL)fpoll
{
  if (fpoll)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasQoSnull:(BOOL)snull
{
  if (snull)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasQoSnodataCFpoll:(BOOL)fpoll
{
  if (fpoll)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasQoSnodataCFack:(BOOL)fack
{
  if (fack)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDDataFrames;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDDataFrames description](&v3, sel_description), -[AWDDataFrames dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dataFrames), @"dataFrames"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dataCFack), @"dataCFack"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dataCFpoll), @"dataCFpoll"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dataCFackCFpoll), @"dataCFackCFpoll"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_null), @"null"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cFack), @"CFack"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cFpoll), @"CFpoll"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cFackCFpoll), @"CFackCFpoll"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_qoSdata), @"QoSdata"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_qoSdataCFack), @"QoSdataCFack"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_qoSdataCFackCFpoll), @"QoSdataCFackCFpoll"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_qoSnodataCFpoll), @"QoSnodataCFpoll"}];
    if ((*&self->_has & 0x800) == 0)
    {
      return dictionary;
    }

    goto LABEL_15;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_qoSnull), @"QoSnull"}];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((has & 0x800) != 0)
  {
LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_qoSnodataCFack), @"QoSnodataCFack"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    dataFrames = self->_dataFrames;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  dataCFack = self->_dataCFack;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  dataCFpoll = self->_dataCFpoll;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  dataCFackCFpoll = self->_dataCFackCFpoll;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  null = self->_null;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  cFack = self->_cFack;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  cFpoll = self->_cFpoll;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  cFackCFpoll = self->_cFackCFpoll;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  qoSdata = self->_qoSdata;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  qoSdataCFack = self->_qoSdataCFack;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  qoSdataCFackCFpoll = self->_qoSdataCFackCFpoll;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    qoSnodataCFpoll = self->_qoSnodataCFpoll;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x800) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_27:
  qoSnull = self->_qoSnull;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((has & 0x800) == 0)
  {
    return;
  }

LABEL_29:
  qoSnodataCFack = self->_qoSnodataCFack;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(to + 7) = self->_dataFrames;
    *(to + 60) |= 0x40u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_dataCFack;
  *(to + 60) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 6) = self->_dataCFpoll;
  *(to + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 5) = self->_dataCFackCFpoll;
  *(to + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 8) = self->_null;
  *(to + 60) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 1) = self->_cFack;
  *(to + 60) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 3) = self->_cFpoll;
  *(to + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 2) = self->_cFackCFpoll;
  *(to + 60) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 9) = self->_qoSdata;
  *(to + 60) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 10) = self->_qoSdataCFack;
  *(to + 60) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 11) = self->_qoSdataCFackCFpoll;
  *(to + 60) |= 0x400u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 14) = self->_qoSnull;
  *(to + 60) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      return;
    }

LABEL_29:
    *(to + 12) = self->_qoSnodataCFack;
    *(to + 60) |= 0x800u;
    return;
  }

LABEL_28:
  *(to + 13) = self->_qoSnodataCFpoll;
  *(to + 60) |= 0x1000u;
  if ((*&self->_has & 0x800) != 0)
  {
    goto LABEL_29;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(result + 7) = self->_dataFrames;
    *(result + 60) |= 0x40u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_dataCFack;
  *(result + 60) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 6) = self->_dataCFpoll;
  *(result + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 5) = self->_dataCFackCFpoll;
  *(result + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 8) = self->_null;
  *(result + 60) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 1) = self->_cFack;
  *(result + 60) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 3) = self->_cFpoll;
  *(result + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 2) = self->_cFackCFpoll;
  *(result + 60) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 9) = self->_qoSdata;
  *(result + 60) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 10) = self->_qoSdataCFack;
  *(result + 60) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 11) = self->_qoSdataCFackCFpoll;
  *(result + 60) |= 0x400u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 14) = self->_qoSnull;
  *(result + 60) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 13) = self->_qoSnodataCFpoll;
  *(result + 60) |= 0x1000u;
  if ((*&self->_has & 0x800) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 12) = self->_qoSnodataCFack;
  *(result + 60) |= 0x800u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 60);
    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_dataFrames != *(equal + 7))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
LABEL_71:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_dataCFack != *(equal + 4))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_dataCFpoll != *(equal + 6))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_dataCFackCFpoll != *(equal + 5))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_null != *(equal + 8))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_71;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_cFack != *(equal + 1))
      {
        goto LABEL_71;
      }
    }

    else if (v7)
    {
      goto LABEL_71;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_cFpoll != *(equal + 3))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_cFackCFpoll != *(equal + 2))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 60) & 0x100) == 0 || self->_qoSdata != *(equal + 9))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x100) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 60) & 0x200) == 0 || self->_qoSdataCFack != *(equal + 10))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x200) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 60) & 0x400) == 0 || self->_qoSdataCFackCFpoll != *(equal + 11))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x400) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x2000) != 0)
    {
      if ((*(equal + 60) & 0x2000) == 0 || self->_qoSnull != *(equal + 14))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x2000) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(equal + 60) & 0x1000) == 0 || self->_qoSnodataCFpoll != *(equal + 13))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 60) & 0x1000) != 0)
    {
      goto LABEL_71;
    }

    LOBYTE(v5) = (v7 & 0x800) == 0;
    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 60) & 0x800) == 0 || self->_qoSnodataCFack != *(equal + 12))
      {
        goto LABEL_71;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v3 = 2654435761u * self->_dataFrames;
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_dataCFack;
      if ((has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_dataCFpoll;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_dataCFackCFpoll;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_null;
    if (has)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if (has)
  {
LABEL_7:
    v8 = 2654435761u * self->_cFack;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_cFpoll;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_cFackCFpoll;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_qoSdata;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_qoSdataCFack;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_qoSdataCFackCFpoll;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_qoSnull;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761u * self->_qoSnodataCFpoll;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761u * self->_qoSnodataCFack;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 60);
  if ((v3 & 0x40) != 0)
  {
    self->_dataFrames = *(from + 7);
    *&self->_has |= 0x40u;
    v3 = *(from + 60);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_dataCFack = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 60);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_dataCFpoll = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 60);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_dataCFackCFpoll = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 60);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_null = *(from + 8);
  *&self->_has |= 0x80u;
  v3 = *(from + 60);
  if ((v3 & 1) == 0)
  {
LABEL_7:
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_cFack = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 60);
  if ((v3 & 4) == 0)
  {
LABEL_8:
    if ((v3 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_cFpoll = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 60);
  if ((v3 & 2) == 0)
  {
LABEL_9:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_cFackCFpoll = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 60);
  if ((v3 & 0x100) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_qoSdata = *(from + 9);
  *&self->_has |= 0x100u;
  v3 = *(from + 60);
  if ((v3 & 0x200) == 0)
  {
LABEL_11:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_qoSdataCFack = *(from + 10);
  *&self->_has |= 0x200u;
  v3 = *(from + 60);
  if ((v3 & 0x400) == 0)
  {
LABEL_12:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_qoSdataCFackCFpoll = *(from + 11);
  *&self->_has |= 0x400u;
  v3 = *(from + 60);
  if ((v3 & 0x2000) == 0)
  {
LABEL_13:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_qoSnull = *(from + 14);
  *&self->_has |= 0x2000u;
  v3 = *(from + 60);
  if ((v3 & 0x1000) == 0)
  {
LABEL_14:
    if ((v3 & 0x800) == 0)
    {
      return;
    }

LABEL_29:
    self->_qoSnodataCFack = *(from + 12);
    *&self->_has |= 0x800u;
    return;
  }

LABEL_28:
  self->_qoSnodataCFpoll = *(from + 13);
  *&self->_has |= 0x1000u;
  if ((*(from + 60) & 0x800) != 0)
  {
    goto LABEL_29;
  }
}

@end