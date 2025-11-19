@interface NETSchemaNETSessionConnectionNetwork
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETSessionConnectionNetwork)initWithDictionary:(id)a3;
- (NETSchemaNETSessionConnectionNetwork)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAttempCount:(BOOL)a3;
- (void)setHasClearChannelAssessmentScore:(BOOL)a3;
- (void)setHasConnectionEstablishmentTime:(BOOL)a3;
- (void)setHasConnectionStartToEstablishmentTime:(BOOL)a3;
- (void)setHasConnectionStartToTLSHandshake:(BOOL)a3;
- (void)setHasDnsResolutionTime:(BOOL)a3;
- (void)setHasFirstByteTime:(BOOL)a3;
- (void)setHasIsCaptive:(BOOL)a3;
- (void)setHasRssi:(BOOL)a3;
- (void)setHasSnr:(BOOL)a3;
- (void)setHasStartToDNSResolution:(BOOL)a3;
- (void)setHasTlsHandshakeTime:(BOOL)a3;
- (void)setHasTlsVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETSessionConnectionNetwork

- (NETSchemaNETSessionConnectionNetwork)initWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = NETSchemaNETSessionConnectionNetwork;
  v5 = [(NETSchemaNETSessionConnectionNetwork *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"carrierName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setCarrierName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"connectionMethod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setConnectionMethod:](v5, "setConnectionMethod:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"primarySubflowInterfaceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setPrimarySubflowInterfaceName:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"isCaptive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setIsCaptive:](v5, "setIsCaptive:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"rssi"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setRssi:?];
    }

    v13 = [v4 objectForKeyedSubscript:@"snr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setSnr:?];
    }

    v14 = [v4 objectForKeyedSubscript:@"attempCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setAttempCount:](v5, "setAttempCount:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"firstByteTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setFirstByteTime:](v5, "setFirstByteTime:", [v15 unsignedLongLongValue]);
    }

    v32 = v11;
    v16 = [v4 objectForKeyedSubscript:@"startToDNSResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setStartToDNSResolution:](v5, "setStartToDNSResolution:", [v16 unsignedLongLongValue]);
    }

    v31 = v12;
    v17 = [v4 objectForKeyedSubscript:@"dnsResolutionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setDnsResolutionTime:](v5, "setDnsResolutionTime:", [v17 unsignedLongLongValue]);
    }

    v27 = v17;
    v34 = v8;
    v18 = [v4 objectForKeyedSubscript:@"tlsVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setTlsVersion:](v5, "setTlsVersion:", [v18 intValue]);
    }

    v33 = v9;
    v19 = [v4 objectForKeyedSubscript:@"tlsHandshakeTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setTlsHandshakeTime:](v5, "setTlsHandshakeTime:", [v19 unsignedLongLongValue]);
    }

    v30 = v13;
    v20 = [v4 objectForKeyedSubscript:@"connectionEstablishmentTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setConnectionEstablishmentTime:](v5, "setConnectionEstablishmentTime:", [v20 unsignedLongLongValue]);
    }

    v28 = v16;
    v29 = v14;
    v21 = [v4 objectForKeyedSubscript:@"connectionStartToEstablishmentTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setConnectionStartToEstablishmentTime:](v5, "setConnectionStartToEstablishmentTime:", [v21 unsignedLongLongValue]);
    }

    v22 = v15;
    v23 = [v4 objectForKeyedSubscript:@"connectionStartToTLSHandshake"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setConnectionStartToTLSHandshake:](v5, "setConnectionStartToTLSHandshake:", [v23 unsignedLongLongValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"clearChannelAssessmentScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 doubleValue];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setClearChannelAssessmentScore:?];
    }

    v25 = v5;
  }

  return v5;
}

- (NETSchemaNETSessionConnectionNetwork)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETSessionConnectionNetwork *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETSessionConnectionNetwork *)self dictionaryRepresentation];
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
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETSessionConnectionNetwork attempCount](self, "attempCount")}];
    [v3 setObject:v4 forKeyedSubscript:@"attempCount"];
  }

  if (self->_carrierName)
  {
    v5 = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"carrierName"];
  }

  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(NETSchemaNETSessionConnectionNetwork *)self clearChannelAssessmentScore];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"clearChannelAssessmentScore"];

    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionNetwork connectionEstablishmentTime](self, "connectionEstablishmentTime")}];
  [v3 setObject:v14 forKeyedSubscript:@"connectionEstablishmentTime"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_24:
  v15 = [(NETSchemaNETSessionConnectionNetwork *)self connectionMethod]- 1;
  if (v15 > 6)
  {
    v16 = @"NETCONNECTIONMETHOD_UNKNOWN";
  }

  else
  {
    v16 = off_1E78DB3A0[v15];
  }

  [v3 setObject:v16 forKeyedSubscript:@"connectionMethod"];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionNetwork connectionStartToEstablishmentTime](self, "connectionStartToEstablishmentTime")}];
  [v3 setObject:v25 forKeyedSubscript:@"connectionStartToEstablishmentTime"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionNetwork connectionStartToTLSHandshake](self, "connectionStartToTLSHandshake")}];
  [v3 setObject:v26 forKeyedSubscript:@"connectionStartToTLSHandshake"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionNetwork dnsResolutionTime](self, "dnsResolutionTime")}];
  [v3 setObject:v27 forKeyedSubscript:@"dnsResolutionTime"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionNetwork firstByteTime](self, "firstByteTime")}];
  [v3 setObject:v28 forKeyedSubscript:@"firstByteTime"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_13:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETSessionConnectionNetwork isCaptive](self, "isCaptive")}];
    [v3 setObject:v8 forKeyedSubscript:@"isCaptive"];
  }

LABEL_14:
  if (self->_primarySubflowInterfaceName)
  {
    v9 = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"primarySubflowInterfaceName"];
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v17 = MEMORY[0x1E696AD98];
    [(NETSchemaNETSessionConnectionNetwork *)self rssi];
    v18 = [v17 numberWithDouble:?];
    [v3 setObject:v18 forKeyedSubscript:@"rssi"];

    v11 = self->_has;
    if ((v11 & 8) == 0)
    {
LABEL_18:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_18;
  }

  v19 = MEMORY[0x1E696AD98];
  [(NETSchemaNETSessionConnectionNetwork *)self snr];
  v20 = [v19 numberWithDouble:?];
  [v3 setObject:v20 forKeyedSubscript:@"snr"];

  v11 = self->_has;
  if ((v11 & 0x40) == 0)
  {
LABEL_19:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_20;
    }

LABEL_29:
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionNetwork tlsHandshakeTime](self, "tlsHandshakeTime")}];
    [v3 setObject:v22 forKeyedSubscript:@"tlsHandshakeTime"];

    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_41;
    }

LABEL_30:
    v23 = [(NETSchemaNETSessionConnectionNetwork *)self tlsVersion]- 1;
    if (v23 > 5)
    {
      v24 = @"NETTLSVERSION_UNKNOWN";
    }

    else
    {
      v24 = off_1E78DB3D8[v23];
    }

    [v3 setObject:v24 forKeyedSubscript:@"tlsVersion"];
    goto LABEL_41;
  }

LABEL_28:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionNetwork startToDNSResolution](self, "startToDNSResolution")}];
  [v3 setObject:v21 forKeyedSubscript:@"startToDNSResolution"];

  v11 = self->_has;
  if ((v11 & 0x200) != 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  if ((v11 & 0x100) != 0)
  {
    goto LABEL_30;
  }

LABEL_41:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_carrierName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_connectionMethod;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_primarySubflowInterfaceName hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = 2654435761 * self->_isCaptive;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  rssi = self->_rssi;
  if (rssi < 0.0)
  {
    rssi = -rssi;
  }

  *v6.i64 = floor(rssi + 0.5);
  v11 = (rssi - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v12), v7, v6);
  v13 = 2654435761u * *v6.i64;
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

LABEL_12:
  if ((has & 8) != 0)
  {
    snr = self->_snr;
    if (snr < 0.0)
    {
      snr = -snr;
    }

    *v6.i64 = floor(snr + 0.5);
    v16 = (snr - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v17), v7, v6);
    v14 = 2654435761u * *v6.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((has & 0x10) != 0)
  {
    v18 = 2654435761 * self->_attempCount;
    if ((has & 0x20) != 0)
    {
LABEL_24:
      v19 = 2654435761u * self->_firstByteTime;
      if ((has & 0x40) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v18 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_24;
    }
  }

  v19 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_25:
    v20 = 2654435761u * self->_startToDNSResolution;
    if ((has & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_26:
    v21 = 2654435761u * self->_dnsResolutionTime;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

LABEL_39:
  v21 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_27:
    v22 = 2654435761 * self->_tlsVersion;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

LABEL_40:
  v22 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_28:
    v23 = 2654435761u * self->_tlsHandshakeTime;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_42;
  }

LABEL_41:
  v23 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_29:
    v24 = 2654435761u * self->_connectionEstablishmentTime;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

LABEL_42:
  v24 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_30:
    v25 = 2654435761u * self->_connectionStartToEstablishmentTime;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_31;
    }

LABEL_44:
    v26 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_32;
    }

LABEL_45:
    v30 = 0;
    return v4 ^ v3 ^ v5 ^ v9 ^ v13 ^ v14 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v30;
  }

LABEL_43:
  v25 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  v26 = 2654435761u * self->_connectionStartToTLSHandshake;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_45;
  }

LABEL_32:
  clearChannelAssessmentScore = self->_clearChannelAssessmentScore;
  if (clearChannelAssessmentScore < 0.0)
  {
    clearChannelAssessmentScore = -clearChannelAssessmentScore;
  }

  *v6.i64 = floor(clearChannelAssessmentScore + 0.5);
  v28 = (clearChannelAssessmentScore - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v30 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v7, v6).i64;
  if (v28 >= 0.0)
  {
    if (v28 > 0.0)
    {
      v30 += v28;
    }
  }

  else
  {
    v30 -= fabs(v28);
  }

  return v4 ^ v3 ^ v5 ^ v9 ^ v13 ^ v14 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v30;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];
  v6 = [v4 carrierName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];
  if (v7)
  {
    v8 = v7;
    v9 = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];
    v10 = [v4 carrierName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[68] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    connectionMethod = self->_connectionMethod;
    if (connectionMethod != [v4 connectionMethod])
    {
      goto LABEL_15;
    }
  }

  v5 = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];
  v6 = [v4 primarySubflowInterfaceName];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];
  if (v13)
  {
    v14 = v13;
    v15 = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];
    v16 = [v4 primarySubflowInterfaceName];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  has = self->_has;
  v21 = (*&has >> 1) & 1;
  v22 = v4[68];
  if (v21 == ((v22 >> 1) & 1))
  {
    if (v21)
    {
      isCaptive = self->_isCaptive;
      if (isCaptive != [v4 isCaptive])
      {
        goto LABEL_15;
      }

      has = self->_has;
      v22 = v4[68];
    }

    v24 = (*&has >> 2) & 1;
    if (v24 == ((v22 >> 2) & 1))
    {
      if (v24)
      {
        rssi = self->_rssi;
        [v4 rssi];
        if (rssi != v26)
        {
          goto LABEL_15;
        }

        has = self->_has;
        v22 = v4[68];
      }

      v27 = (*&has >> 3) & 1;
      if (v27 == ((v22 >> 3) & 1))
      {
        if (v27)
        {
          snr = self->_snr;
          [v4 snr];
          if (snr != v29)
          {
            goto LABEL_15;
          }

          has = self->_has;
          v22 = v4[68];
        }

        v30 = (*&has >> 4) & 1;
        if (v30 == ((v22 >> 4) & 1))
        {
          if (v30)
          {
            attempCount = self->_attempCount;
            if (attempCount != [v4 attempCount])
            {
              goto LABEL_15;
            }

            has = self->_has;
            v22 = v4[68];
          }

          v32 = (*&has >> 5) & 1;
          if (v32 == ((v22 >> 5) & 1))
          {
            if (v32)
            {
              firstByteTime = self->_firstByteTime;
              if (firstByteTime != [v4 firstByteTime])
              {
                goto LABEL_15;
              }

              has = self->_has;
              v22 = v4[68];
            }

            v34 = (*&has >> 6) & 1;
            if (v34 == ((v22 >> 6) & 1))
            {
              if (v34)
              {
                startToDNSResolution = self->_startToDNSResolution;
                if (startToDNSResolution != [v4 startToDNSResolution])
                {
                  goto LABEL_15;
                }

                has = self->_has;
                v22 = v4[68];
              }

              v36 = (*&has >> 7) & 1;
              if (v36 == ((v22 >> 7) & 1))
              {
                if (v36)
                {
                  dnsResolutionTime = self->_dnsResolutionTime;
                  if (dnsResolutionTime != [v4 dnsResolutionTime])
                  {
                    goto LABEL_15;
                  }

                  has = self->_has;
                  v22 = v4[68];
                }

                v38 = (*&has >> 8) & 1;
                if (v38 == ((v22 >> 8) & 1))
                {
                  if (v38)
                  {
                    tlsVersion = self->_tlsVersion;
                    if (tlsVersion != [v4 tlsVersion])
                    {
                      goto LABEL_15;
                    }

                    has = self->_has;
                    v22 = v4[68];
                  }

                  v40 = (*&has >> 9) & 1;
                  if (v40 == ((v22 >> 9) & 1))
                  {
                    if (v40)
                    {
                      tlsHandshakeTime = self->_tlsHandshakeTime;
                      if (tlsHandshakeTime != [v4 tlsHandshakeTime])
                      {
                        goto LABEL_15;
                      }

                      has = self->_has;
                      v22 = v4[68];
                    }

                    v42 = (*&has >> 10) & 1;
                    if (v42 == ((v22 >> 10) & 1))
                    {
                      if (v42)
                      {
                        connectionEstablishmentTime = self->_connectionEstablishmentTime;
                        if (connectionEstablishmentTime != [v4 connectionEstablishmentTime])
                        {
                          goto LABEL_15;
                        }

                        has = self->_has;
                        v22 = v4[68];
                      }

                      v44 = (*&has >> 11) & 1;
                      if (v44 == ((v22 >> 11) & 1))
                      {
                        if (v44)
                        {
                          connectionStartToEstablishmentTime = self->_connectionStartToEstablishmentTime;
                          if (connectionStartToEstablishmentTime != [v4 connectionStartToEstablishmentTime])
                          {
                            goto LABEL_15;
                          }

                          has = self->_has;
                          v22 = v4[68];
                        }

                        v46 = (*&has >> 12) & 1;
                        if (v46 == ((v22 >> 12) & 1))
                        {
                          if (v46)
                          {
                            connectionStartToTLSHandshake = self->_connectionStartToTLSHandshake;
                            if (connectionStartToTLSHandshake != [v4 connectionStartToTLSHandshake])
                            {
                              goto LABEL_15;
                            }

                            has = self->_has;
                            v22 = v4[68];
                          }

                          v48 = (*&has >> 13) & 1;
                          if (v48 == ((v22 >> 13) & 1))
                          {
                            if (!v48 || (clearChannelAssessmentScore = self->_clearChannelAssessmentScore, [v4 clearChannelAssessmentScore], clearChannelAssessmentScore == v50))
                            {
                              v18 = 1;
                              goto LABEL_16;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteDoubleField();
  v7 = v8;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteDoubleField();
  v7 = v8;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint64Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint64Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteUint64Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteInt32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_16:
    if ((has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteUint64Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_17:
    if ((has & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteUint64Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_18:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint64Field();
  v7 = v8;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_19:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_35:
  PBDataWriterWriteUint64Field();
  v7 = v8;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_20:
    PBDataWriterWriteDoubleField();
    v7 = v8;
  }

LABEL_21:
}

- (void)setHasClearChannelAssessmentScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasConnectionStartToTLSHandshake:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasConnectionStartToEstablishmentTime:(BOOL)a3
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

- (void)setHasConnectionEstablishmentTime:(BOOL)a3
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

- (void)setHasTlsHandshakeTime:(BOOL)a3
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

- (void)setHasTlsVersion:(BOOL)a3
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

- (void)setHasDnsResolutionTime:(BOOL)a3
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

- (void)setHasStartToDNSResolution:(BOOL)a3
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

- (void)setHasFirstByteTime:(BOOL)a3
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

- (void)setHasAttempCount:(BOOL)a3
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

- (void)setHasSnr:(BOOL)a3
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

- (void)setHasRssi:(BOOL)a3
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

- (void)setHasIsCaptive:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end