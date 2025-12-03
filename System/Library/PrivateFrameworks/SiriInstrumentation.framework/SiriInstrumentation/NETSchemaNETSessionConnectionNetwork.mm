@interface NETSchemaNETSessionConnectionNetwork
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETSessionConnectionNetwork)initWithDictionary:(id)dictionary;
- (NETSchemaNETSessionConnectionNetwork)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAttempCount:(BOOL)count;
- (void)setHasClearChannelAssessmentScore:(BOOL)score;
- (void)setHasConnectionEstablishmentTime:(BOOL)time;
- (void)setHasConnectionStartToEstablishmentTime:(BOOL)time;
- (void)setHasConnectionStartToTLSHandshake:(BOOL)handshake;
- (void)setHasDnsResolutionTime:(BOOL)time;
- (void)setHasFirstByteTime:(BOOL)time;
- (void)setHasIsCaptive:(BOOL)captive;
- (void)setHasRssi:(BOOL)rssi;
- (void)setHasSnr:(BOOL)snr;
- (void)setHasStartToDNSResolution:(BOOL)resolution;
- (void)setHasTlsHandshakeTime:(BOOL)time;
- (void)setHasTlsVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETSessionConnectionNetwork

- (NETSchemaNETSessionConnectionNetwork)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = NETSchemaNETSessionConnectionNetwork;
  v5 = [(NETSchemaNETSessionConnectionNetwork *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"carrierName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setCarrierName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"connectionMethod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setConnectionMethod:](v5, "setConnectionMethod:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"primarySubflowInterfaceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setPrimarySubflowInterfaceName:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isCaptive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setIsCaptive:](v5, "setIsCaptive:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"rssi"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setRssi:?];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"snr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(NETSchemaNETSessionConnectionNetwork *)v5 setSnr:?];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"attempCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setAttempCount:](v5, "setAttempCount:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"firstByteTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setFirstByteTime:](v5, "setFirstByteTime:", [v15 unsignedLongLongValue]);
    }

    v32 = v11;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"startToDNSResolution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setStartToDNSResolution:](v5, "setStartToDNSResolution:", [v16 unsignedLongLongValue]);
    }

    v31 = v12;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"dnsResolutionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setDnsResolutionTime:](v5, "setDnsResolutionTime:", [v17 unsignedLongLongValue]);
    }

    v27 = v17;
    v34 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"tlsVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setTlsVersion:](v5, "setTlsVersion:", [v18 intValue]);
    }

    v33 = v9;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"tlsHandshakeTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setTlsHandshakeTime:](v5, "setTlsHandshakeTime:", [v19 unsignedLongLongValue]);
    }

    v30 = v13;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"connectionEstablishmentTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setConnectionEstablishmentTime:](v5, "setConnectionEstablishmentTime:", [v20 unsignedLongLongValue]);
    }

    v28 = v16;
    v29 = v14;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"connectionStartToEstablishmentTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setConnectionStartToEstablishmentTime:](v5, "setConnectionStartToEstablishmentTime:", [v21 unsignedLongLongValue]);
    }

    v22 = v15;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"connectionStartToTLSHandshake"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETSessionConnectionNetwork setConnectionStartToTLSHandshake:](v5, "setConnectionStartToTLSHandshake:", [v23 unsignedLongLongValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"clearChannelAssessmentScore"];
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

- (NETSchemaNETSessionConnectionNetwork)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETSessionConnectionNetwork *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETSessionConnectionNetwork *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETSessionConnectionNetwork attempCount](self, "attempCount")}];
    [dictionary setObject:v4 forKeyedSubscript:@"attempCount"];
  }

  if (self->_carrierName)
  {
    carrierName = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];
    v6 = [carrierName copy];
    [dictionary setObject:v6 forKeyedSubscript:@"carrierName"];
  }

  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(NETSchemaNETSessionConnectionNetwork *)self clearChannelAssessmentScore];
    v13 = [v12 numberWithDouble:?];
    [dictionary setObject:v13 forKeyedSubscript:@"clearChannelAssessmentScore"];

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
  [dictionary setObject:v14 forKeyedSubscript:@"connectionEstablishmentTime"];

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

  [dictionary setObject:v16 forKeyedSubscript:@"connectionMethod"];
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
  [dictionary setObject:v25 forKeyedSubscript:@"connectionStartToEstablishmentTime"];

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
  [dictionary setObject:v26 forKeyedSubscript:@"connectionStartToTLSHandshake"];

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
  [dictionary setObject:v27 forKeyedSubscript:@"dnsResolutionTime"];

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
  [dictionary setObject:v28 forKeyedSubscript:@"firstByteTime"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_13:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[NETSchemaNETSessionConnectionNetwork isCaptive](self, "isCaptive")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isCaptive"];
  }

LABEL_14:
  if (self->_primarySubflowInterfaceName)
  {
    primarySubflowInterfaceName = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];
    v10 = [primarySubflowInterfaceName copy];
    [dictionary setObject:v10 forKeyedSubscript:@"primarySubflowInterfaceName"];
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v17 = MEMORY[0x1E696AD98];
    [(NETSchemaNETSessionConnectionNetwork *)self rssi];
    v18 = [v17 numberWithDouble:?];
    [dictionary setObject:v18 forKeyedSubscript:@"rssi"];

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
  [dictionary setObject:v20 forKeyedSubscript:@"snr"];

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
    [dictionary setObject:v22 forKeyedSubscript:@"tlsHandshakeTime"];

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

    [dictionary setObject:v24 forKeyedSubscript:@"tlsVersion"];
    goto LABEL_41;
  }

LABEL_28:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETSessionConnectionNetwork startToDNSResolution](self, "startToDNSResolution")}];
  [dictionary setObject:v21 forKeyedSubscript:@"startToDNSResolution"];

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
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  carrierName = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];
  carrierName2 = [equalCopy carrierName];
  if ((carrierName != 0) == (carrierName2 == 0))
  {
    goto LABEL_14;
  }

  carrierName3 = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];
  if (carrierName3)
  {
    v8 = carrierName3;
    carrierName4 = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];
    carrierName5 = [equalCopy carrierName];
    v11 = [carrierName4 isEqual:carrierName5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[68] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    connectionMethod = self->_connectionMethod;
    if (connectionMethod != [equalCopy connectionMethod])
    {
      goto LABEL_15;
    }
  }

  carrierName = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];
  carrierName2 = [equalCopy primarySubflowInterfaceName];
  if ((carrierName != 0) == (carrierName2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  primarySubflowInterfaceName = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];
  if (primarySubflowInterfaceName)
  {
    v14 = primarySubflowInterfaceName;
    primarySubflowInterfaceName2 = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];
    primarySubflowInterfaceName3 = [equalCopy primarySubflowInterfaceName];
    v17 = [primarySubflowInterfaceName2 isEqual:primarySubflowInterfaceName3];

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
  v22 = equalCopy[68];
  if (v21 == ((v22 >> 1) & 1))
  {
    if (v21)
    {
      isCaptive = self->_isCaptive;
      if (isCaptive != [equalCopy isCaptive])
      {
        goto LABEL_15;
      }

      has = self->_has;
      v22 = equalCopy[68];
    }

    v24 = (*&has >> 2) & 1;
    if (v24 == ((v22 >> 2) & 1))
    {
      if (v24)
      {
        rssi = self->_rssi;
        [equalCopy rssi];
        if (rssi != v26)
        {
          goto LABEL_15;
        }

        has = self->_has;
        v22 = equalCopy[68];
      }

      v27 = (*&has >> 3) & 1;
      if (v27 == ((v22 >> 3) & 1))
      {
        if (v27)
        {
          snr = self->_snr;
          [equalCopy snr];
          if (snr != v29)
          {
            goto LABEL_15;
          }

          has = self->_has;
          v22 = equalCopy[68];
        }

        v30 = (*&has >> 4) & 1;
        if (v30 == ((v22 >> 4) & 1))
        {
          if (v30)
          {
            attempCount = self->_attempCount;
            if (attempCount != [equalCopy attempCount])
            {
              goto LABEL_15;
            }

            has = self->_has;
            v22 = equalCopy[68];
          }

          v32 = (*&has >> 5) & 1;
          if (v32 == ((v22 >> 5) & 1))
          {
            if (v32)
            {
              firstByteTime = self->_firstByteTime;
              if (firstByteTime != [equalCopy firstByteTime])
              {
                goto LABEL_15;
              }

              has = self->_has;
              v22 = equalCopy[68];
            }

            v34 = (*&has >> 6) & 1;
            if (v34 == ((v22 >> 6) & 1))
            {
              if (v34)
              {
                startToDNSResolution = self->_startToDNSResolution;
                if (startToDNSResolution != [equalCopy startToDNSResolution])
                {
                  goto LABEL_15;
                }

                has = self->_has;
                v22 = equalCopy[68];
              }

              v36 = (*&has >> 7) & 1;
              if (v36 == ((v22 >> 7) & 1))
              {
                if (v36)
                {
                  dnsResolutionTime = self->_dnsResolutionTime;
                  if (dnsResolutionTime != [equalCopy dnsResolutionTime])
                  {
                    goto LABEL_15;
                  }

                  has = self->_has;
                  v22 = equalCopy[68];
                }

                v38 = (*&has >> 8) & 1;
                if (v38 == ((v22 >> 8) & 1))
                {
                  if (v38)
                  {
                    tlsVersion = self->_tlsVersion;
                    if (tlsVersion != [equalCopy tlsVersion])
                    {
                      goto LABEL_15;
                    }

                    has = self->_has;
                    v22 = equalCopy[68];
                  }

                  v40 = (*&has >> 9) & 1;
                  if (v40 == ((v22 >> 9) & 1))
                  {
                    if (v40)
                    {
                      tlsHandshakeTime = self->_tlsHandshakeTime;
                      if (tlsHandshakeTime != [equalCopy tlsHandshakeTime])
                      {
                        goto LABEL_15;
                      }

                      has = self->_has;
                      v22 = equalCopy[68];
                    }

                    v42 = (*&has >> 10) & 1;
                    if (v42 == ((v22 >> 10) & 1))
                    {
                      if (v42)
                      {
                        connectionEstablishmentTime = self->_connectionEstablishmentTime;
                        if (connectionEstablishmentTime != [equalCopy connectionEstablishmentTime])
                        {
                          goto LABEL_15;
                        }

                        has = self->_has;
                        v22 = equalCopy[68];
                      }

                      v44 = (*&has >> 11) & 1;
                      if (v44 == ((v22 >> 11) & 1))
                      {
                        if (v44)
                        {
                          connectionStartToEstablishmentTime = self->_connectionStartToEstablishmentTime;
                          if (connectionStartToEstablishmentTime != [equalCopy connectionStartToEstablishmentTime])
                          {
                            goto LABEL_15;
                          }

                          has = self->_has;
                          v22 = equalCopy[68];
                        }

                        v46 = (*&has >> 12) & 1;
                        if (v46 == ((v22 >> 12) & 1))
                        {
                          if (v46)
                          {
                            connectionStartToTLSHandshake = self->_connectionStartToTLSHandshake;
                            if (connectionStartToTLSHandshake != [equalCopy connectionStartToTLSHandshake])
                            {
                              goto LABEL_15;
                            }

                            has = self->_has;
                            v22 = equalCopy[68];
                          }

                          v48 = (*&has >> 13) & 1;
                          if (v48 == ((v22 >> 13) & 1))
                          {
                            if (!v48 || (clearChannelAssessmentScore = self->_clearChannelAssessmentScore, [equalCopy clearChannelAssessmentScore], clearChannelAssessmentScore == v50))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  carrierName = [(NETSchemaNETSessionConnectionNetwork *)self carrierName];

  if (carrierName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  primarySubflowInterfaceName = [(NETSchemaNETSessionConnectionNetwork *)self primarySubflowInterfaceName];

  if (primarySubflowInterfaceName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
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
  v7 = toCopy;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_20:
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

LABEL_21:
}

- (void)setHasClearChannelAssessmentScore:(BOOL)score
{
  if (score)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasConnectionStartToTLSHandshake:(BOOL)handshake
{
  if (handshake)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasConnectionStartToEstablishmentTime:(BOOL)time
{
  if (time)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasConnectionEstablishmentTime:(BOOL)time
{
  if (time)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasTlsHandshakeTime:(BOOL)time
{
  if (time)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasTlsVersion:(BOOL)version
{
  if (version)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasDnsResolutionTime:(BOOL)time
{
  if (time)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasStartToDNSResolution:(BOOL)resolution
{
  if (resolution)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasFirstByteTime:(BOOL)time
{
  if (time)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAttempCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSnr:(BOOL)snr
{
  if (snr)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRssi:(BOOL)rssi
{
  if (rssi)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsCaptive:(BOOL)captive
{
  if (captive)
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