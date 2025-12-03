@interface COMAPPLEPROACTIVEGMSGMSUberEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventType:(id)type;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEventType:(BOOL)type;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation COMAPPLEPROACTIVEGMSGMSUberEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[36] & 4) != 0)
  {
    self->_eventType = fromCopy[18];
    *&self->_has |= 4u;
  }

  v16 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setBootSessionUUID:?];
    v5 = v16;
  }

  if (*(v5 + 13))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setModelManagerRequestIdentifier:?];
    v5 = v16;
  }

  if (*(v5 + 14))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setModelManagerSessionIdentifier:?];
    v5 = v16;
  }

  if (*(v5 + 12))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setInferenceProviderIdentifier:?];
    v5 = v16;
  }

  if (*(v5 + 17))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setUseCaseIdentifier:?];
    v5 = v16;
  }

  if (*(v5 + 5))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setCatalogResourceIdentifier:?];
    v5 = v16;
  }

  inferenceEvent = self->_inferenceEvent;
  v7 = *(v5 + 11);
  if (inferenceEvent)
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    [(COMAPPLEPROACTIVEGMSGMSInferenceEvent *)inferenceEvent mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setInferenceEvent:?];
  }

  v5 = v16;
LABEL_21:
  if ((v5[36] & 2) != 0)
  {
    self->_version = *(v5 + 2);
    *&self->_has |= 2u;
  }

  if (*(v5 + 16))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setTestKey:?];
    v5 = v16;
  }

  assetEvent = self->_assetEvent;
  v9 = *(v5 + 3);
  if (assetEvent)
  {
    if (!v9)
    {
      goto LABEL_31;
    }

    [(COMAPPLEPROACTIVEGMSGMSAssetEvent *)assetEvent mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_31;
    }

    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setAssetEvent:?];
  }

  v5 = v16;
LABEL_31:
  generativeFunctionEvent = self->_generativeFunctionEvent;
  v11 = *(v5 + 10);
  if (generativeFunctionEvent)
  {
    if (!v11)
    {
      goto LABEL_37;
    }

    [(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)generativeFunctionEvent mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_37;
    }

    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setGenerativeFunctionEvent:?];
  }

  v5 = v16;
LABEL_37:
  if (*(v5 + 6))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setClientRequestIdentifier:?];
    v5 = v16;
  }

  if (*(v5 + 7))
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setClientSessionIdentifier:?];
    v5 = v16;
  }

  if (v5[36])
  {
    self->_threadQualityOfService = *(v5 + 1);
    *&self->_has |= 1u;
  }

  error = self->_error;
  v13 = *(v5 + 8);
  if (error)
  {
    if (!v13)
    {
      goto LABEL_49;
    }

    [(COMAPPLEPROACTIVEGMSGMSError *)error mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_49;
    }

    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setError:?];
  }

  v5 = v16;
LABEL_49:
  prewarmEvent = self->_prewarmEvent;
  v15 = *(v5 + 15);
  if (prewarmEvent)
  {
    if (v15)
    {
      [(COMAPPLEPROACTIVEGMSGMSPrewarmEvent *)prewarmEvent mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self setPrewarmEvent:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v19 = 2654435761 * self->_eventType;
  }

  else
  {
    v19 = 0;
  }

  v18 = [(NSString *)self->_bootSessionUUID hash];
  v17 = [(NSString *)self->_modelManagerRequestIdentifier hash];
  v16 = [(NSString *)self->_modelManagerSessionIdentifier hash];
  v15 = [(NSString *)self->_inferenceProviderIdentifier hash];
  v14 = [(NSString *)self->_useCaseIdentifier hash];
  v3 = [(NSString *)self->_catalogResourceIdentifier hash];
  v4 = [(COMAPPLEPROACTIVEGMSGMSInferenceEvent *)self->_inferenceEvent hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_version;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_testKey hash];
  v7 = [(COMAPPLEPROACTIVEGMSGMSAssetEvent *)self->_assetEvent hash];
  v8 = [(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)self->_generativeFunctionEvent hash];
  v9 = [(NSString *)self->_clientRequestIdentifier hash];
  v10 = [(NSString *)self->_clientSessionIdentifier hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_threadQualityOfService;
  }

  else
  {
    v11 = 0;
  }

  v12 = v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(COMAPPLEPROACTIVEGMSGMSError *)self->_error hash];
  return v12 ^ [(COMAPPLEPROACTIVEGMSGMSPrewarmEvent *)self->_prewarmEvent hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  v5 = *(equalCopy + 144);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 144) & 4) == 0 || self->_eventType != *(equalCopy + 18))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 144) & 4) != 0)
  {
LABEL_45:
    v22 = 0;
    goto LABEL_46;
  }

  bootSessionUUID = self->_bootSessionUUID;
  if (bootSessionUUID | *(equalCopy + 4) && ![(NSString *)bootSessionUUID isEqual:?])
  {
    goto LABEL_45;
  }

  modelManagerRequestIdentifier = self->_modelManagerRequestIdentifier;
  if (modelManagerRequestIdentifier | *(equalCopy + 13))
  {
    if (![(NSString *)modelManagerRequestIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  modelManagerSessionIdentifier = self->_modelManagerSessionIdentifier;
  if (modelManagerSessionIdentifier | *(equalCopy + 14))
  {
    if (![(NSString *)modelManagerSessionIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  inferenceProviderIdentifier = self->_inferenceProviderIdentifier;
  if (inferenceProviderIdentifier | *(equalCopy + 12))
  {
    if (![(NSString *)inferenceProviderIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  useCaseIdentifier = self->_useCaseIdentifier;
  if (useCaseIdentifier | *(equalCopy + 17))
  {
    if (![(NSString *)useCaseIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  catalogResourceIdentifier = self->_catalogResourceIdentifier;
  if (catalogResourceIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)catalogResourceIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  inferenceEvent = self->_inferenceEvent;
  if (inferenceEvent | *(equalCopy + 11))
  {
    if (![(COMAPPLEPROACTIVEGMSGMSInferenceEvent *)inferenceEvent isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v13 = *(equalCopy + 144);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 144) & 2) == 0 || self->_version != *(equalCopy + 2))
    {
      goto LABEL_45;
    }
  }

  else if ((*(equalCopy + 144) & 2) != 0)
  {
    goto LABEL_45;
  }

  testKey = self->_testKey;
  if (testKey | *(equalCopy + 16) && ![(NSString *)testKey isEqual:?])
  {
    goto LABEL_45;
  }

  assetEvent = self->_assetEvent;
  if (assetEvent | *(equalCopy + 3))
  {
    if (![(COMAPPLEPROACTIVEGMSGMSAssetEvent *)assetEvent isEqual:?])
    {
      goto LABEL_45;
    }
  }

  generativeFunctionEvent = self->_generativeFunctionEvent;
  if (generativeFunctionEvent | *(equalCopy + 10))
  {
    if (![(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)generativeFunctionEvent isEqual:?])
    {
      goto LABEL_45;
    }
  }

  clientRequestIdentifier = self->_clientRequestIdentifier;
  if (clientRequestIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)clientRequestIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  clientSessionIdentifier = self->_clientSessionIdentifier;
  if (clientSessionIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)clientSessionIdentifier isEqual:?])
    {
      goto LABEL_45;
    }
  }

  v19 = *(equalCopy + 144);
  if (*&self->_has)
  {
    if ((*(equalCopy + 144) & 1) == 0 || self->_threadQualityOfService != *(equalCopy + 1))
    {
      goto LABEL_45;
    }
  }

  else if (*(equalCopy + 144))
  {
    goto LABEL_45;
  }

  error = self->_error;
  if (error | *(equalCopy + 8) && ![(COMAPPLEPROACTIVEGMSGMSError *)error isEqual:?])
  {
    goto LABEL_45;
  }

  prewarmEvent = self->_prewarmEvent;
  if (prewarmEvent | *(equalCopy + 15))
  {
    v22 = [(COMAPPLEPROACTIVEGMSGMSPrewarmEvent *)prewarmEvent isEqual:?];
  }

  else
  {
    v22 = 1;
  }

LABEL_46:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 72) = self->_eventType;
    *(v5 + 144) |= 4u;
  }

  v7 = [(NSString *)self->_bootSessionUUID copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSString *)self->_modelManagerRequestIdentifier copyWithZone:zone];
  v10 = *(v6 + 104);
  *(v6 + 104) = v9;

  v11 = [(NSString *)self->_modelManagerSessionIdentifier copyWithZone:zone];
  v12 = *(v6 + 112);
  *(v6 + 112) = v11;

  v13 = [(NSString *)self->_inferenceProviderIdentifier copyWithZone:zone];
  v14 = *(v6 + 96);
  *(v6 + 96) = v13;

  v15 = [(NSString *)self->_useCaseIdentifier copyWithZone:zone];
  v16 = *(v6 + 136);
  *(v6 + 136) = v15;

  v17 = [(NSString *)self->_catalogResourceIdentifier copyWithZone:zone];
  v18 = *(v6 + 40);
  *(v6 + 40) = v17;

  v19 = [(COMAPPLEPROACTIVEGMSGMSInferenceEvent *)self->_inferenceEvent copyWithZone:zone];
  v20 = *(v6 + 88);
  *(v6 + 88) = v19;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_version;
    *(v6 + 144) |= 2u;
  }

  v21 = [(NSString *)self->_testKey copyWithZone:zone];
  v22 = *(v6 + 128);
  *(v6 + 128) = v21;

  v23 = [(COMAPPLEPROACTIVEGMSGMSAssetEvent *)self->_assetEvent copyWithZone:zone];
  v24 = *(v6 + 24);
  *(v6 + 24) = v23;

  v25 = [(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)self->_generativeFunctionEvent copyWithZone:zone];
  v26 = *(v6 + 80);
  *(v6 + 80) = v25;

  v27 = [(NSString *)self->_clientRequestIdentifier copyWithZone:zone];
  v28 = *(v6 + 48);
  *(v6 + 48) = v27;

  v29 = [(NSString *)self->_clientSessionIdentifier copyWithZone:zone];
  v30 = *(v6 + 56);
  *(v6 + 56) = v29;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_threadQualityOfService;
    *(v6 + 144) |= 1u;
  }

  v31 = [(COMAPPLEPROACTIVEGMSGMSError *)self->_error copyWithZone:zone];
  v32 = *(v6 + 64);
  *(v6 + 64) = v31;

  v33 = [(COMAPPLEPROACTIVEGMSGMSPrewarmEvent *)self->_prewarmEvent copyWithZone:zone];
  v34 = *(v6 + 120);
  *(v6 + 120) = v33;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[18] = self->_eventType;
    *(toCopy + 144) |= 4u;
  }

  v5 = toCopy;
  if (self->_bootSessionUUID)
  {
    [toCopy setBootSessionUUID:?];
    toCopy = v5;
  }

  if (self->_modelManagerRequestIdentifier)
  {
    [v5 setModelManagerRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_modelManagerSessionIdentifier)
  {
    [v5 setModelManagerSessionIdentifier:?];
    toCopy = v5;
  }

  if (self->_inferenceProviderIdentifier)
  {
    [v5 setInferenceProviderIdentifier:?];
    toCopy = v5;
  }

  if (self->_useCaseIdentifier)
  {
    [v5 setUseCaseIdentifier:?];
    toCopy = v5;
  }

  if (self->_catalogResourceIdentifier)
  {
    [v5 setCatalogResourceIdentifier:?];
    toCopy = v5;
  }

  if (self->_inferenceEvent)
  {
    [v5 setInferenceEvent:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_version;
    *(toCopy + 144) |= 2u;
  }

  if (self->_testKey)
  {
    [v5 setTestKey:?];
    toCopy = v5;
  }

  if (self->_assetEvent)
  {
    [v5 setAssetEvent:?];
    toCopy = v5;
  }

  if (self->_generativeFunctionEvent)
  {
    [v5 setGenerativeFunctionEvent:?];
    toCopy = v5;
  }

  if (self->_clientRequestIdentifier)
  {
    [v5 setClientRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_clientSessionIdentifier)
  {
    [v5 setClientSessionIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_threadQualityOfService;
    *(toCopy + 144) |= 1u;
  }

  if (self->_error)
  {
    [v5 setError:?];
    toCopy = v5;
  }

  if (self->_prewarmEvent)
  {
    [v5 setPrewarmEvent:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_bootSessionUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_modelManagerRequestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_modelManagerSessionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_inferenceProviderIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_useCaseIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_catalogResourceIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_inferenceEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_testKey)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_assetEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_generativeFunctionEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_clientRequestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_clientSessionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (*&self->_has)
  {
    threadQualityOfService = self->_threadQualityOfService;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_prewarmEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_version];
    [dictionary setObject:v4 forKey:@"version"];
  }

  testKey = self->_testKey;
  if (testKey)
  {
    [dictionary setObject:testKey forKey:@"testKey"];
  }

  bootSessionUUID = self->_bootSessionUUID;
  if (bootSessionUUID)
  {
    [dictionary setObject:bootSessionUUID forKey:@"bootSessionUUID"];
  }

  modelManagerRequestIdentifier = self->_modelManagerRequestIdentifier;
  if (modelManagerRequestIdentifier)
  {
    [dictionary setObject:modelManagerRequestIdentifier forKey:@"modelManagerRequestIdentifier"];
  }

  modelManagerSessionIdentifier = self->_modelManagerSessionIdentifier;
  if (modelManagerSessionIdentifier)
  {
    [dictionary setObject:modelManagerSessionIdentifier forKey:@"modelManagerSessionIdentifier"];
  }

  inferenceProviderIdentifier = self->_inferenceProviderIdentifier;
  if (inferenceProviderIdentifier)
  {
    [dictionary setObject:inferenceProviderIdentifier forKey:@"inferenceProviderIdentifier"];
  }

  useCaseIdentifier = self->_useCaseIdentifier;
  if (useCaseIdentifier)
  {
    [dictionary setObject:useCaseIdentifier forKey:@"useCaseIdentifier"];
  }

  catalogResourceIdentifier = self->_catalogResourceIdentifier;
  if (catalogResourceIdentifier)
  {
    [dictionary setObject:catalogResourceIdentifier forKey:@"catalogResourceIdentifier"];
  }

  clientRequestIdentifier = self->_clientRequestIdentifier;
  if (clientRequestIdentifier)
  {
    [dictionary setObject:clientRequestIdentifier forKey:@"clientRequestIdentifier"];
  }

  clientSessionIdentifier = self->_clientSessionIdentifier;
  if (clientSessionIdentifier)
  {
    [dictionary setObject:clientSessionIdentifier forKey:@"clientSessionIdentifier"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_threadQualityOfService];
    [dictionary setObject:v15 forKey:@"threadQualityOfService"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    eventType = self->_eventType;
    if (eventType >= 5)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v17 = off_1E86C2D90[eventType];
    }

    [dictionary setObject:v17 forKey:@"eventType"];
  }

  inferenceEvent = self->_inferenceEvent;
  if (inferenceEvent)
  {
    dictionaryRepresentation = [(COMAPPLEPROACTIVEGMSGMSInferenceEvent *)inferenceEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"inferenceEvent"];
  }

  assetEvent = self->_assetEvent;
  if (assetEvent)
  {
    dictionaryRepresentation2 = [(COMAPPLEPROACTIVEGMSGMSAssetEvent *)assetEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"assetEvent"];
  }

  generativeFunctionEvent = self->_generativeFunctionEvent;
  if (generativeFunctionEvent)
  {
    dictionaryRepresentation3 = [(COMAPPLEPROACTIVEGMSGMSGenerativeFunctionEvent *)generativeFunctionEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"generativeFunctionEvent"];
  }

  prewarmEvent = self->_prewarmEvent;
  if (prewarmEvent)
  {
    dictionaryRepresentation4 = [(COMAPPLEPROACTIVEGMSGMSPrewarmEvent *)prewarmEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"prewarmEvent"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation5 = [(COMAPPLEPROACTIVEGMSGMSError *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"error"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSUberEvent;
  v4 = [(COMAPPLEPROACTIVEGMSGMSUberEvent *)&v8 description];
  dictionaryRepresentation = [(COMAPPLEPROACTIVEGMSGMSUberEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GMS_EVENT_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"GMS_EVENT_TYPE_INFERENCE_EVENT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"GMS_EVENT_TYPE_ASSET_EVENT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"GMS_EVENT_TYPE_GENERATIVE_FUNCTION_EVENT"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"GMS_EVENT_TYPE_PREWARM_EVENT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEventType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)eventType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end