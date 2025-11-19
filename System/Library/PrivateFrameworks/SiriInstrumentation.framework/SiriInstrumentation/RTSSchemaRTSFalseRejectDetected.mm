@interface RTSSchemaRTSFalseRejectDetected
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RTSSchemaRTSFalseRejectDetected)initWithDictionary:(id)a3;
- (RTSSchemaRTSFalseRejectDetected)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RTSSchemaRTSFalseRejectDetected

- (RTSSchemaRTSFalseRejectDetected)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RTSSchemaRTSFalseRejectDetected;
  v5 = [(RTSSchemaRTSFalseRejectDetected *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RTSSchemaRTSFalseRejectDetected setAssetVersion:](v5, "setAssetVersion:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"gestureModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(RTSSchemaRTSFalseRejectDetected *)v5 setGestureModelVersion:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"audioModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(RTSSchemaRTSFalseRejectDetected *)v5 setAudioModelVersion:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"policyModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(RTSSchemaRTSFalseRejectDetected *)v5 setPolicyModelVersion:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (RTSSchemaRTSFalseRejectDetected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RTSSchemaRTSFalseRejectDetected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RTSSchemaRTSFalseRejectDetected *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RTSSchemaRTSFalseRejectDetected assetVersion](self, "assetVersion")}];
    [v3 setObject:v4 forKeyedSubscript:@"assetVersion"];
  }

  if (self->_audioModelVersion)
  {
    v5 = [(RTSSchemaRTSFalseRejectDetected *)self audioModelVersion];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"audioModelVersion"];
  }

  if (self->_gestureModelVersion)
  {
    v7 = [(RTSSchemaRTSFalseRejectDetected *)self gestureModelVersion];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"gestureModelVersion"];
  }

  if (self->_policyModelVersion)
  {
    v9 = [(RTSSchemaRTSFalseRejectDetected *)self policyModelVersion];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"policyModelVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_assetVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_gestureModelVersion hash]^ v3;
  v5 = [(NSString *)self->_audioModelVersion hash];
  return v4 ^ v5 ^ [(NSString *)self->_policyModelVersion hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    assetVersion = self->_assetVersion;
    if (assetVersion != [v4 assetVersion])
    {
      goto LABEL_20;
    }
  }

  v6 = [(RTSSchemaRTSFalseRejectDetected *)self gestureModelVersion];
  v7 = [v4 gestureModelVersion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v8 = [(RTSSchemaRTSFalseRejectDetected *)self gestureModelVersion];
  if (v8)
  {
    v9 = v8;
    v10 = [(RTSSchemaRTSFalseRejectDetected *)self gestureModelVersion];
    v11 = [v4 gestureModelVersion];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(RTSSchemaRTSFalseRejectDetected *)self audioModelVersion];
  v7 = [v4 audioModelVersion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(RTSSchemaRTSFalseRejectDetected *)self audioModelVersion];
  if (v13)
  {
    v14 = v13;
    v15 = [(RTSSchemaRTSFalseRejectDetected *)self audioModelVersion];
    v16 = [v4 audioModelVersion];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v6 = [(RTSSchemaRTSFalseRejectDetected *)self policyModelVersion];
  v7 = [v4 policyModelVersion];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(RTSSchemaRTSFalseRejectDetected *)self policyModelVersion];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(RTSSchemaRTSFalseRejectDetected *)self policyModelVersion];
    v21 = [v4 policyModelVersion];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = [(RTSSchemaRTSFalseRejectDetected *)self gestureModelVersion];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(RTSSchemaRTSFalseRejectDetected *)self audioModelVersion];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(RTSSchemaRTSFalseRejectDetected *)self policyModelVersion];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end