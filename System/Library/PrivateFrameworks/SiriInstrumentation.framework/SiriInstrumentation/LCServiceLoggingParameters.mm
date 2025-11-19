@interface LCServiceLoggingParameters
- (BOOL)isEqual:(id)a3;
- (LCServiceLoggingParameters)initWithDictionary:(id)a3;
- (LCServiceLoggingParameters)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMessageSizeQuotaInBytes:(BOOL)a3;
- (void)setHasOptOutOfCompression:(BOOL)a3;
- (void)setHasOverrideIntoSamplePopulation:(BOOL)a3;
- (void)setHasRealtimeSamplingRate:(BOOL)a3;
- (void)setHasTotalDiskSizeQuotaInBytes:(BOOL)a3;
- (void)setHasUploadSamplingRate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation LCServiceLoggingParameters

- (LCServiceLoggingParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = LCServiceLoggingParameters;
  v5 = [(LCServiceLoggingParameters *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"qos"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceLoggingParameters setQos:](v5, "setQos:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"messageSizeQuotaInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceLoggingParameters setMessageSizeQuotaInBytes:](v5, "setMessageSizeQuotaInBytes:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"totalDiskSizeQuotaInBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceLoggingParameters setTotalDiskSizeQuotaInBytes:](v5, "setTotalDiskSizeQuotaInBytes:", [v8 intValue]);
    }

    v19 = v8;
    v9 = [v4 objectForKeyedSubscript:@"optOutOfCompression"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceLoggingParameters setOptOutOfCompression:](v5, "setOptOutOfCompression:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"uploadSamplingRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(LCServiceLoggingParameters *)v5 setUploadSamplingRate:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"realtimeSamplingRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(LCServiceLoggingParameters *)v5 setRealtimeSamplingRate:?];
    }

    v20 = v6;
    v12 = [v4 objectForKeyedSubscript:@"entropy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
      [(LCServiceLoggingParameters *)v5 setEntropy:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"overrideIntoSamplePopulation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LCServiceLoggingParameters setOverrideIntoSamplePopulation:](v5, "setOverrideIntoSamplePopulation:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"uploadEndpointURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(LCServiceLoggingParameters *)v5 setUploadEndpointURL:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (LCServiceLoggingParameters)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LCServiceLoggingParameters *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LCServiceLoggingParameters *)self dictionaryRepresentation];
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
  if (self->_entropy)
  {
    v4 = [(LCServiceLoggingParameters *)self entropy];
    v5 = [v4 base64EncodedStringWithOptions:0];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"entropy"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"entropy"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[LCServiceLoggingParameters messageSizeQuotaInBytes](self, "messageSizeQuotaInBytes")}];
    [v3 setObject:v14 forKeyedSubscript:@"messageSizeQuotaInBytes"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_8:
      if ((has & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[LCServiceLoggingParameters optOutOfCompression](self, "optOutOfCompression")}];
  [v3 setObject:v15 forKeyedSubscript:@"optOutOfCompression"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[LCServiceLoggingParameters overrideIntoSamplePopulation](self, "overrideIntoSamplePopulation")}];
  [v3 setObject:v16 forKeyedSubscript:@"overrideIntoSamplePopulation"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_23:
  v17 = [(LCServiceLoggingParameters *)self qos];
  v18 = @"QOSClassLow";
  if (v17 == 1)
  {
    v18 = @"QOSClassMedium";
  }

  if (v17 == 2)
  {
    v19 = @"QOSClassHigh";
  }

  else
  {
    v19 = v18;
  }

  [v3 setObject:v19 forKeyedSubscript:@"qos"];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  v20 = MEMORY[0x1E696AD98];
  [(LCServiceLoggingParameters *)self realtimeSamplingRate];
  v21 = [v20 numberWithFloat:?];
  [v3 setObject:v21 forKeyedSubscript:@"realtimeSamplingRate"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[LCServiceLoggingParameters totalDiskSizeQuotaInBytes](self, "totalDiskSizeQuotaInBytes")}];
    [v3 setObject:v8 forKeyedSubscript:@"totalDiskSizeQuotaInBytes"];
  }

LABEL_13:
  if (self->_uploadEndpointURL)
  {
    v9 = [(LCServiceLoggingParameters *)self uploadEndpointURL];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"uploadEndpointURL"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v11 = MEMORY[0x1E696AD98];
    [(LCServiceLoggingParameters *)self uploadSamplingRate];
    v12 = [v11 numberWithFloat:?];
    [v3 setObject:v12 forKeyedSubscript:@"uploadSamplingRate"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_qos;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_messageSizeQuotaInBytes;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_totalDiskSizeQuotaInBytes;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_optOutOfCompression;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  uploadSamplingRate = self->_uploadSamplingRate;
  if (uploadSamplingRate >= 0.0)
  {
    v10 = uploadSamplingRate;
  }

  else
  {
    v10 = -uploadSamplingRate;
  }

  *v2.i64 = floor(v10 + 0.5);
  v11 = (v10 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
  v13 = 2654435761u * *v2.i64;
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

LABEL_16:
  if ((*&self->_has & 0x20) != 0)
  {
    realtimeSamplingRate = self->_realtimeSamplingRate;
    if (realtimeSamplingRate >= 0.0)
    {
      v16 = realtimeSamplingRate;
    }

    else
    {
      v16 = -realtimeSamplingRate;
    }

    *v2.i64 = floor(v16 + 0.5);
    v17 = (v16 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v3, v2).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v14 += v17;
      }
    }

    else
    {
      v14 -= fabs(v17);
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = [(NSData *)self->_entropy hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v20 = 2654435761 * self->_overrideIntoSamplePopulation;
  }

  else
  {
    v20 = 0;
  }

  return v6 ^ v5 ^ v7 ^ v8 ^ v13 ^ v14 ^ v20 ^ v19 ^ [(NSString *)self->_uploadEndpointURL hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  has = self->_has;
  v6 = v4[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_38;
  }

  if (*&has)
  {
    qos = self->_qos;
    if (qos != [v4 qos])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      messageSizeQuotaInBytes = self->_messageSizeQuotaInBytes;
      if (messageSizeQuotaInBytes != [v4 messageSizeQuotaInBytes])
      {
        goto LABEL_38;
      }

      has = self->_has;
      v6 = v4[56];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        totalDiskSizeQuotaInBytes = self->_totalDiskSizeQuotaInBytes;
        if (totalDiskSizeQuotaInBytes != [v4 totalDiskSizeQuotaInBytes])
        {
          goto LABEL_38;
        }

        has = self->_has;
        v6 = v4[56];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (v12)
        {
          optOutOfCompression = self->_optOutOfCompression;
          if (optOutOfCompression != [v4 optOutOfCompression])
          {
            goto LABEL_38;
          }

          has = self->_has;
          v6 = v4[56];
        }

        v14 = (*&has >> 4) & 1;
        if (v14 == ((v6 >> 4) & 1))
        {
          if (v14)
          {
            uploadSamplingRate = self->_uploadSamplingRate;
            [v4 uploadSamplingRate];
            if (uploadSamplingRate != v16)
            {
              goto LABEL_38;
            }

            has = self->_has;
            v6 = v4[56];
          }

          v17 = (*&has >> 5) & 1;
          if (v17 != ((v6 >> 5) & 1))
          {
            goto LABEL_38;
          }

          if (v17)
          {
            realtimeSamplingRate = self->_realtimeSamplingRate;
            [v4 realtimeSamplingRate];
            if (realtimeSamplingRate != v19)
            {
              goto LABEL_38;
            }
          }

          v20 = [(LCServiceLoggingParameters *)self entropy];
          v21 = [v4 entropy];
          if ((v20 != 0) == (v21 == 0))
          {
            goto LABEL_37;
          }

          v22 = [(LCServiceLoggingParameters *)self entropy];
          if (v22)
          {
            v23 = v22;
            v24 = [(LCServiceLoggingParameters *)self entropy];
            v25 = [v4 entropy];
            v26 = [v24 isEqual:v25];

            if (!v26)
            {
              goto LABEL_38;
            }
          }

          else
          {
          }

          v27 = (*&self->_has >> 6) & 1;
          if (v27 != ((v4[56] >> 6) & 1))
          {
            goto LABEL_38;
          }

          if (v27)
          {
            overrideIntoSamplePopulation = self->_overrideIntoSamplePopulation;
            if (overrideIntoSamplePopulation != [v4 overrideIntoSamplePopulation])
            {
              goto LABEL_38;
            }
          }

          v20 = [(LCServiceLoggingParameters *)self uploadEndpointURL];
          v21 = [v4 uploadEndpointURL];
          if ((v20 != 0) != (v21 == 0))
          {
            v29 = [(LCServiceLoggingParameters *)self uploadEndpointURL];
            if (!v29)
            {

LABEL_41:
              v34 = 1;
              goto LABEL_39;
            }

            v30 = v29;
            v31 = [(LCServiceLoggingParameters *)self uploadEndpointURL];
            v32 = [v4 uploadEndpointURL];
            v33 = [v31 isEqual:v32];

            if (v33)
            {
              goto LABEL_41;
            }
          }

          else
          {
LABEL_37:
          }
        }
      }
    }
  }

LABEL_38:
  v34 = 0;
LABEL_39:

  return v34;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteBOOLField();
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

LABEL_21:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteFloatField();
  }

LABEL_8:
  v5 = [(LCServiceLoggingParameters *)self entropy];

  if (v5)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(LCServiceLoggingParameters *)self uploadEndpointURL];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (void)setHasOverrideIntoSamplePopulation:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasRealtimeSamplingRate:(BOOL)a3
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

- (void)setHasUploadSamplingRate:(BOOL)a3
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

- (void)setHasOptOutOfCompression:(BOOL)a3
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

- (void)setHasTotalDiskSizeQuotaInBytes:(BOOL)a3
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

- (void)setHasMessageSizeQuotaInBytes:(BOOL)a3
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