@interface MHSchemaMHEndpointFeaturesAtEndpoint
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHEndpointFeaturesAtEndpoint)initWithDictionary:(id)a3;
- (MHSchemaMHEndpointFeaturesAtEndpoint)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAcousticEndpointerScore:(BOOL)a3;
- (void)setHasClientSilenceFramesCountInNs:(BOOL)a3;
- (void)setHasClientSilenceProbability:(BOOL)a3;
- (void)setHasEndOfSentenceLikelihood:(BOOL)a3;
- (void)setHasRcEndOfSentenceLikelihood:(BOOL)a3;
- (void)setHasRcServerFeaturesLatency:(BOOL)a3;
- (void)setHasRcTrailingSilenceDuration:(BOOL)a3;
- (void)setHasRcWordCount:(BOOL)a3;
- (void)setHasServerFeaturesLatencyInNs:(BOOL)a3;
- (void)setHasSilencePosterior:(BOOL)a3;
- (void)setHasSilencePosteriorFrameCountInNs:(BOOL)a3;
- (void)setHasWordCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHEndpointFeaturesAtEndpoint

- (MHSchemaMHEndpointFeaturesAtEndpoint)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = MHSchemaMHEndpointFeaturesAtEndpoint;
  v5 = [(MHSchemaMHEndpointFeaturesAtEndpoint *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"trailingSilenceDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointFeaturesAtEndpoint setTrailingSilenceDurationInNs:](v5, "setTrailingSilenceDurationInNs:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"clientSilenceFramesCountInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointFeaturesAtEndpoint setClientSilenceFramesCountInNs:](v5, "setClientSilenceFramesCountInNs:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"endOfSentenceLikelihood"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHEndpointFeaturesAtEndpoint *)v5 setEndOfSentenceLikelihood:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"wordCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointFeaturesAtEndpoint setWordCount:](v5, "setWordCount:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"serverFeaturesLatencyInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointFeaturesAtEndpoint setServerFeaturesLatencyInNs:](v5, "setServerFeaturesLatencyInNs:", [v10 unsignedLongLongValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"clientSilenceProbability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(MHSchemaMHEndpointFeaturesAtEndpoint *)v5 setClientSilenceProbability:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"rcTrailingSilenceDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointFeaturesAtEndpoint setRcTrailingSilenceDuration:](v5, "setRcTrailingSilenceDuration:", [v12 unsignedLongLongValue]);
    }

    v27 = v6;
    v13 = [v4 objectForKeyedSubscript:{@"rcEndOfSentenceLikelihood", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(MHSchemaMHEndpointFeaturesAtEndpoint *)v5 setRcEndOfSentenceLikelihood:?];
    }

    v26 = v7;
    v14 = [v4 objectForKeyedSubscript:@"rcWordCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointFeaturesAtEndpoint setRcWordCount:](v5, "setRcWordCount:", [v14 unsignedIntValue]);
    }

    v25 = v8;
    v15 = [v4 objectForKeyedSubscript:@"rcServerFeaturesLatency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointFeaturesAtEndpoint setRcServerFeaturesLatency:](v5, "setRcServerFeaturesLatency:", [v15 unsignedLongLongValue]);
    }

    v23 = v11;
    v24 = v9;
    v16 = [v4 objectForKeyedSubscript:@"silencePosterior"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 floatValue];
      [(MHSchemaMHEndpointFeaturesAtEndpoint *)v5 setSilencePosterior:?];
    }

    v17 = v10;
    v18 = [v4 objectForKeyedSubscript:@"acousticEndpointerScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 floatValue];
      [(MHSchemaMHEndpointFeaturesAtEndpoint *)v5 setAcousticEndpointerScore:?];
    }

    v19 = [v4 objectForKeyedSubscript:@"silencePosteriorFrameCountInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 floatValue];
      [(MHSchemaMHEndpointFeaturesAtEndpoint *)v5 setSilencePosteriorFrameCountInNs:?];
    }

    v20 = v5;
  }

  return v5;
}

- (MHSchemaMHEndpointFeaturesAtEndpoint)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHEndpointFeaturesAtEndpoint *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHEndpointFeaturesAtEndpoint *)self dictionaryRepresentation];
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
  if ((has & 0x800) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(MHSchemaMHEndpointFeaturesAtEndpoint *)self acousticEndpointerScore];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"acousticEndpointerScore"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointFeaturesAtEndpoint clientSilenceFramesCountInNs](self, "clientSilenceFramesCountInNs")}];
  [v3 setObject:v9 forKeyedSubscript:@"clientSilenceFramesCountInNs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = MEMORY[0x1E696AD98];
  [(MHSchemaMHEndpointFeaturesAtEndpoint *)self clientSilenceProbability];
  v11 = [v10 numberWithFloat:?];
  [v3 setObject:v11 forKeyedSubscript:@"clientSilenceProbability"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = MEMORY[0x1E696AD98];
  [(MHSchemaMHEndpointFeaturesAtEndpoint *)self endOfSentenceLikelihood];
  v13 = [v12 numberWithFloat:?];
  [v3 setObject:v13 forKeyedSubscript:@"endOfSentenceLikelihood"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = MEMORY[0x1E696AD98];
  [(MHSchemaMHEndpointFeaturesAtEndpoint *)self rcEndOfSentenceLikelihood];
  v15 = [v14 numberWithFloat:?];
  [v3 setObject:v15 forKeyedSubscript:@"rcEndOfSentenceLikelihood"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointFeaturesAtEndpoint rcServerFeaturesLatency](self, "rcServerFeaturesLatency")}];
  [v3 setObject:v16 forKeyedSubscript:@"rcServerFeaturesLatency"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointFeaturesAtEndpoint rcTrailingSilenceDuration](self, "rcTrailingSilenceDuration")}];
  [v3 setObject:v17 forKeyedSubscript:@"rcTrailingSilenceDuration"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHEndpointFeaturesAtEndpoint rcWordCount](self, "rcWordCount")}];
  [v3 setObject:v18 forKeyedSubscript:@"rcWordCount"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointFeaturesAtEndpoint serverFeaturesLatencyInNs](self, "serverFeaturesLatencyInNs")}];
  [v3 setObject:v19 forKeyedSubscript:@"serverFeaturesLatencyInNs"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v20 = MEMORY[0x1E696AD98];
  [(MHSchemaMHEndpointFeaturesAtEndpoint *)self silencePosterior];
  v21 = [v20 numberWithFloat:?];
  [v3 setObject:v21 forKeyedSubscript:@"silencePosterior"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v22 = MEMORY[0x1E696AD98];
  [(MHSchemaMHEndpointFeaturesAtEndpoint *)self silencePosteriorFrameCountInNs];
  v23 = [v22 numberWithFloat:?];
  [v3 setObject:v23 forKeyedSubscript:@"silencePosteriorFrameCountInNs"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHEndpointFeaturesAtEndpoint trailingSilenceDurationInNs](self, "trailingSilenceDurationInNs")}];
  [v3 setObject:v24 forKeyedSubscript:@"trailingSilenceDurationInNs"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHEndpointFeaturesAtEndpoint wordCount](self, "wordCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"wordCount"];
  }

LABEL_15:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v5 = 2654435761u * self->_trailingSilenceDurationInNs;
    if ((has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761u * self->_clientSilenceFramesCountInNs;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  endOfSentenceLikelihood = self->_endOfSentenceLikelihood;
  if (endOfSentenceLikelihood >= 0.0)
  {
    v8 = endOfSentenceLikelihood;
  }

  else
  {
    v8 = -endOfSentenceLikelihood;
  }

  *v2.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v10), v3, v2);
  v11 = 2654435761u * *v2.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_12:
  if ((has & 8) != 0)
  {
    v12 = 2654435761 * self->_wordCount;
    if ((has & 0x10) != 0)
    {
LABEL_14:
      v13 = 2654435761u * self->_serverFeaturesLatencyInNs;
      if ((has & 0x20) != 0)
      {
        goto LABEL_15;
      }

LABEL_22:
      v18 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_14;
    }
  }

  v13 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  clientSilenceProbability = self->_clientSilenceProbability;
  if (clientSilenceProbability >= 0.0)
  {
    v15 = clientSilenceProbability;
  }

  else
  {
    v15 = -clientSilenceProbability;
  }

  *v2.i64 = floor(v15 + 0.5);
  v16 = (v15 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v17), v3, v2);
  v18 = 2654435761u * *v2.i64;
  if (v16 >= 0.0)
  {
    if (v16 > 0.0)
    {
      v18 += v16;
    }
  }

  else
  {
    v18 -= fabs(v16);
  }

LABEL_23:
  if ((has & 0x40) == 0)
  {
    v19 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

  v19 = 2654435761u * self->_rcTrailingSilenceDuration;
  if ((has & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  rcEndOfSentenceLikelihood = self->_rcEndOfSentenceLikelihood;
  if (rcEndOfSentenceLikelihood >= 0.0)
  {
    v21 = rcEndOfSentenceLikelihood;
  }

  else
  {
    v21 = -rcEndOfSentenceLikelihood;
  }

  *v2.i64 = floor(v21 + 0.5);
  v22 = (v21 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v23), v3, v2);
  v24 = 2654435761u * *v2.i64;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v24 += v22;
    }
  }

  else
  {
    v24 -= fabs(v22);
  }

LABEL_32:
  if ((*&self->_has & 0x100) != 0)
  {
    v25 = 2654435761 * self->_rcWordCount;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_34:
      v26 = 2654435761u * self->_rcServerFeaturesLatency;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_35;
      }

LABEL_42:
      v31 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v25 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_34;
    }
  }

  v26 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_42;
  }

LABEL_35:
  silencePosterior = self->_silencePosterior;
  if (silencePosterior >= 0.0)
  {
    v28 = silencePosterior;
  }

  else
  {
    v28 = -silencePosterior;
  }

  *v2.i64 = floor(v28 + 0.5);
  v29 = (v28 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v30.f64[0] = NAN;
  v30.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v30), v3, v2);
  v31 = 2654435761u * *v2.i64;
  if (v29 >= 0.0)
  {
    if (v29 > 0.0)
    {
      v31 += v29;
    }
  }

  else
  {
    v31 -= fabs(v29);
  }

LABEL_43:
  if ((*&self->_has & 0x800) != 0)
  {
    acousticEndpointerScore = self->_acousticEndpointerScore;
    if (acousticEndpointerScore >= 0.0)
    {
      v34 = acousticEndpointerScore;
    }

    else
    {
      v34 = -acousticEndpointerScore;
    }

    *v2.i64 = floor(v34 + 0.5);
    v35 = (v34 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v36), v3, v2);
    v32 = 2654435761u * *v2.i64;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v32 += v35;
      }
    }

    else
    {
      v32 -= fabs(v35);
    }
  }

  else
  {
    v32 = 0;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    silencePosteriorFrameCountInNs = self->_silencePosteriorFrameCountInNs;
    if (silencePosteriorFrameCountInNs >= 0.0)
    {
      v39 = silencePosteriorFrameCountInNs;
    }

    else
    {
      v39 = -silencePosteriorFrameCountInNs;
    }

    *v2.i64 = floor(v39 + 0.5);
    v40 = (v39 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v37 = 2654435761u * *vbslq_s8(vnegq_f64(v41), v3, v2).i64;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v37 += v40;
      }
    }

    else
    {
      v37 -= fabs(v40);
    }
  }

  else
  {
    v37 = 0;
  }

  return v6 ^ v5 ^ v11 ^ v12 ^ v13 ^ v18 ^ v19 ^ v24 ^ v25 ^ v26 ^ v31 ^ v32 ^ v37;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  has = self->_has;
  v6 = v4[42];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_53;
  }

  if (*&has)
  {
    trailingSilenceDurationInNs = self->_trailingSilenceDurationInNs;
    if (trailingSilenceDurationInNs != [v4 trailingSilenceDurationInNs])
    {
      goto LABEL_53;
    }

    has = self->_has;
    v6 = v4[42];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      clientSilenceFramesCountInNs = self->_clientSilenceFramesCountInNs;
      if (clientSilenceFramesCountInNs != [v4 clientSilenceFramesCountInNs])
      {
        goto LABEL_53;
      }

      has = self->_has;
      v6 = v4[42];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        endOfSentenceLikelihood = self->_endOfSentenceLikelihood;
        [v4 endOfSentenceLikelihood];
        if (endOfSentenceLikelihood != v12)
        {
          goto LABEL_53;
        }

        has = self->_has;
        v6 = v4[42];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (v13)
        {
          wordCount = self->_wordCount;
          if (wordCount != [v4 wordCount])
          {
            goto LABEL_53;
          }

          has = self->_has;
          v6 = v4[42];
        }

        v15 = (*&has >> 4) & 1;
        if (v15 == ((v6 >> 4) & 1))
        {
          if (v15)
          {
            serverFeaturesLatencyInNs = self->_serverFeaturesLatencyInNs;
            if (serverFeaturesLatencyInNs != [v4 serverFeaturesLatencyInNs])
            {
              goto LABEL_53;
            }

            has = self->_has;
            v6 = v4[42];
          }

          v17 = (*&has >> 5) & 1;
          if (v17 == ((v6 >> 5) & 1))
          {
            if (v17)
            {
              clientSilenceProbability = self->_clientSilenceProbability;
              [v4 clientSilenceProbability];
              if (clientSilenceProbability != v19)
              {
                goto LABEL_53;
              }

              has = self->_has;
              v6 = v4[42];
            }

            v20 = (*&has >> 6) & 1;
            if (v20 == ((v6 >> 6) & 1))
            {
              if (v20)
              {
                rcTrailingSilenceDuration = self->_rcTrailingSilenceDuration;
                if (rcTrailingSilenceDuration != [v4 rcTrailingSilenceDuration])
                {
                  goto LABEL_53;
                }

                has = self->_has;
                v6 = v4[42];
              }

              v22 = (*&has >> 7) & 1;
              if (v22 == ((v6 >> 7) & 1))
              {
                if (v22)
                {
                  rcEndOfSentenceLikelihood = self->_rcEndOfSentenceLikelihood;
                  [v4 rcEndOfSentenceLikelihood];
                  if (rcEndOfSentenceLikelihood != v24)
                  {
                    goto LABEL_53;
                  }

                  has = self->_has;
                  v6 = v4[42];
                }

                v25 = (*&has >> 8) & 1;
                if (v25 == ((v6 >> 8) & 1))
                {
                  if (v25)
                  {
                    rcWordCount = self->_rcWordCount;
                    if (rcWordCount != [v4 rcWordCount])
                    {
                      goto LABEL_53;
                    }

                    has = self->_has;
                    v6 = v4[42];
                  }

                  v27 = (*&has >> 9) & 1;
                  if (v27 == ((v6 >> 9) & 1))
                  {
                    if (v27)
                    {
                      rcServerFeaturesLatency = self->_rcServerFeaturesLatency;
                      if (rcServerFeaturesLatency != [v4 rcServerFeaturesLatency])
                      {
                        goto LABEL_53;
                      }

                      has = self->_has;
                      v6 = v4[42];
                    }

                    v29 = (*&has >> 10) & 1;
                    if (v29 == ((v6 >> 10) & 1))
                    {
                      if (v29)
                      {
                        silencePosterior = self->_silencePosterior;
                        [v4 silencePosterior];
                        if (silencePosterior != v31)
                        {
                          goto LABEL_53;
                        }

                        has = self->_has;
                        v6 = v4[42];
                      }

                      v32 = (*&has >> 11) & 1;
                      if (v32 == ((v6 >> 11) & 1))
                      {
                        if (v32)
                        {
                          acousticEndpointerScore = self->_acousticEndpointerScore;
                          [v4 acousticEndpointerScore];
                          if (acousticEndpointerScore != v34)
                          {
                            goto LABEL_53;
                          }

                          has = self->_has;
                          v6 = v4[42];
                        }

                        v35 = (*&has >> 12) & 1;
                        if (v35 == ((v6 >> 12) & 1))
                        {
                          if (!v35 || (silencePosteriorFrameCountInNs = self->_silencePosteriorFrameCountInNs, [v4 silencePosteriorFrameCountInNs], silencePosteriorFrameCountInNs == v37))
                          {
                            v38 = 1;
                            goto LABEL_54;
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

LABEL_53:
  v38 = 0;
LABEL_54:

  return v38;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
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
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    PBDataWriterWriteFloatField();
  }

LABEL_15:
}

- (void)setHasSilencePosteriorFrameCountInNs:(BOOL)a3
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

- (void)setHasAcousticEndpointerScore:(BOOL)a3
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

- (void)setHasSilencePosterior:(BOOL)a3
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

- (void)setHasRcServerFeaturesLatency:(BOOL)a3
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

- (void)setHasRcWordCount:(BOOL)a3
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

- (void)setHasRcEndOfSentenceLikelihood:(BOOL)a3
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

- (void)setHasRcTrailingSilenceDuration:(BOOL)a3
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

- (void)setHasClientSilenceProbability:(BOOL)a3
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

- (void)setHasServerFeaturesLatencyInNs:(BOOL)a3
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

- (void)setHasWordCount:(BOOL)a3
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

- (void)setHasEndOfSentenceLikelihood:(BOOL)a3
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

- (void)setHasClientSilenceFramesCountInNs:(BOOL)a3
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