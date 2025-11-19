@interface HALSchemaHALNearbyPersonalDevicesReported
- (BOOL)isEqual:(id)a3;
- (HALSchemaHALNearbyPersonalDevicesReported)initWithDictionary:(id)a3;
- (HALSchemaHALNearbyPersonalDevicesReported)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIMacCount:(BOOL)a3;
- (void)setHasIPadCount:(BOOL)a3;
- (void)setHasMacBookCount:(BOOL)a3;
- (void)setHasMacStudioCount:(BOOL)a3;
- (void)setHasWatchCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HALSchemaHALNearbyPersonalDevicesReported

- (HALSchemaHALNearbyPersonalDevicesReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HALSchemaHALNearbyPersonalDevicesReported;
  v5 = [(HALSchemaHALNearbyPersonalDevicesReported *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"iPhoneCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALNearbyPersonalDevicesReported setIPhoneCount:](v5, "setIPhoneCount:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"iPadCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALNearbyPersonalDevicesReported setIPadCount:](v5, "setIPadCount:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"watchCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALNearbyPersonalDevicesReported setWatchCount:](v5, "setWatchCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"macBookCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALNearbyPersonalDevicesReported setMacBookCount:](v5, "setMacBookCount:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"macStudioCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALNearbyPersonalDevicesReported setMacStudioCount:](v5, "setMacStudioCount:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"iMacCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALNearbyPersonalDevicesReported setIMacCount:](v5, "setIMacCount:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (HALSchemaHALNearbyPersonalDevicesReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HALSchemaHALNearbyPersonalDevicesReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HALSchemaHALNearbyPersonalDevicesReported *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HALSchemaHALNearbyPersonalDevicesReported iMacCount](self, "iMacCount")}];
    [v3 setObject:v7 forKeyedSubscript:@"iMacCount"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HALSchemaHALNearbyPersonalDevicesReported iPadCount](self, "iPadCount")}];
  [v3 setObject:v8 forKeyedSubscript:@"iPadCount"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HALSchemaHALNearbyPersonalDevicesReported iPhoneCount](self, "iPhoneCount")}];
  [v3 setObject:v9 forKeyedSubscript:@"iPhoneCount"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HALSchemaHALNearbyPersonalDevicesReported macBookCount](self, "macBookCount")}];
  [v3 setObject:v10 forKeyedSubscript:@"macBookCount"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HALSchemaHALNearbyPersonalDevicesReported macStudioCount](self, "macStudioCount")}];
  [v3 setObject:v11 forKeyedSubscript:@"macStudioCount"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HALSchemaHALNearbyPersonalDevicesReported watchCount](self, "watchCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"watchCount"];
  }

LABEL_8:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_iPhoneCount;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_iPadCount;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_watchCount;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_macBookCount;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_macStudioCount;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_iMacCount;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (*&has)
  {
    iPhoneCount = self->_iPhoneCount;
    if (iPhoneCount != [v4 iPhoneCount])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_26;
  }

  if (v8)
  {
    iPadCount = self->_iPadCount;
    if (iPadCount != [v4 iPadCount])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_26;
  }

  if (v10)
  {
    watchCount = self->_watchCount;
    if (watchCount != [v4 watchCount])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_26;
  }

  if (v12)
  {
    macBookCount = self->_macBookCount;
    if (macBookCount != [v4 macBookCount])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_26;
  }

  if (v14)
  {
    macStudioCount = self->_macStudioCount;
    if (macStudioCount == [v4 macStudioCount])
    {
      has = self->_has;
      v6 = v4[32];
      goto LABEL_22;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

LABEL_22:
  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_26;
  }

  if (v16)
  {
    iMacCount = self->_iMacCount;
    if (iMacCount != [v4 iMacCount])
    {
      goto LABEL_26;
    }
  }

  v18 = 1;
LABEL_27:

  return v18;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)setHasIMacCount:(BOOL)a3
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

- (void)setHasMacStudioCount:(BOOL)a3
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

- (void)setHasMacBookCount:(BOOL)a3
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

- (void)setHasWatchCount:(BOOL)a3
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

- (void)setHasIPadCount:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end