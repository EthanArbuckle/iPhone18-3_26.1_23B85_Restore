@interface AppTelemetryStuckStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasItemPendingReconciliationIsLocked:(BOOL)locked;
- (void)setHasItemPendingReconciliationIsLockedInDB:(BOOL)b;
- (void)setHasItemPendingReconciliationJobCode:(BOOL)code;
- (void)setHasItemPendingReconciliationJobSchedulingState:(BOOL)state;
- (void)setHasItemPendingScanningDiskEnumerationStatus:(BOOL)status;
- (void)setHasItemPendingScanningDiskHasMultiplePagesEnumeration:(BOOL)enumeration;
- (void)setHasItemPendingScanningDiskNumberOfChildrenNotPendingReconciliation:(BOOL)reconciliation;
- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingReconciliation:(BOOL)reconciliation;
- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingRejection:(BOOL)rejection;
- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncDown:(BOOL)down;
- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion:(BOOL)deletion;
- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent:(BOOL)reparent;
- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncUp:(BOOL)up;
- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion:(BOOL)deletion;
- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent:(BOOL)reparent;
- (void)setHasItemPendingScanningProviderEnumerationStatus:(BOOL)status;
- (void)setHasItemPendingScanningProviderHasMultiplePagesEnumeration:(BOOL)enumeration;
- (void)setHasItemPendingScanningProviderNumberOfChildren:(BOOL)children;
- (void)setHasItemPendingScanningProviderNumberOfChildrenFailingCreation:(BOOL)creation;
- (void)setHasItemPendingScanningProviderNumberOfChildrenPendingCreation:(BOOL)creation;
- (void)setHasItemPendingScanningProviderRemovalOfDatalessBitStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation AppTelemetryStuckStatus

- (void)setHasItemPendingReconciliationIsLocked:(BOOL)locked
{
  if (locked)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasItemPendingReconciliationIsLockedInDB:(BOOL)b
{
  if (b)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasItemPendingReconciliationJobCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasItemPendingReconciliationJobSchedulingState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasItemPendingScanningDiskEnumerationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasItemPendingScanningDiskHasMultiplePagesEnumeration:(BOOL)enumeration
{
  if (enumeration)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingReconciliation:(BOOL)reconciliation
{
  if (reconciliation)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenNotPendingReconciliation:(BOOL)reconciliation
{
  if (reconciliation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion:(BOOL)deletion
{
  if (deletion)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion:(BOOL)deletion
{
  if (deletion)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent:(BOOL)reparent
{
  if (reparent)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncUp:(BOOL)up
{
  if (up)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent:(BOOL)reparent
{
  if (reparent)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingSyncDown:(BOOL)down
{
  if (down)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasItemPendingScanningDiskNumberOfChildrenPendingRejection:(BOOL)rejection
{
  if (rejection)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasItemPendingScanningProviderEnumerationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasItemPendingScanningProviderHasMultiplePagesEnumeration:(BOOL)enumeration
{
  if (enumeration)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasItemPendingScanningProviderNumberOfChildren:(BOOL)children
{
  if (children)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasItemPendingScanningProviderNumberOfChildrenPendingCreation:(BOOL)creation
{
  if (creation)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasItemPendingScanningProviderNumberOfChildrenFailingCreation:(BOOL)creation
{
  if (creation)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasItemPendingScanningProviderRemovalOfDatalessBitStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AppTelemetryStuckStatus;
  v4 = [(AppTelemetryStuckStatus *)&v8 description];
  dictionaryRepresentation = [(AppTelemetryStuckStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_itemPendingReconciliationIsLocked];
    [dictionary setObject:v7 forKey:@"itemPendingReconciliationIsLocked"];

    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_itemPendingReconciliationIsLockedInDB];
  [dictionary setObject:v8 forKey:@"itemPendingReconciliationIsLockedInDB"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingReconciliationJobCode];
  [dictionary setObject:v9 forKey:@"itemPendingReconciliationJobCode"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingReconciliationJobSchedulingState];
  [dictionary setObject:v10 forKey:@"itemPendingReconciliationJobSchedulingState"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingReconciliationJobBlockingCode];
  [dictionary setObject:v11 forKey:@"itemPendingReconciliationJobBlockingCode"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskEnumerationStatus];
  [dictionary setObject:v12 forKey:@"itemPendingScanningDiskEnumerationStatus"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_itemPendingScanningDiskHasMultiplePagesEnumeration];
  [dictionary setObject:v13 forKey:@"itemPendingScanningDiskHasMultiplePagesEnumeration"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation];
  [dictionary setObject:v14 forKey:@"itemPendingScanningDiskNumberOfChildrenPendingReconciliation"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation];
  [dictionary setObject:v15 forKey:@"itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion];
  [dictionary setObject:v16 forKey:@"itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion];
  [dictionary setObject:v17 forKey:@"itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent];
  [dictionary setObject:v18 forKey:@"itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp];
  [dictionary setObject:v19 forKey:@"itemPendingScanningDiskNumberOfChildrenPendingSyncUp"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent];
  [dictionary setObject:v20 forKey:@"itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown];
  [dictionary setObject:v21 forKey:@"itemPendingScanningDiskNumberOfChildrenPendingSyncDown"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningDiskNumberOfChildrenPendingRejection];
  [dictionary setObject:v22 forKey:@"itemPendingScanningDiskNumberOfChildrenPendingRejection"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningProviderEnumerationStatus];
  [dictionary setObject:v23 forKey:@"itemPendingScanningProviderEnumerationStatus"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_itemPendingScanningProviderHasMultiplePagesEnumeration];
  [dictionary setObject:v24 forKey:@"itemPendingScanningProviderHasMultiplePagesEnumeration"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v25 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningProviderNumberOfChildren];
  [dictionary setObject:v25 forKey:@"itemPendingScanningProviderNumberOfChildren"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v26 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningProviderNumberOfChildrenPendingCreation];
  [dictionary setObject:v26 forKey:@"itemPendingScanningProviderNumberOfChildrenPendingCreation"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  v27 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningProviderNumberOfChildrenFailingCreation];
  [dictionary setObject:v27 forKey:@"itemPendingScanningProviderNumberOfChildrenFailingCreation"];

  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_23:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_itemPendingScanningProviderRemovalOfDatalessBitStatus];
    [dictionary setObject:v5 forKey:@"itemPendingScanningProviderRemovalOfDatalessBitStatus"];
  }

LABEL_24:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    itemPendingReconciliationIsLocked = self->_itemPendingReconciliationIsLocked;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  itemPendingReconciliationIsLockedInDB = self->_itemPendingReconciliationIsLockedInDB;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  itemPendingReconciliationJobCode = self->_itemPendingReconciliationJobCode;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  itemPendingReconciliationJobSchedulingState = self->_itemPendingReconciliationJobSchedulingState;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  itemPendingReconciliationJobBlockingCode = self->_itemPendingReconciliationJobBlockingCode;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  itemPendingScanningDiskEnumerationStatus = self->_itemPendingScanningDiskEnumerationStatus;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  itemPendingScanningDiskHasMultiplePagesEnumeration = self->_itemPendingScanningDiskHasMultiplePagesEnumeration;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  itemPendingScanningDiskNumberOfChildrenPendingReconciliation = self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation = self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  itemPendingScanningDiskNumberOfChildrenPendingSyncUp = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  itemPendingScanningDiskNumberOfChildrenPendingSyncDown = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  itemPendingScanningDiskNumberOfChildrenPendingRejection = self->_itemPendingScanningDiskNumberOfChildrenPendingRejection;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  itemPendingScanningProviderEnumerationStatus = self->_itemPendingScanningProviderEnumerationStatus;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  itemPendingScanningProviderHasMultiplePagesEnumeration = self->_itemPendingScanningProviderHasMultiplePagesEnumeration;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  itemPendingScanningProviderNumberOfChildren = self->_itemPendingScanningProviderNumberOfChildren;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  itemPendingScanningProviderNumberOfChildrenPendingCreation = self->_itemPendingScanningProviderNumberOfChildrenPendingCreation;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  itemPendingScanningProviderNumberOfChildrenFailingCreation = self->_itemPendingScanningProviderNumberOfChildrenFailingCreation;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_23:
    itemPendingScanningProviderRemovalOfDatalessBitStatus = self->_itemPendingScanningProviderRemovalOfDatalessBitStatus;
    PBDataWriterWriteInt64Field();
  }

LABEL_24:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    toCopy[152] = self->_itemPendingReconciliationIsLocked;
    *(toCopy + 39) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  toCopy[153] = self->_itemPendingReconciliationIsLockedInDB;
  *(toCopy + 39) |= 0x80000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(toCopy + 2) = self->_itemPendingReconciliationJobCode;
  *(toCopy + 39) |= 2u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 3) = self->_itemPendingReconciliationJobSchedulingState;
  *(toCopy + 39) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(toCopy + 1) = self->_itemPendingReconciliationJobBlockingCode;
  *(toCopy + 39) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 4) = self->_itemPendingScanningDiskEnumerationStatus;
  *(toCopy + 39) |= 8u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[154] = self->_itemPendingScanningDiskHasMultiplePagesEnumeration;
  *(toCopy + 39) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 6) = self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation;
  *(toCopy + 39) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 5) = self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation;
  *(toCopy + 39) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 12) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion;
  *(toCopy + 39) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 9) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion;
  *(toCopy + 39) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 13) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent;
  *(toCopy + 39) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 11) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp;
  *(toCopy + 39) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 10) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent;
  *(toCopy + 39) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 8) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown;
  *(toCopy + 39) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 7) = self->_itemPendingScanningDiskNumberOfChildrenPendingRejection;
  *(toCopy + 39) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 14) = self->_itemPendingScanningProviderEnumerationStatus;
  *(toCopy + 39) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  toCopy[155] = self->_itemPendingScanningProviderHasMultiplePagesEnumeration;
  *(toCopy + 39) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 15) = self->_itemPendingScanningProviderNumberOfChildren;
  *(toCopy + 39) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 17) = self->_itemPendingScanningProviderNumberOfChildrenPendingCreation;
  *(toCopy + 39) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  *(toCopy + 16) = self->_itemPendingScanningProviderNumberOfChildrenFailingCreation;
  *(toCopy + 39) |= 0x8000u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_23:
    *(toCopy + 18) = self->_itemPendingScanningProviderRemovalOfDatalessBitStatus;
    *(toCopy + 39) |= 0x20000u;
  }

LABEL_24:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(result + 152) = self->_itemPendingReconciliationIsLocked;
    *(result + 39) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 153) = self->_itemPendingReconciliationIsLockedInDB;
  *(result + 39) |= 0x80000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 2) = self->_itemPendingReconciliationJobCode;
  *(result + 39) |= 2u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 3) = self->_itemPendingReconciliationJobSchedulingState;
  *(result + 39) |= 4u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 1) = self->_itemPendingReconciliationJobBlockingCode;
  *(result + 39) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 4) = self->_itemPendingScanningDiskEnumerationStatus;
  *(result + 39) |= 8u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 154) = self->_itemPendingScanningDiskHasMultiplePagesEnumeration;
  *(result + 39) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 6) = self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation;
  *(result + 39) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 5) = self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation;
  *(result + 39) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 12) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion;
  *(result + 39) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 9) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion;
  *(result + 39) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 13) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent;
  *(result + 39) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 11) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp;
  *(result + 39) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 10) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent;
  *(result + 39) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 8) = self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown;
  *(result + 39) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 7) = self->_itemPendingScanningDiskNumberOfChildrenPendingRejection;
  *(result + 39) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 14) = self->_itemPendingScanningProviderEnumerationStatus;
  *(result + 39) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 155) = self->_itemPendingScanningProviderHasMultiplePagesEnumeration;
  *(result + 39) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 15) = self->_itemPendingScanningProviderNumberOfChildren;
  *(result + 39) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_21:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 17) = self->_itemPendingScanningProviderNumberOfChildrenPendingCreation;
  *(result + 39) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_22:
    if ((*&has & 0x20000) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_45:
  *(result + 16) = self->_itemPendingScanningProviderNumberOfChildrenFailingCreation;
  *(result + 39) |= 0x8000u;
  if ((*&self->_has & 0x20000) == 0)
  {
    return result;
  }

LABEL_23:
  *(result + 18) = self->_itemPendingScanningProviderRemovalOfDatalessBitStatus;
  *(result + 39) |= 0x20000u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_124;
  }

  has = self->_has;
  v6 = *(equalCopy + 39);
  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_124;
    }

    v7 = *(equalCopy + 152);
    if (self->_itemPendingReconciliationIsLocked)
    {
      if ((*(equalCopy + 152) & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else if (*(equalCopy + 152))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    v8 = *(equalCopy + 153);
    if (self->_itemPendingReconciliationIsLockedInDB)
    {
      if ((*(equalCopy + 153) & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else if (*(equalCopy + 153))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_itemPendingReconciliationJobCode != *(equalCopy + 2))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_itemPendingReconciliationJobSchedulingState != *(equalCopy + 3))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_124;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_itemPendingReconciliationJobBlockingCode != *(equalCopy + 1))
    {
      goto LABEL_124;
    }
  }

  else if (v6)
  {
    goto LABEL_124;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_itemPendingScanningDiskEnumerationStatus != *(equalCopy + 4))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_124;
    }

    v9 = *(equalCopy + 154);
    if (self->_itemPendingScanningDiskHasMultiplePagesEnumeration)
    {
      if ((*(equalCopy + 154) & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else if (*(equalCopy + 154))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation != *(equalCopy + 6))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation != *(equalCopy + 5))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion != *(equalCopy + 12))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion != *(equalCopy + 9))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent != *(equalCopy + 13))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp != *(equalCopy + 11))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent != *(equalCopy + 10))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown != *(equalCopy + 8))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_itemPendingScanningDiskNumberOfChildrenPendingRejection != *(equalCopy + 7))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_itemPendingScanningProviderEnumerationStatus != *(equalCopy + 14))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x200000) == 0)
  {
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

LABEL_124:
    v11 = 0;
    goto LABEL_125;
  }

  if ((v6 & 0x200000) == 0)
  {
    goto LABEL_124;
  }

  v10 = *(equalCopy + 155);
  if (self->_itemPendingScanningProviderHasMultiplePagesEnumeration)
  {
    if ((*(equalCopy + 155) & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  else if (*(equalCopy + 155))
  {
    goto LABEL_124;
  }

LABEL_98:
  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_itemPendingScanningProviderNumberOfChildren != *(equalCopy + 15))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_itemPendingScanningProviderNumberOfChildrenPendingCreation != *(equalCopy + 17))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_itemPendingScanningProviderNumberOfChildrenFailingCreation != *(equalCopy + 16))
    {
      goto LABEL_124;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_124;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_itemPendingScanningProviderRemovalOfDatalessBitStatus != *(equalCopy + 18))
    {
      goto LABEL_124;
    }

    v11 = 1;
  }

  else
  {
    v11 = (v6 & 0x20000) == 0;
  }

LABEL_125:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v3 = 2654435761 * self->_itemPendingReconciliationIsLocked;
    if ((*&has & 0x80000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_itemPendingReconciliationIsLockedInDB;
      if ((*&has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_itemPendingReconciliationJobCode;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_itemPendingReconciliationJobSchedulingState;
    if (*&has)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if (*&has)
  {
LABEL_6:
    v7 = 2654435761 * self->_itemPendingReconciliationJobBlockingCode;
    if ((*&has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_itemPendingScanningDiskEnumerationStatus;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_itemPendingScanningDiskHasMultiplePagesEnumeration;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x200) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent;
  if ((*&has & 0x80) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x40) != 0)
  {
    v18 = 2654435761 * self->_itemPendingScanningDiskNumberOfChildrenPendingRejection;
    if ((*&has & 0x2000) != 0)
    {
LABEL_34:
      v19 = 2654435761 * self->_itemPendingScanningProviderEnumerationStatus;
      if ((*&has & 0x200000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_35:
    v20 = 2654435761 * self->_itemPendingScanningProviderHasMultiplePagesEnumeration;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_36:
    v21 = 2654435761 * self->_itemPendingScanningProviderNumberOfChildren;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_37:
    v22 = 2654435761 * self->_itemPendingScanningProviderNumberOfChildrenPendingCreation;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    v23 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_39;
    }

LABEL_46:
    v24 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
  }

LABEL_44:
  v22 = 0;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  v23 = 2654435761 * self->_itemPendingScanningProviderNumberOfChildrenFailingCreation;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_46;
  }

LABEL_39:
  v24 = 2654435761 * self->_itemPendingScanningProviderRemovalOfDatalessBitStatus;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x40000) != 0)
  {
    self->_itemPendingReconciliationIsLocked = *(fromCopy + 152);
    *&self->_has |= 0x40000u;
    v5 = *(fromCopy + 39);
    if ((v5 & 0x80000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  self->_itemPendingReconciliationIsLockedInDB = *(fromCopy + 153);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 39);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_itemPendingReconciliationJobCode = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 39);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_itemPendingReconciliationJobSchedulingState = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 39);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_itemPendingReconciliationJobBlockingCode = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 39);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_itemPendingScanningDiskEnumerationStatus = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x100000) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_itemPendingScanningDiskHasMultiplePagesEnumeration = *(fromCopy + 154);
  *&self->_has |= 0x100000u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_itemPendingScanningDiskNumberOfChildrenPendingReconciliation = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_itemPendingScanningDiskNumberOfChildrenNotPendingReconciliation = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpDeletion = *(fromCopy + 12);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownDeletion = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUpReparent = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_itemPendingScanningDiskNumberOfChildrenPendingSyncUp = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDownReparent = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_itemPendingScanningDiskNumberOfChildrenPendingSyncDown = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_itemPendingScanningDiskNumberOfChildrenPendingRejection = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_itemPendingScanningProviderEnumerationStatus = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_itemPendingScanningProviderHasMultiplePagesEnumeration = *(fromCopy + 155);
  *&self->_has |= 0x200000u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x4000) == 0)
  {
LABEL_20:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_itemPendingScanningProviderNumberOfChildren = *(fromCopy + 15);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x10000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_itemPendingScanningProviderNumberOfChildrenPendingCreation = *(fromCopy + 17);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 39);
  if ((v5 & 0x8000) == 0)
  {
LABEL_22:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_47:
  self->_itemPendingScanningProviderNumberOfChildrenFailingCreation = *(fromCopy + 16);
  *&self->_has |= 0x8000u;
  if ((*(fromCopy + 39) & 0x20000) != 0)
  {
LABEL_23:
    self->_itemPendingScanningProviderRemovalOfDatalessBitStatus = *(fromCopy + 18);
    *&self->_has |= 0x20000u;
  }

LABEL_24:
}

@end