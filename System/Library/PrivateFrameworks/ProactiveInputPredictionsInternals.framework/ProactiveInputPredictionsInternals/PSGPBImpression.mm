@interface PSGPBImpression
- (BOOL)isEqual:(id)equal;
- (NSString)triggerAttributeField;
- (NSString)triggerAttributeSubtype;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDataSourceType:(id)type;
- (int)StringAsTriggerSourceType:(id)type;
- (int)dataSourceType;
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
- (void)setHasNumStructuredInfoItems:(BOOL)items;
- (void)setHasNumTextualResponseItems:(BOOL)items;
- (void)setHasTriggerSourceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PSGPBImpression

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PSGPBImpression *)self setExperimentId:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 11))
  {
    [(PSGPBImpression *)self setTreatmentId:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 12))
  {
    [(PSGPBImpression *)self setTreatmentName:?];
    fromCopy = v9;
  }

  v5 = *(fromCopy + 74);
  if ((v5 & 0x200) != 0)
  {
    self->_hasResponseContext = *(fromCopy + 142);
    *&self->_has |= 0x200u;
    v5 = *(fromCopy + 74);
    if ((v5 & 0x800) == 0)
    {
LABEL_9:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(fromCopy + 74) & 0x800) == 0)
  {
    goto LABEL_9;
  }

  self->_isResponseContextBlacklisted = *(fromCopy + 144);
  *&self->_has |= 0x800u;
  if ((*(fromCopy + 74) & 0x400) != 0)
  {
LABEL_10:
    self->_isDocumentEmpty = *(fromCopy + 143);
    *&self->_has |= 0x400u;
  }

LABEL_11:
  if (*(fromCopy + 9))
  {
    [(PSGPBImpression *)self setTextContentType:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 5))
  {
    [(PSGPBImpression *)self setLocaleIdentifier:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 1))
  {
    [(PSGPBImpression *)self setBundleIdentifier:?];
    fromCopy = v9;
  }

  v6 = *(fromCopy + 74);
  if ((v6 & 8) != 0)
  {
    self->_maxTextualResponseItems = *(fromCopy + 14);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 74);
  }

  if ((v6 & 4) != 0)
  {
    self->_maxStructuredInfoItems = *(fromCopy + 13);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    [(PSGPBImpression *)self setInitiatingProcess:?];
    fromCopy = v9;
  }

  if ((*(fromCopy + 74) & 0x20) != 0)
  {
    self->_numTextualResponseItems = *(fromCopy + 16);
    *&self->_has |= 0x20u;
  }

  if (*(fromCopy + 10))
  {
    [(PSGPBImpression *)self setTextualResponseCategory:?];
    fromCopy = v9;
  }

  v7 = *(fromCopy + 74);
  if ((v7 & 0x10) != 0)
  {
    self->_numStructuredInfoItems = *(fromCopy + 15);
    *&self->_has |= 0x10u;
    v7 = *(fromCopy + 74);
  }

  if ((v7 & 0x40) != 0)
  {
    self->_triggerSourceType = *(fromCopy + 34);
    *&self->_has |= 0x40u;
  }

  if (*(fromCopy + 16))
  {
    [(PSGPBImpression *)self setTriggerCategory:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 15))
  {
    [(PSGPBImpression *)self setTriggerAttributeType:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 14))
  {
    [(PSGPBImpression *)self setTriggerAttributeSubtype:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 13))
  {
    [(PSGPBImpression *)self setTriggerAttributeField:?];
    fromCopy = v9;
  }

  v8 = *(fromCopy + 74);
  if ((v8 & 0x80) != 0)
  {
    self->_hasContextBeforeInput = *(fromCopy + 140);
    *&self->_has |= 0x80u;
    v8 = *(fromCopy + 74);
    if ((v8 & 2) == 0)
    {
LABEL_41:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_41;
  }

  self->_maxPredictionItems = *(fromCopy + 12);
  *&self->_has |= 2u;
  v8 = *(fromCopy + 74);
  if ((v8 & 0x100) == 0)
  {
LABEL_42:
    if ((v8 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_52:
  self->_hasRecipientNames = *(fromCopy + 141);
  *&self->_has |= 0x100u;
  if (*(fromCopy + 74))
  {
LABEL_43:
    self->_dataSourceType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_44:
}

- (unint64_t)hash
{
  v31 = [(NSString *)self->_experimentId hash];
  v30 = [(NSString *)self->_treatmentId hash];
  v29 = [(NSString *)self->_treatmentName hash];
  if ((*&self->_has & 0x200) == 0)
  {
    v28 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v28 = 2654435761 * self->_hasResponseContext;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v27 = 2654435761 * self->_isResponseContextBlacklisted;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v26 = 2654435761 * self->_isDocumentEmpty;
    goto LABEL_8;
  }

LABEL_7:
  v26 = 0;
LABEL_8:
  v25 = [(NSString *)self->_textContentType hash];
  v24 = [(NSString *)self->_localeIdentifier hash];
  v23 = [(NSString *)self->_bundleIdentifier hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v22 = 2654435761 * self->_maxTextualResponseItems;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = 0;
    if ((has & 4) != 0)
    {
LABEL_10:
      v21 = 2654435761 * self->_maxStructuredInfoItems;
      goto LABEL_13;
    }
  }

  v21 = 0;
LABEL_13:
  v19 = [(NSString *)self->_initiatingProcess hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = 2654435761 * self->_numTextualResponseItems;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_textualResponseCategory hash];
  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    v7 = 2654435761 * self->_numStructuredInfoItems;
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = 0;
    if ((v6 & 0x40) != 0)
    {
LABEL_18:
      v8 = 2654435761 * self->_triggerSourceType;
      goto LABEL_21;
    }
  }

  v8 = 0;
LABEL_21:
  v9 = [(NSString *)self->_triggerCategory hash];
  v10 = [(NSString *)self->_triggerAttributeType hash];
  v11 = [(NSString *)self->_triggerAttributeSubtype hash];
  v12 = [(NSString *)self->_triggerAttributeField hash];
  v13 = self->_has;
  if ((v13 & 0x80) != 0)
  {
    v14 = 2654435761 * self->_hasContextBeforeInput;
    if ((v13 & 2) != 0)
    {
LABEL_23:
      v15 = 2654435761 * self->_maxPredictionItems;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v16 = 0;
      if (v13)
      {
        goto LABEL_25;
      }

LABEL_29:
      v17 = 0;
      return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17;
    }
  }

  else
  {
    v14 = 0;
    if ((v13 & 2) != 0)
    {
      goto LABEL_23;
    }
  }

  v15 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = 2654435761 * self->_hasRecipientNames;
  if ((v13 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v17 = 2654435761 * self->_dataSourceType;
  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_102;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(equalCopy + 3))
  {
    if (![(NSString *)experimentId isEqual:?])
    {
      goto LABEL_102;
    }
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(equalCopy + 11))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_102;
    }
  }

  treatmentName = self->_treatmentName;
  if (treatmentName | *(equalCopy + 12))
  {
    if (![(NSString *)treatmentName isEqual:?])
    {
      goto LABEL_102;
    }
  }

  v8 = *(equalCopy + 74);
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 74) & 0x200) == 0)
    {
      goto LABEL_102;
    }

    v14 = *(equalCopy + 142);
    if (self->_hasResponseContext)
    {
      if ((*(equalCopy + 142) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else if (*(equalCopy + 142))
    {
      goto LABEL_102;
    }
  }

  else if ((*(equalCopy + 74) & 0x200) != 0)
  {
    goto LABEL_102;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 74) & 0x800) == 0)
    {
      goto LABEL_102;
    }

    v15 = *(equalCopy + 144);
    if (self->_isResponseContextBlacklisted)
    {
      if ((*(equalCopy + 144) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else if (*(equalCopy + 144))
    {
      goto LABEL_102;
    }
  }

  else if ((*(equalCopy + 74) & 0x800) != 0)
  {
    goto LABEL_102;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 74) & 0x400) == 0)
    {
      goto LABEL_102;
    }

    v16 = *(equalCopy + 143);
    if (self->_isDocumentEmpty)
    {
      if ((*(equalCopy + 143) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else if (*(equalCopy + 143))
    {
      goto LABEL_102;
    }
  }

  else if ((*(equalCopy + 74) & 0x400) != 0)
  {
    goto LABEL_102;
  }

  textContentType = self->_textContentType;
  if (textContentType | *(equalCopy + 9) && ![(NSString *)textContentType isEqual:?])
  {
    goto LABEL_102;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_102;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_102;
    }
  }

  has = self->_has;
  v13 = *(equalCopy + 74);
  if ((has & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_maxTextualResponseItems != *(equalCopy + 14))
    {
      goto LABEL_102;
    }
  }

  else if ((v13 & 8) != 0)
  {
    goto LABEL_102;
  }

  if ((has & 4) != 0)
  {
    if ((v13 & 4) == 0 || self->_maxStructuredInfoItems != *(equalCopy + 13))
    {
      goto LABEL_102;
    }
  }

  else if ((v13 & 4) != 0)
  {
    goto LABEL_102;
  }

  initiatingProcess = self->_initiatingProcess;
  if (initiatingProcess | *(equalCopy + 4))
  {
    if (![(NSString *)initiatingProcess isEqual:?])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v13 = *(equalCopy + 74);
  }

  if ((has & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_numTextualResponseItems != *(equalCopy + 16))
    {
      goto LABEL_102;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_102;
  }

  textualResponseCategory = self->_textualResponseCategory;
  if (textualResponseCategory | *(equalCopy + 10))
  {
    if (![(NSString *)textualResponseCategory isEqual:?])
    {
      goto LABEL_102;
    }

    has = self->_has;
    v13 = *(equalCopy + 74);
  }

  if ((has & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_numStructuredInfoItems != *(equalCopy + 15))
    {
      goto LABEL_102;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_102;
  }

  if ((has & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_triggerSourceType != *(equalCopy + 34))
    {
      goto LABEL_102;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_102;
  }

  triggerCategory = self->_triggerCategory;
  if (triggerCategory | *(equalCopy + 16) && ![(NSString *)triggerCategory isEqual:?])
  {
    goto LABEL_102;
  }

  triggerAttributeType = self->_triggerAttributeType;
  if (triggerAttributeType | *(equalCopy + 15))
  {
    if (![(NSString *)triggerAttributeType isEqual:?])
    {
      goto LABEL_102;
    }
  }

  triggerAttributeSubtype = self->_triggerAttributeSubtype;
  if (triggerAttributeSubtype | *(equalCopy + 14))
  {
    if (![(NSString *)triggerAttributeSubtype isEqual:?])
    {
      goto LABEL_102;
    }
  }

  triggerAttributeField = self->_triggerAttributeField;
  if (triggerAttributeField | *(equalCopy + 13))
  {
    if (![(NSString *)triggerAttributeField isEqual:?])
    {
      goto LABEL_102;
    }
  }

  v23 = self->_has;
  v24 = *(equalCopy + 74);
  if ((v23 & 0x80) != 0)
  {
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_102;
    }

    v25 = *(equalCopy + 140);
    if (self->_hasContextBeforeInput)
    {
      if ((*(equalCopy + 140) & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    else if (*(equalCopy + 140))
    {
      goto LABEL_102;
    }
  }

  else if ((v24 & 0x80) != 0)
  {
    goto LABEL_102;
  }

  if ((v23 & 2) != 0)
  {
    if ((v24 & 2) == 0 || self->_maxPredictionItems != *(equalCopy + 12))
    {
      goto LABEL_102;
    }
  }

  else if ((v24 & 2) != 0)
  {
    goto LABEL_102;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    if ((*(equalCopy + 74) & 0x100) == 0)
    {
      goto LABEL_90;
    }

LABEL_102:
    v26 = 0;
    goto LABEL_103;
  }

  if ((*(equalCopy + 74) & 0x100) == 0)
  {
    goto LABEL_102;
  }

  v27 = *(equalCopy + 141);
  if (self->_hasRecipientNames)
  {
    if ((*(equalCopy + 141) & 1) == 0)
    {
      goto LABEL_102;
    }
  }

  else if (*(equalCopy + 141))
  {
    goto LABEL_102;
  }

LABEL_90:
  if (v23)
  {
    if ((v24 & 1) == 0 || self->_dataSourceType != *(equalCopy + 4))
    {
      goto LABEL_102;
    }

    v26 = 1;
  }

  else
  {
    v26 = (v24 & 1) == 0;
  }

LABEL_103:

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_experimentId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v9 = *(v5 + 88);
  *(v5 + 88) = v8;

  v10 = [(NSString *)self->_treatmentName copyWithZone:zone];
  v11 = *(v5 + 96);
  *(v5 + 96) = v10;

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v5 + 142) = self->_hasResponseContext;
    *(v5 + 148) |= 0x200u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 144) = self->_isResponseContextBlacklisted;
  *(v5 + 148) |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    *(v5 + 143) = self->_isDocumentEmpty;
    *(v5 + 148) |= 0x400u;
  }

LABEL_5:
  v13 = [(NSString *)self->_textContentType copyWithZone:zone];
  v14 = *(v5 + 72);
  *(v5 + 72) = v13;

  v15 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v16 = *(v5 + 40);
  *(v5 + 40) = v15;

  v17 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v18 = *(v5 + 8);
  *(v5 + 8) = v17;

  v19 = self->_has;
  if ((v19 & 8) != 0)
  {
    *(v5 + 56) = self->_maxTextualResponseItems;
    *(v5 + 148) |= 8u;
    v19 = self->_has;
  }

  if ((v19 & 4) != 0)
  {
    *(v5 + 52) = self->_maxStructuredInfoItems;
    *(v5 + 148) |= 4u;
  }

  v20 = [(NSString *)self->_initiatingProcess copyWithZone:zone];
  v21 = *(v5 + 32);
  *(v5 + 32) = v20;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 64) = self->_numTextualResponseItems;
    *(v5 + 148) |= 0x20u;
  }

  v22 = [(NSString *)self->_textualResponseCategory copyWithZone:zone];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  v24 = self->_has;
  if ((v24 & 0x10) != 0)
  {
    *(v5 + 60) = self->_numStructuredInfoItems;
    *(v5 + 148) |= 0x10u;
    v24 = self->_has;
  }

  if ((v24 & 0x40) != 0)
  {
    *(v5 + 136) = self->_triggerSourceType;
    *(v5 + 148) |= 0x40u;
  }

  v25 = [(NSString *)self->_triggerCategory copyWithZone:zone];
  v26 = *(v5 + 128);
  *(v5 + 128) = v25;

  v27 = [(NSString *)self->_triggerAttributeType copyWithZone:zone];
  v28 = *(v5 + 120);
  *(v5 + 120) = v27;

  v29 = [(NSString *)self->_triggerAttributeSubtype copyWithZone:zone];
  v30 = *(v5 + 112);
  *(v5 + 112) = v29;

  v31 = [(NSString *)self->_triggerAttributeField copyWithZone:zone];
  v32 = *(v5 + 104);
  *(v5 + 104) = v31;

  v33 = self->_has;
  if ((v33 & 0x80) != 0)
  {
    *(v5 + 140) = self->_hasContextBeforeInput;
    *(v5 + 148) |= 0x80u;
    v33 = self->_has;
    if ((v33 & 2) == 0)
    {
LABEL_17:
      if ((v33 & 0x100) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      *(v5 + 141) = self->_hasRecipientNames;
      *(v5 + 148) |= 0x100u;
      if ((*&self->_has & 1) == 0)
      {
        return v5;
      }

      goto LABEL_19;
    }
  }

  else if ((v33 & 2) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 48) = self->_maxPredictionItems;
  *(v5 + 148) |= 2u;
  v33 = self->_has;
  if ((v33 & 0x100) != 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v33)
  {
LABEL_19:
    *(v5 + 16) = self->_dataSourceType;
    *(v5 + 148) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_experimentId)
  {
    [toCopy setExperimentId:?];
    toCopy = v9;
  }

  if (self->_treatmentId)
  {
    [v9 setTreatmentId:?];
    toCopy = v9;
  }

  if (self->_treatmentName)
  {
    [v9 setTreatmentName:?];
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(toCopy + 142) = self->_hasResponseContext;
    *(toCopy + 74) |= 0x200u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_9:
      if ((has & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 144) = self->_isResponseContextBlacklisted;
  *(toCopy + 74) |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_10:
    *(toCopy + 143) = self->_isDocumentEmpty;
    *(toCopy + 74) |= 0x400u;
  }

LABEL_11:
  if (self->_textContentType)
  {
    [v9 setTextContentType:?];
    toCopy = v9;
  }

  if (self->_localeIdentifier)
  {
    [v9 setLocaleIdentifier:?];
    toCopy = v9;
  }

  if (self->_bundleIdentifier)
  {
    [v9 setBundleIdentifier:?];
    toCopy = v9;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(toCopy + 14) = self->_maxTextualResponseItems;
    *(toCopy + 74) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(toCopy + 13) = self->_maxStructuredInfoItems;
    *(toCopy + 74) |= 4u;
  }

  if (self->_initiatingProcess)
  {
    [v9 setInitiatingProcess:?];
    toCopy = v9;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 16) = self->_numTextualResponseItems;
    *(toCopy + 74) |= 0x20u;
  }

  if (self->_textualResponseCategory)
  {
    [v9 setTextualResponseCategory:?];
    toCopy = v9;
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    *(toCopy + 15) = self->_numStructuredInfoItems;
    *(toCopy + 74) |= 0x10u;
    v7 = self->_has;
  }

  if ((v7 & 0x40) != 0)
  {
    *(toCopy + 34) = self->_triggerSourceType;
    *(toCopy + 74) |= 0x40u;
  }

  if (self->_triggerCategory)
  {
    [v9 setTriggerCategory:?];
    toCopy = v9;
  }

  if (self->_triggerAttributeType)
  {
    [v9 setTriggerAttributeType:?];
    toCopy = v9;
  }

  if (self->_triggerAttributeSubtype)
  {
    [v9 setTriggerAttributeSubtype:?];
    toCopy = v9;
  }

  if (self->_triggerAttributeField)
  {
    [v9 setTriggerAttributeField:?];
    toCopy = v9;
  }

  v8 = self->_has;
  if ((v8 & 0x80) != 0)
  {
    *(toCopy + 140) = self->_hasContextBeforeInput;
    *(toCopy + 74) |= 0x80u;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_41:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_41;
  }

  *(toCopy + 12) = self->_maxPredictionItems;
  *(toCopy + 74) |= 2u;
  v8 = self->_has;
  if ((v8 & 0x100) == 0)
  {
LABEL_42:
    if ((v8 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_52:
  *(toCopy + 141) = self->_hasRecipientNames;
  *(toCopy + 74) |= 0x100u;
  if (*&self->_has)
  {
LABEL_43:
    *(toCopy + 4) = self->_dataSourceType;
    *(toCopy + 74) |= 1u;
  }

LABEL_44:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v21 = toCopy;
  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_treatmentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    hasResponseContext = self->_hasResponseContext;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_9:
      if ((has & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_9;
  }

  isResponseContextBlacklisted = self->_isResponseContextBlacklisted;
  PBDataWriterWriteBOOLField();
  toCopy = v21;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_10:
    isDocumentEmpty = self->_isDocumentEmpty;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
  }

LABEL_11:
  if (self->_textContentType)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    maxTextualResponseItems = self->_maxTextualResponseItems;
    PBDataWriterWriteUint32Field();
    toCopy = v21;
    v7 = self->_has;
  }

  if ((v7 & 4) != 0)
  {
    maxStructuredInfoItems = self->_maxStructuredInfoItems;
    PBDataWriterWriteUint32Field();
    toCopy = v21;
  }

  if (self->_initiatingProcess)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    numTextualResponseItems = self->_numTextualResponseItems;
    PBDataWriterWriteUint32Field();
    toCopy = v21;
  }

  if (self->_textualResponseCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    numStructuredInfoItems = self->_numStructuredInfoItems;
    PBDataWriterWriteUint32Field();
    toCopy = v21;
    v11 = self->_has;
  }

  if ((v11 & 0x40) != 0)
  {
    triggerSourceType = self->_triggerSourceType;
    PBDataWriterWriteInt32Field();
    toCopy = v21;
  }

  if (self->_triggerCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_triggerAttributeType)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_triggerAttributeSubtype)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  if (self->_triggerAttributeField)
  {
    PBDataWriterWriteStringField();
    toCopy = v21;
  }

  v14 = self->_has;
  if ((v14 & 0x80) != 0)
  {
    hasContextBeforeInput = self->_hasContextBeforeInput;
    PBDataWriterWriteBOOLField();
    toCopy = v21;
    v14 = self->_has;
    if ((v14 & 2) == 0)
    {
LABEL_41:
      if ((v14 & 0x100) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_41;
  }

  maxPredictionItems = self->_maxPredictionItems;
  PBDataWriterWriteUint32Field();
  toCopy = v21;
  v14 = self->_has;
  if ((v14 & 0x100) == 0)
  {
LABEL_42:
    if ((v14 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_52:
  hasRecipientNames = self->_hasRecipientNames;
  PBDataWriterWriteBOOLField();
  toCopy = v21;
  if (*&self->_has)
  {
LABEL_43:
    dataSourceType = self->_dataSourceType;
    PBDataWriterWriteInt32Field();
    toCopy = v21;
  }

LABEL_44:
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
  if ((has & 0x200) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasResponseContext];
    [v4 setObject:v22 forKey:@"has_response_context"];

    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_9:
      if ((has & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_9;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_isResponseContextBlacklisted];
  [v4 setObject:v23 forKey:@"is_response_context_blacklisted"];

  if ((*&self->_has & 0x400) != 0)
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
  if ((v11 & 0x80) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasContextBeforeInput];
    [v4 setObject:v12 forKey:@"has_context_before_input"];

    v11 = self->_has;
  }

  if ((v11 & 0x100) != 0)
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
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxTextualResponseItems];
    [v4 setObject:v24 forKey:@"max_textual_response_items"];

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

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxStructuredInfoItems];
  [v4 setObject:v25 forKey:@"max_structured_info_items"];

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

  if ((*&self->_has & 0x20) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTextualResponseItems];
    [v4 setObject:v19 forKey:@"num_textual_response_items"];
  }

  textualResponseCategory = self->_textualResponseCategory;
  if (textualResponseCategory)
  {
    [v4 setObject:textualResponseCategory forKey:@"textual_response_category"];
  }

  v21 = self->_has;
  if ((v21 & 0x10) != 0)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numStructuredInfoItems];
    [v4 setObject:v26 forKey:@"num_structured_info_items"];

    v21 = self->_has;
    if ((v21 & 1) == 0)
    {
LABEL_33:
      if ((v21 & 0x40) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }
  }

  else if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

  dataSourceType = self->_dataSourceType;
  if (dataSourceType >= 0xB)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dataSourceType];
  }

  else
  {
    v28 = off_279ABE030[dataSourceType];
  }

  [v4 setObject:v28 forKey:@"data_source_type"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_46:
    triggerSourceType = self->_triggerSourceType;
    if (triggerSourceType >= 7)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_triggerSourceType];
    }

    else
    {
      v30 = off_279ABE088[triggerSourceType];
    }

    [v4 setObject:v30 forKey:@"trigger_source_type"];
  }

LABEL_50:
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
  v8.super_class = PSGPBImpression;
  v4 = [(PSGPBImpression *)&v8 description];
  dictionaryRepresentation = [(PSGPBImpression *)self dictionaryRepresentation];
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
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int)triggerSourceType
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_triggerSourceType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDataSourceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PredictionDataSourceType_Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_Contacts"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_FoundInApps"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_Events"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_Navigation"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_AppDonation"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_SchemaOrg"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_Pasteboard"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_Siri"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_PersonalizationPortrait"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"PredictionDataSourceType_FaceTime"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)dataSourceType
{
  if (*&self->_has)
  {
    return self->_dataSourceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNumStructuredInfoItems:(BOOL)items
{
  if (items)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumTextualResponseItems:(BOOL)items
{
  if (items)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
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
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasHasContextBeforeInput:(BOOL)input
{
  if (input)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsDocumentEmpty:(BOOL)empty
{
  if (empty)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsResponseContextBlacklisted:(BOOL)blacklisted
{
  if (blacklisted)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasHasResponseContext:(BOOL)context
{
  if (context)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

@end