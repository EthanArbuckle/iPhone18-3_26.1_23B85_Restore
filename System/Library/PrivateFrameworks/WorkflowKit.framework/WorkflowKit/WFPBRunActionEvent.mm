@interface WFPBRunActionEvent
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (NSString)runSource;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompleteFailReason:(id)a3;
- (int)StringAsRegionEligibility:(id)a3;
- (int)StringAsRequestType:(id)a3;
- (int)StringAsResultType:(id)a3;
- (int)completeFailReason;
- (int)regionEligibility;
- (int)requestType;
- (int)resultType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCompleted:(BOOL)a3;
- (void)setHasDidRunRemotely:(BOOL)a3;
- (void)setHasInputTokenLength:(BOOL)a3;
- (void)setHasIsInvalidatedSystemAction:(BOOL)a3;
- (void)setHasNumFollowUp:(BOOL)a3;
- (void)setHasOutputTokenLength:(BOOL)a3;
- (void)setHasRegionEligibility:(BOOL)a3;
- (void)setHasRequestType:(BOOL)a3;
- (void)setHasResultType:(BOOL)a3;
- (void)setHasRunErrorCode:(BOOL)a3;
- (void)setHasRunLatency:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WFPBRunActionEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 10))
  {
    [(WFPBRunActionEvent *)self setKey:?];
    v4 = v7;
  }

  if (*(v4 + 17))
  {
    [(WFPBRunActionEvent *)self setRunSource:?];
    v4 = v7;
  }

  if ((*(v4 + 86) & 0x200) != 0)
  {
    self->_completed = *(v4 + 168);
    *&self->_has |= 0x200u;
  }

  if (*(v4 + 1))
  {
    [(WFPBRunActionEvent *)self setActionIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 19))
  {
    [(WFPBRunActionEvent *)self setShortcutSource:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(WFPBRunActionEvent *)self setAutomationType:?];
    v4 = v7;
  }

  v5 = *(v4 + 86);
  if ((v5 & 0x400) != 0)
  {
    self->_didRunRemotely = *(v4 + 169);
    *&self->_has |= 0x400u;
    v5 = *(v4 + 86);
  }

  if ((v5 & 0x800) != 0)
  {
    self->_isInvalidatedSystemAction = *(v4 + 170);
    *&self->_has |= 0x800u;
  }

  if (*(v4 + 8))
  {
    [(WFPBRunActionEvent *)self setGalleryIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(WFPBRunActionEvent *)self setExternalBundleIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(WFPBRunActionEvent *)self setExternalActionIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 20))
  {
    [(WFPBRunActionEvent *)self setShortcutsId:?];
    v4 = v7;
  }

  if (*(v4 + 86))
  {
    self->_completeFailReason = *(v4 + 10);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(WFPBRunActionEvent *)self setBaseModel:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    [(WFPBRunActionEvent *)self setAdapterModel:?];
    v4 = v7;
  }

  if (*(v4 + 18))
  {
    [(WFPBRunActionEvent *)self setSafetyModel:?];
    v4 = v7;
  }

  if (*(v4 + 11))
  {
    [(WFPBRunActionEvent *)self setModelDestination:?];
    v4 = v7;
  }

  if (*(v4 + 15))
  {
    [(WFPBRunActionEvent *)self setRunErrorDomain:?];
    v4 = v7;
  }

  v6 = *(v4 + 86);
  if ((v6 & 0x80) != 0)
  {
    self->_runErrorCode = *(v4 + 29);
    *&self->_has |= 0x80u;
    v6 = *(v4 + 86);
    if ((v6 & 0x100) == 0)
    {
LABEL_39:
      if ((v6 & 2) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_51;
    }
  }

  else if ((*(v4 + 86) & 0x100) == 0)
  {
    goto LABEL_39;
  }

  self->_runLatency = *(v4 + 32);
  *&self->_has |= 0x100u;
  v6 = *(v4 + 86);
  if ((v6 & 2) == 0)
  {
LABEL_40:
    if ((v6 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_inputTokenLength = *(v4 + 18);
  *&self->_has |= 2u;
  v6 = *(v4 + 86);
  if ((v6 & 8) == 0)
  {
LABEL_41:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_outputTokenLength = *(v4 + 25);
  *&self->_has |= 8u;
  v6 = *(v4 + 86);
  if ((v6 & 0x20) == 0)
  {
LABEL_42:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_requestType = *(v4 + 27);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 86);
  if ((v6 & 0x10) == 0)
  {
LABEL_43:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_regionEligibility = *(v4 + 26);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 86);
  if ((v6 & 0x40) == 0)
  {
LABEL_44:
    if ((v6 & 4) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_55:
  self->_resultType = *(v4 + 28);
  *&self->_has |= 0x40u;
  if ((*(v4 + 86) & 4) != 0)
  {
LABEL_45:
    self->_numFollowUp = *(v4 + 24);
    *&self->_has |= 4u;
  }

LABEL_46:
}

- (unint64_t)hash
{
  v35 = [(NSString *)self->_key hash];
  v34 = [(NSString *)self->_runSource hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v33 = 2654435761 * self->_completed;
  }

  else
  {
    v33 = 0;
  }

  v32 = [(NSString *)self->_actionIdentifier hash];
  v31 = [(NSString *)self->_shortcutSource hash];
  v30 = [(NSString *)self->_automationType hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v29 = 2654435761 * self->_didRunRemotely;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v29 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_6:
      v28 = 2654435761 * self->_isInvalidatedSystemAction;
      goto LABEL_9;
    }
  }

  v28 = 0;
LABEL_9:
  v27 = [(NSString *)self->_galleryIdentifier hash];
  v26 = [(NSString *)self->_externalBundleIdentifier hash];
  v3 = [(NSString *)self->_externalActionIdentifier hash];
  v4 = [(NSString *)self->_shortcutsId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_completeFailReason;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_baseModel hash];
  v7 = [(NSString *)self->_adapterModel hash];
  v8 = [(NSString *)self->_safetyModel hash];
  v9 = [(NSString *)self->_modelDestination hash];
  v10 = [(NSString *)self->_runErrorDomain hash];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v14 = 2654435761 * self->_runErrorCode;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  v14 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  runLatency = self->_runLatency;
  if (runLatency < 0.0)
  {
    runLatency = -runLatency;
  }

  *v11.i32 = floorf(runLatency + 0.5);
  v16 = (runLatency - *v11.i32) * 1.8447e19;
  *v12.i32 = *v11.i32 - (truncf(*v11.i32 * 5.421e-20) * 1.8447e19);
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18 = 2654435761u * *vbslq_s8(v17, v12, v11).i32;
  if (v16 >= 0.0)
  {
    if (v16 > 0.0)
    {
      v18 += v16;
    }
  }

  else
  {
    v18 -= fabsf(v16);
  }

LABEL_20:
  if ((has & 2) != 0)
  {
    v19 = 2654435761 * self->_inputTokenLength;
    if ((has & 8) != 0)
    {
LABEL_22:
      v20 = 2654435761 * self->_outputTokenLength;
      if ((has & 0x20) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v19 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_22;
    }
  }

  v20 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_23:
    v21 = 2654435761 * self->_requestType;
    if ((has & 0x10) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  v21 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_24:
    v22 = 2654435761 * self->_regionEligibility;
    if ((has & 0x40) != 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    v23 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_26;
    }

LABEL_32:
    v24 = 0;
    return v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v14 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
  }

LABEL_30:
  v22 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v23 = 2654435761 * self->_resultType;
  if ((has & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v24 = 2654435761 * self->_numFollowUp;
  return v34 ^ v35 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v14 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  key = self->_key;
  if (key | *(v4 + 10))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_30;
    }
  }

  runSource = self->_runSource;
  if (runSource | *(v4 + 17))
  {
    if (![(NSString *)runSource isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v7 = *(v4 + 86);
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 86) & 0x200) == 0)
    {
      goto LABEL_30;
    }

    v19 = *(v4 + 168);
    if (self->_completed)
    {
      if ((*(v4 + 168) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(v4 + 168))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 86) & 0x200) != 0)
  {
    goto LABEL_30;
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier | *(v4 + 1) && ![(NSString *)actionIdentifier isEqual:?])
  {
    goto LABEL_30;
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource | *(v4 + 19))
  {
    if (![(NSString *)shortcutSource isEqual:?])
    {
      goto LABEL_30;
    }
  }

  automationType = self->_automationType;
  if (automationType | *(v4 + 3))
  {
    if (![(NSString *)automationType isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v11 = *(v4 + 86);
  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 86) & 0x400) == 0)
    {
      goto LABEL_30;
    }

    v20 = *(v4 + 169);
    if (self->_didRunRemotely)
    {
      if ((*(v4 + 169) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(v4 + 169))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 86) & 0x400) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 86) & 0x800) == 0)
    {
      goto LABEL_30;
    }

    v21 = *(v4 + 170);
    if (self->_isInvalidatedSystemAction)
    {
      if ((*(v4 + 170) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(v4 + 170))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 86) & 0x800) != 0)
  {
    goto LABEL_30;
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier | *(v4 + 8) && ![(NSString *)galleryIdentifier isEqual:?])
  {
    goto LABEL_30;
  }

  externalBundleIdentifier = self->_externalBundleIdentifier;
  if (externalBundleIdentifier | *(v4 + 7))
  {
    if (![(NSString *)externalBundleIdentifier isEqual:?])
    {
      goto LABEL_30;
    }
  }

  externalActionIdentifier = self->_externalActionIdentifier;
  if (externalActionIdentifier | *(v4 + 6))
  {
    if (![(NSString *)externalActionIdentifier isEqual:?])
    {
      goto LABEL_30;
    }
  }

  shortcutsId = self->_shortcutsId;
  if (shortcutsId | *(v4 + 20))
  {
    if (![(NSString *)shortcutsId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  v16 = *(v4 + 86);
  if (*&self->_has)
  {
    if ((v16 & 1) == 0 || self->_completeFailReason != *(v4 + 10))
    {
      goto LABEL_30;
    }
  }

  else if (v16)
  {
    goto LABEL_30;
  }

  baseModel = self->_baseModel;
  if (baseModel | *(v4 + 4) && ![(NSString *)baseModel isEqual:?])
  {
    goto LABEL_30;
  }

  adapterModel = self->_adapterModel;
  if (adapterModel | *(v4 + 2))
  {
    if (![(NSString *)adapterModel isEqual:?])
    {
      goto LABEL_30;
    }
  }

  safetyModel = self->_safetyModel;
  if (safetyModel | *(v4 + 18))
  {
    if (![(NSString *)safetyModel isEqual:?])
    {
      goto LABEL_30;
    }
  }

  modelDestination = self->_modelDestination;
  if (modelDestination | *(v4 + 11))
  {
    if (![(NSString *)modelDestination isEqual:?])
    {
      goto LABEL_30;
    }
  }

  runErrorDomain = self->_runErrorDomain;
  if (runErrorDomain | *(v4 + 15))
  {
    if (![(NSString *)runErrorDomain isEqual:?])
    {
      goto LABEL_30;
    }
  }

  has = self->_has;
  v28 = *(v4 + 86);
  if ((has & 0x80) != 0)
  {
    if ((v28 & 0x80) == 0 || self->_runErrorCode != *(v4 + 29))
    {
      goto LABEL_30;
    }
  }

  else if ((v28 & 0x80) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 86) & 0x100) == 0 || self->_runLatency != *(v4 + 32))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 86) & 0x100) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 2) != 0)
  {
    if ((v28 & 2) == 0 || self->_inputTokenLength != *(v4 + 18))
    {
      goto LABEL_30;
    }
  }

  else if ((v28 & 2) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 8) != 0)
  {
    if ((v28 & 8) == 0 || self->_outputTokenLength != *(v4 + 25))
    {
      goto LABEL_30;
    }
  }

  else if ((v28 & 8) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 0x20) != 0)
  {
    if ((v28 & 0x20) == 0 || self->_requestType != *(v4 + 27))
    {
      goto LABEL_30;
    }
  }

  else if ((v28 & 0x20) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 0x10) != 0)
  {
    if ((v28 & 0x10) == 0 || self->_regionEligibility != *(v4 + 26))
    {
      goto LABEL_30;
    }
  }

  else if ((v28 & 0x10) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 0x40) != 0)
  {
    if ((v28 & 0x40) == 0 || self->_resultType != *(v4 + 28))
    {
      goto LABEL_30;
    }
  }

  else if ((v28 & 0x40) != 0)
  {
    goto LABEL_30;
  }

  if ((has & 4) == 0)
  {
    v17 = (v28 & 4) == 0;
    goto LABEL_31;
  }

  if ((v28 & 4) != 0 && self->_numFollowUp == *(v4 + 24))
  {
    v17 = 1;
    goto LABEL_31;
  }

LABEL_30:
  v17 = 0;
LABEL_31:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(NSString *)self->_runSource copyWithZone:a3];
  v9 = *(v5 + 136);
  *(v5 + 136) = v8;

  if ((*&self->_has & 0x200) != 0)
  {
    *(v5 + 168) = self->_completed;
    *(v5 + 172) |= 0x200u;
  }

  v10 = [(NSString *)self->_actionIdentifier copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_shortcutSource copyWithZone:a3];
  v13 = *(v5 + 152);
  *(v5 + 152) = v12;

  v14 = [(NSString *)self->_automationType copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v5 + 169) = self->_didRunRemotely;
    *(v5 + 172) |= 0x400u;
    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    *(v5 + 170) = self->_isInvalidatedSystemAction;
    *(v5 + 172) |= 0x800u;
  }

  v17 = [(NSString *)self->_galleryIdentifier copyWithZone:a3];
  v18 = *(v5 + 64);
  *(v5 + 64) = v17;

  v19 = [(NSString *)self->_externalBundleIdentifier copyWithZone:a3];
  v20 = *(v5 + 56);
  *(v5 + 56) = v19;

  v21 = [(NSString *)self->_externalActionIdentifier copyWithZone:a3];
  v22 = *(v5 + 48);
  *(v5 + 48) = v21;

  v23 = [(NSString *)self->_shortcutsId copyWithZone:a3];
  v24 = *(v5 + 160);
  *(v5 + 160) = v23;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_completeFailReason;
    *(v5 + 172) |= 1u;
  }

  v25 = [(NSString *)self->_baseModel copyWithZone:a3];
  v26 = *(v5 + 32);
  *(v5 + 32) = v25;

  v27 = [(NSString *)self->_adapterModel copyWithZone:a3];
  v28 = *(v5 + 16);
  *(v5 + 16) = v27;

  v29 = [(NSString *)self->_safetyModel copyWithZone:a3];
  v30 = *(v5 + 144);
  *(v5 + 144) = v29;

  v31 = [(NSString *)self->_modelDestination copyWithZone:a3];
  v32 = *(v5 + 88);
  *(v5 + 88) = v31;

  v33 = [(NSString *)self->_runErrorDomain copyWithZone:a3];
  v34 = *(v5 + 120);
  *(v5 + 120) = v33;

  v35 = self->_has;
  if ((v35 & 0x80) != 0)
  {
    *(v5 + 116) = self->_runErrorCode;
    *(v5 + 172) |= 0x80u;
    v35 = self->_has;
    if ((v35 & 0x100) == 0)
    {
LABEL_11:
      if ((v35 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  *(v5 + 128) = self->_runLatency;
  *(v5 + 172) |= 0x100u;
  v35 = self->_has;
  if ((v35 & 2) == 0)
  {
LABEL_12:
    if ((v35 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 72) = self->_inputTokenLength;
  *(v5 + 172) |= 2u;
  v35 = self->_has;
  if ((v35 & 8) == 0)
  {
LABEL_13:
    if ((v35 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 100) = self->_outputTokenLength;
  *(v5 + 172) |= 8u;
  v35 = self->_has;
  if ((v35 & 0x20) == 0)
  {
LABEL_14:
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 108) = self->_requestType;
  *(v5 + 172) |= 0x20u;
  v35 = self->_has;
  if ((v35 & 0x10) == 0)
  {
LABEL_15:
    if ((v35 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_25:
    *(v5 + 112) = self->_resultType;
    *(v5 + 172) |= 0x40u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_17;
  }

LABEL_24:
  *(v5 + 104) = self->_regionEligibility;
  *(v5 + 172) |= 0x10u;
  v35 = self->_has;
  if ((v35 & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v35 & 4) != 0)
  {
LABEL_17:
    *(v5 + 96) = self->_numFollowUp;
    *(v5 + 172) |= 4u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v7;
  }

  if (self->_runSource)
  {
    [v7 setRunSource:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    *(v4 + 168) = self->_completed;
    *(v4 + 86) |= 0x200u;
  }

  if (self->_actionIdentifier)
  {
    [v7 setActionIdentifier:?];
    v4 = v7;
  }

  if (self->_shortcutSource)
  {
    [v7 setShortcutSource:?];
    v4 = v7;
  }

  if (self->_automationType)
  {
    [v7 setAutomationType:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v4 + 169) = self->_didRunRemotely;
    *(v4 + 86) |= 0x400u;
    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    *(v4 + 170) = self->_isInvalidatedSystemAction;
    *(v4 + 86) |= 0x800u;
  }

  if (self->_galleryIdentifier)
  {
    [v7 setGalleryIdentifier:?];
    v4 = v7;
  }

  if (self->_externalBundleIdentifier)
  {
    [v7 setExternalBundleIdentifier:?];
    v4 = v7;
  }

  if (self->_externalActionIdentifier)
  {
    [v7 setExternalActionIdentifier:?];
    v4 = v7;
  }

  if (self->_shortcutsId)
  {
    [v7 setShortcutsId:?];
    v4 = v7;
  }

  if (*&self->_has)
  {
    *(v4 + 10) = self->_completeFailReason;
    *(v4 + 86) |= 1u;
  }

  if (self->_baseModel)
  {
    [v7 setBaseModel:?];
    v4 = v7;
  }

  if (self->_adapterModel)
  {
    [v7 setAdapterModel:?];
    v4 = v7;
  }

  if (self->_safetyModel)
  {
    [v7 setSafetyModel:?];
    v4 = v7;
  }

  if (self->_modelDestination)
  {
    [v7 setModelDestination:?];
    v4 = v7;
  }

  if (self->_runErrorDomain)
  {
    [v7 setRunErrorDomain:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x80) != 0)
  {
    *(v4 + 29) = self->_runErrorCode;
    *(v4 + 86) |= 0x80u;
    v6 = self->_has;
    if ((v6 & 0x100) == 0)
    {
LABEL_39:
      if ((v6 & 2) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_51;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_39;
  }

  *(v4 + 32) = LODWORD(self->_runLatency);
  *(v4 + 86) |= 0x100u;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_40:
    if ((v6 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v4 + 18) = self->_inputTokenLength;
  *(v4 + 86) |= 2u;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_41:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v4 + 25) = self->_outputTokenLength;
  *(v4 + 86) |= 8u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_42:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 27) = self->_requestType;
  *(v4 + 86) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_43:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 26) = self->_regionEligibility;
  *(v4 + 86) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_44:
    if ((v6 & 4) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_55:
  *(v4 + 28) = self->_resultType;
  *(v4 + 86) |= 0x40u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_45:
    *(v4 + 24) = self->_numFollowUp;
    *(v4 + 86) |= 4u;
  }

LABEL_46:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_runSource)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    completed = self->_completed;
    PBDataWriterWriteBOOLField();
    v4 = v19;
  }

  if (self->_actionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_shortcutSource)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_automationType)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    didRunRemotely = self->_didRunRemotely;
    PBDataWriterWriteBOOLField();
    v4 = v19;
    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    isInvalidatedSystemAction = self->_isInvalidatedSystemAction;
    PBDataWriterWriteBOOLField();
    v4 = v19;
  }

  if (self->_galleryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_externalBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_externalActionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_shortcutsId)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (*&self->_has)
  {
    completeFailReason = self->_completeFailReason;
    PBDataWriterWriteInt32Field();
    v4 = v19;
  }

  if (self->_baseModel)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_adapterModel)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_safetyModel)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_modelDestination)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_runErrorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  v10 = self->_has;
  if ((v10 & 0x80) != 0)
  {
    runErrorCode = self->_runErrorCode;
    PBDataWriterWriteInt32Field();
    v4 = v19;
    v10 = self->_has;
    if ((v10 & 0x100) == 0)
    {
LABEL_39:
      if ((v10 & 2) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_51;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_39;
  }

  runLatency = self->_runLatency;
  PBDataWriterWriteFloatField();
  v4 = v19;
  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
LABEL_40:
    if ((v10 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

LABEL_51:
  inputTokenLength = self->_inputTokenLength;
  PBDataWriterWriteUint32Field();
  v4 = v19;
  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
LABEL_41:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

LABEL_52:
  outputTokenLength = self->_outputTokenLength;
  PBDataWriterWriteUint32Field();
  v4 = v19;
  v10 = self->_has;
  if ((v10 & 0x20) == 0)
  {
LABEL_42:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  requestType = self->_requestType;
  PBDataWriterWriteInt32Field();
  v4 = v19;
  v10 = self->_has;
  if ((v10 & 0x10) == 0)
  {
LABEL_43:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:
  regionEligibility = self->_regionEligibility;
  PBDataWriterWriteInt32Field();
  v4 = v19;
  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
LABEL_44:
    if ((v10 & 4) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_55:
  resultType = self->_resultType;
  PBDataWriterWriteInt32Field();
  v4 = v19;
  if ((*&self->_has & 4) != 0)
  {
LABEL_45:
    numFollowUp = self->_numFollowUp;
    PBDataWriterWriteUint32Field();
    v4 = v19;
  }

LABEL_46:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  runSource = self->_runSource;
  if (runSource)
  {
    [v5 setObject:runSource forKey:@"runSource"];
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_completed];
    [v5 setObject:v8 forKey:@"completed"];
  }

  actionIdentifier = self->_actionIdentifier;
  if (actionIdentifier)
  {
    [v5 setObject:actionIdentifier forKey:@"actionIdentifier"];
  }

  shortcutSource = self->_shortcutSource;
  if (shortcutSource)
  {
    [v5 setObject:shortcutSource forKey:@"shortcutSource"];
  }

  automationType = self->_automationType;
  if (automationType)
  {
    [v5 setObject:automationType forKey:@"automationType"];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_didRunRemotely];
    [v5 setObject:v13 forKey:@"didRunRemotely"];

    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInvalidatedSystemAction];
    [v5 setObject:v14 forKey:@"isInvalidatedSystemAction"];
  }

  galleryIdentifier = self->_galleryIdentifier;
  if (galleryIdentifier)
  {
    [v5 setObject:galleryIdentifier forKey:@"galleryIdentifier"];
  }

  externalBundleIdentifier = self->_externalBundleIdentifier;
  if (externalBundleIdentifier)
  {
    [v5 setObject:externalBundleIdentifier forKey:@"externalBundleIdentifier"];
  }

  externalActionIdentifier = self->_externalActionIdentifier;
  if (externalActionIdentifier)
  {
    [v5 setObject:externalActionIdentifier forKey:@"externalActionIdentifier"];
  }

  shortcutsId = self->_shortcutsId;
  if (shortcutsId)
  {
    [v5 setObject:shortcutsId forKey:@"shortcutsId"];
  }

  if (*&self->_has)
  {
    v19 = self->_completeFailReason + 1;
    if (v19 >= 0xA)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_completeFailReason];
    }

    else
    {
      v20 = off_1E8378850[v19];
    }

    [v5 setObject:v20 forKey:@"completeFailReason"];
  }

  baseModel = self->_baseModel;
  if (baseModel)
  {
    [v5 setObject:baseModel forKey:@"baseModel"];
  }

  adapterModel = self->_adapterModel;
  if (adapterModel)
  {
    [v5 setObject:adapterModel forKey:@"adapterModel"];
  }

  safetyModel = self->_safetyModel;
  if (safetyModel)
  {
    [v5 setObject:safetyModel forKey:@"safetyModel"];
  }

  modelDestination = self->_modelDestination;
  if (modelDestination)
  {
    [v5 setObject:modelDestination forKey:@"modelDestination"];
  }

  runErrorDomain = self->_runErrorDomain;
  if (runErrorDomain)
  {
    [v5 setObject:runErrorDomain forKey:@"runErrorDomain"];
  }

  v26 = self->_has;
  if ((v26 & 0x80) != 0)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithInt:self->_runErrorCode];
    [v5 setObject:v30 forKey:@"runErrorCode"];

    v26 = self->_has;
    if ((v26 & 0x100) == 0)
    {
LABEL_42:
      if ((v26 & 2) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_52;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_42;
  }

  *&v4 = self->_runLatency;
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v5 setObject:v31 forKey:@"runLatency"];

  v26 = self->_has;
  if ((v26 & 2) == 0)
  {
LABEL_43:
    if ((v26 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_53;
  }

LABEL_52:
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_inputTokenLength];
  [v5 setObject:v32 forKey:@"inputTokenLength"];

  v26 = self->_has;
  if ((v26 & 8) == 0)
  {
LABEL_44:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_54;
  }

LABEL_53:
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_outputTokenLength];
  [v5 setObject:v33 forKey:@"outputTokenLength"];

  v26 = self->_has;
  if ((v26 & 0x20) == 0)
  {
LABEL_45:
    if ((v26 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_58;
  }

LABEL_54:
  requestType = self->_requestType;
  if (requestType >= 4)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requestType];
  }

  else
  {
    v35 = off_1E83788A0[requestType];
  }

  [v5 setObject:v35 forKey:@"requestType"];

  v26 = self->_has;
  if ((v26 & 0x10) == 0)
  {
LABEL_46:
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_47;
    }

LABEL_64:
    resultType = self->_resultType;
    if (resultType >= 8)
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_resultType];
    }

    else
    {
      v39 = off_1E83788C0[resultType];
    }

    [v5 setObject:v39 forKey:@"resultType"];

    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_58:
  regionEligibility = self->_regionEligibility;
  if (regionEligibility)
  {
    if (regionEligibility == 1)
    {
      v37 = @"UseModelRegionEligibilityChina";
    }

    else
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_regionEligibility];
    }
  }

  else
  {
    v37 = @"UseModelRegionEligibilityDefault";
  }

  [v5 setObject:v37 forKey:@"regionEligibility"];

  v26 = self->_has;
  if ((v26 & 0x40) != 0)
  {
    goto LABEL_64;
  }

LABEL_47:
  if ((v26 & 4) != 0)
  {
LABEL_48:
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numFollowUp];
    [v5 setObject:v27 forKey:@"numFollowUp"];
  }

LABEL_49:
  v28 = v5;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBRunActionEvent;
  v4 = [(WFPBRunActionEvent *)&v8 description];
  v5 = [(WFPBRunActionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasNumFollowUp:(BOOL)a3
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

- (int)StringAsResultType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UseModelResultTypeAutomatic"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UseModelResultTypeText"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UseModelResultTypeNumber"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UseModelResultTypeDate"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UseModelResultTypeBoolean"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UseModelResultTypeList"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UseModelResultTypeDictionary"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"UseModelResultTypeEntities"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasResultType:(BOOL)a3
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

- (int)resultType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_resultType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRegionEligibility:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UseModelRegionEligibilityDefault"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"UseModelRegionEligibilityChina"];
  }

  return v4;
}

- (void)setHasRegionEligibility:(BOOL)a3
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

- (int)regionEligibility
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_regionEligibility;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsRequestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UseModelRequestTypeTextOnly"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UseModelRequestTypeMultimodalImage"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UseModelRequestTypeMultimodalDocument"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UseModelRequestTypeMultimodalBoth"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRequestType:(BOOL)a3
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

- (int)requestType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_requestType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOutputTokenLength:(BOOL)a3
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

- (void)setHasInputTokenLength:(BOOL)a3
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

- (void)setHasRunLatency:(BOOL)a3
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

- (void)setHasRunErrorCode:(BOOL)a3
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

- (int)StringAsCompleteFailReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RunActionFailReasonUnknown"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonModelGeneratedUnsafeV1"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonModelGeneratedUnsafeV2"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonModelGeneratedHandleWithCareV2"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonSafetyGuardrail"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonDenyList"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonScriptValidator"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonLanguageRecognizer"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonInputImageSanitizer"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RunActionFailReasonInputTextSCMLAdapterViolation"])
  {
    v4 = 8;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)completeFailReason
{
  if (*&self->_has)
  {
    return self->_completeFailReason;
  }

  else
  {
    return -1;
  }
}

- (void)setHasIsInvalidatedSystemAction:(BOOL)a3
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

- (void)setHasDidRunRemotely:(BOOL)a3
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

- (void)setHasCompleted:(BOOL)a3
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

- (NSString)runSource
{
  if (self->_runSource)
  {
    return self->_runSource;
  }

  else
  {
    return @"unknown";
  }
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"RunAction";
  }
}

@end