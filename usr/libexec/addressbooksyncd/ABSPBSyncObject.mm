@interface ABSPBSyncObject
- (ABSPBSyncObject)initWithMemo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSequenceNumber:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBSyncObject

- (void)setHasSequenceNumber:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = ABSPBSyncObject;
  v3 = [(ABSPBSyncObject *)&v7 description];
  v4 = [(ABSPBSyncObject *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  contactWrapper = self->_contactWrapper;
  if (contactWrapper)
  {
    v5 = [(ABSPBContactWrapper *)contactWrapper dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"contactWrapper"];
  }

  deleteWrapper = self->_deleteWrapper;
  if (deleteWrapper)
  {
    v7 = [(ABSPBDeleteWrapper *)deleteWrapper dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"deleteWrapper"];
  }

  favoritesSyncObject = self->_favoritesSyncObject;
  if (favoritesSyncObject)
  {
    v9 = [(ABSPBFavoritesSyncObject *)favoritesSyncObject dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"favoritesSyncObject"];
  }

  countValidationObject = self->_countValidationObject;
  if (countValidationObject)
  {
    v11 = [(ABSPBCountValidationObject *)countValidationObject dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"countValidationObject"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v13 = [NSNumber numberWithInt:self->_sequenceNumber];
    [v3 setObject:v13 forKey:@"sequenceNumber"];

    has = self->_has;
  }

  if (has)
  {
    v14 = [NSNumber numberWithDouble:self->_sendTimestamp];
    [v3 setObject:v14 forKey:@"sendTimestamp"];
  }

  accountsSyncObject = self->_accountsSyncObject;
  if (accountsSyncObject)
  {
    v16 = [(ABSPBAccountsSyncObject *)accountsSyncObject dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"accountsSyncObject"];
  }

  containerSyncObject = self->_containerSyncObject;
  if (containerSyncObject)
  {
    v18 = [(ABSPBContainerAttributes *)containerSyncObject dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"containerSyncObject"];
  }

  lmaSyncData = self->_lmaSyncData;
  if (lmaSyncData)
  {
    v20 = [(ABSPBLimitedAccessSyncData *)lmaSyncData dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"lmaSyncData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_contactWrapper)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_deleteWrapper)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_favoritesSyncObject)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_countValidationObject)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    sendTimestamp = self->_sendTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_accountsSyncObject)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_containerSyncObject)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_lmaSyncData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_contactWrapper)
  {
    [v4 setContactWrapper:?];
    v4 = v6;
  }

  if (self->_deleteWrapper)
  {
    [v6 setDeleteWrapper:?];
    v4 = v6;
  }

  if (self->_favoritesSyncObject)
  {
    [v6 setFavoritesSyncObject:?];
    v4 = v6;
  }

  if (self->_countValidationObject)
  {
    [v6 setCountValidationObject:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 18) = self->_sequenceNumber;
    *(v4 + 76) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_sendTimestamp;
    *(v4 + 76) |= 1u;
  }

  if (self->_accountsSyncObject)
  {
    [v6 setAccountsSyncObject:?];
    v4 = v6;
  }

  if (self->_containerSyncObject)
  {
    [v6 setContainerSyncObject:?];
    v4 = v6;
  }

  if (self->_lmaSyncData)
  {
    [v6 setLmaSyncData:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ABSPBContactWrapper *)self->_contactWrapper copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(ABSPBDeleteWrapper *)self->_deleteWrapper copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(ABSPBFavoritesSyncObject *)self->_favoritesSyncObject copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(ABSPBCountValidationObject *)self->_countValidationObject copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 18) = self->_sequenceNumber;
    *(v5 + 76) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = *&self->_sendTimestamp;
    *(v5 + 76) |= 1u;
  }

  v15 = [(ABSPBAccountsSyncObject *)self->_accountsSyncObject copyWithZone:a3];
  v16 = v5[2];
  v5[2] = v15;

  v17 = [(ABSPBContainerAttributes *)self->_containerSyncObject copyWithZone:a3];
  v18 = v5[4];
  v5[4] = v17;

  v19 = [(ABSPBLimitedAccessSyncData *)self->_lmaSyncData copyWithZone:a3];
  v20 = v5[8];
  v5[8] = v19;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  contactWrapper = self->_contactWrapper;
  if (contactWrapper | *(v4 + 3))
  {
    if (![(ABSPBContactWrapper *)contactWrapper isEqual:?])
    {
      goto LABEL_26;
    }
  }

  deleteWrapper = self->_deleteWrapper;
  if (deleteWrapper | *(v4 + 6))
  {
    if (![(ABSPBDeleteWrapper *)deleteWrapper isEqual:?])
    {
      goto LABEL_26;
    }
  }

  favoritesSyncObject = self->_favoritesSyncObject;
  if (favoritesSyncObject | *(v4 + 7))
  {
    if (![(ABSPBFavoritesSyncObject *)favoritesSyncObject isEqual:?])
    {
      goto LABEL_26;
    }
  }

  countValidationObject = self->_countValidationObject;
  if (countValidationObject | *(v4 + 5))
  {
    if (![(ABSPBCountValidationObject *)countValidationObject isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v9 = *(v4 + 76);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 76) & 2) == 0 || self->_sequenceNumber != *(v4 + 18))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 76) & 2) != 0)
  {
LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 76) & 1) == 0 || self->_sendTimestamp != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_26;
  }

  accountsSyncObject = self->_accountsSyncObject;
  if (accountsSyncObject | *(v4 + 2) && ![(ABSPBAccountsSyncObject *)accountsSyncObject isEqual:?])
  {
    goto LABEL_26;
  }

  containerSyncObject = self->_containerSyncObject;
  if (containerSyncObject | *(v4 + 4))
  {
    if (![(ABSPBContainerAttributes *)containerSyncObject isEqual:?])
    {
      goto LABEL_26;
    }
  }

  lmaSyncData = self->_lmaSyncData;
  if (lmaSyncData | *(v4 + 8))
  {
    v13 = [(ABSPBLimitedAccessSyncData *)lmaSyncData isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_27:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(ABSPBContactWrapper *)self->_contactWrapper hash];
  v4 = [(ABSPBDeleteWrapper *)self->_deleteWrapper hash];
  v5 = [(ABSPBFavoritesSyncObject *)self->_favoritesSyncObject hash];
  v6 = [(ABSPBCountValidationObject *)self->_countValidationObject hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_sequenceNumber;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v9 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  sendTimestamp = self->_sendTimestamp;
  if (sendTimestamp < 0.0)
  {
    sendTimestamp = -sendTimestamp;
  }

  *v7.i64 = floor(sendTimestamp + 0.5);
  v11 = (sendTimestamp - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_9:
  v14 = v4 ^ v3 ^ v5 ^ v6;
  v15 = v9 ^ v13 ^ [(ABSPBAccountsSyncObject *)self->_accountsSyncObject hash];
  v16 = v14 ^ v15 ^ [(ABSPBContainerAttributes *)self->_containerSyncObject hash];
  return v16 ^ [(ABSPBLimitedAccessSyncData *)self->_lmaSyncData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  contactWrapper = self->_contactWrapper;
  v6 = *(v4 + 3);
  v20 = v4;
  if (contactWrapper)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ABSPBContactWrapper *)contactWrapper mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ABSPBSyncObject *)self setContactWrapper:?];
  }

  v4 = v20;
LABEL_7:
  deleteWrapper = self->_deleteWrapper;
  v8 = *(v4 + 6);
  if (deleteWrapper)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(ABSPBDeleteWrapper *)deleteWrapper mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(ABSPBSyncObject *)self setDeleteWrapper:?];
  }

  v4 = v20;
LABEL_13:
  favoritesSyncObject = self->_favoritesSyncObject;
  v10 = *(v4 + 7);
  if (favoritesSyncObject)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(ABSPBFavoritesSyncObject *)favoritesSyncObject mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(ABSPBSyncObject *)self setFavoritesSyncObject:?];
  }

  v4 = v20;
LABEL_19:
  countValidationObject = self->_countValidationObject;
  v12 = *(v4 + 5);
  if (countValidationObject)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(ABSPBCountValidationObject *)countValidationObject mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(ABSPBSyncObject *)self setCountValidationObject:?];
  }

  v4 = v20;
LABEL_25:
  v13 = *(v4 + 76);
  if ((v13 & 2) != 0)
  {
    self->_sequenceNumber = *(v4 + 18);
    *&self->_has |= 2u;
    v13 = *(v4 + 76);
  }

  if (v13)
  {
    self->_sendTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  accountsSyncObject = self->_accountsSyncObject;
  v15 = *(v4 + 2);
  if (accountsSyncObject)
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    [(ABSPBAccountsSyncObject *)accountsSyncObject mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    [(ABSPBSyncObject *)self setAccountsSyncObject:?];
  }

  v4 = v20;
LABEL_35:
  containerSyncObject = self->_containerSyncObject;
  v17 = *(v4 + 4);
  if (containerSyncObject)
  {
    if (!v17)
    {
      goto LABEL_41;
    }

    [(ABSPBContainerAttributes *)containerSyncObject mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_41;
    }

    [(ABSPBSyncObject *)self setContainerSyncObject:?];
  }

  v4 = v20;
LABEL_41:
  lmaSyncData = self->_lmaSyncData;
  v19 = *(v4 + 8);
  if (lmaSyncData)
  {
    if (v19)
    {
      [(ABSPBLimitedAccessSyncData *)lmaSyncData mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(ABSPBSyncObject *)self setLmaSyncData:?];
  }

  _objc_release_x1();
}

- (ABSPBSyncObject)initWithMemo:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ABSPBSyncObject;
  v5 = [(ABSPBSyncObject *)&v11 init];
  if (v5)
  {
    [(ABSPBSyncObject *)v5 setSequenceNumber:+[ABSSyncObject sequenceNumber]];
    v6 = +[NSDate date];
    [v6 timeIntervalSinceReferenceDate];
    [(ABSPBSyncObject *)v5 setSendTimestamp:?];

    v7 = [(ABSPBSyncObject *)v5 sequenceNumber];
    v8 = [(ABSPBSyncObject *)v5 sequenceNumber];
    v9 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v13 = HIWORD(v7);
      v14 = 1024;
      v15 = v8;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "S_PKT_NUM: %04x_%04x (%{public}@)", buf, 0x18u);
    }
  }

  return v5;
}

@end