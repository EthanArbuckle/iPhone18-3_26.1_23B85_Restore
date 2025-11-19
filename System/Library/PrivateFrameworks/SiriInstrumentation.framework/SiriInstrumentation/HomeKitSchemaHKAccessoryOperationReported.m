@interface HomeKitSchemaHKAccessoryOperationReported
- (BOOL)isEqual:(id)a3;
- (HomeKitSchemaHKAccessoryOperationReported)initWithDictionary:(id)a3;
- (HomeKitSchemaHKAccessoryOperationReported)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConsecutiveFailureCount:(BOOL)a3;
- (void)setHasFinalErrorCode:(BOOL)a3;
- (void)setHasOperationType:(BOOL)a3;
- (void)setHasResidentFirstDuration:(BOOL)a3;
- (void)setHasResidentFirstErrorCode:(BOOL)a3;
- (void)setHasTotalDuration:(BOOL)a3;
- (void)setHasTransportType:(BOOL)a3;
- (void)setHasWasCached:(BOOL)a3;
- (void)setHasWasLocal:(BOOL)a3;
- (void)setHasWasRapportSlow:(BOOL)a3;
- (void)setHasWasRemoteAccessAllowed:(BOOL)a3;
- (void)setHasWasResidentFirstEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HomeKitSchemaHKAccessoryOperationReported

- (HomeKitSchemaHKAccessoryOperationReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = HomeKitSchemaHKAccessoryOperationReported;
  v5 = [(HomeKitSchemaHKAccessoryOperationReported *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sharedMetricsId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(HomeKitSchemaHKAccessoryOperationReported *)v5 setSharedMetricsId:v7];
    }

    v36 = v6;
    v8 = [v4 objectForKeyedSubscript:@"accessoryCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(HomeKitSchemaHKAccessoryOperationReported *)v5 setAccessoryCategory:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"communicationProtocol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setCommunicationProtocol:](v5, "setCommunicationProtocol:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"transportType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setTransportType:](v5, "setTransportType:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"operationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setOperationType:](v5, "setOperationType:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"wasCached"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasCached:](v5, "setWasCached:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"wasLocal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasLocal:](v5, "setWasLocal:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"wasRemoteAccessAllowed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasRemoteAccessAllowed:](v5, "setWasRemoteAccessAllowed:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"wasResidentFirstEnabled"];
    objc_opt_class();
    v37 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasResidentFirstEnabled:](v5, "setWasResidentFirstEnabled:", [v16 BOOLValue]);
    }

    v34 = v11;
    v35 = v10;
    v17 = [v4 objectForKeyedSubscript:@"wasRapportSlow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasRapportSlow:](v5, "setWasRapportSlow:", [v17 BOOLValue]);
    }

    v33 = v12;
    v18 = [v4 objectForKeyedSubscript:{@"residentFirstDuration", v17}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setResidentFirstDuration:](v5, "setResidentFirstDuration:", [v18 unsignedIntValue]);
    }

    v32 = v13;
    v19 = [v4 objectForKeyedSubscript:@"residentFirstErrorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 copy];
      [(HomeKitSchemaHKAccessoryOperationReported *)v5 setResidentFirstErrorDomain:v20];
    }

    v31 = v14;
    v21 = [v4 objectForKeyedSubscript:@"residentFirstErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setResidentFirstErrorCode:](v5, "setResidentFirstErrorCode:", [v21 unsignedIntValue]);
    }

    v30 = v15;
    v22 = [v4 objectForKeyedSubscript:@"totalDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setTotalDuration:](v5, "setTotalDuration:", [v22 unsignedIntValue]);
    }

    v23 = [v4 objectForKeyedSubscript:@"finalErrorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(HomeKitSchemaHKAccessoryOperationReported *)v5 setFinalErrorDomain:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"finalErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setFinalErrorCode:](v5, "setFinalErrorCode:", [v25 unsignedIntValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"consecutiveFailureCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setConsecutiveFailureCount:](v5, "setConsecutiveFailureCount:", [v26 unsignedIntValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (HomeKitSchemaHKAccessoryOperationReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HomeKitSchemaHKAccessoryOperationReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HomeKitSchemaHKAccessoryOperationReported *)self dictionaryRepresentation];
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
  if (self->_accessoryCategory)
  {
    v4 = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"accessoryCategory"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [(HomeKitSchemaHKAccessoryOperationReported *)self communicationProtocol];
    v8 = @"HKACCESSORYCOMMUNICATIONPROTOCOL_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"HKACCESSORYCOMMUNICATIONPROTOCOL_HAP";
    }

    if (v7 == 2)
    {
      v9 = @"HKACCESSORYCOMMUNICATIONPROTOCOL_MATTER";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"communicationProtocol"];
    has = self->_has;
  }

  if ((has & 0x1000) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported consecutiveFailureCount](self, "consecutiveFailureCount")}];
    [v3 setObject:v10 forKeyedSubscript:@"consecutiveFailureCount"];

    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported finalErrorCode](self, "finalErrorCode")}];
    [v3 setObject:v11 forKeyedSubscript:@"finalErrorCode"];
  }

  if (self->_finalErrorDomain)
  {
    v12 = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"finalErrorDomain"];
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    v20 = [(HomeKitSchemaHKAccessoryOperationReported *)self operationType];
    v21 = @"HKACCESSORYOPERATIONTYPE_UNKNOWN";
    if (v20 == 1)
    {
      v21 = @"HKACCESSORYOPERATIONTYPE_READ";
    }

    if (v20 == 2)
    {
      v22 = @"HKACCESSORYOPERATIONTYPE_WRITE";
    }

    else
    {
      v22 = v21;
    }

    [v3 setObject:v22 forKeyedSubscript:@"operationType"];
    v14 = self->_has;
    if ((v14 & 0x100) == 0)
    {
LABEL_18:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_18;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported residentFirstDuration](self, "residentFirstDuration")}];
  [v3 setObject:v23 forKeyedSubscript:@"residentFirstDuration"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_19:
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported residentFirstErrorCode](self, "residentFirstErrorCode")}];
    [v3 setObject:v15 forKeyedSubscript:@"residentFirstErrorCode"];
  }

LABEL_20:
  if (self->_residentFirstErrorDomain)
  {
    v16 = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"residentFirstErrorDomain"];
  }

  if (self->_sharedMetricsId)
  {
    v18 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"sharedMetricsId"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"sharedMetricsId"];
    }
  }

  v25 = self->_has;
  if ((v25 & 0x400) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported totalDuration](self, "totalDuration")}];
    [v3 setObject:v28 forKeyedSubscript:@"totalDuration"];

    v25 = self->_has;
    if ((v25 & 2) == 0)
    {
LABEL_37:
      if ((v25 & 8) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_51;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_37;
  }

  v29 = [(HomeKitSchemaHKAccessoryOperationReported *)self transportType]- 1;
  if (v29 > 3)
  {
    v30 = @"HKTRANSPORTTYPE_UNKNOWN";
  }

  else
  {
    v30 = off_1E78D8010[v29];
  }

  [v3 setObject:v30 forKeyedSubscript:@"transportType"];
  v25 = self->_has;
  if ((v25 & 8) == 0)
  {
LABEL_38:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_52;
  }

LABEL_51:
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[HomeKitSchemaHKAccessoryOperationReported wasCached](self, "wasCached")}];
  [v3 setObject:v31 forKeyedSubscript:@"wasCached"];

  v25 = self->_has;
  if ((v25 & 0x10) == 0)
  {
LABEL_39:
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_52:
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[HomeKitSchemaHKAccessoryOperationReported wasLocal](self, "wasLocal")}];
  [v3 setObject:v32 forKeyedSubscript:@"wasLocal"];

  v25 = self->_has;
  if ((v25 & 0x80) == 0)
  {
LABEL_40:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_54;
  }

LABEL_53:
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[HomeKitSchemaHKAccessoryOperationReported wasRapportSlow](self, "wasRapportSlow")}];
  [v3 setObject:v33 forKeyedSubscript:@"wasRapportSlow"];

  v25 = self->_has;
  if ((v25 & 0x20) == 0)
  {
LABEL_41:
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_54:
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[HomeKitSchemaHKAccessoryOperationReported wasRemoteAccessAllowed](self, "wasRemoteAccessAllowed")}];
  [v3 setObject:v34 forKeyedSubscript:@"wasRemoteAccessAllowed"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_42:
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[HomeKitSchemaHKAccessoryOperationReported wasResidentFirstEnabled](self, "wasResidentFirstEnabled")}];
    [v3 setObject:v26 forKeyedSubscript:@"wasResidentFirstEnabled"];
  }

LABEL_43:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v21 = [(SISchemaUUID *)self->_sharedMetricsId hash];
  v20 = [(NSString *)self->_accessoryCategory hash];
  has = self->_has;
  if (has)
  {
    v19 = 2654435761 * self->_communicationProtocol;
    if ((has & 2) != 0)
    {
LABEL_3:
      v18 = 2654435761 * self->_transportType;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v17 = 2654435761 * self->_operationType;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v17 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v16 = 2654435761 * self->_wasCached;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v16 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v15 = 2654435761 * self->_wasLocal;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v15 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_wasRemoteAccessAllowed;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_wasResidentFirstEnabled;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v6 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v5 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v6 = 2654435761 * self->_wasRapportSlow;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_residentFirstDuration;
    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
LABEL_20:
  v8 = [(NSString *)self->_residentFirstErrorDomain hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v9 = 2654435761 * self->_residentFirstErrorCode;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_22:
      v10 = 2654435761 * self->_totalDuration;
      goto LABEL_25;
    }
  }

  v10 = 0;
LABEL_25:
  v11 = [(NSString *)self->_finalErrorDomain hash];
  if ((*&self->_has & 0x800) != 0)
  {
    v12 = 2654435761 * self->_finalErrorCode;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v13 = 0;
    return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  v13 = 2654435761 * self->_consecutiveFailureCount;
  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_64;
  }

  v5 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
  v6 = [v4 sharedMetricsId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v7 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
  if (v7)
  {
    v8 = v7;
    v9 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
    v10 = [v4 sharedMetricsId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];
  v6 = [v4 accessoryCategory];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v12 = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];
  if (v12)
  {
    v13 = v12;
    v14 = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];
    v15 = [v4 accessoryCategory];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_64;
  }

  if (*&has)
  {
    communicationProtocol = self->_communicationProtocol;
    if (communicationProtocol != [v4 communicationProtocol])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_64;
  }

  if (v20)
  {
    transportType = self->_transportType;
    if (transportType != [v4 transportType])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v18 >> 2) & 1))
  {
    goto LABEL_64;
  }

  if (v22)
  {
    operationType = self->_operationType;
    if (operationType != [v4 operationType])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v24 = (*&has >> 3) & 1;
  if (v24 != ((v18 >> 3) & 1))
  {
    goto LABEL_64;
  }

  if (v24)
  {
    wasCached = self->_wasCached;
    if (wasCached != [v4 wasCached])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v26 = (*&has >> 4) & 1;
  if (v26 != ((v18 >> 4) & 1))
  {
    goto LABEL_64;
  }

  if (v26)
  {
    wasLocal = self->_wasLocal;
    if (wasLocal != [v4 wasLocal])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v28 = (*&has >> 5) & 1;
  if (v28 != ((v18 >> 5) & 1))
  {
    goto LABEL_64;
  }

  if (v28)
  {
    wasRemoteAccessAllowed = self->_wasRemoteAccessAllowed;
    if (wasRemoteAccessAllowed != [v4 wasRemoteAccessAllowed])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v30 = (*&has >> 6) & 1;
  if (v30 != ((v18 >> 6) & 1))
  {
    goto LABEL_64;
  }

  if (v30)
  {
    wasResidentFirstEnabled = self->_wasResidentFirstEnabled;
    if (wasResidentFirstEnabled != [v4 wasResidentFirstEnabled])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v32 = (*&has >> 7) & 1;
  if (v32 != ((v18 >> 7) & 1))
  {
    goto LABEL_64;
  }

  if (v32)
  {
    wasRapportSlow = self->_wasRapportSlow;
    if (wasRapportSlow != [v4 wasRapportSlow])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v34 = (*&has >> 8) & 1;
  if (v34 != ((v18 >> 8) & 1))
  {
    goto LABEL_64;
  }

  if (v34)
  {
    residentFirstDuration = self->_residentFirstDuration;
    if (residentFirstDuration != [v4 residentFirstDuration])
    {
      goto LABEL_64;
    }
  }

  v5 = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];
  v6 = [v4 residentFirstErrorDomain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v36 = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];
  if (v36)
  {
    v37 = v36;
    v38 = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];
    v39 = [v4 residentFirstErrorDomain];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v41 = self->_has;
  v42 = (*&v41 >> 9) & 1;
  v43 = v4[40];
  if (v42 != ((v43 >> 9) & 1))
  {
    goto LABEL_64;
  }

  if (v42)
  {
    residentFirstErrorCode = self->_residentFirstErrorCode;
    if (residentFirstErrorCode != [v4 residentFirstErrorCode])
    {
      goto LABEL_64;
    }

    v41 = self->_has;
    v43 = v4[40];
  }

  v45 = (*&v41 >> 10) & 1;
  if (v45 != ((v43 >> 10) & 1))
  {
    goto LABEL_64;
  }

  if (v45)
  {
    totalDuration = self->_totalDuration;
    if (totalDuration != [v4 totalDuration])
    {
      goto LABEL_64;
    }
  }

  v5 = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];
  v6 = [v4 finalErrorDomain];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_63:

    goto LABEL_64;
  }

  v47 = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];
  if (v47)
  {
    v48 = v47;
    v49 = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];
    v50 = [v4 finalErrorDomain];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v54 = self->_has;
  v55 = (*&v54 >> 11) & 1;
  v56 = v4[40];
  if (v55 == ((v56 >> 11) & 1))
  {
    if (v55)
    {
      finalErrorCode = self->_finalErrorCode;
      if (finalErrorCode != [v4 finalErrorCode])
      {
        goto LABEL_64;
      }

      v54 = self->_has;
      v56 = v4[40];
    }

    v58 = (*&v54 >> 12) & 1;
    if (v58 == ((v56 >> 12) & 1))
    {
      if (!v58 || (consecutiveFailureCount = self->_consecutiveFailureCount, consecutiveFailureCount == [v4 consecutiveFailureCount]))
      {
        v52 = 1;
        goto LABEL_65;
      }
    }
  }

LABEL_64:
  v52 = 0;
LABEL_65:

  return v52;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];

  if (v4)
  {
    v5 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_37:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_14:
    PBDataWriterWriteUint32Field();
  }

LABEL_15:
  v8 = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((v9 & 0x200) != 0)
  {
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
  }

  if ((v9 & 0x400) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v10 = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  v12 = v13;
  if ((v11 & 0x800) != 0)
  {
    PBDataWriterWriteUint32Field();
    v12 = v13;
    v11 = self->_has;
  }

  if ((v11 & 0x1000) != 0)
  {
    PBDataWriterWriteUint32Field();
    v12 = v13;
  }
}

- (void)setHasConsecutiveFailureCount:(BOOL)a3
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

- (void)setHasFinalErrorCode:(BOOL)a3
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

- (void)setHasTotalDuration:(BOOL)a3
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

- (void)setHasResidentFirstErrorCode:(BOOL)a3
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

- (void)setHasResidentFirstDuration:(BOOL)a3
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

- (void)setHasWasRapportSlow:(BOOL)a3
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

- (void)setHasWasResidentFirstEnabled:(BOOL)a3
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

- (void)setHasWasRemoteAccessAllowed:(BOOL)a3
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

- (void)setHasWasLocal:(BOOL)a3
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

- (void)setHasWasCached:(BOOL)a3
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

- (void)setHasOperationType:(BOOL)a3
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

- (void)setHasTransportType:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = HomeKitSchemaHKAccessoryOperationReported;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(HomeKitSchemaHKAccessoryOperationReported *)self deleteSharedMetricsId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end