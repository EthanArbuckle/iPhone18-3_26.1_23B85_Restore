@interface AWDCFNetworkTaskMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSchedulingTier:(id)a3;
- (int)StringAsTaskType:(id)a3;
- (int)schedulingTier;
- (int)taskType;
- (unint64_t)hash;
- (void)addTransactionMetrics:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasError:(BOOL)a3;
- (void)setHasIsBackground:(BOOL)a3;
- (void)setHasNumberOfRedirects:(BOOL)a3;
- (void)setHasNumberOfRetries:(BOOL)a3;
- (void)setHasSchedulingTier:(BOOL)a3;
- (void)setHasTaskResume:(BOOL)a3;
- (void)setHasTaskType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasUnderlyingError:(BOOL)a3;
- (void)setHasUnderlyingErrorDomain:(BOOL)a3;
- (void)setHasUnused:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasTaskResume:(BOOL)a3
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

- (void)setHasNumberOfRetries:(BOOL)a3
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

- (void)setHasNumberOfRedirects:(BOOL)a3
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

- (void)setHasError:(BOOL)a3
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

- (void)setHasUnderlyingError:(BOOL)a3
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

- (void)setHasUnderlyingErrorDomain:(BOOL)a3
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

- (void)setHasTaskType:(BOOL)a3
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

- (int)StringAsTaskType:(id)a3
{
  if ([a3 isEqualToString:@"UNKNOWN_TASK_TYPE"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"DATA_TASK"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"UPLOAD_TASK"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"DOWNLOAD_TASK"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"STREAM_TASK"])
  {
    return 5;
  }

  return 1;
}

- (void)setHasIsBackground:(BOOL)a3
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

- (void)addTransactionMetrics:(id)a3
{
  transactionMetrics = self->_transactionMetrics;
  if (!transactionMetrics)
  {
    transactionMetrics = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_transactionMetrics = transactionMetrics;
  }

  [(NSMutableArray *)transactionMetrics addObject:a3];
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

- (void)setHasSchedulingTier:(BOOL)a3
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

- (int)StringAsSchedulingTier:(id)a3
{
  if ([a3 isEqualToString:@"DEFAULT"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"DISCRETIONARY"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"INFERS_DISCRETIONARY"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"USER_INITIATED"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"BACKGROUND_PLUS"])
  {
    return 5;
  }

  return 1;
}

- (void)setHasUnused:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCFNetworkTaskMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCFNetworkTaskMetrics description](&v3, sel_description), -[AWDCFNetworkTaskMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  activityUUID = self->_activityUUID;
  if (activityUUID)
  {
    [v3 setObject:activityUUID forKey:@"activityUUID"];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_taskResume), @"taskResume"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_didCompleteWithError), @"didCompleteWithError"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numberOfRetries), @"numberOfRetries"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numberOfRedirects), @"numberOfRedirects"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_error), @"error"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_underlyingError), @"underlyingError"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_underlyingErrorDomain), @"underlyingErrorDomain"}];
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

  [v3 setObject:v16 forKey:@"taskType"];
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isBackground), @"isBackground"}];
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

    [v3 setObject:v6 forKey:@"transactionMetrics"];
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

    [v3 setObject:v14 forKey:@"schedulingTier"];
    v12 = self->_has;
  }

  if ((v12 & 0x800) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_unused), @"unused"}];
  }

  v17 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x20) != 0)
  {
    *(a3 + 6) = self->_timestamp;
    *(a3 + 50) |= 0x20u;
  }

  if (self->_activityUUID)
  {
    [a3 setActivityUUID:?];
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 5) = self->_taskResume;
    *(a3 + 50) |= 0x10u;
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

  *(a3 + 1) = self->_didCompleteWithError;
  *(a3 + 50) |= 1u;
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
  *(a3 + 4) = self->_numberOfRetries;
  *(a3 + 50) |= 8u;
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
  *(a3 + 3) = self->_numberOfRedirects;
  *(a3 + 50) |= 4u;
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
  *(a3 + 2) = self->_error;
  *(a3 + 50) |= 2u;
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
  *(a3 + 7) = self->_underlyingError;
  *(a3 + 50) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

LABEL_31:
    *(a3 + 21) = self->_taskType;
    *(a3 + 50) |= 0x200u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_30:
  *(a3 + 8) = self->_underlyingErrorDomain;
  *(a3 + 50) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((has & 0x400) != 0)
  {
LABEL_14:
    *(a3 + 96) = self->_isBackground;
    *(a3 + 50) |= 0x400u;
  }

LABEL_15:
  if ([(AWDCFNetworkTaskMetrics *)self transactionMetricsCount])
  {
    [a3 clearTransactionMetrics];
    v6 = [(AWDCFNetworkTaskMetrics *)self transactionMetricsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addTransactionMetrics:{-[AWDCFNetworkTaskMetrics transactionMetricsAtIndex:](self, "transactionMetricsAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((v9 & 0x100) != 0)
  {
    *(a3 + 20) = self->_schedulingTier;
    *(a3 + 50) |= 0x100u;
    v9 = self->_has;
  }

  if ((v9 & 0x800) != 0)
  {
    *(a3 + 97) = self->_unused;
    *(a3 + 50) |= 0x800u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_timestamp;
    *(v5 + 100) |= 0x20u;
  }

  *(v6 + 72) = [(NSString *)self->_activityUUID copyWithZone:a3];
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

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 50);
    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_timestamp != *(a3 + 6))
      {
        goto LABEL_70;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_70;
    }

    activityUUID = self->_activityUUID;
    if (activityUUID | *(a3 + 9))
    {
      v5 = [(NSString *)activityUUID isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 50);
    if ((has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_taskResume != *(a3 + 5))
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
      if ((v9 & 1) == 0 || self->_didCompleteWithError != *(a3 + 1))
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
      if ((v9 & 8) == 0 || self->_numberOfRetries != *(a3 + 4))
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
      if ((v9 & 4) == 0 || self->_numberOfRedirects != *(a3 + 3))
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
      if ((v9 & 2) == 0 || self->_error != *(a3 + 2))
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
      if ((v9 & 0x40) == 0 || self->_underlyingError != *(a3 + 7))
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
      if ((v9 & 0x80) == 0 || self->_underlyingErrorDomain != *(a3 + 8))
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
      if ((*(a3 + 50) & 0x200) == 0 || self->_taskType != *(a3 + 21))
      {
        goto LABEL_70;
      }
    }

    else if ((*(a3 + 50) & 0x200) != 0)
    {
      goto LABEL_70;
    }

    if ((has & 0x400) != 0)
    {
      if ((*(a3 + 50) & 0x400) == 0)
      {
        goto LABEL_70;
      }

      v11 = *(a3 + 96);
      if (self->_isBackground)
      {
        if ((*(a3 + 96) & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      else if (*(a3 + 96))
      {
        goto LABEL_70;
      }
    }

    else if ((*(a3 + 50) & 0x400) != 0)
    {
      goto LABEL_70;
    }

    transactionMetrics = self->_transactionMetrics;
    if (transactionMetrics | *(a3 + 11))
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
      if ((*(a3 + 50) & 0x100) == 0 || self->_schedulingTier != *(a3 + 20))
      {
        goto LABEL_70;
      }
    }

    else if ((*(a3 + 50) & 0x100) != 0)
    {
      goto LABEL_70;
    }

    LOBYTE(v5) = (*(a3 + 50) & 0x800) == 0;
    if ((has & 0x800) != 0)
    {
      if ((*(a3 + 50) & 0x800) != 0)
      {
        if (self->_unused)
        {
          if (*(a3 + 97))
          {
            goto LABEL_73;
          }
        }

        else if (!*(a3 + 97))
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

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  if ((*(a3 + 50) & 0x20) != 0)
  {
    self->_timestamp = *(a3 + 6);
    *&self->_has |= 0x20u;
  }

  if (*(a3 + 9))
  {
    [(AWDCFNetworkTaskMetrics *)self setActivityUUID:?];
  }

  v5 = *(a3 + 50);
  if ((v5 & 0x10) != 0)
  {
    self->_taskResume = *(a3 + 5);
    *&self->_has |= 0x10u;
    v5 = *(a3 + 50);
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

  self->_didCompleteWithError = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 50);
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
  self->_numberOfRetries = *(a3 + 4);
  *&self->_has |= 8u;
  v5 = *(a3 + 50);
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
  self->_numberOfRedirects = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 50);
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
  self->_error = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 50);
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
  self->_underlyingError = *(a3 + 7);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 50);
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
  self->_underlyingErrorDomain = *(a3 + 8);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 50);
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
  self->_taskType = *(a3 + 21);
  *&self->_has |= 0x200u;
  if ((*(a3 + 50) & 0x400) != 0)
  {
LABEL_14:
    self->_isBackground = *(a3 + 96);
    *&self->_has |= 0x400u;
  }

LABEL_15:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a3 + 11);
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

  v11 = *(a3 + 50);
  if ((v11 & 0x100) != 0)
  {
    self->_schedulingTier = *(a3 + 20);
    *&self->_has |= 0x100u;
    v11 = *(a3 + 50);
  }

  if ((v11 & 0x800) != 0)
  {
    self->_unused = *(a3 + 97);
    *&self->_has |= 0x800u;
  }

  v12 = *MEMORY[0x29EDCA608];
}

@end