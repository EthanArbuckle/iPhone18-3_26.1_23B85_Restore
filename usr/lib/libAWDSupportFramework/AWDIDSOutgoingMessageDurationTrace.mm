@interface AWDIDSOutgoingMessageDurationTrace
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAggregatedMessageSendCount:(BOOL)count;
- (void)setHasAvgAggregatedMessageSendDuration:(BOOL)duration;
- (void)setHasAvgEncryptionDuration:(BOOL)duration;
- (void)setHasCommand:(BOOL)command;
- (void)setHasCompressPayloadDuration:(BOOL)duration;
- (void)setHasCompressPayloadStart:(BOOL)start;
- (void)setHasEncryptionCount:(BOOL)count;
- (void)setHasIDQueryDuration:(BOOL)duration;
- (void)setHasIDQueryStart:(BOOL)start;
- (void)setHasMessageOnQueueDuration:(BOOL)duration;
- (void)setHasMessageOnQueueStart:(BOOL)start;
- (void)setHasMessagesOnQueue:(BOOL)queue;
- (void)setHasPriority:(BOOL)priority;
- (void)setHasSendToDaemonDuration:(BOOL)duration;
- (void)setHasSendToDaemonStart:(BOOL)start;
- (void)setHasStoreInDatabaseDuration:(BOOL)duration;
- (void)setHasStoreInDatabaseStart:(BOOL)start;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUncompressedMessageSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSOutgoingMessageDurationTrace

- (void)dealloc
{
  [(AWDIDSOutgoingMessageDurationTrace *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDIDSOutgoingMessageDurationTrace;
  [(AWDIDSOutgoingMessageDurationTrace *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasSendToDaemonStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasSendToDaemonDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasStoreInDatabaseStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasStoreInDatabaseDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasCompressPayloadStart:(BOOL)start
{
  if (start)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasCompressPayloadDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasUncompressedMessageSize:(BOOL)size
{
  if (size)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasIDQueryStart:(BOOL)start
{
  if (start)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasIDQueryDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasMessageOnQueueStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMessageOnQueueDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasMessagesOnQueue:(BOOL)queue
{
  if (queue)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasEncryptionCount:(BOOL)count
{
  if (count)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasAvgEncryptionDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasAggregatedMessageSendCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasAvgAggregatedMessageSendDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasCommand:(BOOL)command
{
  if (command)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSOutgoingMessageDurationTrace;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSOutgoingMessageDurationTrace description](&v3, sel_description), -[AWDIDSOutgoingMessageDurationTrace dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x20000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sendToDaemonStart), @"sendToDaemonStart"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sendToDaemonDuration), @"sendToDaemonDuration"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_storeInDatabaseStart), @"storeInDatabaseStart"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_storeInDatabaseDuration), @"storeInDatabaseDuration"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_compressPayloadStart), @"compressPayloadStart"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_compressPayloadDuration), @"compressPayloadDuration"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_uncompressedMessageSize), @"uncompressedMessageSize"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_compressedMessageSize), @"compressedMessageSize"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_iDQueryStart), @"IDQueryStart"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_iDQueryDuration), @"IDQueryDuration"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_messageOnQueueStart), @"messageOnQueueStart"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_messageOnQueueDuration), @"messageOnQueueDuration"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_messagesOnQueue), @"messagesOnQueue"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_encryptionCount), @"encryptionCount"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgEncryptionDuration), @"avgEncryptionDuration"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_43:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_aggregatedMessageSendCount), @"aggregatedMessageSendCount"}];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_19:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgAggregatedMessageSendDuration), @"avgAggregatedMessageSendDuration"}];
  }

LABEL_20:
  service = self->_service;
  if (service)
  {
    [dictionary setObject:service forKey:@"service"];
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_command), @"command"}];
    v6 = self->_has;
  }

  if ((*&v6 & 0x8000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_priority), @"priority"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x20000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  sendToDaemonStart = self->_sendToDaemonStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  sendToDaemonDuration = self->_sendToDaemonDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  storeInDatabaseStart = self->_storeInDatabaseStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  storeInDatabaseDuration = self->_storeInDatabaseDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  compressPayloadStart = self->_compressPayloadStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  compressPayloadDuration = self->_compressPayloadDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  uncompressedMessageSize = self->_uncompressedMessageSize;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  compressedMessageSize = self->_compressedMessageSize;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  iDQueryStart = self->_iDQueryStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  iDQueryDuration = self->_iDQueryDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  messageOnQueueStart = self->_messageOnQueueStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  messageOnQueueDuration = self->_messageOnQueueDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  messagesOnQueue = self->_messagesOnQueue;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  encryptionCount = self->_encryptionCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  avgEncryptionDuration = self->_avgEncryptionDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_42:
  aggregatedMessageSendCount = self->_aggregatedMessageSendCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_19:
    avgAggregatedMessageSendDuration = self->_avgAggregatedMessageSendDuration;
    PBDataWriterWriteUint32Field();
  }

LABEL_20:
  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    command = self->_command;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((*&v6 & 0x8000) != 0)
  {
    priority = self->_priority;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 28) |= 4u;
    has = self->_has;
    if ((*&has & 0x20000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  *(to + 23) = self->_sendToDaemonStart;
  *(to + 28) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 22) = self->_sendToDaemonDuration;
  *(to + 28) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 27) = self->_storeInDatabaseStart;
  *(to + 28) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 26) = self->_storeInDatabaseDuration;
  *(to + 28) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 15) = self->_compressPayloadStart;
  *(to + 28) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 14) = self->_compressPayloadDuration;
  *(to + 28) |= 0x100u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 4) = self->_uncompressedMessageSize;
  *(to + 28) |= 8u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 1) = self->_compressedMessageSize;
  *(to + 28) |= 1u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(to + 18) = self->_iDQueryStart;
  *(to + 28) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(to + 17) = self->_iDQueryDuration;
  *(to + 28) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(to + 20) = self->_messageOnQueueStart;
  *(to + 28) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(to + 19) = self->_messageOnQueueDuration;
  *(to + 28) |= 0x2000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(to + 2) = self->_messagesOnQueue;
  *(to + 28) |= 2u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(to + 16) = self->_encryptionCount;
  *(to + 28) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(to + 12) = self->_avgEncryptionDuration;
  *(to + 28) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_43:
  *(to + 10) = self->_aggregatedMessageSendCount;
  *(to + 28) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_19:
    *(to + 11) = self->_avgAggregatedMessageSendDuration;
    *(to + 28) |= 0x20u;
  }

LABEL_20:
  if (self->_service)
  {
    [to setService:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x80) != 0)
  {
    *(to + 13) = self->_command;
    *(to + 28) |= 0x80u;
    v6 = self->_has;
  }

  if ((*&v6 & 0x8000) != 0)
  {
    *(to + 21) = self->_priority;
    *(to + 28) |= 0x8000u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 112) |= 4u;
    has = self->_has;
    if ((*&has & 0x20000) == 0)
    {
LABEL_3:
      if ((*&has & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 92) = self->_sendToDaemonStart;
  *(v5 + 112) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 88) = self->_sendToDaemonDuration;
  *(v5 + 112) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 108) = self->_storeInDatabaseStart;
  *(v5 + 112) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 104) = self->_storeInDatabaseDuration;
  *(v5 + 112) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 60) = self->_compressPayloadStart;
  *(v5 + 112) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 56) = self->_compressPayloadDuration;
  *(v5 + 112) |= 0x100u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 32) = self->_uncompressedMessageSize;
  *(v5 + 112) |= 8u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 8) = self->_compressedMessageSize;
  *(v5 + 112) |= 1u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 72) = self->_iDQueryStart;
  *(v5 + 112) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 68) = self->_iDQueryDuration;
  *(v5 + 112) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 80) = self->_messageOnQueueStart;
  *(v5 + 112) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_14:
    if ((*&has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 76) = self->_messageOnQueueDuration;
  *(v5 + 112) |= 0x2000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 16) = self->_messagesOnQueue;
  *(v5 + 112) |= 2u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 64) = self->_encryptionCount;
  *(v5 + 112) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 48) = self->_avgEncryptionDuration;
  *(v5 + 112) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_41:
  *(v5 + 40) = self->_aggregatedMessageSendCount;
  *(v5 + 112) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_19:
    *(v5 + 44) = self->_avgAggregatedMessageSendDuration;
    *(v5 + 112) |= 0x20u;
  }

LABEL_20:

  *(v6 + 96) = [(NSString *)self->_service copyWithZone:zone];
  v8 = self->_has;
  if ((*&v8 & 0x80) != 0)
  {
    *(v6 + 52) = self->_command;
    *(v6 + 112) |= 0x80u;
    v8 = self->_has;
  }

  if ((*&v8 & 0x8000) != 0)
  {
    *(v6 + 84) = self->_priority;
    *(v6 + 112) |= 0x8000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 28);
    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 4) != 0)
    {
LABEL_104:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_sendToDaemonStart != *(equal + 23))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_sendToDaemonDuration != *(equal + 22))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_storeInDatabaseStart != *(equal + 27))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_storeInDatabaseDuration != *(equal + 26))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_compressPayloadStart != *(equal + 15))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_compressPayloadDuration != *(equal + 14))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_uncompressedMessageSize != *(equal + 4))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_104;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_compressedMessageSize != *(equal + 1))
      {
        goto LABEL_104;
      }
    }

    else if (v7)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_iDQueryStart != *(equal + 18))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_iDQueryDuration != *(equal + 17))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_messageOnQueueStart != *(equal + 20))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_messageOnQueueDuration != *(equal + 19))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_messagesOnQueue != *(equal + 2))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_encryptionCount != *(equal + 16))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_avgEncryptionDuration != *(equal + 12))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_aggregatedMessageSendCount != *(equal + 10))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_104;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_avgAggregatedMessageSendDuration != *(equal + 11))
      {
        goto LABEL_104;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_104;
    }

    service = self->_service;
    if (service | *(equal + 12))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 28);
    if ((*&has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_command != *(equal + 13))
      {
        goto LABEL_104;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_104;
    }

    LOBYTE(v5) = (*(equal + 28) & 0x8000) == 0;
    if ((*&has & 0x8000) != 0)
    {
      if ((v9 & 0x8000) == 0 || self->_priority != *(equal + 21))
      {
        goto LABEL_104;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    v26 = 2654435761u * self->_timestamp;
    if ((*&has & 0x20000) != 0)
    {
LABEL_3:
      v25 = 2654435761 * self->_sendToDaemonStart;
      if ((*&has & 0x10000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v26 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_3;
    }
  }

  v25 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_4:
    v24 = 2654435761 * self->_sendToDaemonDuration;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v24 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_5:
    v23 = 2654435761 * self->_storeInDatabaseStart;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v23 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_6:
    v22 = 2654435761 * self->_storeInDatabaseDuration;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v22 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_7:
    v21 = 2654435761 * self->_compressPayloadStart;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v21 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_8:
    v20 = 2654435761 * self->_compressPayloadDuration;
    if ((*&has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v20 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_9:
    v19 = 2654435761u * self->_uncompressedMessageSize;
    if (*&has)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = 0;
  if (*&has)
  {
LABEL_10:
    v18 = 2654435761u * self->_compressedMessageSize;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_11:
    v17 = 2654435761 * self->_iDQueryStart;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_12:
    v4 = 2654435761 * self->_iDQueryDuration;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_13:
    v5 = 2654435761 * self->_messageOnQueueStart;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v5 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_14:
    v6 = 2654435761 * self->_messageOnQueueDuration;
    if ((*&has & 2) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v6 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_15:
    v7 = 2654435761u * self->_messagesOnQueue;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v7 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_16:
    v8 = 2654435761 * self->_encryptionCount;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v8 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_17:
    v9 = 2654435761 * self->_avgEncryptionDuration;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v10 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_35:
  v9 = 0;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  v10 = 2654435761 * self->_aggregatedMessageSendCount;
  if ((*&has & 0x20) != 0)
  {
LABEL_19:
    v11 = 2654435761 * self->_avgAggregatedMessageSendDuration;
    goto LABEL_38;
  }

LABEL_37:
  v11 = 0;
LABEL_38:
  v12 = [(NSString *)self->_service hash];
  v13 = self->_has;
  if ((*&v13 & 0x80) != 0)
  {
    v14 = 2654435761 * self->_command;
    if ((*&v13 & 0x8000) != 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v15 = 0;
    return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v14 ^ v15 ^ v12;
  }

  v14 = 0;
  if ((*&v13 & 0x8000) == 0)
  {
    goto LABEL_42;
  }

LABEL_40:
  v15 = 2654435761 * self->_priority;
  return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v14 ^ v15 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 28);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
    v5 = *(from + 28);
    if ((v5 & 0x20000) == 0)
    {
LABEL_3:
      if ((v5 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  self->_sendToDaemonStart = *(from + 23);
  *&self->_has |= 0x20000u;
  v5 = *(from + 28);
  if ((v5 & 0x10000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_sendToDaemonDuration = *(from + 22);
  *&self->_has |= 0x10000u;
  v5 = *(from + 28);
  if ((v5 & 0x80000) == 0)
  {
LABEL_5:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_storeInDatabaseStart = *(from + 27);
  *&self->_has |= 0x80000u;
  v5 = *(from + 28);
  if ((v5 & 0x40000) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_storeInDatabaseDuration = *(from + 26);
  *&self->_has |= 0x40000u;
  v5 = *(from + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_compressPayloadStart = *(from + 15);
  *&self->_has |= 0x200u;
  v5 = *(from + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_compressPayloadDuration = *(from + 14);
  *&self->_has |= 0x100u;
  v5 = *(from + 28);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_uncompressedMessageSize = *(from + 4);
  *&self->_has |= 8u;
  v5 = *(from + 28);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_compressedMessageSize = *(from + 1);
  *&self->_has |= 1u;
  v5 = *(from + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_iDQueryStart = *(from + 18);
  *&self->_has |= 0x1000u;
  v5 = *(from + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_iDQueryDuration = *(from + 17);
  *&self->_has |= 0x800u;
  v5 = *(from + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_messageOnQueueStart = *(from + 20);
  *&self->_has |= 0x4000u;
  v5 = *(from + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_messageOnQueueDuration = *(from + 19);
  *&self->_has |= 0x2000u;
  v5 = *(from + 28);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_messagesOnQueue = *(from + 2);
  *&self->_has |= 2u;
  v5 = *(from + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_encryptionCount = *(from + 16);
  *&self->_has |= 0x400u;
  v5 = *(from + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_avgEncryptionDuration = *(from + 12);
  *&self->_has |= 0x40u;
  v5 = *(from + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_43:
  self->_aggregatedMessageSendCount = *(from + 10);
  *&self->_has |= 0x10u;
  if ((*(from + 28) & 0x20) != 0)
  {
LABEL_19:
    self->_avgAggregatedMessageSendDuration = *(from + 11);
    *&self->_has |= 0x20u;
  }

LABEL_20:
  if (*(from + 12))
  {
    [(AWDIDSOutgoingMessageDurationTrace *)self setService:?];
  }

  v6 = *(from + 28);
  if ((v6 & 0x80) != 0)
  {
    self->_command = *(from + 13);
    *&self->_has |= 0x80u;
    v6 = *(from + 28);
  }

  if ((v6 & 0x8000) != 0)
  {
    self->_priority = *(from + 21);
    *&self->_has |= 0x8000u;
  }
}

@end