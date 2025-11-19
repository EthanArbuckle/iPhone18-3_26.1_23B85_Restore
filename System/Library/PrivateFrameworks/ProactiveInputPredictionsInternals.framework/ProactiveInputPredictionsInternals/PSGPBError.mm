@interface PSGPBError
- (BOOL)isEqual:(id)a3;
- (NSString)triggerAttributeField;
- (NSString)triggerAttributeSubtype;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorType:(id)a3;
- (int)StringAsTriggerSourceType:(id)a3;
- (int)errorType;
- (int)triggerSourceType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHasContextBeforeInput:(BOOL)a3;
- (void)setHasHasRecipientNames:(BOOL)a3;
- (void)setHasHasResponseContext:(BOOL)a3;
- (void)setHasIsDocumentEmpty:(BOOL)a3;
- (void)setHasIsResponseContextBlacklisted:(BOOL)a3;
- (void)setHasMaxPredictionItems:(BOOL)a3;
- (void)setHasMaxStructuredInfoItems:(BOOL)a3;
- (void)setHasMaxTextualResponseItems:(BOOL)a3;
- (void)setHasTriggerSourceType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSGPBError

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 66))
  {
    self->_errorType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 3))
  {
    [(PSGPBError *)self setExperimentId:?];
    v4 = v8;
  }

  if (*(v4 + 9))
  {
    [(PSGPBError *)self setTreatmentId:?];
    v4 = v8;
  }

  if (*(v4 + 10))
  {
    [(PSGPBError *)self setTreatmentName:?];
    v4 = v8;
  }

  v5 = *(v4 + 66);
  if ((v5 & 0x80) != 0)
  {
    self->_hasResponseContext = *(v4 + 126);
    *&self->_has |= 0x80u;
    v5 = *(v4 + 66);
    if ((v5 & 0x200) == 0)
    {
LABEL_11:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 66) & 0x200) == 0)
  {
    goto LABEL_11;
  }

  self->_isResponseContextBlacklisted = *(v4 + 128);
  *&self->_has |= 0x200u;
  if ((*(v4 + 66) & 0x100) != 0)
  {
LABEL_12:
    self->_isDocumentEmpty = *(v4 + 127);
    *&self->_has |= 0x100u;
  }

LABEL_13:
  if (*(v4 + 8))
  {
    [(PSGPBError *)self setTextContentType:?];
    v4 = v8;
  }

  if (*(v4 + 5))
  {
    [(PSGPBError *)self setLocaleIdentifier:?];
    v4 = v8;
  }

  if (*(v4 + 1))
  {
    [(PSGPBError *)self setBundleIdentifier:?];
    v4 = v8;
  }

  v6 = *(v4 + 66);
  if ((v6 & 8) != 0)
  {
    self->_maxTextualResponseItems = *(v4 + 14);
    *&self->_has |= 8u;
    v6 = *(v4 + 66);
  }

  if ((v6 & 4) != 0)
  {
    self->_maxStructuredInfoItems = *(v4 + 13);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(PSGPBError *)self setInitiatingProcess:?];
    v4 = v8;
  }

  v7 = *(v4 + 66);
  if ((v7 & 0x20) != 0)
  {
    self->_hasContextBeforeInput = *(v4 + 124);
    *&self->_has |= 0x20u;
    v7 = *(v4 + 66);
    if ((v7 & 2) == 0)
    {
LABEL_27:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_27;
  }

  self->_maxPredictionItems = *(v4 + 12);
  *&self->_has |= 2u;
  v7 = *(v4 + 66);
  if ((v7 & 0x40) == 0)
  {
LABEL_28:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_46:
  self->_hasRecipientNames = *(v4 + 125);
  *&self->_has |= 0x40u;
  if ((*(v4 + 66) & 0x10) != 0)
  {
LABEL_29:
    self->_triggerSourceType = *(v4 + 30);
    *&self->_has |= 0x10u;
  }

LABEL_30:
  if (*(v4 + 14))
  {
    [(PSGPBError *)self setTriggerCategory:?];
    v4 = v8;
  }

  if (*(v4 + 13))
  {
    [(PSGPBError *)self setTriggerAttributeType:?];
    v4 = v8;
  }

  if (*(v4 + 12))
  {
    [(PSGPBError *)self setTriggerAttributeSubtype:?];
    v4 = v8;
  }

  if (*(v4 + 11))
  {
    [(PSGPBError *)self setTriggerAttributeField:?];
    v4 = v8;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v26 = 2654435761 * self->_errorType;
  }

  else
  {
    v26 = 0;
  }

  v25 = [(NSString *)self->_experimentId hash];
  v24 = [(NSString *)self->_treatmentId hash];
  v23 = [(NSString *)self->_treatmentName hash];
  if ((*&self->_has & 0x80) == 0)
  {
    v22 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v3 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v22 = 2654435761 * self->_hasResponseContext;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v3 = 2654435761 * self->_isResponseContextBlacklisted;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_isDocumentEmpty;
    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
LABEL_11:
  v5 = [(NSString *)self->_textContentType hash];
  v6 = [(NSString *)self->_localeIdentifier hash];
  v7 = [(NSString *)self->_bundleIdentifier hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = 2654435761 * self->_maxTextualResponseItems;
    if ((has & 4) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if ((has & 4) != 0)
    {
LABEL_13:
      v10 = 2654435761 * self->_maxStructuredInfoItems;
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:
  v11 = [(NSString *)self->_initiatingProcess hash];
  v12 = self->_has;
  if ((v12 & 0x20) != 0)
  {
    v13 = 2654435761 * self->_hasContextBeforeInput;
    if ((v12 & 2) != 0)
    {
LABEL_18:
      v14 = 2654435761 * self->_maxPredictionItems;
      if ((v12 & 0x40) != 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      v15 = 0;
      if ((v12 & 0x10) != 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      v16 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

  v14 = 0;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v15 = 2654435761 * self->_hasRecipientNames;
  if ((v12 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v16 = 2654435761 * self->_triggerSourceType;
LABEL_25:
  v17 = v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11;
  v18 = v13 ^ v14 ^ v15 ^ v16 ^ [(NSString *)self->_triggerCategory hash];
  v19 = v18 ^ [(NSString *)self->_triggerAttributeType hash];
  v20 = v19 ^ [(NSString *)self->_triggerAttributeSubtype hash];
  return v17 ^ v20 ^ [(NSString *)self->_triggerAttributeField hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_89;
  }

  v5 = *(v4 + 66);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_errorType != *(v4 + 4))
    {
      goto LABEL_89;
    }
  }

  else if (v5)
  {
    goto LABEL_89;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(v4 + 3) && ![(NSString *)experimentId isEqual:?])
  {
    goto LABEL_89;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(v4 + 9))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_89;
    }
  }

  treatmentName = self->_treatmentName;
  if (treatmentName | *(v4 + 10))
  {
    if (![(NSString *)treatmentName isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v9 = *(v4 + 66);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    v15 = *(v4 + 126);
    if (self->_hasResponseContext)
    {
      if ((*(v4 + 126) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(v4 + 126))
    {
      goto LABEL_89;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 66) & 0x200) == 0)
    {
      goto LABEL_89;
    }

    v16 = *(v4 + 128);
    if (self->_isResponseContextBlacklisted)
    {
      if ((*(v4 + 128) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(v4 + 128))
    {
      goto LABEL_89;
    }
  }

  else if ((*(v4 + 66) & 0x200) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 66) & 0x100) == 0)
    {
      goto LABEL_89;
    }

    v17 = *(v4 + 127);
    if (self->_isDocumentEmpty)
    {
      if ((*(v4 + 127) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(v4 + 127))
    {
      goto LABEL_89;
    }
  }

  else if ((*(v4 + 66) & 0x100) != 0)
  {
    goto LABEL_89;
  }

  textContentType = self->_textContentType;
  if (textContentType | *(v4 + 8) && ![(NSString *)textContentType isEqual:?])
  {
    goto LABEL_89;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(v4 + 5))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_89;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_89;
    }
  }

  has = self->_has;
  v14 = *(v4 + 66);
  if ((has & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_maxTextualResponseItems != *(v4 + 14))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_maxStructuredInfoItems != *(v4 + 13))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_89;
  }

  initiatingProcess = self->_initiatingProcess;
  if (initiatingProcess | *(v4 + 4))
  {
    if (![(NSString *)initiatingProcess isEqual:?])
    {
      goto LABEL_89;
    }

    has = self->_has;
    v14 = *(v4 + 66);
  }

  if ((has & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_89;
    }

    v19 = *(v4 + 124);
    if (self->_hasContextBeforeInput)
    {
      if ((*(v4 + 124) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(v4 + 124))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 0x20) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_maxPredictionItems != *(v4 + 12))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_89;
  }

  if ((has & 0x40) == 0)
  {
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_69;
    }

LABEL_89:
    v25 = 0;
    goto LABEL_90;
  }

  if ((v14 & 0x40) == 0)
  {
    goto LABEL_89;
  }

  v20 = *(v4 + 125);
  if (self->_hasRecipientNames)
  {
    if ((*(v4 + 125) & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (*(v4 + 125))
  {
    goto LABEL_89;
  }

LABEL_69:
  if ((has & 0x10) != 0)
  {
    if ((v14 & 0x10) == 0 || self->_triggerSourceType != *(v4 + 30))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 0x10) != 0)
  {
    goto LABEL_89;
  }

  triggerCategory = self->_triggerCategory;
  if (triggerCategory | *(v4 + 14) && ![(NSString *)triggerCategory isEqual:?])
  {
    goto LABEL_89;
  }

  triggerAttributeType = self->_triggerAttributeType;
  if (triggerAttributeType | *(v4 + 13))
  {
    if (![(NSString *)triggerAttributeType isEqual:?])
    {
      goto LABEL_89;
    }
  }

  triggerAttributeSubtype = self->_triggerAttributeSubtype;
  if (triggerAttributeSubtype | *(v4 + 12))
  {
    if (![(NSString *)triggerAttributeSubtype isEqual:?])
    {
      goto LABEL_89;
    }
  }

  triggerAttributeField = self->_triggerAttributeField;
  if (triggerAttributeField | *(v4 + 11))
  {
    v25 = [(NSString *)triggerAttributeField isEqual:?];
  }

  else
  {
    v25 = 1;
  }

LABEL_90:

  return v25;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_errorType;
    *(v5 + 132) |= 1u;
  }

  v7 = [(NSString *)self->_experimentId copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_treatmentId copyWithZone:a3];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  v11 = [(NSString *)self->_treatmentName copyWithZone:a3];
  v12 = *(v6 + 80);
  *(v6 + 80) = v11;

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(v6 + 126) = self->_hasResponseContext;
    *(v6 + 132) |= 0x80u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_5:
      if ((has & 0x100) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 128) = self->_isResponseContextBlacklisted;
  *(v6 + 132) |= 0x200u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    *(v6 + 127) = self->_isDocumentEmpty;
    *(v6 + 132) |= 0x100u;
  }

LABEL_7:
  v14 = [(NSString *)self->_textContentType copyWithZone:a3];
  v15 = *(v6 + 64);
  *(v6 + 64) = v14;

  v16 = [(NSString *)self->_localeIdentifier copyWithZone:a3];
  v17 = *(v6 + 40);
  *(v6 + 40) = v16;

  v18 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v19 = *(v6 + 8);
  *(v6 + 8) = v18;

  v20 = self->_has;
  if ((v20 & 8) != 0)
  {
    *(v6 + 56) = self->_maxTextualResponseItems;
    *(v6 + 132) |= 8u;
    v20 = self->_has;
  }

  if ((v20 & 4) != 0)
  {
    *(v6 + 52) = self->_maxStructuredInfoItems;
    *(v6 + 132) |= 4u;
  }

  v21 = [(NSString *)self->_initiatingProcess copyWithZone:a3];
  v22 = *(v6 + 32);
  *(v6 + 32) = v21;

  v23 = self->_has;
  if ((v23 & 0x20) != 0)
  {
    *(v6 + 124) = self->_hasContextBeforeInput;
    *(v6 + 132) |= 0x20u;
    v23 = self->_has;
    if ((v23 & 2) == 0)
    {
LABEL_13:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      *(v6 + 125) = self->_hasRecipientNames;
      *(v6 + 132) |= 0x40u;
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_13;
  }

  *(v6 + 48) = self->_maxPredictionItems;
  *(v6 + 132) |= 2u;
  v23 = self->_has;
  if ((v23 & 0x40) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v23 & 0x10) != 0)
  {
LABEL_15:
    *(v6 + 120) = self->_triggerSourceType;
    *(v6 + 132) |= 0x10u;
  }

LABEL_16:
  v24 = [(NSString *)self->_triggerCategory copyWithZone:a3];
  v25 = *(v6 + 112);
  *(v6 + 112) = v24;

  v26 = [(NSString *)self->_triggerAttributeType copyWithZone:a3];
  v27 = *(v6 + 104);
  *(v6 + 104) = v26;

  v28 = [(NSString *)self->_triggerAttributeSubtype copyWithZone:a3];
  v29 = *(v6 + 96);
  *(v6 + 96) = v28;

  v30 = [(NSString *)self->_triggerAttributeField copyWithZone:a3];
  v31 = *(v6 + 88);
  *(v6 + 88) = v30;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_errorType;
    *(v4 + 66) |= 1u;
  }

  v8 = v4;
  if (self->_experimentId)
  {
    [v4 setExperimentId:?];
    v4 = v8;
  }

  if (self->_treatmentId)
  {
    [v8 setTreatmentId:?];
    v4 = v8;
  }

  if (self->_treatmentName)
  {
    [v8 setTreatmentName:?];
    v4 = v8;
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(v4 + 126) = self->_hasResponseContext;
    *(v4 + 66) |= 0x80u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_11:
      if ((has & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 128) = self->_isResponseContextBlacklisted;
  *(v4 + 66) |= 0x200u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    *(v4 + 127) = self->_isDocumentEmpty;
    *(v4 + 66) |= 0x100u;
  }

LABEL_13:
  if (self->_textContentType)
  {
    [v8 setTextContentType:?];
    v4 = v8;
  }

  if (self->_localeIdentifier)
  {
    [v8 setLocaleIdentifier:?];
    v4 = v8;
  }

  if (self->_bundleIdentifier)
  {
    [v8 setBundleIdentifier:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    v4[14] = self->_maxTextualResponseItems;
    *(v4 + 66) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    v4[13] = self->_maxStructuredInfoItems;
    *(v4 + 66) |= 4u;
  }

  if (self->_initiatingProcess)
  {
    [v8 setInitiatingProcess:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    *(v4 + 124) = self->_hasContextBeforeInput;
    *(v4 + 66) |= 0x20u;
    v7 = self->_has;
    if ((v7 & 2) == 0)
    {
LABEL_27:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_27;
  }

  v4[12] = self->_maxPredictionItems;
  *(v4 + 66) |= 2u;
  v7 = self->_has;
  if ((v7 & 0x40) == 0)
  {
LABEL_28:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_46:
  *(v4 + 125) = self->_hasRecipientNames;
  *(v4 + 66) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_29:
    v4[30] = self->_triggerSourceType;
    *(v4 + 66) |= 0x10u;
  }

LABEL_30:
  if (self->_triggerCategory)
  {
    [v8 setTriggerCategory:?];
    v4 = v8;
  }

  if (self->_triggerAttributeType)
  {
    [v8 setTriggerAttributeType:?];
    v4 = v8;
  }

  if (self->_triggerAttributeSubtype)
  {
    [v8 setTriggerAttributeSubtype:?];
    v4 = v8;
  }

  if (self->_triggerAttributeField)
  {
    [v8 setTriggerAttributeField:?];
    v4 = v8;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v18 = v4;
  if (*&self->_has)
  {
    errorType = self->_errorType;
    PBDataWriterWriteInt32Field();
    v4 = v18;
  }

  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  if (self->_treatmentName)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    hasResponseContext = self->_hasResponseContext;
    PBDataWriterWriteBOOLField();
    v4 = v18;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_11:
      if ((has & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_11;
  }

  isResponseContextBlacklisted = self->_isResponseContextBlacklisted;
  PBDataWriterWriteBOOLField();
  v4 = v18;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    isDocumentEmpty = self->_isDocumentEmpty;
    PBDataWriterWriteBOOLField();
    v4 = v18;
  }

LABEL_13:
  if (self->_textContentType)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    maxTextualResponseItems = self->_maxTextualResponseItems;
    PBDataWriterWriteUint32Field();
    v4 = v18;
    v8 = self->_has;
  }

  if ((v8 & 4) != 0)
  {
    maxStructuredInfoItems = self->_maxStructuredInfoItems;
    PBDataWriterWriteUint32Field();
    v4 = v18;
  }

  if (self->_initiatingProcess)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  v11 = self->_has;
  if ((v11 & 0x20) != 0)
  {
    hasContextBeforeInput = self->_hasContextBeforeInput;
    PBDataWriterWriteBOOLField();
    v4 = v18;
    v11 = self->_has;
    if ((v11 & 2) == 0)
    {
LABEL_27:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_27;
  }

  maxPredictionItems = self->_maxPredictionItems;
  PBDataWriterWriteUint32Field();
  v4 = v18;
  v11 = self->_has;
  if ((v11 & 0x40) == 0)
  {
LABEL_28:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_46:
  hasRecipientNames = self->_hasRecipientNames;
  PBDataWriterWriteBOOLField();
  v4 = v18;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_29:
    triggerSourceType = self->_triggerSourceType;
    PBDataWriterWriteInt32Field();
    v4 = v18;
  }

LABEL_30:
  if (self->_triggerCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  if (self->_triggerAttributeType)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  if (self->_triggerAttributeSubtype)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }

  if (self->_triggerAttributeField)
  {
    PBDataWriterWriteStringField();
    v4 = v18;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [v3 setObject:experimentId forKey:@"experiment_id"];
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [v4 setObject:treatmentId forKey:@"treatment_id"];
  }

  treatmentName = self->_treatmentName;
  if (treatmentName)
  {
    [v4 setObject:treatmentName forKey:@"treatment_name"];
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasResponseContext];
    [v4 setObject:v21 forKey:@"has_response_context"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_9:
      if ((has & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_9;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_isResponseContextBlacklisted];
  [v4 setObject:v22 forKey:@"is_response_context_blacklisted"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDocumentEmpty];
    [v4 setObject:v9 forKey:@"is_document_empty"];
  }

LABEL_11:
  textContentType = self->_textContentType;
  if (textContentType)
  {
    [v4 setObject:textContentType forKey:@"text_content_type"];
  }

  v11 = self->_has;
  if ((v11 & 0x20) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasContextBeforeInput];
    [v4 setObject:v12 forKey:@"has_context_before_input"];

    v11 = self->_has;
  }

  if ((v11 & 0x40) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasRecipientNames];
    [v4 setObject:v13 forKey:@"has_recipient_names"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v4 setObject:localeIdentifier forKey:@"locale_identifier"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundle_identifier"];
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxTextualResponseItems];
    [v4 setObject:v23 forKey:@"max_textual_response_items"];

    v16 = self->_has;
    if ((v16 & 4) == 0)
    {
LABEL_23:
      if ((v16 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v16 & 4) == 0)
  {
    goto LABEL_23;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxStructuredInfoItems];
  [v4 setObject:v24 forKey:@"max_structured_info_items"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_24:
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxPredictionItems];
    [v4 setObject:v17 forKey:@"max_prediction_items"];
  }

LABEL_25:
  initiatingProcess = self->_initiatingProcess;
  if (initiatingProcess)
  {
    [v4 setObject:initiatingProcess forKey:@"initiating_process"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    triggerSourceType = self->_triggerSourceType;
    if (triggerSourceType >= 7)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_triggerSourceType];
    }

    else
    {
      v20 = off_279ABE330[triggerSourceType];
    }

    [v4 setObject:v20 forKey:@"trigger_source_type"];
  }

  triggerCategory = self->_triggerCategory;
  if (triggerCategory)
  {
    [v4 setObject:triggerCategory forKey:@"trigger_category"];
  }

  triggerAttributeType = self->_triggerAttributeType;
  if (triggerAttributeType)
  {
    [v4 setObject:triggerAttributeType forKey:@"trigger_attribute_type"];
  }

  triggerAttributeSubtype = self->_triggerAttributeSubtype;
  if (triggerAttributeSubtype)
  {
    [v4 setObject:triggerAttributeSubtype forKey:@"trigger_attribute_subtype"];
  }

  triggerAttributeField = self->_triggerAttributeField;
  if (triggerAttributeField)
  {
    [v4 setObject:triggerAttributeField forKey:@"trigger_attribute_field"];
  }

  if (*&self->_has)
  {
    errorType = self->_errorType;
    if (errorType >= 5)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_errorType];
    }

    else
    {
      v30 = off_279ABE368[errorType];
    }

    [v4 setObject:v30 forKey:@"error_type"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PSGPBError;
  v4 = [(PSGPBError *)&v8 description];
  v5 = [(PSGPBError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsErrorType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ErrorType_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ErrorType_TIMEOUT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ErrorType_WORD_BOUNDARY_XPC_TIMEOUT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ErrorType_ZKW_XPC_TIMEOUT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ErrorType_PORTRAIT_XPC_TIMEOUT"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)errorType
{
  if (*&self->_has)
  {
    return self->_errorType;
  }

  else
  {
    return 0;
  }
}

- (NSString)triggerAttributeField
{
  if (self->_triggerAttributeField)
  {
    return self->_triggerAttributeField;
  }

  else
  {
    return @"null";
  }
}

- (NSString)triggerAttributeSubtype
{
  if (self->_triggerAttributeSubtype)
  {
    return self->_triggerAttributeSubtype;
  }

  else
  {
    return @"null";
  }
}

- (int)StringAsTriggerSourceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TriggerSourceType_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TriggerSourceType_LMTriggerPhrase"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TriggerSourceType_ResponseKit"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TriggerSourceType_TaggedTextField"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TriggerSourceType_MLDeclarative"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TriggerSourceType_MLInterrogative"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TriggerSourceType_NameMentions"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTriggerSourceType:(BOOL)a3
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

- (int)triggerSourceType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_triggerSourceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMaxPredictionItems:(BOOL)a3
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

- (void)setHasMaxStructuredInfoItems:(BOOL)a3
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

- (void)setHasMaxTextualResponseItems:(BOOL)a3
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

- (void)setHasHasRecipientNames:(BOOL)a3
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

- (void)setHasHasContextBeforeInput:(BOOL)a3
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

- (void)setHasIsDocumentEmpty:(BOOL)a3
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

- (void)setHasIsResponseContextBlacklisted:(BOOL)a3
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

- (void)setHasHasResponseContext:(BOOL)a3
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

@end