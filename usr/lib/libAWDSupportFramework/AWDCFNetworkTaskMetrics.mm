@interface AWDCFNetworkTaskMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSchedulingTier:(id)tier;
- (int)StringAsTaskType:(id)type;
- (int)schedulingTier;
- (int)taskType;
- (unint64_t)hash;
- (void)addTransactionMetrics:(id)metrics;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasError:(BOOL)error;
- (void)setHasIsBackground:(BOOL)background;
- (void)setHasNumberOfRedirects:(BOOL)redirects;
- (void)setHasNumberOfRetries:(BOOL)retries;
- (void)setHasSchedulingTier:(BOOL)tier;
- (void)setHasTaskResume:(BOOL)resume;
- (void)setHasTaskType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUnderlyingError:(BOOL)error;
- (void)setHasUnderlyingErrorDomain:(BOOL)domain;
- (void)setHasUnused:(BOOL)unused;
- (void)writeTo:(id)to;
@end

@implementation AWDCFNetworkTaskMetrics

- (void)dealloc
{
  [(AWDCFNetworkTaskMetrics *)self setActivityUUID:0];
  [(AWDCFNetworkTaskMetrics *)self setTransactionMetrics:0];
  v3.receiver = self;
  v3.super_class = AWDCFNetworkTaskMetrics;
  [(AWDCFNetworkTaskMetrics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTaskResume:(BOOL)resume
{
  if (resume)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumberOfRetries:(BOOL)retries
{
  if (retries)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumberOfRedirects:(BOOL)redirects
{
  if (redirects)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasError:(BOOL)error
{
  if (error)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasUnderlyingError:(BOOL)error
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

- (void)setHasUnderlyingErrorDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)taskType
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_taskType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasTaskType:(BOOL)type
{
  if (type)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)StringAsTaskType:(id)type
{
  if ([type isEqualToString:@"UNKNOWN_TASK_TYPE"])
  {
    return 1;
  }

  if ([type isEqualToString:@"DATA_TASK"])
  {
    return 2;
  }

  if ([type isEqualToString:@"UPLOAD_TASK"])
  {
    return 3;
  }

  if ([type isEqualToString:@"DOWNLOAD_TASK"])
  {
    return 4;
  }

  if ([type isEqualToString:@"STREAM_TASK"])
  {
    return 5;
  }

  return 1;
}

- (void)setHasIsBackground:(BOOL)background
{
  if (background)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)addTransactionMetrics:(id)metrics
{
  transactionMetrics = self->_transactionMetrics;
  if (!transactionMetrics)
  {
    transactionMetrics = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_transactionMetrics = transactionMetrics;
  }

  [(NSMutableArray *)transactionMetrics addObject:metrics];
}

- (int)schedulingTier
{
  if ((*&self->_has & 0x100) != 0)
  {
    return self->_schedulingTier;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSchedulingTier:(BOOL)tier
{
  if (tier)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsSchedulingTier:(id)tier
{
  if ([tier isEqualToString:@"DEFAULT"])
  {
    return 1;
  }

  if ([tier isEqualToString:@"DISCRETIONARY"])
  {
    return 2;
  }

  if ([tier isEqualToString:@"INFERS_DISCRETIONARY"])
  {
    return 3;
  }

  if ([tier isEqualToString:@"USER_INITIATED"])
  {
    return 4;
  }

  if ([tier isEqualToString:@"BACKGROUND_PLUS"])
  {
    return 5;
  }

  return 1;
}

- (void)setHasUnused:(BOOL)unused
{
  if (unused)
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
  v3.super_class = AWDCFNetworkTaskMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCFNetworkTaskMetrics description](&v3, sel_description), -[AWDCFNetworkTaskMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  activityUUID = self->_activityUUID;
  if (activityUUID)
  {
    [dictionary setObject:activityUUID forKey:@"activityUUID"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_taskResume), @"taskResume"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_didCompleteWithError), @"didCompleteWithError"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numberOfRetries), @"numberOfRetries"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numberOfRedirects), @"numberOfRedirects"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_error), @"error"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_underlyingError), @"underlyingError"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_underlyingErrorDomain), @"underlyingErrorDomain"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_34:
  v15 = self->_taskType - 1;
  if (v15 >= 5)
  {
    v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_taskType];
  }

  else
  {
    v16 = off_29EE324A0[v15];
  }

  [dictionary setObject:v16 forKey:@"taskType"];
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_14:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isBackground), @"isBackground"}];
  }

LABEL_15:
  if ([(NSMutableArray *)self->_transactionMetrics count])
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_transactionMetrics, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    transactionMetrics = self->_transactionMetrics;
    v8 = [(NSMutableArray *)transactionMetrics countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(transactionMetrics);
          }

          [v6 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)transactionMetrics countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"transactionMetrics"];
  }

  v12 = self->_has;
  if ((v12 & 0x100) != 0)
  {
    v13 = self->_schedulingTier - 1;
    if (v13 >= 5)
    {
      v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_schedulingTier];
    }

    else
    {
      v14 = off_29EE324C8[v13];
    }

    [dictionary setObject:v14 forKey:@"schedulingTier"];
    v12 = self->_has;
  }

  if ((v12 & 0x800) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_unused), @"unused"}];
  }

  v17 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x29EDCA608];
  if ((*&self->_has & 0x20) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_activityUUID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    taskResume = self->_taskResume;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_7;
  }

  didCompleteWithError = self->_didCompleteWithError;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  numberOfRetries = self->_numberOfRetries;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  numberOfRedirects = self->_numberOfRedirects;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  error = self->_error;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  underlyingError = self->_underlyingError;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  underlyingErrorDomain = self->_underlyingErrorDomain;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_34:
  taskType = self->_taskType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_14:
    isBackground = self->_isBackground;
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  transactionMetrics = self->_transactionMetrics;
  v8 = [(NSMutableArray *)transactionMetrics countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)transactionMetrics countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 0x100) != 0)
  {
    schedulingTier = self->_schedulingTier;
    PBDataWriterWriteInt32Field();
    v13 = self->_has;
  }

  if ((v13 & 0x800) != 0)
  {
    unused = self->_unused;
    PBDataWriterWriteBOOLField();
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 0x20) != 0)
  {
    *(to + 6) = self->_timestamp;
    *(to + 50) |= 0x20u;
  }

  if (self->_activityUUID)
  {
    [to setActivityUUID:?];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 5) = self->_taskResume;
    *(to + 50) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(to + 1) = self->_didCompleteWithError;
  *(to + 50) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 4) = self->_numberOfRetries;
  *(to + 50) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 3) = self->_numberOfRedirects;
  *(to + 50) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 2) = self->_error;
  *(to + 50) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 7) = self->_underlyingError;
  *(to + 50) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

LABEL_31:
    *(to + 21) = self->_taskType;
    *(to + 50) |= 0x200u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_30:
  *(to + 8) = self->_underlyingErrorDomain;
  *(to + 50) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((has & 0x400) != 0)
  {
LABEL_14:
    *(to + 96) = self->_isBackground;
    *(to + 50) |= 0x400u;
  }

LABEL_15:
  if ([(AWDCFNetworkTaskMetrics *)self transactionMetricsCount])
  {
    [to clearTransactionMetrics];
    transactionMetricsCount = [(AWDCFNetworkTaskMetrics *)self transactionMetricsCount];
    if (transactionMetricsCount)
    {
      v7 = transactionMetricsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addTransactionMetrics:{-[AWDCFNetworkTaskMetrics transactionMetricsAtIndex:](self, "transactionMetricsAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((v9 & 0x100) != 0)
  {
    *(to + 20) = self->_schedulingTier;
    *(to + 50) |= 0x100u;
    v9 = self->_has;
  }

  if ((v9 & 0x800) != 0)
  {
    *(to + 97) = self->_unused;
    *(to + 50) |= 0x800u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_timestamp;
    *(v5 + 100) |= 0x20u;
  }

  *(v6 + 72) = [(NSString *)self->_activityUUID copyWithZone:zone];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 40) = self->_taskResume;
    *(v6 + 100) |= 0x10u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 8) = self->_didCompleteWithError;
  *(v6 + 100) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 32) = self->_numberOfRetries;
  *(v6 + 100) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 24) = self->_numberOfRedirects;
  *(v6 + 100) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 16) = self->_error;
  *(v6 + 100) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 56) = self->_underlyingError;
  *(v6 + 100) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v6 + 64) = self->_underlyingErrorDomain;
  *(v6 + 100) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_32:
  *(v6 + 84) = self->_taskType;
  *(v6 + 100) |= 0x200u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    *(v6 + 96) = self->_isBackground;
    *(v6 + 100) |= 0x400u;
  }

LABEL_13:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  transactionMetrics = self->_transactionMetrics;
  v9 = [(NSMutableArray *)transactionMetrics countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:zone];
        [v6 addTransactionMetrics:v13];
      }

      v10 = [(NSMutableArray *)transactionMetrics countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 0x100) != 0)
  {
    *(v6 + 80) = self->_schedulingTier;
    *(v6 + 100) |= 0x100u;
    v14 = self->_has;
  }

  if ((v14 & 0x800) != 0)
  {
    *(v6 + 97) = self->_unused;
    *(v6 + 100) |= 0x800u;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 50);
    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_timestamp != *(equal + 6))
      {
        goto LABEL_70;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_70;
    }

    activityUUID = self->_activityUUID;
    if (activityUUID | *(equal + 9))
    {
      v5 = [(NSString *)activityUUID isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 50);
    if ((has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_taskResume != *(equal + 5))
      {
        goto LABEL_70;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      goto LABEL_70;
    }

    if (has)
    {
      if ((v9 & 1) == 0 || self->_didCompleteWithError != *(equal + 1))
      {
        goto LABEL_70;
      }
    }

    else if (v9)
    {
      goto LABEL_70;
    }

    if ((has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_numberOfRetries != *(equal + 4))
      {
        goto LABEL_70;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_numberOfRedirects != *(equal + 3))
      {
        goto LABEL_70;
      }
    }

    else if ((v9 & 4) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_error != *(equal + 2))
      {
        goto LABEL_70;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_underlyingError != *(equal + 7))
      {
        goto LABEL_70;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_underlyingErrorDomain != *(equal + 8))
      {
        goto LABEL_70;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 0x200) != 0)
    {
      if ((*(equal + 50) & 0x200) == 0 || self->_taskType != *(equal + 21))
      {
        goto LABEL_70;
      }
    }

    else if ((*(equal + 50) & 0x200) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 0x400) != 0)
    {
      if ((*(equal + 50) & 0x400) == 0)
      {
        goto LABEL_70;
      }

      v11 = *(equal + 96);
      if (self->_isBackground)
      {
        if ((*(equal + 96) & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      else if (*(equal + 96))
      {
        goto LABEL_70;
      }
    }

    else if ((*(equal + 50) & 0x400) != 0)
    {
      goto LABEL_70;
    }

    transactionMetrics = self->_transactionMetrics;
    if (transactionMetrics | *(equal + 11))
    {
      v5 = [(NSMutableArray *)transactionMetrics isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 0x100) != 0)
    {
      if ((*(equal + 50) & 0x100) == 0 || self->_schedulingTier != *(equal + 20))
      {
        goto LABEL_70;
      }
    }

    else if ((*(equal + 50) & 0x100) != 0)
    {
      goto LABEL_70;
    }

    LOBYTE(v5) = (*(equal + 50) & 0x800) == 0;
    if ((has & 0x800) != 0)
    {
      if ((*(equal + 50) & 0x800) != 0)
      {
        if (self->_unused)
        {
          if (*(equal + 97))
          {
            goto LABEL_73;
          }
        }

        else if (!*(equal + 97))
        {
LABEL_73:
          LOBYTE(v5) = 1;
          return v5;
        }
      }

LABEL_70:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v19 = 2654435761u * self->_timestamp;
  }

  else
  {
    v19 = 0;
  }

  v18 = [(NSString *)self->_activityUUID hash];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v17 = 2654435761u * self->_taskResume;
    if (has)
    {
LABEL_6:
      v15 = 2654435761u * self->_didCompleteWithError;
      if ((has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
    if (has)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v4 = 2654435761u * self->_numberOfRetries;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v5 = 2654435761u * self->_numberOfRedirects;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((has & 2) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_error;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_underlyingError;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v8 = 2654435761 * self->_underlyingErrorDomain;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v9 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_20:
  v8 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v9 = 2654435761 * self->_taskType;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    v10 = 2654435761 * self->_isBackground;
    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
LABEL_23:
  v11 = [(NSMutableArray *)self->_transactionMetrics hash];
  if ((*&self->_has & 0x100) != 0)
  {
    v12 = 2654435761 * self->_schedulingTier;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_25;
    }

LABEL_27:
    v13 = 0;
    return v18 ^ v19 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  v13 = 2654435761 * self->_unused;
  return v18 ^ v19 ^ v17 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x29EDCA608];
  if ((*(from + 50) & 0x20) != 0)
  {
    self->_timestamp = *(from + 6);
    *&self->_has |= 0x20u;
  }

  if (*(from + 9))
  {
    [(AWDCFNetworkTaskMetrics *)self setActivityUUID:?];
  }

  v5 = *(from + 50);
  if ((v5 & 0x10) != 0)
  {
    self->_taskResume = *(from + 5);
    *&self->_has |= 0x10u;
    v5 = *(from + 50);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_didCompleteWithError = *(from + 1);
  *&self->_has |= 1u;
  v5 = *(from + 50);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_numberOfRetries = *(from + 4);
  *&self->_has |= 8u;
  v5 = *(from + 50);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_numberOfRedirects = *(from + 3);
  *&self->_has |= 4u;
  v5 = *(from + 50);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_error = *(from + 2);
  *&self->_has |= 2u;
  v5 = *(from + 50);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_underlyingError = *(from + 7);
  *&self->_has |= 0x40u;
  v5 = *(from + 50);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_underlyingErrorDomain = *(from + 8);
  *&self->_has |= 0x80u;
  v5 = *(from + 50);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_34:
  self->_taskType = *(from + 21);
  *&self->_has |= 0x200u;
  if ((*(from + 50) & 0x400) != 0)
  {
LABEL_14:
    self->_isBackground = *(from + 96);
    *&self->_has |= 0x400u;
  }

LABEL_15:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(from + 11);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDCFNetworkTaskMetrics *)self addTransactionMetrics:*(*(&v13 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(from + 50);
  if ((v11 & 0x100) != 0)
  {
    self->_schedulingTier = *(from + 20);
    *&self->_has |= 0x100u;
    v11 = *(from + 50);
  }

  if ((v11 & 0x800) != 0)
  {
    self->_unused = *(from + 97);
    *&self->_has |= 0x800u;
  }

  v12 = *MEMORY[0x29EDCA608];
}

@end