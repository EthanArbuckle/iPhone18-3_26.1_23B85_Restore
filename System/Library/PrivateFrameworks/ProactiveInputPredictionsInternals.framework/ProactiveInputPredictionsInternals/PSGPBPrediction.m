@interface PSGPBPrediction
- (BOOL)isEqual:(id)a3;
- (NSString)triggerAttributeField;
- (NSString)triggerAttributeSubtype;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDataSourceType:(id)a3;
- (int)StringAsTriggerSourceType:(id)a3;
- (int)dataSourceType;
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
- (void)setHasNumStructuredInfoItems:(BOOL)a3;
- (void)setHasNumTextualResponseItems:(BOOL)a3;
- (void)setHasPortraitTimeout:(BOOL)a3;
- (void)setHasRequiredAppUnavailable:(BOOL)a3;
- (void)setHasTriggerSourceType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSGPBPrediction

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 3))
  {
    [(PSGPBPrediction *)self setExperimentId:?];
    v4 = v9;
  }

  if (*(v4 + 11))
  {
    [(PSGPBPrediction *)self setTreatmentId:?];
    v4 = v9;
  }

  if (*(v4 + 12))
  {
    [(PSGPBPrediction *)self setTreatmentName:?];
    v4 = v9;
  }

  v5 = *(v4 + 74);
  if ((v5 & 0x200) != 0)
  {
    self->_hasResponseContext = *(v4 + 142);
    *&self->_has |= 0x200u;
    v5 = *(v4 + 74);
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

  else if ((*(v4 + 74) & 0x800) == 0)
  {
    goto LABEL_9;
  }

  self->_isResponseContextBlacklisted = *(v4 + 144);
  *&self->_has |= 0x800u;
  if ((*(v4 + 74) & 0x400) != 0)
  {
LABEL_10:
    self->_isDocumentEmpty = *(v4 + 143);
    *&self->_has |= 0x400u;
  }

LABEL_11:
  if (*(v4 + 9))
  {
    [(PSGPBPrediction *)self setTextContentType:?];
    v4 = v9;
  }

  if (*(v4 + 5))
  {
    [(PSGPBPrediction *)self setLocaleIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 1))
  {
    [(PSGPBPrediction *)self setBundleIdentifier:?];
    v4 = v9;
  }

  v6 = *(v4 + 74);
  if ((v6 & 8) != 0)
  {
    self->_maxTextualResponseItems = *(v4 + 14);
    *&self->_has |= 8u;
    v6 = *(v4 + 74);
  }

  if ((v6 & 4) != 0)
  {
    self->_maxStructuredInfoItems = *(v4 + 13);
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(PSGPBPrediction *)self setInitiatingProcess:?];
    v4 = v9;
  }

  if ((*(v4 + 74) & 0x20) != 0)
  {
    self->_numTextualResponseItems = *(v4 + 16);
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 10))
  {
    [(PSGPBPrediction *)self setTextualResponseCategory:?];
    v4 = v9;
  }

  v7 = *(v4 + 74);
  if ((v7 & 0x10) != 0)
  {
    self->_numStructuredInfoItems = *(v4 + 15);
    *&self->_has |= 0x10u;
    v7 = *(v4 + 74);
  }

  if ((v7 & 0x40) != 0)
  {
    self->_triggerSourceType = *(v4 + 34);
    *&self->_has |= 0x40u;
  }

  if (*(v4 + 16))
  {
    [(PSGPBPrediction *)self setTriggerCategory:?];
    v4 = v9;
  }

  if (*(v4 + 15))
  {
    [(PSGPBPrediction *)self setTriggerAttributeType:?];
    v4 = v9;
  }

  if (*(v4 + 14))
  {
    [(PSGPBPrediction *)self setTriggerAttributeSubtype:?];
    v4 = v9;
  }

  if (*(v4 + 13))
  {
    [(PSGPBPrediction *)self setTriggerAttributeField:?];
    v4 = v9;
  }

  v8 = *(v4 + 74);
  if ((v8 & 0x1000) != 0)
  {
    self->_portraitTimeout = *(v4 + 145);
    *&self->_has |= 0x1000u;
    v8 = *(v4 + 74);
    if ((v8 & 0x2000) == 0)
    {
LABEL_41:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }
  }

  else if ((*(v4 + 74) & 0x2000) == 0)
  {
    goto LABEL_41;
  }

  self->_requiredAppUnavailable = *(v4 + 146);
  *&self->_has |= 0x2000u;
  v8 = *(v4 + 74);
  if ((v8 & 0x80) == 0)
  {
LABEL_42:
    if ((v8 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_hasContextBeforeInput = *(v4 + 140);
  *&self->_has |= 0x80u;
  v8 = *(v4 + 74);
  if ((v8 & 2) == 0)
  {
LABEL_43:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_maxPredictionItems = *(v4 + 12);
  *&self->_has |= 2u;
  v8 = *(v4 + 74);
  if ((v8 & 0x100) == 0)
  {
LABEL_44:
    if ((v8 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_56:
  self->_hasRecipientNames = *(v4 + 141);
  *&self->_has |= 0x100u;
  if (*(v4 + 74))
  {
LABEL_45:
    self->_dataSourceType = *(v4 + 4);
    *&self->_has |= 1u;
  }

LABEL_46:
}

- (unint64_t)hash
{
  v33 = [(NSString *)self->_experimentId hash];
  v32 = [(NSString *)self->_treatmentId hash];
  v31 = [(NSString *)self->_treatmentName hash];
  if ((*&self->_has & 0x200) == 0)
  {
    v30 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v29 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v30 = 2654435761 * self->_hasResponseContext;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v29 = 2654435761 * self->_isResponseContextBlacklisted;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v28 = 2654435761 * self->_isDocumentEmpty;
    goto LABEL_8;
  }

LABEL_7:
  v28 = 0;
LABEL_8:
  v27 = [(NSString *)self->_textContentType hash];
  v26 = [(NSString *)self->_localeIdentifier hash];
  v25 = [(NSString *)self->_bundleIdentifier hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v24 = 2654435761 * self->_maxTextualResponseItems;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v24 = 0;
    if ((has & 4) != 0)
    {
LABEL_10:
      v23 = 2654435761 * self->_maxStructuredInfoItems;
      goto LABEL_13;
    }
  }

  v23 = 0;
LABEL_13:
  v21 = [(NSString *)self->_initiatingProcess hash];
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
  if ((v13 & 0x1000) != 0)
  {
    v14 = 2654435761 * self->_portraitTimeout;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_23:
      v15 = 2654435761 * self->_requiredAppUnavailable;
      if ((v13 & 0x80) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v14 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_23;
    }
  }

  v15 = 0;
  if ((v13 & 0x80) != 0)
  {
LABEL_24:
    v16 = 2654435761 * self->_hasContextBeforeInput;
    if ((v13 & 2) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = 0;
  if ((v13 & 2) != 0)
  {
LABEL_25:
    v17 = 2654435761 * self->_maxPredictionItems;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_26;
    }

LABEL_32:
    v18 = 0;
    if (v13)
    {
      goto LABEL_27;
    }

LABEL_33:
    v19 = 0;
    return v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

LABEL_31:
  v17 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v18 = 2654435761 * self->_hasRecipientNames;
  if ((v13 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v19 = 2654435761 * self->_dataSourceType;
  return v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_119;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(v4 + 3))
  {
    if (![(NSString *)experimentId isEqual:?])
    {
      goto LABEL_119;
    }
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(v4 + 11))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_119;
    }
  }

  treatmentName = self->_treatmentName;
  if (treatmentName | *(v4 + 12))
  {
    if (![(NSString *)treatmentName isEqual:?])
    {
      goto LABEL_119;
    }
  }

  v8 = *(v4 + 74);
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 74) & 0x200) == 0)
    {
      goto LABEL_119;
    }

    v14 = *(v4 + 142);
    if (self->_hasResponseContext)
    {
      if ((*(v4 + 142) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if (*(v4 + 142))
    {
      goto LABEL_119;
    }
  }

  else if ((*(v4 + 74) & 0x200) != 0)
  {
    goto LABEL_119;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 74) & 0x800) == 0)
    {
      goto LABEL_119;
    }

    v15 = *(v4 + 144);
    if (self->_isResponseContextBlacklisted)
    {
      if ((*(v4 + 144) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if (*(v4 + 144))
    {
      goto LABEL_119;
    }
  }

  else if ((*(v4 + 74) & 0x800) != 0)
  {
    goto LABEL_119;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 74) & 0x400) == 0)
    {
      goto LABEL_119;
    }

    v16 = *(v4 + 143);
    if (self->_isDocumentEmpty)
    {
      if ((*(v4 + 143) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if (*(v4 + 143))
    {
      goto LABEL_119;
    }
  }

  else if ((*(v4 + 74) & 0x400) != 0)
  {
    goto LABEL_119;
  }

  textContentType = self->_textContentType;
  if (textContentType | *(v4 + 9) && ![(NSString *)textContentType isEqual:?])
  {
    goto LABEL_119;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(v4 + 5))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_119;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_119;
    }
  }

  has = self->_has;
  v13 = *(v4 + 74);
  if ((has & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_maxTextualResponseItems != *(v4 + 14))
    {
      goto LABEL_119;
    }
  }

  else if ((v13 & 8) != 0)
  {
    goto LABEL_119;
  }

  if ((has & 4) != 0)
  {
    if ((v13 & 4) == 0 || self->_maxStructuredInfoItems != *(v4 + 13))
    {
      goto LABEL_119;
    }
  }

  else if ((v13 & 4) != 0)
  {
    goto LABEL_119;
  }

  initiatingProcess = self->_initiatingProcess;
  if (initiatingProcess | *(v4 + 4))
  {
    if (![(NSString *)initiatingProcess isEqual:?])
    {
      goto LABEL_119;
    }

    has = self->_has;
    v13 = *(v4 + 74);
  }

  if ((has & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_numTextualResponseItems != *(v4 + 16))
    {
      goto LABEL_119;
    }
  }

  else if ((v13 & 0x20) != 0)
  {
    goto LABEL_119;
  }

  textualResponseCategory = self->_textualResponseCategory;
  if (textualResponseCategory | *(v4 + 10))
  {
    if (![(NSString *)textualResponseCategory isEqual:?])
    {
      goto LABEL_119;
    }

    has = self->_has;
    v13 = *(v4 + 74);
  }

  if ((has & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_numStructuredInfoItems != *(v4 + 15))
    {
      goto LABEL_119;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_119;
  }

  if ((has & 0x40) != 0)
  {
    if ((v13 & 0x40) == 0 || self->_triggerSourceType != *(v4 + 34))
    {
      goto LABEL_119;
    }
  }

  else if ((v13 & 0x40) != 0)
  {
    goto LABEL_119;
  }

  triggerCategory = self->_triggerCategory;
  if (triggerCategory | *(v4 + 16) && ![(NSString *)triggerCategory isEqual:?])
  {
    goto LABEL_119;
  }

  triggerAttributeType = self->_triggerAttributeType;
  if (triggerAttributeType | *(v4 + 15))
  {
    if (![(NSString *)triggerAttributeType isEqual:?])
    {
      goto LABEL_119;
    }
  }

  triggerAttributeSubtype = self->_triggerAttributeSubtype;
  if (triggerAttributeSubtype | *(v4 + 14))
  {
    if (![(NSString *)triggerAttributeSubtype isEqual:?])
    {
      goto LABEL_119;
    }
  }

  triggerAttributeField = self->_triggerAttributeField;
  if (triggerAttributeField | *(v4 + 13))
  {
    if (![(NSString *)triggerAttributeField isEqual:?])
    {
      goto LABEL_119;
    }
  }

  v23 = self->_has;
  v24 = *(v4 + 74);
  if ((v23 & 0x1000) != 0)
  {
    if ((*(v4 + 74) & 0x1000) == 0)
    {
      goto LABEL_119;
    }

    v25 = *(v4 + 145);
    if (self->_portraitTimeout)
    {
      if ((*(v4 + 145) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if (*(v4 + 145))
    {
      goto LABEL_119;
    }
  }

  else if ((*(v4 + 74) & 0x1000) != 0)
  {
    goto LABEL_119;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 74) & 0x2000) == 0)
    {
      goto LABEL_119;
    }

    v26 = *(v4 + 146);
    if (self->_requiredAppUnavailable)
    {
      if ((*(v4 + 146) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if (*(v4 + 146))
    {
      goto LABEL_119;
    }
  }

  else if ((*(v4 + 74) & 0x2000) != 0)
  {
    goto LABEL_119;
  }

  if ((v23 & 0x80) != 0)
  {
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_119;
    }

    v27 = *(v4 + 140);
    if (self->_hasContextBeforeInput)
    {
      if ((*(v4 + 140) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    else if (*(v4 + 140))
    {
      goto LABEL_119;
    }
  }

  else if ((v24 & 0x80) != 0)
  {
    goto LABEL_119;
  }

  if ((v23 & 2) != 0)
  {
    if ((v24 & 2) == 0 || self->_maxPredictionItems != *(v4 + 12))
    {
      goto LABEL_119;
    }
  }

  else if ((v24 & 2) != 0)
  {
    goto LABEL_119;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 74) & 0x100) != 0)
    {
      v28 = *(v4 + 141);
      if (self->_hasRecipientNames)
      {
        if ((*(v4 + 141) & 1) == 0)
        {
          goto LABEL_119;
        }

        goto LABEL_114;
      }

      if ((*(v4 + 141) & 1) == 0)
      {
        goto LABEL_114;
      }
    }

LABEL_119:
    v29 = 0;
    goto LABEL_120;
  }

  if ((*(v4 + 74) & 0x100) != 0)
  {
    goto LABEL_119;
  }

LABEL_114:
  if (v23)
  {
    if ((v24 & 1) == 0 || self->_dataSourceType != *(v4 + 4))
    {
      goto LABEL_119;
    }

    v29 = 1;
  }

  else
  {
    v29 = (v24 & 1) == 0;
  }

LABEL_120:

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_experimentId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_treatmentId copyWithZone:a3];
  v9 = *(v5 + 88);
  *(v5 + 88) = v8;

  v10 = [(NSString *)self->_treatmentName copyWithZone:a3];
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
  v13 = [(NSString *)self->_textContentType copyWithZone:a3];
  v14 = *(v5 + 72);
  *(v5 + 72) = v13;

  v15 = [(NSString *)self->_localeIdentifier copyWithZone:a3];
  v16 = *(v5 + 40);
  *(v5 + 40) = v15;

  v17 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
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

  v20 = [(NSString *)self->_initiatingProcess copyWithZone:a3];
  v21 = *(v5 + 32);
  *(v5 + 32) = v20;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 64) = self->_numTextualResponseItems;
    *(v5 + 148) |= 0x20u;
  }

  v22 = [(NSString *)self->_textualResponseCategory copyWithZone:a3];
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

  v25 = [(NSString *)self->_triggerCategory copyWithZone:a3];
  v26 = *(v5 + 128);
  *(v5 + 128) = v25;

  v27 = [(NSString *)self->_triggerAttributeType copyWithZone:a3];
  v28 = *(v5 + 120);
  *(v5 + 120) = v27;

  v29 = [(NSString *)self->_triggerAttributeSubtype copyWithZone:a3];
  v30 = *(v5 + 112);
  *(v5 + 112) = v29;

  v31 = [(NSString *)self->_triggerAttributeField copyWithZone:a3];
  v32 = *(v5 + 104);
  *(v5 + 104) = v31;

  v33 = self->_has;
  if ((v33 & 0x1000) != 0)
  {
    *(v5 + 145) = self->_portraitTimeout;
    *(v5 + 148) |= 0x1000u;
    v33 = self->_has;
    if ((v33 & 0x2000) == 0)
    {
LABEL_17:
      if ((v33 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 146) = self->_requiredAppUnavailable;
  *(v5 + 148) |= 0x2000u;
  v33 = self->_has;
  if ((v33 & 0x80) == 0)
  {
LABEL_18:
    if ((v33 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 140) = self->_hasContextBeforeInput;
  *(v5 + 148) |= 0x80u;
  v33 = self->_has;
  if ((v33 & 2) == 0)
  {
LABEL_19:
    if ((v33 & 0x100) == 0)
    {
      goto LABEL_20;
    }

LABEL_30:
    *(v5 + 141) = self->_hasRecipientNames;
    *(v5 + 148) |= 0x100u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_21;
  }

LABEL_29:
  *(v5 + 48) = self->_maxPredictionItems;
  *(v5 + 148) |= 2u;
  v33 = self->_has;
  if ((v33 & 0x100) != 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v33)
  {
LABEL_21:
    *(v5 + 16) = self->_dataSourceType;
    *(v5 + 148) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_experimentId)
  {
    [v4 setExperimentId:?];
    v4 = v9;
  }

  if (self->_treatmentId)
  {
    [v9 setTreatmentId:?];
    v4 = v9;
  }

  if (self->_treatmentName)
  {
    [v9 setTreatmentName:?];
    v4 = v9;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v4 + 142) = self->_hasResponseContext;
    *(v4 + 74) |= 0x200u;
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

  *(v4 + 144) = self->_isResponseContextBlacklisted;
  *(v4 + 74) |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_10:
    *(v4 + 143) = self->_isDocumentEmpty;
    *(v4 + 74) |= 0x400u;
  }

LABEL_11:
  if (self->_textContentType)
  {
    [v9 setTextContentType:?];
    v4 = v9;
  }

  if (self->_localeIdentifier)
  {
    [v9 setLocaleIdentifier:?];
    v4 = v9;
  }

  if (self->_bundleIdentifier)
  {
    [v9 setBundleIdentifier:?];
    v4 = v9;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(v4 + 14) = self->_maxTextualResponseItems;
    *(v4 + 74) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(v4 + 13) = self->_maxStructuredInfoItems;
    *(v4 + 74) |= 4u;
  }

  if (self->_initiatingProcess)
  {
    [v9 setInitiatingProcess:?];
    v4 = v9;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 16) = self->_numTextualResponseItems;
    *(v4 + 74) |= 0x20u;
  }

  if (self->_textualResponseCategory)
  {
    [v9 setTextualResponseCategory:?];
    v4 = v9;
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    *(v4 + 15) = self->_numStructuredInfoItems;
    *(v4 + 74) |= 0x10u;
    v7 = self->_has;
  }

  if ((v7 & 0x40) != 0)
  {
    *(v4 + 34) = self->_triggerSourceType;
    *(v4 + 74) |= 0x40u;
  }

  if (self->_triggerCategory)
  {
    [v9 setTriggerCategory:?];
    v4 = v9;
  }

  if (self->_triggerAttributeType)
  {
    [v9 setTriggerAttributeType:?];
    v4 = v9;
  }

  if (self->_triggerAttributeSubtype)
  {
    [v9 setTriggerAttributeSubtype:?];
    v4 = v9;
  }

  if (self->_triggerAttributeField)
  {
    [v9 setTriggerAttributeField:?];
    v4 = v9;
  }

  v8 = self->_has;
  if ((v8 & 0x1000) != 0)
  {
    *(v4 + 145) = self->_portraitTimeout;
    *(v4 + 74) |= 0x1000u;
    v8 = self->_has;
    if ((v8 & 0x2000) == 0)
    {
LABEL_41:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_41;
  }

  *(v4 + 146) = self->_requiredAppUnavailable;
  *(v4 + 74) |= 0x2000u;
  v8 = self->_has;
  if ((v8 & 0x80) == 0)
  {
LABEL_42:
    if ((v8 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v4 + 140) = self->_hasContextBeforeInput;
  *(v4 + 74) |= 0x80u;
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
LABEL_43:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 12) = self->_maxPredictionItems;
  *(v4 + 74) |= 2u;
  v8 = self->_has;
  if ((v8 & 0x100) == 0)
  {
LABEL_44:
    if ((v8 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_56:
  *(v4 + 141) = self->_hasRecipientNames;
  *(v4 + 74) |= 0x100u;
  if (*&self->_has)
  {
LABEL_45:
    *(v4 + 4) = self->_dataSourceType;
    *(v4 + 74) |= 1u;
  }

LABEL_46:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v23 = v4;
  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_treatmentName)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    hasResponseContext = self->_hasResponseContext;
    PBDataWriterWriteBOOLField();
    v4 = v23;
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
  v4 = v23;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_10:
    isDocumentEmpty = self->_isDocumentEmpty;
    PBDataWriterWriteBOOLField();
    v4 = v23;
  }

LABEL_11:
  if (self->_textContentType)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    maxTextualResponseItems = self->_maxTextualResponseItems;
    PBDataWriterWriteUint32Field();
    v4 = v23;
    v7 = self->_has;
  }

  if ((v7 & 4) != 0)
  {
    maxStructuredInfoItems = self->_maxStructuredInfoItems;
    PBDataWriterWriteUint32Field();
    v4 = v23;
  }

  if (self->_initiatingProcess)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    numTextualResponseItems = self->_numTextualResponseItems;
    PBDataWriterWriteUint32Field();
    v4 = v23;
  }

  if (self->_textualResponseCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    numStructuredInfoItems = self->_numStructuredInfoItems;
    PBDataWriterWriteUint32Field();
    v4 = v23;
    v11 = self->_has;
  }

  if ((v11 & 0x40) != 0)
  {
    triggerSourceType = self->_triggerSourceType;
    PBDataWriterWriteInt32Field();
    v4 = v23;
  }

  if (self->_triggerCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_triggerAttributeType)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_triggerAttributeSubtype)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  if (self->_triggerAttributeField)
  {
    PBDataWriterWriteStringField();
    v4 = v23;
  }

  v14 = self->_has;
  if ((v14 & 0x1000) != 0)
  {
    portraitTimeout = self->_portraitTimeout;
    PBDataWriterWriteBOOLField();
    v4 = v23;
    v14 = self->_has;
    if ((v14 & 0x2000) == 0)
    {
LABEL_41:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_41;
  }

  requiredAppUnavailable = self->_requiredAppUnavailable;
  PBDataWriterWriteBOOLField();
  v4 = v23;
  v14 = self->_has;
  if ((v14 & 0x80) == 0)
  {
LABEL_42:
    if ((v14 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_55;
  }

LABEL_54:
  hasContextBeforeInput = self->_hasContextBeforeInput;
  PBDataWriterWriteBOOLField();
  v4 = v23;
  v14 = self->_has;
  if ((v14 & 2) == 0)
  {
LABEL_43:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_56;
  }

LABEL_55:
  maxPredictionItems = self->_maxPredictionItems;
  PBDataWriterWriteUint32Field();
  v4 = v23;
  v14 = self->_has;
  if ((v14 & 0x100) == 0)
  {
LABEL_44:
    if ((v14 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_56:
  hasRecipientNames = self->_hasRecipientNames;
  PBDataWriterWriteBOOLField();
  v4 = v23;
  if (*&self->_has)
  {
LABEL_45:
    dataSourceType = self->_dataSourceType;
    PBDataWriterWriteInt32Field();
    v4 = v23;
  }

LABEL_46:
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
    v28 = off_279ABE118[dataSourceType];
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
      v30 = off_279ABE170[triggerSourceType];
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

  v35 = self->_has;
  if ((v35 & 0x1000) != 0)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_portraitTimeout];
    [v4 setObject:v36 forKey:@"portrait_timeout"];

    v35 = self->_has;
  }

  if ((v35 & 0x2000) != 0)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_requiredAppUnavailable];
    [v4 setObject:v37 forKey:@"required_app_unavailable"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PSGPBPrediction;
  v4 = [(PSGPBPrediction *)&v8 description];
  v5 = [(PSGPBPrediction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasRequiredAppUnavailable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasPortraitTimeout:(BOOL)a3
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

- (int)StringAsDataSourceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PredictionDataSourceType_Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_Contacts"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_FoundInApps"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_Events"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_Navigation"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_AppDonation"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_SchemaOrg"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_Pasteboard"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_Siri"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_PersonalizationPortrait"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"PredictionDataSourceType_FaceTime"])
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

- (void)setHasNumStructuredInfoItems:(BOOL)a3
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

- (void)setHasNumTextualResponseItems:(BOOL)a3
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
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasHasContextBeforeInput:(BOOL)a3
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

- (void)setHasIsDocumentEmpty:(BOOL)a3
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

- (void)setHasIsResponseContextBlacklisted:(BOOL)a3
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

- (void)setHasHasResponseContext:(BOOL)a3
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

@end