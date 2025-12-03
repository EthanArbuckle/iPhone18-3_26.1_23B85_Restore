@interface PSGPBError
- (BOOL)isEqual:(id)equal;
- (NSString)triggerAttributeField;
- (NSString)triggerAttributeSubtype;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorType:(id)type;
- (int)StringAsTriggerSourceType:(id)type;
- (int)errorType;
- (int)triggerSourceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHasContextBeforeInput:(BOOL)input;
- (void)setHasHasRecipientNames:(BOOL)names;
- (void)setHasHasResponseContext:(BOOL)context;
- (void)setHasIsDocumentEmpty:(BOOL)empty;
- (void)setHasIsResponseContextBlacklisted:(BOOL)blacklisted;
- (void)setHasMaxPredictionItems:(BOOL)items;
- (void)setHasMaxStructuredInfoItems:(BOOL)items;
- (void)setHasMaxTextualResponseItems:(BOOL)items;
- (void)setHasTriggerSourceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PSGPBError

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 66))
  {
    self->_errorType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PSGPBError *)self setExperimentId:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 9))
  {
    [(PSGPBError *)self setTreatmentId:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 10))
  {
    [(PSGPBError *)self setTreatmentName:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 66);
  if ((v5 & 0x80) != 0)
  {
    self->_hasResponseContext = *(fromCopy + 126);
    *&self->_has |= 0x80u;
    v5 = *(fromCopy + 66);
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

  else if ((*(fromCopy + 66) & 0x200) == 0)
  {
    goto LABEL_11;
  }

  self->_isResponseContextBlacklisted = *(fromCopy + 128);
  *&self->_has |= 0x200u;
  if ((*(fromCopy + 66) & 0x100) != 0)
  {
LABEL_12:
    self->_isDocumentEmpty = *(fromCopy + 127);
    *&self->_has |= 0x100u;
  }

LABEL_13:
  if (*(fromCopy + 8))
  {
    [(PSGPBError *)self setTextContentType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 5))
  {
    [(PSGPBError *)self setLocaleIdentifier:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 1))
  {
    [(PSGPBError *)self setBundleIdentifier:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 66);
  if ((v6 & 8) != 0)
  {
    self->_maxTextualResponseItems = *(fromCopy + 14);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 66);
  }

  if ((v6 & 4) != 0)
  {
    self->_maxStructuredInfoItems = *(fromCopy + 13);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    [(PSGPBError *)self setInitiatingProcess:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 66);
  if ((v7 & 0x20) != 0)
  {
    self->_hasContextBeforeInput = *(fromCopy + 124);
    *&self->_has |= 0x20u;
    v7 = *(fromCopy + 66);
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

  self->_maxPredictionItems = *(fromCopy + 12);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 66);
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
  self->_hasRecipientNames = *(fromCopy + 125);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 66) & 0x10) != 0)
  {
LABEL_29:
    self->_triggerSourceType = *(fromCopy + 30);
    *&self->_has |= 0x10u;
  }

LABEL_30:
  if (*(fromCopy + 14))
  {
    [(PSGPBError *)self setTriggerCategory:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 13))
  {
    [(PSGPBError *)self setTriggerAttributeType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 12))
  {
    [(PSGPBError *)self setTriggerAttributeSubtype:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 11))
  {
    [(PSGPBError *)self setTriggerAttributeField:?];
    fromCopy = v8;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_89;
  }

  v5 = *(equalCopy + 66);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_errorType != *(equalCopy + 4))
    {
      goto LABEL_89;
    }
  }

  else if (v5)
  {
    goto LABEL_89;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(equalCopy + 3) && ![(NSString *)experimentId isEqual:?])
  {
    goto LABEL_89;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(equalCopy + 9))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_89;
    }
  }

  treatmentName = self->_treatmentName;
  if (treatmentName | *(equalCopy + 10))
  {
    if (![(NSString *)treatmentName isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v9 = *(equalCopy + 66);
  if ((*&self->_has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    v15 = *(equalCopy + 126);
    if (self->_hasResponseContext)
    {
      if ((*(equalCopy + 126) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 126))
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
    if ((*(equalCopy + 66) & 0x200) == 0)
    {
      goto LABEL_89;
    }

    v16 = *(equalCopy + 128);
    if (self->_isResponseContextBlacklisted)
    {
      if ((*(equalCopy + 128) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 128))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 66) & 0x200) != 0)
  {
    goto LABEL_89;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 66) & 0x100) == 0)
    {
      goto LABEL_89;
    }

    v17 = *(equalCopy + 127);
    if (self->_isDocumentEmpty)
    {
      if ((*(equalCopy + 127) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 127))
    {
      goto LABEL_89;
    }
  }

  else if ((*(equalCopy + 66) & 0x100) != 0)
  {
    goto LABEL_89;
  }

  textContentType = self->_textContentType;
  if (textContentType | *(equalCopy + 8) && ![(NSString *)textContentType isEqual:?])
  {
    goto LABEL_89;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_89;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_89;
    }
  }

  has = self->_has;
  v14 = *(equalCopy + 66);
  if ((has & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_maxTextualResponseItems != *(equalCopy + 14))
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
    if ((v14 & 4) == 0 || self->_maxStructuredInfoItems != *(equalCopy + 13))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_89;
  }

  initiatingProcess = self->_initiatingProcess;
  if (initiatingProcess | *(equalCopy + 4))
  {
    if (![(NSString *)initiatingProcess isEqual:?])
    {
      goto LABEL_89;
    }

    has = self->_has;
    v14 = *(equalCopy + 66);
  }

  if ((has & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_89;
    }

    v19 = *(equalCopy + 124);
    if (self->_hasContextBeforeInput)
    {
      if ((*(equalCopy + 124) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 124))
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
    if ((v14 & 2) == 0 || self->_maxPredictionItems != *(equalCopy + 12))
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

  v20 = *(equalCopy + 125);
  if (self->_hasRecipientNames)
  {
    if ((*(equalCopy + 125) & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (*(equalCopy + 125))
  {
    goto LABEL_89;
  }

LABEL_69:
  if ((has & 0x10) != 0)
  {
    if ((v14 & 0x10) == 0 || self->_triggerSourceType != *(equalCopy + 30))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 0x10) != 0)
  {
    goto LABEL_89;
  }

  triggerCategory = self->_triggerCategory;
  if (triggerCategory | *(equalCopy + 14) && ![(NSString *)triggerCategory isEqual:?])
  {
    goto LABEL_89;
  }

  triggerAttributeType = self->_triggerAttributeType;
  if (triggerAttributeType | *(equalCopy + 13))
  {
    if (![(NSString *)triggerAttributeType isEqual:?])
    {
      goto LABEL_89;
    }
  }

  triggerAttributeSubtype = self->_triggerAttributeSubtype;
  if (triggerAttributeSubtype | *(equalCopy + 12))
  {
    if (![(NSString *)triggerAttributeSubtype isEqual:?])
    {
      goto LABEL_89;
    }
  }

  triggerAttributeField = self->_triggerAttributeField;
  if (triggerAttributeField | *(equalCopy + 11))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_errorType;
    *(v5 + 132) |= 1u;
  }

  v7 = [(NSString *)self->_experimentId copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  v11 = [(NSString *)self->_treatmentName copyWithZone:zone];
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
  v14 = [(NSString *)self->_textContentType copyWithZone:zone];
  v15 = *(v6 + 64);
  *(v6 + 64) = v14;

  v16 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v17 = *(v6 + 40);
  *(v6 + 40) = v16;

  v18 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
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

  v21 = [(NSString *)self->_initiatingProcess copyWithZone:zone];
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
  v24 = [(NSString *)self->_triggerCategory copyWithZone:zone];
  v25 = *(v6 + 112);
  *(v6 + 112) = v24;

  v26 = [(NSString *)self->_triggerAttributeType copyWithZone:zone];
  v27 = *(v6 + 104);
  *(v6 + 104) = v26;

  v28 = [(NSString *)self->_triggerAttributeSubtype copyWithZone:zone];
  v29 = *(v6 + 96);
  *(v6 + 96) = v28;

  v30 = [(NSString *)self->_triggerAttributeField copyWithZone:zone];
  v31 = *(v6 + 88);
  *(v6 + 88) = v30;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_errorType;
    *(toCopy + 66) |= 1u;
  }

  v8 = toCopy;
  if (self->_experimentId)
  {
    [toCopy setExperimentId:?];
    toCopy = v8;
  }

  if (self->_treatmentId)
  {
    [v8 setTreatmentId:?];
    toCopy = v8;
  }

  if (self->_treatmentName)
  {
    [v8 setTreatmentName:?];
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(toCopy + 126) = self->_hasResponseContext;
    *(toCopy + 66) |= 0x80u;
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

  *(toCopy + 128) = self->_isResponseContextBlacklisted;
  *(toCopy + 66) |= 0x200u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    *(toCopy + 127) = self->_isDocumentEmpty;
    *(toCopy + 66) |= 0x100u;
  }

LABEL_13:
  if (self->_textContentType)
  {
    [v8 setTextContentType:?];
    toCopy = v8;
  }

  if (self->_localeIdentifier)
  {
    [v8 setLocaleIdentifier:?];
    toCopy = v8;
  }

  if (self->_bundleIdentifier)
  {
    [v8 setBundleIdentifier:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    toCopy[14] = self->_maxTextualResponseItems;
    *(toCopy + 66) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    toCopy[13] = self->_maxStructuredInfoItems;
    *(toCopy + 66) |= 4u;
  }

  if (self->_initiatingProcess)
  {
    [v8 setInitiatingProcess:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    *(toCopy + 124) = self->_hasContextBeforeInput;
    *(toCopy + 66) |= 0x20u;
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

  toCopy[12] = self->_maxPredictionItems;
  *(toCopy + 66) |= 2u;
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
  *(toCopy + 125) = self->_hasRecipientNames;
  *(toCopy + 66) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_29:
    toCopy[30] = self->_triggerSourceType;
    *(toCopy + 66) |= 0x10u;
  }

LABEL_30:
  if (self->_triggerCategory)
  {
    [v8 setTriggerCategory:?];
    toCopy = v8;
  }

  if (self->_triggerAttributeType)
  {
    [v8 setTriggerAttributeType:?];
    toCopy = v8;
  }

  if (self->_triggerAttributeSubtype)
  {
    [v8 setTriggerAttributeSubtype:?];
    toCopy = v8;
  }

  if (self->_triggerAttributeField)
  {
    [v8 setTriggerAttributeField:?];
    toCopy = v8;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (*&self->_has)
  {
    errorType = self->_errorType;
    PBDataWriterWriteInt32Field();
    toCopy = v18;
  }

  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_treatmentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  has = self->_has;
  if ((has & 0x80) != 0)
  {
    hasResponseContext = self->_hasResponseContext;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
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
  toCopy = v18;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    isDocumentEmpty = self->_isDocumentEmpty;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
  }

LABEL_13:
  if (self->_textContentType)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    maxTextualResponseItems = self->_maxTextualResponseItems;
    PBDataWriterWriteUint32Field();
    toCopy = v18;
    v8 = self->_has;
  }

  if ((v8 & 4) != 0)
  {
    maxStructuredInfoItems = self->_maxStructuredInfoItems;
    PBDataWriterWriteUint32Field();
    toCopy = v18;
  }

  if (self->_initiatingProcess)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  v11 = self->_has;
  if ((v11 & 0x20) != 0)
  {
    hasContextBeforeInput = self->_hasContextBeforeInput;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
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
  toCopy = v18;
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
  toCopy = v18;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_29:
    triggerSourceType = self->_triggerSourceType;
    PBDataWriterWriteInt32Field();
    toCopy = v18;
  }

LABEL_30:
  if (self->_triggerCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_triggerAttributeType)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_triggerAttributeSubtype)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_triggerAttributeField)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [dictionary setObject:experimentId forKey:@"experiment_id"];
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
  dictionaryRepresentation = [(PSGPBError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsErrorType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ErrorType_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ErrorType_TIMEOUT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ErrorType_WORD_BOUNDARY_XPC_TIMEOUT"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ErrorType_ZKW_XPC_TIMEOUT"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ErrorType_PORTRAIT_XPC_TIMEOUT"])
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

- (int)StringAsTriggerSourceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"TriggerSourceType_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"TriggerSourceType_LMTriggerPhrase"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"TriggerSourceType_ResponseKit"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"TriggerSourceType_TaggedTextField"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TriggerSourceType_MLDeclarative"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"TriggerSourceType_MLInterrogative"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"TriggerSourceType_NameMentions"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTriggerSourceType:(BOOL)type
{
  if (type)
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

- (void)setHasMaxPredictionItems:(BOOL)items
{
  if (items)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasMaxStructuredInfoItems:(BOOL)items
{
  if (items)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasMaxTextualResponseItems:(BOOL)items
{
  if (items)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasHasRecipientNames:(BOOL)names
{
  if (names)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasHasContextBeforeInput:(BOOL)input
{
  if (input)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsDocumentEmpty:(BOOL)empty
{
  if (empty)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsResponseContextBlacklisted:(BOOL)blacklisted
{
  if (blacklisted)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasHasResponseContext:(BOOL)context
{
  if (context)
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