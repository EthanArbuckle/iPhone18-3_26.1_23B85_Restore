@interface COMAPPLEPROACTIVEGMSGMSInferenceEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRequestType:(id)type;
- (int)requestType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExtendInferenceMillis:(BOOL)millis;
- (void)setHasInferenceTimeMillis:(BOOL)millis;
- (void)setHasInputTokensCount:(BOOL)count;
- (void)setHasOutputTokensCount:(BOOL)count;
- (void)setHasRequestType:(BOOL)type;
- (void)setHasSdDraftModelInferenceCallCount:(BOOL)count;
- (void)setHasSdDraftModelTotalLatencyMillis:(BOOL)millis;
- (void)setHasSdDraftOutputTokensCount:(BOOL)count;
- (void)setHasSdDraftTokenAcceptanceRate:(BOOL)rate;
- (void)setHasSdSpeculationSuccessRate:(BOOL)rate;
- (void)setHasSdTargetModelInferenceCallCount:(BOOL)count;
- (void)setHasSdTargetModelTotalLatencyMillis:(BOOL)millis;
- (void)setHasSdTinyModelInferenceCallCount:(BOOL)count;
- (void)setHasSdTinyModelTotalLatencyMillis:(BOOL)millis;
- (void)setHasSdTinyTokenAcceptanceRate:(BOOL)rate;
- (void)setHasSdTotalOutputTokensCount:(BOOL)count;
- (void)setHasTimeToFirstTokenMillis:(BOOL)millis;
- (void)setHasTokensPerSecond:(BOOL)second;
- (void)setHasTotalLatencyMillis:(BOOL)millis;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation COMAPPLEPROACTIVEGMSGMSInferenceEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x100000) != 0)
  {
    self->_requestType = *(fromCopy + 42);
    *&self->_has |= 0x100000u;
    v5 = *(fromCopy + 43);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_inputTokensCount = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_outputTokensCount = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x40000) == 0)
  {
LABEL_5:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_totalLatencyMillis = *(fromCopy + 19);
  *&self->_has |= 0x40000u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x10000) == 0)
  {
LABEL_6:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_timeToFirstTokenMillis = *(fromCopy + 17);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x20000) == 0)
  {
LABEL_7:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_tokensPerSecond = *(fromCopy + 18);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x80000) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_version = *(fromCopy + 20);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 43);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_inferenceTimeMillis = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 43);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_extendInferenceMillis = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 43);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_assetLoadAndTtftCombinedMillis = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_sdTinyModelInferenceCallCount = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_sdDraftModelInferenceCallCount = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_sdTargetModelInferenceCallCount = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x100) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_sdDraftTokenAcceptanceRate = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_sdTinyTokenAcceptanceRate = *(fromCopy + 15);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x200) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_sdSpeculationSuccessRate = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x80) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_sdDraftOutputTokensCount = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x8000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_sdTotalOutputTokensCount = *(fromCopy + 16);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_sdTinyModelTotalLatencyMillis = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 43);
  if ((v5 & 0x40) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  self->_sdDraftModelTotalLatencyMillis = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 43) & 0x800) != 0)
  {
LABEL_22:
    self->_sdTargetModelTotalLatencyMillis = *(fromCopy + 12);
    *&self->_has |= 0x800u;
  }

LABEL_23:
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    v5 = 2654435761 * self->_requestType;
    if ((*&has & 8) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_inputTokensCount;
      if ((*&has & 0x10) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v7 = 0;
      if ((*&has & 0x40000) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v7 = 2654435761 * self->_outputTokensCount;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  totalLatencyMillis = self->_totalLatencyMillis;
  if (totalLatencyMillis < 0.0)
  {
    totalLatencyMillis = -totalLatencyMillis;
  }

  *v2.i64 = floor(totalLatencyMillis + 0.5);
  v9 = (totalLatencyMillis - *v2.i64) * 1.84467441e19;
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

LABEL_13:
  if ((*&has & 0x10000) != 0)
  {
    timeToFirstTokenMillis = self->_timeToFirstTokenMillis;
    if (timeToFirstTokenMillis < 0.0)
    {
      timeToFirstTokenMillis = -timeToFirstTokenMillis;
    }

    *v2.i64 = floor(timeToFirstTokenMillis + 0.5);
    v14 = (timeToFirstTokenMillis - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v12 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&has & 0x20000) != 0)
  {
    tokensPerSecond = self->_tokensPerSecond;
    if (tokensPerSecond < 0.0)
    {
      tokensPerSecond = -tokensPerSecond;
    }

    *v2.i64 = floor(tokensPerSecond + 0.5);
    v18 = (tokensPerSecond - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
    v16 = 2654435761u * *v2.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&has & 0x80000) != 0)
  {
    v20 = 2654435761 * self->_version;
    if ((*&has & 4) != 0)
    {
      goto LABEL_33;
    }

LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

  v20 = 0;
  if ((*&has & 4) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  inferenceTimeMillis = self->_inferenceTimeMillis;
  if (inferenceTimeMillis < 0.0)
  {
    inferenceTimeMillis = -inferenceTimeMillis;
  }

  *v2.i64 = floor(inferenceTimeMillis + 0.5);
  v22 = (inferenceTimeMillis - *v2.i64) * 1.84467441e19;
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

LABEL_39:
  if ((*&has & 2) != 0)
  {
    extendInferenceMillis = self->_extendInferenceMillis;
    if (extendInferenceMillis < 0.0)
    {
      extendInferenceMillis = -extendInferenceMillis;
    }

    *v2.i64 = floor(extendInferenceMillis + 0.5);
    v27 = (extendInferenceMillis - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v28), v3, v2);
    v25 = 2654435761u * *v2.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if (*&has)
  {
    assetLoadAndTtftCombinedMillis = self->_assetLoadAndTtftCombinedMillis;
    if (assetLoadAndTtftCombinedMillis < 0.0)
    {
      assetLoadAndTtftCombinedMillis = -assetLoadAndTtftCombinedMillis;
    }

    *v2.i64 = floor(assetLoadAndTtftCombinedMillis + 0.5);
    v31 = (assetLoadAndTtftCombinedMillis - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v32), v3, v2);
    v29 = 2654435761u * *v2.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((*&has & 0x1000) != 0)
  {
    v33 = 2654435761 * self->_sdTinyModelInferenceCallCount;
    if ((*&has & 0x20) != 0)
    {
LABEL_59:
      v34 = 2654435761 * self->_sdDraftModelInferenceCallCount;
      if ((*&has & 0x400) != 0)
      {
        goto LABEL_60;
      }

LABEL_67:
      v35 = 0;
      if ((*&has & 0x100) != 0)
      {
        goto LABEL_61;
      }

LABEL_68:
      v39 = 0;
      goto LABEL_69;
    }
  }

  else
  {
    v33 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_59;
    }
  }

  v34 = 0;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_67;
  }

LABEL_60:
  v35 = 2654435761 * self->_sdTargetModelInferenceCallCount;
  if ((*&has & 0x100) == 0)
  {
    goto LABEL_68;
  }

LABEL_61:
  sdDraftTokenAcceptanceRate = self->_sdDraftTokenAcceptanceRate;
  if (sdDraftTokenAcceptanceRate < 0.0)
  {
    sdDraftTokenAcceptanceRate = -sdDraftTokenAcceptanceRate;
  }

  *v2.i64 = floor(sdDraftTokenAcceptanceRate + 0.5);
  v37 = (sdDraftTokenAcceptanceRate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v38.f64[0] = NAN;
  v38.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v38), v3, v2);
  v39 = 2654435761u * *v2.i64;
  if (v37 >= 0.0)
  {
    if (v37 > 0.0)
    {
      v39 += v37;
    }
  }

  else
  {
    v39 -= fabs(v37);
  }

LABEL_69:
  if ((*&has & 0x4000) != 0)
  {
    sdTinyTokenAcceptanceRate = self->_sdTinyTokenAcceptanceRate;
    if (sdTinyTokenAcceptanceRate < 0.0)
    {
      sdTinyTokenAcceptanceRate = -sdTinyTokenAcceptanceRate;
    }

    *v2.i64 = floor(sdTinyTokenAcceptanceRate + 0.5);
    v42 = (sdTinyTokenAcceptanceRate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v43.f64[0] = NAN;
    v43.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v43), v3, v2);
    v40 = 2654435761u * *v2.i64;
    if (v42 >= 0.0)
    {
      if (v42 > 0.0)
      {
        v40 += v42;
      }
    }

    else
    {
      v40 -= fabs(v42);
    }
  }

  else
  {
    v40 = 0;
  }

  if ((*&has & 0x200) != 0)
  {
    sdSpeculationSuccessRate = self->_sdSpeculationSuccessRate;
    if (sdSpeculationSuccessRate < 0.0)
    {
      sdSpeculationSuccessRate = -sdSpeculationSuccessRate;
    }

    *v2.i64 = floor(sdSpeculationSuccessRate + 0.5);
    v46 = (sdSpeculationSuccessRate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v47.f64[0] = NAN;
    v47.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v47), v3, v2);
    v44 = 2654435761u * *v2.i64;
    if (v46 >= 0.0)
    {
      if (v46 > 0.0)
      {
        v44 += v46;
      }
    }

    else
    {
      v44 -= fabs(v46);
    }
  }

  else
  {
    v44 = 0;
  }

  if ((*&has & 0x80) == 0)
  {
    v48 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_89;
    }

LABEL_95:
    v49 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_90;
    }

LABEL_96:
    v53 = 0;
    goto LABEL_97;
  }

  v48 = 2654435761 * self->_sdDraftOutputTokensCount;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_95;
  }

LABEL_89:
  v49 = 2654435761 * self->_sdTotalOutputTokensCount;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_96;
  }

LABEL_90:
  sdTinyModelTotalLatencyMillis = self->_sdTinyModelTotalLatencyMillis;
  if (sdTinyModelTotalLatencyMillis < 0.0)
  {
    sdTinyModelTotalLatencyMillis = -sdTinyModelTotalLatencyMillis;
  }

  *v2.i64 = floor(sdTinyModelTotalLatencyMillis + 0.5);
  v51 = (sdTinyModelTotalLatencyMillis - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v52.f64[0] = NAN;
  v52.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v52), v3, v2);
  v53 = 2654435761u * *v2.i64;
  if (v51 >= 0.0)
  {
    if (v51 > 0.0)
    {
      v53 += v51;
    }
  }

  else
  {
    v53 -= fabs(v51);
  }

LABEL_97:
  if ((*&has & 0x40) != 0)
  {
    sdDraftModelTotalLatencyMillis = self->_sdDraftModelTotalLatencyMillis;
    if (sdDraftModelTotalLatencyMillis < 0.0)
    {
      sdDraftModelTotalLatencyMillis = -sdDraftModelTotalLatencyMillis;
    }

    *v2.i64 = floor(sdDraftModelTotalLatencyMillis + 0.5);
    v56 = (sdDraftModelTotalLatencyMillis - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v57.f64[0] = NAN;
    v57.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v57), v3, v2);
    v54 = 2654435761u * *v2.i64;
    if (v56 >= 0.0)
    {
      if (v56 > 0.0)
      {
        v54 += v56;
      }
    }

    else
    {
      v54 -= fabs(v56);
    }
  }

  else
  {
    v54 = 0;
  }

  if ((*&has & 0x800) != 0)
  {
    sdTargetModelTotalLatencyMillis = self->_sdTargetModelTotalLatencyMillis;
    if (sdTargetModelTotalLatencyMillis < 0.0)
    {
      sdTargetModelTotalLatencyMillis = -sdTargetModelTotalLatencyMillis;
    }

    *v2.i64 = floor(sdTargetModelTotalLatencyMillis + 0.5);
    v60 = (sdTargetModelTotalLatencyMillis - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v61.f64[0] = NAN;
    v61.f64[1] = NAN;
    v58 = 2654435761u * *vbslq_s8(vnegq_f64(v61), v3, v2).i64;
    if (v60 >= 0.0)
    {
      if (v60 > 0.0)
      {
        v58 += v60;
      }
    }

    else
    {
      v58 -= fabs(v60);
    }
  }

  else
  {
    v58 = 0;
  }

  return v6 ^ v5 ^ v7 ^ v11 ^ v12 ^ v16 ^ v20 ^ v24 ^ v25 ^ v29 ^ v33 ^ v34 ^ v35 ^ v39 ^ v40 ^ v44 ^ v48 ^ v49 ^ v53 ^ v54 ^ v58;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_107;
  }

  has = self->_has;
  v6 = *(equalCopy + 43);
  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_requestType != *(equalCopy + 42))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
LABEL_107:
    v7 = 0;
    goto LABEL_108;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_inputTokensCount != *(equalCopy + 4))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_outputTokensCount != *(equalCopy + 5))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_totalLatencyMillis != *(equalCopy + 19))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_timeToFirstTokenMillis != *(equalCopy + 17))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_tokensPerSecond != *(equalCopy + 18))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_version != *(equalCopy + 20))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_inferenceTimeMillis != *(equalCopy + 3))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_extendInferenceMillis != *(equalCopy + 2))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_107;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_assetLoadAndTtftCombinedMillis != *(equalCopy + 1))
    {
      goto LABEL_107;
    }
  }

  else if (v6)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_sdTinyModelInferenceCallCount != *(equalCopy + 13))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_sdDraftModelInferenceCallCount != *(equalCopy + 6))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_sdTargetModelInferenceCallCount != *(equalCopy + 11))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_sdDraftTokenAcceptanceRate != *(equalCopy + 9))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_sdTinyTokenAcceptanceRate != *(equalCopy + 15))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_sdSpeculationSuccessRate != *(equalCopy + 10))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_sdDraftOutputTokensCount != *(equalCopy + 8))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_sdTotalOutputTokensCount != *(equalCopy + 16))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_sdTinyModelTotalLatencyMillis != *(equalCopy + 14))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_sdDraftModelTotalLatencyMillis != *(equalCopy + 7))
    {
      goto LABEL_107;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_sdTargetModelTotalLatencyMillis != *(equalCopy + 12))
    {
      goto LABEL_107;
    }

    v7 = 1;
  }

  else
  {
    v7 = (*(equalCopy + 43) & 0x800) == 0;
  }

LABEL_108:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    *(result + 42) = self->_requestType;
    *(result + 43) |= 0x100000u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_inputTokensCount;
  *(result + 43) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 5) = self->_outputTokensCount;
  *(result + 43) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 19) = *&self->_totalLatencyMillis;
  *(result + 43) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 17) = *&self->_timeToFirstTokenMillis;
  *(result + 43) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 18) = *&self->_tokensPerSecond;
  *(result + 43) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 20) = self->_version;
  *(result + 43) |= 0x80000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 3) = *&self->_inferenceTimeMillis;
  *(result + 43) |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 2) = *&self->_extendInferenceMillis;
  *(result + 43) |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 1) = *&self->_assetLoadAndTtftCombinedMillis;
  *(result + 43) |= 1u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 13) = self->_sdTinyModelInferenceCallCount;
  *(result + 43) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 6) = self->_sdDraftModelInferenceCallCount;
  *(result + 43) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 11) = self->_sdTargetModelInferenceCallCount;
  *(result + 43) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 9) = *&self->_sdDraftTokenAcceptanceRate;
  *(result + 43) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 15) = *&self->_sdTinyTokenAcceptanceRate;
  *(result + 43) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 10) = *&self->_sdSpeculationSuccessRate;
  *(result + 43) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 8) = self->_sdDraftOutputTokensCount;
  *(result + 43) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_19:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 16) = self->_sdTotalOutputTokensCount;
  *(result + 43) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 14) = *&self->_sdTinyModelTotalLatencyMillis;
  *(result + 43) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_43:
  *(result + 7) = *&self->_sdDraftModelTotalLatencyMillis;
  *(result + 43) |= 0x40u;
  if ((*&self->_has & 0x800) == 0)
  {
    return result;
  }

LABEL_22:
  *(result + 12) = *&self->_sdTargetModelTotalLatencyMillis;
  *(result + 43) |= 0x800u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    toCopy[42] = self->_requestType;
    toCopy[43] |= 0x100000u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 4) = self->_inputTokensCount;
  toCopy[43] |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(toCopy + 5) = self->_outputTokensCount;
  toCopy[43] |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(toCopy + 19) = *&self->_totalLatencyMillis;
  toCopy[43] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 17) = *&self->_timeToFirstTokenMillis;
  toCopy[43] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(toCopy + 18) = *&self->_tokensPerSecond;
  toCopy[43] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 20) = self->_version;
  toCopy[43] |= 0x80000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 3) = *&self->_inferenceTimeMillis;
  toCopy[43] |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 2) = *&self->_extendInferenceMillis;
  toCopy[43] |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 1) = *&self->_assetLoadAndTtftCombinedMillis;
  toCopy[43] |= 1u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 13) = self->_sdTinyModelInferenceCallCount;
  toCopy[43] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 6) = self->_sdDraftModelInferenceCallCount;
  toCopy[43] |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 11) = self->_sdTargetModelInferenceCallCount;
  toCopy[43] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 9) = *&self->_sdDraftTokenAcceptanceRate;
  toCopy[43] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 15) = *&self->_sdTinyTokenAcceptanceRate;
  toCopy[43] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 10) = *&self->_sdSpeculationSuccessRate;
  toCopy[43] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 8) = self->_sdDraftOutputTokensCount;
  toCopy[43] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_19:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 16) = self->_sdTotalOutputTokensCount;
  toCopy[43] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 14) = *&self->_sdTinyModelTotalLatencyMillis;
  toCopy[43] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  *(toCopy + 7) = *&self->_sdDraftModelTotalLatencyMillis;
  toCopy[43] |= 0x40u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_22:
    *(toCopy + 12) = *&self->_sdTargetModelTotalLatencyMillis;
    toCopy[43] |= 0x800u;
  }

LABEL_23:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    requestType = self->_requestType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  inputTokensCount = self->_inputTokensCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  outputTokensCount = self->_outputTokensCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  totalLatencyMillis = self->_totalLatencyMillis;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  timeToFirstTokenMillis = self->_timeToFirstTokenMillis;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  tokensPerSecond = self->_tokensPerSecond;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  version = self->_version;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  inferenceTimeMillis = self->_inferenceTimeMillis;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  extendInferenceMillis = self->_extendInferenceMillis;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  assetLoadAndTtftCombinedMillis = self->_assetLoadAndTtftCombinedMillis;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  sdTinyModelInferenceCallCount = self->_sdTinyModelInferenceCallCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  sdDraftModelInferenceCallCount = self->_sdDraftModelInferenceCallCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  sdTargetModelInferenceCallCount = self->_sdTargetModelInferenceCallCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  sdDraftTokenAcceptanceRate = self->_sdDraftTokenAcceptanceRate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  sdTinyTokenAcceptanceRate = self->_sdTinyTokenAcceptanceRate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  sdSpeculationSuccessRate = self->_sdSpeculationSuccessRate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  sdDraftOutputTokensCount = self->_sdDraftOutputTokensCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_19:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  sdTotalOutputTokensCount = self->_sdTotalOutputTokensCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  sdTinyModelTotalLatencyMillis = self->_sdTinyModelTotalLatencyMillis;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  sdDraftModelTotalLatencyMillis = self->_sdDraftModelTotalLatencyMillis;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_22:
    sdTargetModelTotalLatencyMillis = self->_sdTargetModelTotalLatencyMillis;
    PBDataWriterWriteDoubleField();
  }

LABEL_23:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    requestType = self->_requestType;
    if (requestType >= 3)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requestType];
    }

    else
    {
      v6 = off_1E86C2DB8[requestType];
    }

    [dictionary setObject:v6 forKey:@"requestType"];

    has = self->_has;
  }

  if ((*&has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_inputTokensCount];
    [dictionary setObject:v9 forKey:@"inputTokensCount"];

    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_8:
      if ((*&has & 0x40000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_outputTokensCount];
  [dictionary setObject:v10 forKey:@"outputTokensCount"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_totalLatencyMillis];
  [dictionary setObject:v11 forKey:@"totalLatencyMillis"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeToFirstTokenMillis];
  [dictionary setObject:v12 forKey:@"timeToFirstTokenMillis"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_tokensPerSecond];
  [dictionary setObject:v13 forKey:@"tokensPerSecond"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_version];
  [dictionary setObject:v14 forKey:@"version"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_13:
    if ((*&has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_inferenceTimeMillis];
  [dictionary setObject:v15 forKey:@"inferenceTimeMillis"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_extendInferenceMillis];
  [dictionary setObject:v16 forKey:@"extendInferenceMillis"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_assetLoadAndTtftCombinedMillis];
  [dictionary setObject:v17 forKey:@"assetLoadAndTtftCombinedMillis"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sdTinyModelInferenceCallCount];
  [dictionary setObject:v18 forKey:@"sdTinyModelInferenceCallCount"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sdDraftModelInferenceCallCount];
  [dictionary setObject:v19 forKey:@"sdDraftModelInferenceCallCount"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sdTargetModelInferenceCallCount];
  [dictionary setObject:v20 forKey:@"sdTargetModelInferenceCallCount"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sdDraftTokenAcceptanceRate];
  [dictionary setObject:v21 forKey:@"sdDraftTokenAcceptanceRate"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sdTinyTokenAcceptanceRate];
  [dictionary setObject:v22 forKey:@"sdTinyTokenAcceptanceRate"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sdSpeculationSuccessRate];
  [dictionary setObject:v23 forKey:@"sdSpeculationSuccessRate"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  v24 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sdDraftOutputTokensCount];
  [dictionary setObject:v24 forKey:@"sdDraftOutputTokensCount"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_23:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  v25 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sdTotalOutputTokensCount];
  [dictionary setObject:v25 forKey:@"sdTotalOutputTokensCount"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sdTinyModelTotalLatencyMillis];
  [dictionary setObject:v26 forKey:@"sdTinyModelTotalLatencyMillis"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_25:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_48:
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sdDraftModelTotalLatencyMillis];
  [dictionary setObject:v27 forKey:@"sdDraftModelTotalLatencyMillis"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_26:
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sdTargetModelTotalLatencyMillis];
    [dictionary setObject:v7 forKey:@"sdTargetModelTotalLatencyMillis"];
  }

LABEL_27:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSInferenceEvent;
  v4 = [(COMAPPLEPROACTIVEGMSGMSInferenceEvent *)&v8 description];
  dictionaryRepresentation = [(COMAPPLEPROACTIVEGMSGMSInferenceEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasSdTargetModelTotalLatencyMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasSdDraftModelTotalLatencyMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasSdTinyModelTotalLatencyMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSdTotalOutputTokensCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasSdDraftOutputTokensCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasSdSpeculationSuccessRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasSdTinyTokenAcceptanceRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasSdDraftTokenAcceptanceRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasSdTargetModelInferenceCallCount:(BOOL)count
{
  if (count)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSdDraftModelInferenceCallCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasSdTinyModelInferenceCallCount:(BOOL)count
{
  if (count)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasExtendInferenceMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasInferenceTimeMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasTokensPerSecond:(BOOL)second
{
  if (second)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasTimeToFirstTokenMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasTotalLatencyMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasOutputTokensCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasInputTokensCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (int)StringAsRequestType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GMS_REQUEST_TYPE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"GMS_REQUEST_TYPE_ONE_SHOT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"GMS_REQUEST_TYPE_STREAMING"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRequestType:(BOOL)type
{
  if (type)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (int)requestType
{
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    return self->_requestType;
  }

  else
  {
    return 0;
  }
}

@end