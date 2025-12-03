@interface HomeKitSchemaHKAccessoryOperationReported
- (BOOL)isEqual:(id)equal;
- (HomeKitSchemaHKAccessoryOperationReported)initWithDictionary:(id)dictionary;
- (HomeKitSchemaHKAccessoryOperationReported)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConsecutiveFailureCount:(BOOL)count;
- (void)setHasFinalErrorCode:(BOOL)code;
- (void)setHasOperationType:(BOOL)type;
- (void)setHasResidentFirstDuration:(BOOL)duration;
- (void)setHasResidentFirstErrorCode:(BOOL)code;
- (void)setHasTotalDuration:(BOOL)duration;
- (void)setHasTransportType:(BOOL)type;
- (void)setHasWasCached:(BOOL)cached;
- (void)setHasWasLocal:(BOOL)local;
- (void)setHasWasRapportSlow:(BOOL)slow;
- (void)setHasWasRemoteAccessAllowed:(BOOL)allowed;
- (void)setHasWasResidentFirstEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation HomeKitSchemaHKAccessoryOperationReported

- (HomeKitSchemaHKAccessoryOperationReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = HomeKitSchemaHKAccessoryOperationReported;
  v5 = [(HomeKitSchemaHKAccessoryOperationReported *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sharedMetricsId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(HomeKitSchemaHKAccessoryOperationReported *)v5 setSharedMetricsId:v7];
    }

    v36 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"accessoryCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(HomeKitSchemaHKAccessoryOperationReported *)v5 setAccessoryCategory:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"communicationProtocol"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setCommunicationProtocol:](v5, "setCommunicationProtocol:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"transportType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setTransportType:](v5, "setTransportType:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"operationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setOperationType:](v5, "setOperationType:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"wasCached"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasCached:](v5, "setWasCached:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"wasLocal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasLocal:](v5, "setWasLocal:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"wasRemoteAccessAllowed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasRemoteAccessAllowed:](v5, "setWasRemoteAccessAllowed:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"wasResidentFirstEnabled"];
    objc_opt_class();
    v37 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasResidentFirstEnabled:](v5, "setWasResidentFirstEnabled:", [v16 BOOLValue]);
    }

    v34 = v11;
    v35 = v10;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"wasRapportSlow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setWasRapportSlow:](v5, "setWasRapportSlow:", [v17 BOOLValue]);
    }

    v33 = v12;
    v18 = [dictionaryCopy objectForKeyedSubscript:{@"residentFirstDuration", v17}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setResidentFirstDuration:](v5, "setResidentFirstDuration:", [v18 unsignedIntValue]);
    }

    v32 = v13;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"residentFirstErrorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 copy];
      [(HomeKitSchemaHKAccessoryOperationReported *)v5 setResidentFirstErrorDomain:v20];
    }

    v31 = v14;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"residentFirstErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setResidentFirstErrorCode:](v5, "setResidentFirstErrorCode:", [v21 unsignedIntValue]);
    }

    v30 = v15;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"totalDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setTotalDuration:](v5, "setTotalDuration:", [v22 unsignedIntValue]);
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"finalErrorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(HomeKitSchemaHKAccessoryOperationReported *)v5 setFinalErrorDomain:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"finalErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setFinalErrorCode:](v5, "setFinalErrorCode:", [v25 unsignedIntValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"consecutiveFailureCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HomeKitSchemaHKAccessoryOperationReported setConsecutiveFailureCount:](v5, "setConsecutiveFailureCount:", [v26 unsignedIntValue]);
    }

    v27 = v5;
  }

  return v5;
}

- (HomeKitSchemaHKAccessoryOperationReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HomeKitSchemaHKAccessoryOperationReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HomeKitSchemaHKAccessoryOperationReported *)self dictionaryRepresentation];
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
  if (self->_accessoryCategory)
  {
    accessoryCategory = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];
    v5 = [accessoryCategory copy];
    [dictionary setObject:v5 forKeyedSubscript:@"accessoryCategory"];
  }

  has = self->_has;
  if (has)
  {
    communicationProtocol = [(HomeKitSchemaHKAccessoryOperationReported *)self communicationProtocol];
    v8 = @"HKACCESSORYCOMMUNICATIONPROTOCOL_UNKNOWN";
    if (communicationProtocol == 1)
    {
      v8 = @"HKACCESSORYCOMMUNICATIONPROTOCOL_HAP";
    }

    if (communicationProtocol == 2)
    {
      v9 = @"HKACCESSORYCOMMUNICATIONPROTOCOL_MATTER";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"communicationProtocol"];
    has = self->_has;
  }

  if ((has & 0x1000) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported consecutiveFailureCount](self, "consecutiveFailureCount")}];
    [dictionary setObject:v10 forKeyedSubscript:@"consecutiveFailureCount"];

    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported finalErrorCode](self, "finalErrorCode")}];
    [dictionary setObject:v11 forKeyedSubscript:@"finalErrorCode"];
  }

  if (self->_finalErrorDomain)
  {
    finalErrorDomain = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];
    v13 = [finalErrorDomain copy];
    [dictionary setObject:v13 forKeyedSubscript:@"finalErrorDomain"];
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    operationType = [(HomeKitSchemaHKAccessoryOperationReported *)self operationType];
    v21 = @"HKACCESSORYOPERATIONTYPE_UNKNOWN";
    if (operationType == 1)
    {
      v21 = @"HKACCESSORYOPERATIONTYPE_READ";
    }

    if (operationType == 2)
    {
      v22 = @"HKACCESSORYOPERATIONTYPE_WRITE";
    }

    else
    {
      v22 = v21;
    }

    [dictionary setObject:v22 forKeyedSubscript:@"operationType"];
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
  [dictionary setObject:v23 forKeyedSubscript:@"residentFirstDuration"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_19:
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported residentFirstErrorCode](self, "residentFirstErrorCode")}];
    [dictionary setObject:v15 forKeyedSubscript:@"residentFirstErrorCode"];
  }

LABEL_20:
  if (self->_residentFirstErrorDomain)
  {
    residentFirstErrorDomain = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];
    v17 = [residentFirstErrorDomain copy];
    [dictionary setObject:v17 forKeyedSubscript:@"residentFirstErrorDomain"];
  }

  if (self->_sharedMetricsId)
  {
    sharedMetricsId = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
    dictionaryRepresentation = [sharedMetricsId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sharedMetricsId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sharedMetricsId"];
    }
  }

  v25 = self->_has;
  if ((v25 & 0x400) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HomeKitSchemaHKAccessoryOperationReported totalDuration](self, "totalDuration")}];
    [dictionary setObject:v28 forKeyedSubscript:@"totalDuration"];

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

  [dictionary setObject:v30 forKeyedSubscript:@"transportType"];
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
  [dictionary setObject:v31 forKeyedSubscript:@"wasCached"];

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
  [dictionary setObject:v32 forKeyedSubscript:@"wasLocal"];

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
  [dictionary setObject:v33 forKeyedSubscript:@"wasRapportSlow"];

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
  [dictionary setObject:v34 forKeyedSubscript:@"wasRemoteAccessAllowed"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_42:
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[HomeKitSchemaHKAccessoryOperationReported wasResidentFirstEnabled](self, "wasResidentFirstEnabled")}];
    [dictionary setObject:v26 forKeyedSubscript:@"wasResidentFirstEnabled"];
  }

LABEL_43:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_64;
  }

  sharedMetricsId = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
  sharedMetricsId2 = [equalCopy sharedMetricsId];
  if ((sharedMetricsId != 0) == (sharedMetricsId2 == 0))
  {
    goto LABEL_63;
  }

  sharedMetricsId3 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
  if (sharedMetricsId3)
  {
    v8 = sharedMetricsId3;
    sharedMetricsId4 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
    sharedMetricsId5 = [equalCopy sharedMetricsId];
    v11 = [sharedMetricsId4 isEqual:sharedMetricsId5];

    if (!v11)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  sharedMetricsId = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];
  sharedMetricsId2 = [equalCopy accessoryCategory];
  if ((sharedMetricsId != 0) == (sharedMetricsId2 == 0))
  {
    goto LABEL_63;
  }

  accessoryCategory = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];
  if (accessoryCategory)
  {
    v13 = accessoryCategory;
    accessoryCategory2 = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];
    accessoryCategory3 = [equalCopy accessoryCategory];
    v16 = [accessoryCategory2 isEqual:accessoryCategory3];

    if (!v16)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_64;
  }

  if (*&has)
  {
    communicationProtocol = self->_communicationProtocol;
    if (communicationProtocol != [equalCopy communicationProtocol])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_64;
  }

  if (v20)
  {
    transportType = self->_transportType;
    if (transportType != [equalCopy transportType])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v22 = (*&has >> 2) & 1;
  if (v22 != ((v18 >> 2) & 1))
  {
    goto LABEL_64;
  }

  if (v22)
  {
    operationType = self->_operationType;
    if (operationType != [equalCopy operationType])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v24 = (*&has >> 3) & 1;
  if (v24 != ((v18 >> 3) & 1))
  {
    goto LABEL_64;
  }

  if (v24)
  {
    wasCached = self->_wasCached;
    if (wasCached != [equalCopy wasCached])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v26 = (*&has >> 4) & 1;
  if (v26 != ((v18 >> 4) & 1))
  {
    goto LABEL_64;
  }

  if (v26)
  {
    wasLocal = self->_wasLocal;
    if (wasLocal != [equalCopy wasLocal])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v28 = (*&has >> 5) & 1;
  if (v28 != ((v18 >> 5) & 1))
  {
    goto LABEL_64;
  }

  if (v28)
  {
    wasRemoteAccessAllowed = self->_wasRemoteAccessAllowed;
    if (wasRemoteAccessAllowed != [equalCopy wasRemoteAccessAllowed])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v30 = (*&has >> 6) & 1;
  if (v30 != ((v18 >> 6) & 1))
  {
    goto LABEL_64;
  }

  if (v30)
  {
    wasResidentFirstEnabled = self->_wasResidentFirstEnabled;
    if (wasResidentFirstEnabled != [equalCopy wasResidentFirstEnabled])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v32 = (*&has >> 7) & 1;
  if (v32 != ((v18 >> 7) & 1))
  {
    goto LABEL_64;
  }

  if (v32)
  {
    wasRapportSlow = self->_wasRapportSlow;
    if (wasRapportSlow != [equalCopy wasRapportSlow])
    {
      goto LABEL_64;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v34 = (*&has >> 8) & 1;
  if (v34 != ((v18 >> 8) & 1))
  {
    goto LABEL_64;
  }

  if (v34)
  {
    residentFirstDuration = self->_residentFirstDuration;
    if (residentFirstDuration != [equalCopy residentFirstDuration])
    {
      goto LABEL_64;
    }
  }

  sharedMetricsId = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];
  sharedMetricsId2 = [equalCopy residentFirstErrorDomain];
  if ((sharedMetricsId != 0) == (sharedMetricsId2 == 0))
  {
    goto LABEL_63;
  }

  residentFirstErrorDomain = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];
  if (residentFirstErrorDomain)
  {
    v37 = residentFirstErrorDomain;
    residentFirstErrorDomain2 = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];
    residentFirstErrorDomain3 = [equalCopy residentFirstErrorDomain];
    v40 = [residentFirstErrorDomain2 isEqual:residentFirstErrorDomain3];

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
  v43 = equalCopy[40];
  if (v42 != ((v43 >> 9) & 1))
  {
    goto LABEL_64;
  }

  if (v42)
  {
    residentFirstErrorCode = self->_residentFirstErrorCode;
    if (residentFirstErrorCode != [equalCopy residentFirstErrorCode])
    {
      goto LABEL_64;
    }

    v41 = self->_has;
    v43 = equalCopy[40];
  }

  v45 = (*&v41 >> 10) & 1;
  if (v45 != ((v43 >> 10) & 1))
  {
    goto LABEL_64;
  }

  if (v45)
  {
    totalDuration = self->_totalDuration;
    if (totalDuration != [equalCopy totalDuration])
    {
      goto LABEL_64;
    }
  }

  sharedMetricsId = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];
  sharedMetricsId2 = [equalCopy finalErrorDomain];
  if ((sharedMetricsId != 0) == (sharedMetricsId2 == 0))
  {
LABEL_63:

    goto LABEL_64;
  }

  finalErrorDomain = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];
  if (finalErrorDomain)
  {
    v48 = finalErrorDomain;
    finalErrorDomain2 = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];
    finalErrorDomain3 = [equalCopy finalErrorDomain];
    v51 = [finalErrorDomain2 isEqual:finalErrorDomain3];

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
  v56 = equalCopy[40];
  if (v55 == ((v56 >> 11) & 1))
  {
    if (v55)
    {
      finalErrorCode = self->_finalErrorCode;
      if (finalErrorCode != [equalCopy finalErrorCode])
      {
        goto LABEL_64;
      }

      v54 = self->_has;
      v56 = equalCopy[40];
    }

    v58 = (*&v54 >> 12) & 1;
    if (v58 == ((v56 >> 12) & 1))
    {
      if (!v58 || (consecutiveFailureCount = self->_consecutiveFailureCount, consecutiveFailureCount == [equalCopy consecutiveFailureCount]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  sharedMetricsId = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];

  if (sharedMetricsId)
  {
    sharedMetricsId2 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId];
    PBDataWriterWriteSubmessage();
  }

  accessoryCategory = [(HomeKitSchemaHKAccessoryOperationReported *)self accessoryCategory];

  if (accessoryCategory)
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
  residentFirstErrorDomain = [(HomeKitSchemaHKAccessoryOperationReported *)self residentFirstErrorDomain];

  if (residentFirstErrorDomain)
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

  finalErrorDomain = [(HomeKitSchemaHKAccessoryOperationReported *)self finalErrorDomain];

  if (finalErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  v12 = toCopy;
  if ((v11 & 0x800) != 0)
  {
    PBDataWriterWriteUint32Field();
    v12 = toCopy;
    v11 = self->_has;
  }

  if ((v11 & 0x1000) != 0)
  {
    PBDataWriterWriteUint32Field();
    v12 = toCopy;
  }
}

- (void)setHasConsecutiveFailureCount:(BOOL)count
{
  if (count)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasFinalErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasTotalDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasResidentFirstErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasResidentFirstDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasWasRapportSlow:(BOOL)slow
{
  if (slow)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasWasResidentFirstEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasWasRemoteAccessAllowed:(BOOL)allowed
{
  if (allowed)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasWasLocal:(BOOL)local
{
  if (local)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasWasCached:(BOOL)cached
{
  if (cached)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasOperationType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTransportType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = HomeKitSchemaHKAccessoryOperationReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(HomeKitSchemaHKAccessoryOperationReported *)self sharedMetricsId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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