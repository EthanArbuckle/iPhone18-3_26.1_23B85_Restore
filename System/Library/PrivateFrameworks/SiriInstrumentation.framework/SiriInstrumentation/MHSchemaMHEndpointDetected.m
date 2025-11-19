@interface MHSchemaMHEndpointDetected
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHEndpointDetected)initWithDictionary:(id)a3;
- (MHSchemaMHEndpointDetected)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioSkippedDurationInNs:(BOOL)a3;
- (void)setHasDerivedBufferTimeFromHistoricalAudio:(BOOL)a3;
- (void)setHasEndpointAudioDurationInNs:(BOOL)a3;
- (void)setHasEndpointResetPositionInNs:(BOOL)a3;
- (void)setHasEndpointedBufferTimeInNs:(BOOL)a3;
- (void)setHasEndpointerDecisionLagInNs:(BOOL)a3;
- (void)setHasEndpointerScore:(BOOL)a3;
- (void)setHasEndpointerThreshold:(BOOL)a3;
- (void)setHasExtraDelayInNs:(BOOL)a3;
- (void)setHasFirstBufferTimeInNs:(BOOL)a3;
- (void)setHasTrpDetectionType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHEndpointDetected

- (MHSchemaMHEndpointDetected)initWithDictionary:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = MHSchemaMHEndpointDetected;
  v5 = [(MHSchemaMHEndpointDetected *)&v40 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"endpointerType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setEndpointerType:](v5, "setEndpointerType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"endpointAudioDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setEndpointAudioDurationInNs:](v5, "setEndpointAudioDurationInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"firstBufferTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setFirstBufferTimeInNs:](v5, "setFirstBufferTimeInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"endpointedBufferTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setEndpointedBufferTimeInNs:](v5, "setEndpointedBufferTimeInNs:", [v9 unsignedLongLongValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"endpointFeaturesAtEndpoint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MHSchemaMHEndpointFeaturesAtEndpoint alloc] initWithDictionary:v10];
      [(MHSchemaMHEndpointDetected *)v5 setEndpointFeaturesAtEndpoint:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"endpointerDecisionLagInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setEndpointerDecisionLagInNs:](v5, "setEndpointerDecisionLagInNs:", [v12 unsignedLongLongValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"extraDelayInNs"];
    objc_opt_class();
    v39 = v13;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setExtraDelayInNs:](v5, "setExtraDelayInNs:", [v13 unsignedLongLongValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"endpointModelConfigVersion"];
    objc_opt_class();
    v38 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaVersion alloc] initWithDictionary:v14];
      [(MHSchemaMHEndpointDetected *)v5 setEndpointModelConfigVersion:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"derivedBufferTimeFromHistoricalAudio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setDerivedBufferTimeFromHistoricalAudio:](v5, "setDerivedBufferTimeFromHistoricalAudio:", [v16 BOOLValue]);
    }

    v37 = v6;
    v17 = [v4 objectForKeyedSubscript:@"endpointerThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 floatValue];
      [(MHSchemaMHEndpointDetected *)v5 setEndpointerThreshold:?];
    }

    v36 = v7;
    v18 = [v4 objectForKeyedSubscript:{@"endpointerScore", v17}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(MHSchemaMHEndpointDetected *)v5 setEndpointerScore:?];
    }

    v35 = v8;
    v19 = [v4 objectForKeyedSubscript:@"audioSkippedDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setAudioSkippedDurationInNs:](v5, "setAudioSkippedDurationInNs:", [v19 unsignedLongLongValue]);
    }

    v34 = v9;
    v20 = [v4 objectForKeyedSubscript:@"endpointResetPositionInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setEndpointResetPositionInNs:](v5, "setEndpointResetPositionInNs:", [v20 unsignedLongLongValue]);
    }

    v31 = v16;
    v33 = v10;
    v21 = [v4 objectForKeyedSubscript:@"asrFeatureLatencyDistribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[MHSchemaMHStatisticDistributionInfo alloc] initWithDictionary:v21];
      [(MHSchemaMHEndpointDetected *)v5 setAsrFeatureLatencyDistribution:v22];
    }

    v32 = v12;
    v23 = [v4 objectForKeyedSubscript:@"timeoutMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[MHSchemaMHEndpointerTimeoutMetadata alloc] initWithDictionary:v23];
      [(MHSchemaMHEndpointDetected *)v5 setTimeoutMetadata:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"trpDetectionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointDetected setTrpDetectionType:](v5, "setTrpDetectionType:", [v25 intValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[SISchemaUUID alloc] initWithDictionary:v26];
      [(MHSchemaMHEndpointDetected *)v5 setTrpId:v27];
    }

    v28 = v5;
  }

  return v5;
}

- (MHSchemaMHEndpointDetected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHEndpointDetected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHEndpointDetected *)self dictionaryRepresentation];
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
  if (self->_asrFeatureLatencyDistribution)
  {
    v4 = [(MHSchemaMHEndpointDetected *)self asrFeatureLatencyDistribution];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"asrFeatureLatencyDistribution"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"asrFeatureLatencyDistribution"];
    }
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDetected audioSkippedDurationInNs](self, "audioSkippedDurationInNs")}];
    [v3 setObject:v11 forKeyedSubscript:@"audioSkippedDurationInNs"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_8:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHEndpointDetected derivedBufferTimeFromHistoricalAudio](self, "derivedBufferTimeFromHistoricalAudio")}];
  [v3 setObject:v12 forKeyedSubscript:@"derivedBufferTimeFromHistoricalAudio"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDetected endpointAudioDurationInNs](self, "endpointAudioDurationInNs")}];
    [v3 setObject:v8 forKeyedSubscript:@"endpointAudioDurationInNs"];
  }

LABEL_10:
  if (self->_endpointFeaturesAtEndpoint)
  {
    v9 = [(MHSchemaMHEndpointDetected *)self endpointFeaturesAtEndpoint];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"endpointFeaturesAtEndpoint"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"endpointFeaturesAtEndpoint"];
    }
  }

  if (self->_endpointModelConfigVersion)
  {
    v14 = [(MHSchemaMHEndpointDetected *)self endpointModelConfigVersion];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"endpointModelConfigVersion"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"endpointModelConfigVersion"];
    }
  }

  v17 = self->_has;
  if ((v17 & 0x400) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDetected endpointResetPositionInNs](self, "endpointResetPositionInNs")}];
    [v3 setObject:v21 forKeyedSubscript:@"endpointResetPositionInNs"];

    v17 = self->_has;
    if ((v17 & 8) == 0)
    {
LABEL_25:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_37;
    }
  }

  else if ((v17 & 8) == 0)
  {
    goto LABEL_25;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDetected endpointedBufferTimeInNs](self, "endpointedBufferTimeInNs")}];
  [v3 setObject:v22 forKeyedSubscript:@"endpointedBufferTimeInNs"];

  v17 = self->_has;
  if ((v17 & 0x10) == 0)
  {
LABEL_26:
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_37:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDetected endpointerDecisionLagInNs](self, "endpointerDecisionLagInNs")}];
  [v3 setObject:v23 forKeyedSubscript:@"endpointerDecisionLagInNs"];

  v17 = self->_has;
  if ((v17 & 0x100) == 0)
  {
LABEL_27:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_38:
  v24 = MEMORY[0x1E696AD98];
  [(MHSchemaMHEndpointDetected *)self endpointerScore];
  v25 = [v24 numberWithFloat:?];
  [v3 setObject:v25 forKeyedSubscript:@"endpointerScore"];

  v17 = self->_has;
  if ((v17 & 0x80) == 0)
  {
LABEL_28:
    if ((v17 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  v26 = MEMORY[0x1E696AD98];
  [(MHSchemaMHEndpointDetected *)self endpointerThreshold];
  v27 = [v26 numberWithFloat:?];
  [v3 setObject:v27 forKeyedSubscript:@"endpointerThreshold"];

  v17 = self->_has;
  if ((v17 & 1) == 0)
  {
LABEL_29:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_44;
  }

LABEL_40:
  v28 = [(MHSchemaMHEndpointDetected *)self endpointerType]- 1;
  if (v28 > 6)
  {
    v29 = @"MHENDPOINTER_TYPE_UNDEFINED";
  }

  else
  {
    v29 = off_1E78D9780[v28];
  }

  [v3 setObject:v29 forKeyedSubscript:@"endpointerType"];
  v17 = self->_has;
  if ((v17 & 0x20) == 0)
  {
LABEL_30:
    if ((v17 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_44:
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDetected extraDelayInNs](self, "extraDelayInNs")}];
  [v3 setObject:v30 forKeyedSubscript:@"extraDelayInNs"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_31:
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointDetected firstBufferTimeInNs](self, "firstBufferTimeInNs")}];
    [v3 setObject:v18 forKeyedSubscript:@"firstBufferTimeInNs"];
  }

LABEL_32:
  if (self->_timeoutMetadata)
  {
    v19 = [(MHSchemaMHEndpointDetected *)self timeoutMetadata];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"timeoutMetadata"];
    }

    else
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v31 forKeyedSubscript:@"timeoutMetadata"];
    }
  }

  if ((*&self->_has & 0x800) != 0)
  {
    v32 = [(MHSchemaMHEndpointDetected *)self trpDetectionType];
    v33 = @"MHTRPDETECTIONTYPE_UNKNOWN";
    if (v32 == 1)
    {
      v33 = @"MHTRPDETECTIONTYPE_DEFAULT";
    }

    if (v32 == 2)
    {
      v34 = @"MHTRPDETECTIONTYPE_RELAXED";
    }

    else
    {
      v34 = v33;
    }

    [v3 setObject:v34 forKeyedSubscript:@"trpDetectionType"];
  }

  if (self->_trpId)
  {
    v35 = [(MHSchemaMHEndpointDetected *)self trpId];
    v36 = [v35 dictionaryRepresentation];
    if (v36)
    {
      [v3 setObject:v36 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v37 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v37 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v32 = 2654435761 * self->_endpointerType;
    if ((has & 2) != 0)
    {
LABEL_3:
      v31 = 2654435761u * self->_endpointAudioDurationInNs;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v30 = 0;
      if ((has & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v32 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v30 = 2654435761u * self->_firstBufferTimeInNs;
  if ((has & 8) != 0)
  {
LABEL_5:
    v29 = 2654435761u * self->_endpointedBufferTimeInNs;
    goto LABEL_10;
  }

LABEL_9:
  v29 = 0;
LABEL_10:
  v28 = [(MHSchemaMHEndpointFeaturesAtEndpoint *)self->_endpointFeaturesAtEndpoint hash];
  v4 = self->_has;
  if ((v4 & 0x10) != 0)
  {
    v27 = 2654435761u * self->_endpointerDecisionLagInNs;
    if ((v4 & 0x20) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v27 = 0;
    if ((v4 & 0x20) != 0)
    {
LABEL_12:
      v26 = 2654435761u * self->_extraDelayInNs;
      goto LABEL_15;
    }
  }

  v26 = 0;
LABEL_15:
  v5 = [(SISchemaVersion *)self->_endpointModelConfigVersion hash];
  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
    v9 = 0;
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  v9 = 2654435761 * self->_derivedBufferTimeFromHistoricalAudio;
  if ((v8 & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  endpointerThreshold = self->_endpointerThreshold;
  if (endpointerThreshold >= 0.0)
  {
    v11 = endpointerThreshold;
  }

  else
  {
    v11 = -endpointerThreshold;
  }

  *v6.i64 = floor(v11 + 0.5);
  v12 = (v11 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v13), v7, v6);
  v14 = 2654435761u * *v6.i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_24:
  if ((*&self->_has & 0x100) != 0)
  {
    endpointerScore = self->_endpointerScore;
    if (endpointerScore >= 0.0)
    {
      v17 = endpointerScore;
    }

    else
    {
      v17 = -endpointerScore;
    }

    *v6.i64 = floor(v17 + 0.5);
    v18 = (v17 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v7, v6).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v15 += v18;
      }
    }

    else
    {
      v15 -= fabs(v18);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v20 = 2654435761u * self->_audioSkippedDurationInNs;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v20 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_37:
      v21 = 2654435761u * self->_endpointResetPositionInNs;
      goto LABEL_40;
    }
  }

  v21 = 0;
LABEL_40:
  v22 = [(MHSchemaMHStatisticDistributionInfo *)self->_asrFeatureLatencyDistribution hash];
  v23 = [(MHSchemaMHEndpointerTimeoutMetadata *)self->_timeoutMetadata hash];
  if ((*&self->_has & 0x800) != 0)
  {
    v24 = 2654435761 * self->_trpDetectionType;
  }

  else
  {
    v24 = 0;
  }

  return v31 ^ v32 ^ v30 ^ v29 ^ v27 ^ v26 ^ v28 ^ v5 ^ v9 ^ v14 ^ v15 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ [(SISchemaUUID *)self->_trpId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_71;
  }

  has = self->_has;
  v6 = v4[68];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_71;
  }

  if (*&has)
  {
    endpointerType = self->_endpointerType;
    if (endpointerType != [v4 endpointerType])
    {
      goto LABEL_71;
    }

    has = self->_has;
    v6 = v4[68];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_71;
  }

  if (v8)
  {
    endpointAudioDurationInNs = self->_endpointAudioDurationInNs;
    if (endpointAudioDurationInNs != [v4 endpointAudioDurationInNs])
    {
      goto LABEL_71;
    }

    has = self->_has;
    v6 = v4[68];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_71;
  }

  if (v10)
  {
    firstBufferTimeInNs = self->_firstBufferTimeInNs;
    if (firstBufferTimeInNs != [v4 firstBufferTimeInNs])
    {
      goto LABEL_71;
    }

    has = self->_has;
    v6 = v4[68];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_71;
  }

  if (v12)
  {
    endpointedBufferTimeInNs = self->_endpointedBufferTimeInNs;
    if (endpointedBufferTimeInNs != [v4 endpointedBufferTimeInNs])
    {
      goto LABEL_71;
    }
  }

  v14 = [(MHSchemaMHEndpointDetected *)self endpointFeaturesAtEndpoint];
  v15 = [v4 endpointFeaturesAtEndpoint];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_70;
  }

  v16 = [(MHSchemaMHEndpointDetected *)self endpointFeaturesAtEndpoint];
  if (v16)
  {
    v17 = v16;
    v18 = [(MHSchemaMHEndpointDetected *)self endpointFeaturesAtEndpoint];
    v19 = [v4 endpointFeaturesAtEndpoint];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v21 = self->_has;
  v22 = (*&v21 >> 4) & 1;
  v23 = v4[68];
  if (v22 != ((v23 >> 4) & 1))
  {
    goto LABEL_71;
  }

  if (v22)
  {
    endpointerDecisionLagInNs = self->_endpointerDecisionLagInNs;
    if (endpointerDecisionLagInNs != [v4 endpointerDecisionLagInNs])
    {
      goto LABEL_71;
    }

    v21 = self->_has;
    v23 = v4[68];
  }

  v25 = (*&v21 >> 5) & 1;
  if (v25 != ((v23 >> 5) & 1))
  {
    goto LABEL_71;
  }

  if (v25)
  {
    extraDelayInNs = self->_extraDelayInNs;
    if (extraDelayInNs != [v4 extraDelayInNs])
    {
      goto LABEL_71;
    }
  }

  v14 = [(MHSchemaMHEndpointDetected *)self endpointModelConfigVersion];
  v15 = [v4 endpointModelConfigVersion];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_70;
  }

  v27 = [(MHSchemaMHEndpointDetected *)self endpointModelConfigVersion];
  if (v27)
  {
    v28 = v27;
    v29 = [(MHSchemaMHEndpointDetected *)self endpointModelConfigVersion];
    v30 = [v4 endpointModelConfigVersion];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v32 = self->_has;
  v33 = (*&v32 >> 6) & 1;
  v34 = v4[68];
  if (v33 != ((v34 >> 6) & 1))
  {
    goto LABEL_71;
  }

  if (v33)
  {
    derivedBufferTimeFromHistoricalAudio = self->_derivedBufferTimeFromHistoricalAudio;
    if (derivedBufferTimeFromHistoricalAudio != [v4 derivedBufferTimeFromHistoricalAudio])
    {
      goto LABEL_71;
    }

    v32 = self->_has;
    v34 = v4[68];
  }

  v36 = (*&v32 >> 7) & 1;
  if (v36 != ((v34 >> 7) & 1))
  {
    goto LABEL_71;
  }

  if (v36)
  {
    endpointerThreshold = self->_endpointerThreshold;
    [v4 endpointerThreshold];
    if (endpointerThreshold != v38)
    {
      goto LABEL_71;
    }

    v32 = self->_has;
    v34 = v4[68];
  }

  v39 = (*&v32 >> 8) & 1;
  if (v39 != ((v34 >> 8) & 1))
  {
    goto LABEL_71;
  }

  if (v39)
  {
    endpointerScore = self->_endpointerScore;
    [v4 endpointerScore];
    if (endpointerScore != v41)
    {
      goto LABEL_71;
    }

    v32 = self->_has;
    v34 = v4[68];
  }

  v42 = (*&v32 >> 9) & 1;
  if (v42 != ((v34 >> 9) & 1))
  {
    goto LABEL_71;
  }

  if (v42)
  {
    audioSkippedDurationInNs = self->_audioSkippedDurationInNs;
    if (audioSkippedDurationInNs != [v4 audioSkippedDurationInNs])
    {
      goto LABEL_71;
    }

    v32 = self->_has;
    v34 = v4[68];
  }

  v44 = (*&v32 >> 10) & 1;
  if (v44 != ((v34 >> 10) & 1))
  {
    goto LABEL_71;
  }

  if (v44)
  {
    endpointResetPositionInNs = self->_endpointResetPositionInNs;
    if (endpointResetPositionInNs != [v4 endpointResetPositionInNs])
    {
      goto LABEL_71;
    }
  }

  v14 = [(MHSchemaMHEndpointDetected *)self asrFeatureLatencyDistribution];
  v15 = [v4 asrFeatureLatencyDistribution];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_70;
  }

  v46 = [(MHSchemaMHEndpointDetected *)self asrFeatureLatencyDistribution];
  if (v46)
  {
    v47 = v46;
    v48 = [(MHSchemaMHEndpointDetected *)self asrFeatureLatencyDistribution];
    v49 = [v4 asrFeatureLatencyDistribution];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v14 = [(MHSchemaMHEndpointDetected *)self timeoutMetadata];
  v15 = [v4 timeoutMetadata];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_70;
  }

  v51 = [(MHSchemaMHEndpointDetected *)self timeoutMetadata];
  if (v51)
  {
    v52 = v51;
    v53 = [(MHSchemaMHEndpointDetected *)self timeoutMetadata];
    v54 = [v4 timeoutMetadata];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v56 = (*&self->_has >> 11) & 1;
  if (v56 != ((v4[68] >> 11) & 1))
  {
    goto LABEL_71;
  }

  if (v56)
  {
    trpDetectionType = self->_trpDetectionType;
    if (trpDetectionType != [v4 trpDetectionType])
    {
      goto LABEL_71;
    }
  }

  v14 = [(MHSchemaMHEndpointDetected *)self trpId];
  v15 = [v4 trpId];
  if ((v14 != 0) == (v15 == 0))
  {
LABEL_70:

    goto LABEL_71;
  }

  v58 = [(MHSchemaMHEndpointDetected *)self trpId];
  if (!v58)
  {

LABEL_74:
    v63 = 1;
    goto LABEL_72;
  }

  v59 = v58;
  v60 = [(MHSchemaMHEndpointDetected *)self trpId];
  v61 = [v4 trpId];
  v62 = [v60 isEqual:v61];

  if (v62)
  {
    goto LABEL_74;
  }

LABEL_71:
  v63 = 0;
LABEL_72:

  return v63;
}

- (void)writeTo:(id)a3
{
  v18 = a3;
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

      goto LABEL_33;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_33:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteUint64Field();
  }

LABEL_6:
  v5 = [(MHSchemaMHEndpointDetected *)self endpointFeaturesAtEndpoint];

  if (v5)
  {
    v6 = [(MHSchemaMHEndpointDetected *)self endpointFeaturesAtEndpoint];
    PBDataWriterWriteSubmessage();
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    PBDataWriterWriteUint64Field();
    v7 = self->_has;
  }

  if ((v7 & 0x20) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v8 = [(MHSchemaMHEndpointDetected *)self endpointModelConfigVersion];

  if (v8)
  {
    v9 = [(MHSchemaMHEndpointDetected *)self endpointModelConfigVersion];
    PBDataWriterWriteSubmessage();
  }

  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
    v10 = self->_has;
    if ((v10 & 0x80) == 0)
    {
LABEL_16:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_37;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  PBDataWriterWriteFloatField();
  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_17:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  PBDataWriterWriteFloatField();
  v10 = self->_has;
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_38:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_19:
    PBDataWriterWriteUint64Field();
  }

LABEL_20:
  v11 = [(MHSchemaMHEndpointDetected *)self asrFeatureLatencyDistribution];

  if (v11)
  {
    v12 = [(MHSchemaMHEndpointDetected *)self asrFeatureLatencyDistribution];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(MHSchemaMHEndpointDetected *)self timeoutMetadata];

  if (v13)
  {
    v14 = [(MHSchemaMHEndpointDetected *)self timeoutMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x800) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v15 = [(MHSchemaMHEndpointDetected *)self trpId];

  v16 = v18;
  if (v15)
  {
    v17 = [(MHSchemaMHEndpointDetected *)self trpId];
    PBDataWriterWriteSubmessage();

    v16 = v18;
  }
}

- (void)setHasTrpDetectionType:(BOOL)a3
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

- (void)setHasEndpointResetPositionInNs:(BOOL)a3
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

- (void)setHasAudioSkippedDurationInNs:(BOOL)a3
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

- (void)setHasEndpointerScore:(BOOL)a3
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

- (void)setHasEndpointerThreshold:(BOOL)a3
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

- (void)setHasDerivedBufferTimeFromHistoricalAudio:(BOOL)a3
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

- (void)setHasExtraDelayInNs:(BOOL)a3
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

- (void)setHasEndpointerDecisionLagInNs:(BOOL)a3
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

- (void)setHasEndpointedBufferTimeInNs:(BOOL)a3
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

- (void)setHasFirstBufferTimeInNs:(BOOL)a3
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

- (void)setHasEndpointAudioDurationInNs:(BOOL)a3
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
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MHSchemaMHEndpointDetected;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHEndpointDetected *)self endpointFeaturesAtEndpoint];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHEndpointDetected *)self deleteEndpointFeaturesAtEndpoint];
  }

  v9 = [(MHSchemaMHEndpointDetected *)self endpointModelConfigVersion];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MHSchemaMHEndpointDetected *)self deleteEndpointModelConfigVersion];
  }

  v12 = [(MHSchemaMHEndpointDetected *)self asrFeatureLatencyDistribution];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MHSchemaMHEndpointDetected *)self deleteAsrFeatureLatencyDistribution];
  }

  v15 = [(MHSchemaMHEndpointDetected *)self timeoutMetadata];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(MHSchemaMHEndpointDetected *)self deleteTimeoutMetadata];
  }

  v18 = [(MHSchemaMHEndpointDetected *)self trpId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(MHSchemaMHEndpointDetected *)self deleteTrpId];
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