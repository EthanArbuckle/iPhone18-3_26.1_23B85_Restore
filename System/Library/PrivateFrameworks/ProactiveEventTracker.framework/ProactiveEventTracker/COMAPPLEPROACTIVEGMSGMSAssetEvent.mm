@interface COMAPPLEPROACTIVEGMSGMSAssetEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLoadReason:(id)a3;
- (int)StringAsLoadResult:(id)a3;
- (int)StringAsLoadType:(id)a3;
- (int)loadReason;
- (int)loadResult;
- (int)loadType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLoadReason:(BOOL)a3;
- (void)setHasLoadResult:(BOOL)a3;
- (void)setHasLoadType:(BOOL)a3;
- (void)setHasMemoryCostKB:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation COMAPPLEPROACTIVEGMSGMSAssetEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    self->_version = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 44);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 44) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_loadType = *(v4 + 10);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_loadReason = *(v4 + 8);
  *&self->_has |= 8u;
  v5 = *(v4 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_loadResult = *(v4 + 9);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 44);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_memoryCostKB = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 44))
  {
LABEL_7:
    self->_latencyMillis = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_8:
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_version;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_loadType;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_loadReason;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_loadResult;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v8 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_16:
    v12 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v12;
  }

LABEL_14:
  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v8 = 2654435761u * self->_memoryCostKB;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  latencyMillis = self->_latencyMillis;
  if (latencyMillis < 0.0)
  {
    latencyMillis = -latencyMillis;
  }

  *v2.i64 = floor(latencyMillis + 0.5);
  v10 = (latencyMillis - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_version != *(v4 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 44) & 0x20) == 0 || self->_loadType != *(v4 + 10))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 44) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_loadReason != *(v4 + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 44) & 0x10) == 0 || self->_loadResult != *(v4 + 9))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 44) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_memoryCostKB != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_latencyMillis != *(v4 + 1))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = self->_version;
    *(result + 44) |= 4u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_loadType;
  *(result + 44) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 8) = self->_loadReason;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 9) = self->_loadResult;
  *(result + 44) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 2) = self->_memoryCostKB;
  *(result + 44) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 1) = *&self->_latencyMillis;
  *(result + 44) |= 1u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = self->_version;
    *(v4 + 44) |= 4u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 10) = self->_loadType;
  *(v4 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v4 + 8) = self->_loadReason;
  *(v4 + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 9) = self->_loadResult;
  *(v4 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[2] = self->_memoryCostKB;
  *(v4 + 44) |= 2u;
  if (*&self->_has)
  {
LABEL_7:
    v4[1] = *&self->_latencyMillis;
    *(v4 + 44) |= 1u;
  }

LABEL_8:
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  loadType = self->_loadType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  loadReason = self->_loadReason;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  loadResult = self->_loadResult;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  memoryCostKB = self->_memoryCostKB;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_7:
    latencyMillis = self->_latencyMillis;
    PBDataWriterWriteDoubleField();
  }

LABEL_8:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_version];
    [v3 setObject:v7 forKey:@"version"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  loadType = self->_loadType;
  if (loadType >= 3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_loadType];
  }

  else
  {
    v9 = off_1E86C2D28[loadType];
  }

  [v3 setObject:v9 forKey:@"loadType"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_16:
  loadReason = self->_loadReason;
  if (loadReason >= 5)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_loadReason];
  }

  else
  {
    v11 = off_1E86C2D40[loadReason];
  }

  [v3 setObject:v11 forKey:@"loadReason"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_20:
  loadResult = self->_loadResult;
  if (loadResult >= 5)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_loadResult];
  }

  else
  {
    v13 = off_1E86C2D68[loadResult];
  }

  [v3 setObject:v13 forKey:@"loadResult"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_24:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_memoryCostKB];
  [v3 setObject:v14 forKey:@"memoryCostKB"];

  if (*&self->_has)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latencyMillis];
    [v3 setObject:v5 forKey:@"latencyMillis"];
  }

LABEL_8:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSAssetEvent;
  v4 = [(COMAPPLEPROACTIVEGMSGMSAssetEvent *)&v8 description];
  v5 = [(COMAPPLEPROACTIVEGMSGMSAssetEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasMemoryCostKB:(BOOL)a3
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

- (int)StringAsLoadResult:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GMS_LOAD_RESULT_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_RESULT_LOADED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_RESULT_UNLOADED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_RESULT_LOAD_FAILURE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_RESULT_UNLOAD_FAILURE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLoadResult:(BOOL)a3
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

- (int)loadResult
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_loadResult;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsLoadReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GMS_LOAD_REASON_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_REASON_USER_INITIATED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_REASON_POLICY_CHANGE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_REASON_MEMORY_BUDGET_PRESSURE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_REASON_ACQUISITION_ERROR"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLoadReason:(BOOL)a3
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

- (int)loadReason
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_loadReason;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsLoadType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GMS_LOAD_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_TYPE_LOAD"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GMS_LOAD_TYPE_UNLOAD"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLoadType:(BOOL)a3
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

- (int)loadType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_loadType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasVersion:(BOOL)a3
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

@end