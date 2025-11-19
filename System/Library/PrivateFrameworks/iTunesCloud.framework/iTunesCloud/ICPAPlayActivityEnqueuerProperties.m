@interface ICPAPlayActivityEnqueuerProperties
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ICPAPlayActivityEnqueuerProperties

- (unint64_t)hash
{
  v3 = [(NSString *)self->_buildVersion hash];
  v4 = [(NSString *)self->_deviceGUID hash];
  v5 = [(NSString *)self->_deviceName hash];
  v6 = [(NSString *)self->_timeZoneName hash];
  if ((*&self->_has & 2) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = 2654435761 * self->_systemReleaseType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = 2654435761 * self->_sBEnabled;
  if (*&self->_has)
  {
LABEL_4:
    v9 = 2654435761u * self->_storeAccountID;
    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:
  v10 = [(NSString *)self->_storeFrontID hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_privateListeningEnabled;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(v4 + 2))
  {
    if (![(NSString *)buildVersion isEqual:?])
    {
      goto LABEL_35;
    }
  }

  deviceGUID = self->_deviceGUID;
  if (deviceGUID | *(v4 + 3))
  {
    if (![(NSString *)deviceGUID isEqual:?])
    {
      goto LABEL_35;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(v4 + 4))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName | *(v4 + 7))
  {
    if (![(NSString *)timeZoneName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  has = self->_has;
  v10 = *(v4 + 68);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_systemReleaseType != *(v4 + 12))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
    goto LABEL_35;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 68) & 8) == 0)
    {
      goto LABEL_35;
    }

    if (self->_sBEnabled)
    {
      if ((*(v4 + 65) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 65))
    {
      goto LABEL_35;
    }
  }

  else if ((*(v4 + 68) & 8) != 0)
  {
    goto LABEL_35;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_storeAccountID != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_35;
  }

  storeFrontID = self->_storeFrontID;
  if (storeFrontID | *(v4 + 5))
  {
    if (![(NSString *)storeFrontID isEqual:?])
    {
      goto LABEL_35;
    }

    has = self->_has;
    v10 = *(v4 + 68);
  }

  v12 = (v10 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v10 & 4) != 0)
    {
      if (self->_privateListeningEnabled)
      {
        if (*(v4 + 64))
        {
          goto LABEL_38;
        }
      }

      else if (!*(v4 + 64))
      {
LABEL_38:
        v12 = 1;
        goto LABEL_36;
      }
    }

LABEL_35:
    v12 = 0;
  }

LABEL_36:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_buildVersion copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_deviceGUID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_deviceName copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_timeZoneName copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_systemReleaseType;
    *(v5 + 68) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 65) = self->_sBEnabled;
  *(v5 + 68) |= 8u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_storeAccountID;
    *(v5 + 68) |= 1u;
  }

LABEL_5:
  v15 = [(NSString *)self->_storeFrontID copyWithZone:a3];
  v16 = *(v5 + 40);
  *(v5 + 40) = v15;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_privateListeningEnabled;
    *(v5 + 68) |= 4u;
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deviceGUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_timeZoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteBOOLField();
  v4 = v6;
  if (*&self->_has)
  {
LABEL_12:
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

LABEL_13:
  if (self->_storeFrontID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v3 setObject:buildVersion forKey:@"buildVersion"];
  }

  deviceGUID = self->_deviceGUID;
  if (deviceGUID)
  {
    [v4 setObject:deviceGUID forKey:@"deviceGUID"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v4 setObject:deviceName forKey:@"deviceName"];
  }

  timeZoneName = self->_timeZoneName;
  if (timeZoneName)
  {
    [v4 setObject:timeZoneName forKey:@"timeZoneName"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_systemReleaseType];
    [v4 setObject:v14 forKey:@"systemReleaseType"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_sBEnabled];
  [v4 setObject:v15 forKey:@"SBEnabled"];

  if (*&self->_has)
  {
LABEL_12:
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_storeAccountID];
    [v4 setObject:v10 forKey:@"storeAccountID"];
  }

LABEL_13:
  storeFrontID = self->_storeFrontID;
  if (storeFrontID)
  {
    [v4 setObject:storeFrontID forKey:@"storeFrontID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_privateListeningEnabled];
    [v4 setObject:v12 forKey:@"privateListeningEnabled"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPAPlayActivityEnqueuerProperties;
  v4 = [(ICPAPlayActivityEnqueuerProperties *)&v8 description];
  v5 = [(ICPAPlayActivityEnqueuerProperties *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end