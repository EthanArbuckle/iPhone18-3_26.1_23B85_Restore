@interface PSGPBTrigger
- (BOOL)isEqual:(id)equal;
- (NSString)triggerAttributeField;
- (NSString)triggerAttributeSubtype;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTriggerSourceType:(id)type;
- (int)triggerSourceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHasContextBeforeInput:(BOOL)input;
- (void)setHasHasRecipientNames:(BOOL)names;
- (void)setHasHasResponseContext:(BOOL)context;
- (void)setHasIsDocumentEmpty:(BOOL)empty;
- (void)setHasIsResponseContextBlacklisted:(BOOL)blacklisted;
- (void)setHasMaxStructuredInfoItems:(BOOL)items;
- (void)setHasMaxTextualResponseItems:(BOOL)items;
- (void)setHasTriggerSourceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PSGPBTrigger

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 62) & 8) != 0)
  {
    self->_triggerSourceType = *(fromCopy + 28);
    *&self->_has |= 8u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 13))
  {
    [(PSGPBTrigger *)self setTriggerCategory:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 2))
  {
    [(PSGPBTrigger *)self setExperimentId:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 8))
  {
    [(PSGPBTrigger *)self setTreatmentId:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 9))
  {
    [(PSGPBTrigger *)self setTreatmentName:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 62);
  if ((v5 & 0x40) != 0)
  {
    self->_hasResponseContext = *(fromCopy + 118);
    *&self->_has |= 0x40u;
    v5 = *(fromCopy + 62);
    if ((v5 & 0x100) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 62) & 0x100) == 0)
  {
    goto LABEL_13;
  }

  self->_isResponseContextBlacklisted = *(fromCopy + 120);
  *&self->_has |= 0x100u;
  if ((*(fromCopy + 62) & 0x80) != 0)
  {
LABEL_14:
    self->_isDocumentEmpty = *(fromCopy + 119);
    *&self->_has |= 0x80u;
  }

LABEL_15:
  if (*(fromCopy + 7))
  {
    [(PSGPBTrigger *)self setTextContentType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 4))
  {
    [(PSGPBTrigger *)self setLocaleIdentifier:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 1))
  {
    [(PSGPBTrigger *)self setBundleIdentifier:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 62);
  if ((v6 & 4) != 0)
  {
    self->_maxTextualResponseItems = *(fromCopy + 12);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 62);
  }

  if ((v6 & 2) != 0)
  {
    self->_maxStructuredInfoItems = *(fromCopy + 11);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(PSGPBTrigger *)self setInitiatingProcess:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 12))
  {
    [(PSGPBTrigger *)self setTriggerAttributeType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 11))
  {
    [(PSGPBTrigger *)self setTriggerAttributeSubtype:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 10))
  {
    [(PSGPBTrigger *)self setTriggerAttributeField:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 62);
  if ((v7 & 0x10) != 0)
  {
    self->_hasContextBeforeInput = *(fromCopy + 116);
    *&self->_has |= 0x10u;
    v7 = *(fromCopy + 62);
    if ((v7 & 1) == 0)
    {
LABEL_35:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_35;
  }

  self->_maxPredictionItems = *(fromCopy + 10);
  *&self->_has |= 1u;
  if ((*(fromCopy + 62) & 0x20) != 0)
  {
LABEL_36:
    self->_hasRecipientNames = *(fromCopy + 117);
    *&self->_has |= 0x20u;
  }

LABEL_37:
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v26 = 2654435761 * self->_triggerSourceType;
  }

  else
  {
    v26 = 0;
  }

  v25 = [(NSString *)self->_triggerCategory hash];
  v24 = [(NSString *)self->_experimentId hash];
  v23 = [(NSString *)self->_treatmentId hash];
  v22 = [(NSString *)self->_treatmentName hash];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
    v21 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v20 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v21 = 2654435761 * self->_hasResponseContext;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v20 = 2654435761 * self->_isResponseContextBlacklisted;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v19 = 2654435761 * self->_isDocumentEmpty;
    goto LABEL_11;
  }

LABEL_10:
  v19 = 0;
LABEL_11:
  v18 = [(NSString *)self->_textContentType hash];
  v4 = [(NSString *)self->_localeIdentifier hash];
  v5 = [(NSString *)self->_bundleIdentifier hash];
  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    v7 = 2654435761 * self->_maxTextualResponseItems;
    if ((v6 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    if ((v6 & 2) != 0)
    {
LABEL_13:
      v8 = 2654435761 * self->_maxStructuredInfoItems;
      goto LABEL_16;
    }
  }

  v8 = 0;
LABEL_16:
  v9 = [(NSString *)self->_initiatingProcess hash];
  v10 = [(NSString *)self->_triggerAttributeType hash];
  v11 = [(NSString *)self->_triggerAttributeSubtype hash];
  v12 = [(NSString *)self->_triggerAttributeField hash];
  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_18;
    }

LABEL_21:
    v15 = 0;
    if ((v13 & 0x20) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v16 = 0;
    return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16;
  }

  v14 = 2654435761 * self->_hasContextBeforeInput;
  if ((v13 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v15 = 2654435761 * self->_maxPredictionItems;
  if ((v13 & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v16 = 2654435761 * self->_hasRecipientNames;
  return v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_79;
  }

  v5 = *(equalCopy + 62);
  if ((*&self->_has & 8) != 0)
  {
    if ((v5 & 8) == 0 || self->_triggerSourceType != *(equalCopy + 28))
    {
      goto LABEL_79;
    }
  }

  else if ((v5 & 8) != 0)
  {
    goto LABEL_79;
  }

  triggerCategory = self->_triggerCategory;
  if (triggerCategory | *(equalCopy + 13) && ![(NSString *)triggerCategory isEqual:?])
  {
    goto LABEL_79;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(equalCopy + 2))
  {
    if (![(NSString *)experimentId isEqual:?])
    {
      goto LABEL_79;
    }
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(equalCopy + 8))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_79;
    }
  }

  treatmentName = self->_treatmentName;
  if (treatmentName | *(equalCopy + 9))
  {
    if (![(NSString *)treatmentName isEqual:?])
    {
      goto LABEL_79;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 62);
  if ((has & 0x40) != 0)
  {
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_79;
    }

    v17 = *(equalCopy + 118);
    if (self->_hasResponseContext)
    {
      if ((*(equalCopy + 118) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 118))
    {
      goto LABEL_79;
    }
  }

  else if ((v11 & 0x40) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 62) & 0x100) == 0)
    {
      goto LABEL_79;
    }

    v18 = *(equalCopy + 120);
    if (self->_isResponseContextBlacklisted)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_79;
    }
  }

  else if ((*(equalCopy + 62) & 0x100) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_79;
    }

    v19 = *(equalCopy + 119);
    if (self->_isDocumentEmpty)
    {
      if ((*(equalCopy + 119) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 119))
    {
      goto LABEL_79;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_79;
  }

  textContentType = self->_textContentType;
  if (textContentType | *(equalCopy + 7) && ![(NSString *)textContentType isEqual:?])
  {
    goto LABEL_79;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_79;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_79;
    }
  }

  v15 = self->_has;
  v16 = *(equalCopy + 62);
  if ((v15 & 4) != 0)
  {
    if ((v16 & 4) == 0 || self->_maxTextualResponseItems != *(equalCopy + 12))
    {
      goto LABEL_79;
    }
  }

  else if ((v16 & 4) != 0)
  {
    goto LABEL_79;
  }

  if ((v15 & 2) != 0)
  {
    if ((v16 & 2) == 0 || self->_maxStructuredInfoItems != *(equalCopy + 11))
    {
      goto LABEL_79;
    }
  }

  else if ((v16 & 2) != 0)
  {
    goto LABEL_79;
  }

  initiatingProcess = self->_initiatingProcess;
  if (initiatingProcess | *(equalCopy + 3) && ![(NSString *)initiatingProcess isEqual:?])
  {
    goto LABEL_79;
  }

  triggerAttributeType = self->_triggerAttributeType;
  if (triggerAttributeType | *(equalCopy + 12))
  {
    if (![(NSString *)triggerAttributeType isEqual:?])
    {
      goto LABEL_79;
    }
  }

  triggerAttributeSubtype = self->_triggerAttributeSubtype;
  if (triggerAttributeSubtype | *(equalCopy + 11))
  {
    if (![(NSString *)triggerAttributeSubtype isEqual:?])
    {
      goto LABEL_79;
    }
  }

  triggerAttributeField = self->_triggerAttributeField;
  if (triggerAttributeField | *(equalCopy + 10))
  {
    if (![(NSString *)triggerAttributeField isEqual:?])
    {
      goto LABEL_79;
    }
  }

  v24 = self->_has;
  v25 = *(equalCopy + 62);
  if ((v24 & 0x10) != 0)
  {
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_79;
    }

    v26 = *(equalCopy + 116);
    if (self->_hasContextBeforeInput)
    {
      if ((*(equalCopy + 116) & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    else if (*(equalCopy + 116))
    {
      goto LABEL_79;
    }
  }

  else if ((v25 & 0x10) != 0)
  {
    goto LABEL_79;
  }

  if (v24)
  {
    if ((v25 & 1) == 0 || self->_maxPredictionItems != *(equalCopy + 10))
    {
      goto LABEL_79;
    }
  }

  else if (v25)
  {
    goto LABEL_79;
  }

  if ((v24 & 0x20) != 0)
  {
    if ((v25 & 0x20) != 0)
    {
      if (self->_hasRecipientNames)
      {
        if ((*(equalCopy + 117) & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      else if (*(equalCopy + 117))
      {
        goto LABEL_79;
      }

      v27 = 1;
      goto LABEL_80;
    }

LABEL_79:
    v27 = 0;
    goto LABEL_80;
  }

  v27 = (v25 & 0x20) == 0;
LABEL_80:

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 112) = self->_triggerSourceType;
    *(v5 + 124) |= 8u;
  }

  v7 = [(NSString *)self->_triggerCategory copyWithZone:zone];
  v8 = *(v6 + 104);
  *(v6 + 104) = v7;

  v9 = [(NSString *)self->_experimentId copyWithZone:zone];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  v11 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v12 = *(v6 + 64);
  *(v6 + 64) = v11;

  v13 = [(NSString *)self->_treatmentName copyWithZone:zone];
  v14 = *(v6 + 72);
  *(v6 + 72) = v13;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v6 + 118) = self->_hasResponseContext;
    *(v6 + 124) |= 0x40u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 120) = self->_isResponseContextBlacklisted;
  *(v6 + 124) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    *(v6 + 119) = self->_isDocumentEmpty;
    *(v6 + 124) |= 0x80u;
  }

LABEL_7:
  v16 = [(NSString *)self->_textContentType copyWithZone:zone];
  v17 = *(v6 + 56);
  *(v6 + 56) = v16;

  v18 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v19 = *(v6 + 32);
  *(v6 + 32) = v18;

  v20 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v21 = *(v6 + 8);
  *(v6 + 8) = v20;

  v22 = self->_has;
  if ((v22 & 4) != 0)
  {
    *(v6 + 48) = self->_maxTextualResponseItems;
    *(v6 + 124) |= 4u;
    v22 = self->_has;
  }

  if ((v22 & 2) != 0)
  {
    *(v6 + 44) = self->_maxStructuredInfoItems;
    *(v6 + 124) |= 2u;
  }

  v23 = [(NSString *)self->_initiatingProcess copyWithZone:zone];
  v24 = *(v6 + 24);
  *(v6 + 24) = v23;

  v25 = [(NSString *)self->_triggerAttributeType copyWithZone:zone];
  v26 = *(v6 + 96);
  *(v6 + 96) = v25;

  v27 = [(NSString *)self->_triggerAttributeSubtype copyWithZone:zone];
  v28 = *(v6 + 88);
  *(v6 + 88) = v27;

  v29 = [(NSString *)self->_triggerAttributeField copyWithZone:zone];
  v30 = *(v6 + 80);
  *(v6 + 80) = v29;

  v31 = self->_has;
  if ((v31 & 0x10) == 0)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_20:
    *(v6 + 40) = self->_maxPredictionItems;
    *(v6 + 124) |= 1u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_14;
  }

  *(v6 + 116) = self->_hasContextBeforeInput;
  *(v6 + 124) |= 0x10u;
  v31 = self->_has;
  if (v31)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v31 & 0x20) != 0)
  {
LABEL_14:
    *(v6 + 117) = self->_hasRecipientNames;
    *(v6 + 124) |= 0x20u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    toCopy[28] = self->_triggerSourceType;
    *(toCopy + 62) |= 8u;
  }

  if (self->_triggerCategory)
  {
    [toCopy setTriggerCategory:?];
  }

  if (self->_experimentId)
  {
    [toCopy setExperimentId:?];
  }

  if (self->_treatmentId)
  {
    [toCopy setTreatmentId:?];
  }

  if (self->_treatmentName)
  {
    [toCopy setTreatmentName:?];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(toCopy + 118) = self->_hasResponseContext;
    *(toCopy + 62) |= 0x40u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_13:
      if ((has & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 120) = self->_isResponseContextBlacklisted;
  *(toCopy + 62) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_14:
    *(toCopy + 119) = self->_isDocumentEmpty;
    *(toCopy + 62) |= 0x80u;
  }

LABEL_15:
  if (self->_textContentType)
  {
    [toCopy setTextContentType:?];
  }

  if (self->_localeIdentifier)
  {
    [toCopy setLocaleIdentifier:?];
  }

  if (self->_bundleIdentifier)
  {
    [toCopy setBundleIdentifier:?];
  }

  v5 = self->_has;
  if ((v5 & 4) != 0)
  {
    toCopy[12] = self->_maxTextualResponseItems;
    *(toCopy + 62) |= 4u;
    v5 = self->_has;
  }

  if ((v5 & 2) != 0)
  {
    toCopy[11] = self->_maxStructuredInfoItems;
    *(toCopy + 62) |= 2u;
  }

  if (self->_initiatingProcess)
  {
    [toCopy setInitiatingProcess:?];
  }

  if (self->_triggerAttributeType)
  {
    [toCopy setTriggerAttributeType:?];
  }

  if (self->_triggerAttributeSubtype)
  {
    [toCopy setTriggerAttributeSubtype:?];
  }

  if (self->_triggerAttributeField)
  {
    [toCopy setTriggerAttributeField:?];
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 116) = self->_hasContextBeforeInput;
    *(toCopy + 62) |= 0x10u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_35:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_35;
  }

  toCopy[10] = self->_maxPredictionItems;
  *(toCopy + 62) |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_36:
    *(toCopy + 117) = self->_hasRecipientNames;
    *(toCopy + 62) |= 0x20u;
  }

LABEL_37:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 8) != 0)
  {
    triggerSourceType = self->_triggerSourceType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_triggerCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatmentName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    hasResponseContext = self->_hasResponseContext;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_13:
      if ((has & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_13;
  }

  isResponseContextBlacklisted = self->_isResponseContextBlacklisted;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_14:
    isDocumentEmpty = self->_isDocumentEmpty;
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
  if (self->_textContentType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    maxTextualResponseItems = self->_maxTextualResponseItems;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
  }

  if ((v7 & 2) != 0)
  {
    maxStructuredInfoItems = self->_maxStructuredInfoItems;
    PBDataWriterWriteUint32Field();
  }

  if (self->_initiatingProcess)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_triggerAttributeType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_triggerAttributeSubtype)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_triggerAttributeField)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    hasContextBeforeInput = self->_hasContextBeforeInput;
    PBDataWriterWriteBOOLField();
    v10 = self->_has;
    if ((v10 & 1) == 0)
    {
LABEL_35:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_35;
  }

  maxPredictionItems = self->_maxPredictionItems;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_36:
    hasRecipientNames = self->_hasRecipientNames;
    PBDataWriterWriteBOOLField();
  }

LABEL_37:
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
  if ((has & 0x40) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasResponseContext];
    [v4 setObject:v21 forKey:@"has_response_context"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_9:
      if ((has & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_9;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_isResponseContextBlacklisted];
  [v4 setObject:v22 forKey:@"is_response_context_blacklisted"];

  if ((*&self->_has & 0x80) != 0)
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
  if ((v11 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasContextBeforeInput];
    [v4 setObject:v12 forKey:@"has_context_before_input"];

    v11 = self->_has;
  }

  if ((v11 & 0x20) != 0)
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
  if ((v16 & 4) != 0)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxTextualResponseItems];
    [v4 setObject:v23 forKey:@"max_textual_response_items"];

    v16 = self->_has;
    if ((v16 & 2) == 0)
    {
LABEL_23:
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_23;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxStructuredInfoItems];
  [v4 setObject:v24 forKey:@"max_structured_info_items"];

  if (*&self->_has)
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

  if ((*&self->_has & 8) != 0)
  {
    triggerSourceType = self->_triggerSourceType;
    if (triggerSourceType >= 7)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_triggerSourceType];
    }

    else
    {
      v20 = off_279ABE4D8[triggerSourceType];
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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PSGPBTrigger;
  v4 = [(PSGPBTrigger *)&v8 description];
  dictionaryRepresentation = [(PSGPBTrigger *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)triggerSourceType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_triggerSourceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMaxStructuredInfoItems:(BOOL)items
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

- (void)setHasMaxTextualResponseItems:(BOOL)items
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

- (void)setHasHasRecipientNames:(BOOL)names
{
  if (names)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasHasContextBeforeInput:(BOOL)input
{
  if (input)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsDocumentEmpty:(BOOL)empty
{
  if (empty)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsResponseContextBlacklisted:(BOOL)blacklisted
{
  if (blacklisted)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasHasResponseContext:(BOOL)context
{
  if (context)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

@end