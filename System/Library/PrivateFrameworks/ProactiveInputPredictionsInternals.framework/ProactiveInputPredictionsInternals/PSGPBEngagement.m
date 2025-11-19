@interface PSGPBEngagement
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
- (void)setHasPosition:(BOOL)a3;
- (void)setHasTriggerSourceType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSGPBEngagement

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 74) & 0x40) != 0)
  {
    self->_position = *(v4 + 17);
    *&self->_has |= 0x40u;
  }

  v9 = v4;
  if (*(v4 + 3))
  {
    [(PSGPBEngagement *)self setExperimentId:?];
    v4 = v9;
  }

  if (*(v4 + 11))
  {
    [(PSGPBEngagement *)self setTreatmentId:?];
    v4 = v9;
  }

  if (*(v4 + 12))
  {
    [(PSGPBEngagement *)self setTreatmentName:?];
    v4 = v9;
  }

  v5 = *(v4 + 74);
  if ((v5 & 0x400) != 0)
  {
    self->_hasResponseContext = *(v4 + 142);
    *&self->_has |= 0x400u;
    v5 = *(v4 + 74);
    if ((v5 & 0x1000) == 0)
    {
LABEL_11:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 74) & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  self->_isResponseContextBlacklisted = *(v4 + 144);
  *&self->_has |= 0x1000u;
  if ((*(v4 + 74) & 0x800) != 0)
  {
LABEL_12:
    self->_isDocumentEmpty = *(v4 + 143);
    *&self->_has |= 0x800u;
  }

LABEL_13:
  if (*(v4 + 9))
  {
    [(PSGPBEngagement *)self setTextContentType:?];
    v4 = v9;
  }

  if (*(v4 + 5))
  {
    [(PSGPBEngagement *)self setLocaleIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 1))
  {
    [(PSGPBEngagement *)self setBundleIdentifier:?];
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
    [(PSGPBEngagement *)self setInitiatingProcess:?];
    v4 = v9;
  }

  if ((*(v4 + 74) & 0x20) != 0)
  {
    self->_numTextualResponseItems = *(v4 + 16);
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 10))
  {
    [(PSGPBEngagement *)self setTextualResponseCategory:?];
    v4 = v9;
  }

  v7 = *(v4 + 74);
  if ((v7 & 0x10) != 0)
  {
    self->_numStructuredInfoItems = *(v4 + 15);
    *&self->_has |= 0x10u;
    v7 = *(v4 + 74);
  }

  if ((v7 & 0x80) != 0)
  {
    self->_triggerSourceType = *(v4 + 34);
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 16))
  {
    [(PSGPBEngagement *)self setTriggerCategory:?];
    v4 = v9;
  }

  if (*(v4 + 15))
  {
    [(PSGPBEngagement *)self setTriggerAttributeType:?];
    v4 = v9;
  }

  if (*(v4 + 14))
  {
    [(PSGPBEngagement *)self setTriggerAttributeSubtype:?];
    v4 = v9;
  }

  if (*(v4 + 13))
  {
    [(PSGPBEngagement *)self setTriggerAttributeField:?];
    v4 = v9;
  }

  v8 = *(v4 + 74);
  if ((v8 & 0x100) != 0)
  {
    self->_hasContextBeforeInput = *(v4 + 140);
    *&self->_has |= 0x100u;
    v8 = *(v4 + 74);
    if ((v8 & 2) == 0)
    {
LABEL_43:
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_43;
  }

  self->_maxPredictionItems = *(v4 + 12);
  *&self->_has |= 2u;
  v8 = *(v4 + 74);
  if ((v8 & 0x200) == 0)
  {
LABEL_44:
    if ((v8 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_54:
  self->_hasRecipientNames = *(v4 + 141);
  *&self->_has |= 0x200u;
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
  if ((*&self->_has & 0x40) != 0)
  {
    v31 = 2654435761 * self->_position;
  }

  else
  {
    v31 = 0;
  }

  v30 = [(NSString *)self->_experimentId hash];
  v29 = [(NSString *)self->_treatmentId hash];
  v28 = [(NSString *)self->_treatmentName hash];
  if ((*&self->_has & 0x400) == 0)
  {
    v27 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v26 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v27 = 2654435761 * self->_hasResponseContext;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v26 = 2654435761 * self->_isResponseContextBlacklisted;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_7:
    v25 = 2654435761 * self->_isDocumentEmpty;
    goto LABEL_11;
  }

LABEL_10:
  v25 = 0;
LABEL_11:
  v24 = [(NSString *)self->_textContentType hash];
  v23 = [(NSString *)self->_localeIdentifier hash];
  v22 = [(NSString *)self->_bundleIdentifier hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v21 = 2654435761 * self->_maxTextualResponseItems;
    if ((has & 4) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v21 = 0;
    if ((has & 4) != 0)
    {
LABEL_13:
      v20 = 2654435761 * self->_maxStructuredInfoItems;
      goto LABEL_16;
    }
  }

  v20 = 0;
LABEL_16:
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
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v7 = 0;
    if ((v6 & 0x80) != 0)
    {
LABEL_21:
      v8 = 2654435761 * self->_triggerSourceType;
      goto LABEL_24;
    }
  }

  v8 = 0;
LABEL_24:
  v9 = [(NSString *)self->_triggerCategory hash];
  v10 = [(NSString *)self->_triggerAttributeType hash];
  v11 = [(NSString *)self->_triggerAttributeSubtype hash];
  v12 = [(NSString *)self->_triggerAttributeField hash];
  v13 = self->_has;
  if ((v13 & 0x100) != 0)
  {
    v14 = 2654435761 * self->_hasContextBeforeInput;
    if ((v13 & 2) != 0)
    {
LABEL_26:
      v15 = 2654435761 * self->_maxPredictionItems;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_27;
      }

LABEL_31:
      v16 = 0;
      if (v13)
      {
        goto LABEL_28;
      }

LABEL_32:
      v17 = 0;
      return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17;
    }
  }

  else
  {
    v14 = 0;
    if ((v13 & 2) != 0)
    {
      goto LABEL_26;
    }
  }

  v15 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v16 = 2654435761 * self->_hasRecipientNames;
  if ((v13 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v17 = 2654435761 * self->_dataSourceType;
  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_107;
  }

  v5 = *(v4 + 74);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || self->_position != *(v4 + 17))
    {
      goto LABEL_107;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    goto LABEL_107;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(v4 + 3) && ![(NSString *)experimentId isEqual:?])
  {
    goto LABEL_107;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(v4 + 11))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_107;
    }
  }

  treatmentName = self->_treatmentName;
  if (treatmentName | *(v4 + 12))
  {
    if (![(NSString *)treatmentName isEqual:?])
    {
      goto LABEL_107;
    }
  }

  v9 = *(v4 + 74);
  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 74) & 0x400) == 0)
    {
      goto LABEL_107;
    }

    v15 = *(v4 + 142);
    if (self->_hasResponseContext)
    {
      if ((*(v4 + 142) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    else if (*(v4 + 142))
    {
      goto LABEL_107;
    }
  }

  else if ((*(v4 + 74) & 0x400) != 0)
  {
    goto LABEL_107;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 74) & 0x1000) == 0)
    {
      goto LABEL_107;
    }

    v16 = *(v4 + 144);
    if (self->_isResponseContextBlacklisted)
    {
      if ((*(v4 + 144) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    else if (*(v4 + 144))
    {
      goto LABEL_107;
    }
  }

  else if ((*(v4 + 74) & 0x1000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 74) & 0x800) == 0)
    {
      goto LABEL_107;
    }

    v17 = *(v4 + 143);
    if (self->_isDocumentEmpty)
    {
      if ((*(v4 + 143) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    else if (*(v4 + 143))
    {
      goto LABEL_107;
    }
  }

  else if ((*(v4 + 74) & 0x800) != 0)
  {
    goto LABEL_107;
  }

  textContentType = self->_textContentType;
  if (textContentType | *(v4 + 9) && ![(NSString *)textContentType isEqual:?])
  {
    goto LABEL_107;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(v4 + 5))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_107;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_107;
    }
  }

  has = self->_has;
  v14 = *(v4 + 74);
  if ((has & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_maxTextualResponseItems != *(v4 + 14))
    {
      goto LABEL_107;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_107;
  }

  if ((has & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_maxStructuredInfoItems != *(v4 + 13))
    {
      goto LABEL_107;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_107;
  }

  initiatingProcess = self->_initiatingProcess;
  if (initiatingProcess | *(v4 + 4))
  {
    if (![(NSString *)initiatingProcess isEqual:?])
    {
      goto LABEL_107;
    }

    has = self->_has;
    v14 = *(v4 + 74);
  }

  if ((has & 0x20) != 0)
  {
    if ((v14 & 0x20) == 0 || self->_numTextualResponseItems != *(v4 + 16))
    {
      goto LABEL_107;
    }
  }

  else if ((v14 & 0x20) != 0)
  {
    goto LABEL_107;
  }

  textualResponseCategory = self->_textualResponseCategory;
  if (textualResponseCategory | *(v4 + 10))
  {
    if (![(NSString *)textualResponseCategory isEqual:?])
    {
      goto LABEL_107;
    }

    has = self->_has;
    v14 = *(v4 + 74);
  }

  if ((has & 0x10) != 0)
  {
    if ((v14 & 0x10) == 0 || self->_numStructuredInfoItems != *(v4 + 15))
    {
      goto LABEL_107;
    }
  }

  else if ((v14 & 0x10) != 0)
  {
    goto LABEL_107;
  }

  if ((has & 0x80) != 0)
  {
    if ((v14 & 0x80) == 0 || self->_triggerSourceType != *(v4 + 34))
    {
      goto LABEL_107;
    }
  }

  else if ((v14 & 0x80) != 0)
  {
    goto LABEL_107;
  }

  triggerCategory = self->_triggerCategory;
  if (triggerCategory | *(v4 + 16) && ![(NSString *)triggerCategory isEqual:?])
  {
    goto LABEL_107;
  }

  triggerAttributeType = self->_triggerAttributeType;
  if (triggerAttributeType | *(v4 + 15))
  {
    if (![(NSString *)triggerAttributeType isEqual:?])
    {
      goto LABEL_107;
    }
  }

  triggerAttributeSubtype = self->_triggerAttributeSubtype;
  if (triggerAttributeSubtype | *(v4 + 14))
  {
    if (![(NSString *)triggerAttributeSubtype isEqual:?])
    {
      goto LABEL_107;
    }
  }

  triggerAttributeField = self->_triggerAttributeField;
  if (triggerAttributeField | *(v4 + 13))
  {
    if (![(NSString *)triggerAttributeField isEqual:?])
    {
      goto LABEL_107;
    }
  }

  v24 = self->_has;
  v25 = *(v4 + 74);
  if ((v24 & 0x100) != 0)
  {
    if ((*(v4 + 74) & 0x100) == 0)
    {
      goto LABEL_107;
    }

    v26 = *(v4 + 140);
    if (self->_hasContextBeforeInput)
    {
      if ((*(v4 + 140) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    else if (*(v4 + 140))
    {
      goto LABEL_107;
    }
  }

  else if ((*(v4 + 74) & 0x100) != 0)
  {
    goto LABEL_107;
  }

  if ((v24 & 2) != 0)
  {
    if ((v25 & 2) == 0 || self->_maxPredictionItems != *(v4 + 12))
    {
      goto LABEL_107;
    }
  }

  else if ((v25 & 2) != 0)
  {
    goto LABEL_107;
  }

  if ((*&self->_has & 0x200) == 0)
  {
    if ((*(v4 + 74) & 0x200) == 0)
    {
      goto LABEL_95;
    }

LABEL_107:
    v27 = 0;
    goto LABEL_108;
  }

  if ((*(v4 + 74) & 0x200) == 0)
  {
    goto LABEL_107;
  }

  v28 = *(v4 + 141);
  if (self->_hasRecipientNames)
  {
    if ((*(v4 + 141) & 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (*(v4 + 141))
  {
    goto LABEL_107;
  }

LABEL_95:
  if (v24)
  {
    if ((v25 & 1) == 0 || self->_dataSourceType != *(v4 + 4))
    {
      goto LABEL_107;
    }

    v27 = 1;
  }

  else
  {
    v27 = (v25 & 1) == 0;
  }

LABEL_108:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 68) = self->_position;
    *(v5 + 148) |= 0x40u;
  }

  v7 = [(NSString *)self->_experimentId copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_treatmentId copyWithZone:a3];
  v10 = *(v6 + 88);
  *(v6 + 88) = v9;

  v11 = [(NSString *)self->_treatmentName copyWithZone:a3];
  v12 = *(v6 + 96);
  *(v6 + 96) = v11;

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v6 + 142) = self->_hasResponseContext;
    *(v6 + 148) |= 0x400u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_5:
      if ((has & 0x800) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 144) = self->_isResponseContextBlacklisted;
  *(v6 + 148) |= 0x1000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    *(v6 + 143) = self->_isDocumentEmpty;
    *(v6 + 148) |= 0x800u;
  }

LABEL_7:
  v14 = [(NSString *)self->_textContentType copyWithZone:a3];
  v15 = *(v6 + 72);
  *(v6 + 72) = v14;

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
    *(v6 + 148) |= 8u;
    v20 = self->_has;
  }

  if ((v20 & 4) != 0)
  {
    *(v6 + 52) = self->_maxStructuredInfoItems;
    *(v6 + 148) |= 4u;
  }

  v21 = [(NSString *)self->_initiatingProcess copyWithZone:a3];
  v22 = *(v6 + 32);
  *(v6 + 32) = v21;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 64) = self->_numTextualResponseItems;
    *(v6 + 148) |= 0x20u;
  }

  v23 = [(NSString *)self->_textualResponseCategory copyWithZone:a3];
  v24 = *(v6 + 80);
  *(v6 + 80) = v23;

  v25 = self->_has;
  if ((v25 & 0x10) != 0)
  {
    *(v6 + 60) = self->_numStructuredInfoItems;
    *(v6 + 148) |= 0x10u;
    v25 = self->_has;
  }

  if ((v25 & 0x80) != 0)
  {
    *(v6 + 136) = self->_triggerSourceType;
    *(v6 + 148) |= 0x80u;
  }

  v26 = [(NSString *)self->_triggerCategory copyWithZone:a3];
  v27 = *(v6 + 128);
  *(v6 + 128) = v26;

  v28 = [(NSString *)self->_triggerAttributeType copyWithZone:a3];
  v29 = *(v6 + 120);
  *(v6 + 120) = v28;

  v30 = [(NSString *)self->_triggerAttributeSubtype copyWithZone:a3];
  v31 = *(v6 + 112);
  *(v6 + 112) = v30;

  v32 = [(NSString *)self->_triggerAttributeField copyWithZone:a3];
  v33 = *(v6 + 104);
  *(v6 + 104) = v32;

  v34 = self->_has;
  if ((v34 & 0x100) != 0)
  {
    *(v6 + 140) = self->_hasContextBeforeInput;
    *(v6 + 148) |= 0x100u;
    v34 = self->_has;
    if ((v34 & 2) == 0)
    {
LABEL_19:
      if ((v34 & 0x200) == 0)
      {
        goto LABEL_20;
      }

LABEL_28:
      *(v6 + 141) = self->_hasRecipientNames;
      *(v6 + 148) |= 0x200u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_21;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_19;
  }

  *(v6 + 48) = self->_maxPredictionItems;
  *(v6 + 148) |= 2u;
  v34 = self->_has;
  if ((v34 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v34)
  {
LABEL_21:
    *(v6 + 16) = self->_dataSourceType;
    *(v6 + 148) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x40) != 0)
  {
    v4[17] = self->_position;
    *(v4 + 74) |= 0x40u;
  }

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
  if ((has & 0x400) != 0)
  {
    *(v4 + 142) = self->_hasResponseContext;
    *(v4 + 74) |= 0x400u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_11:
      if ((has & 0x800) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 144) = self->_isResponseContextBlacklisted;
  *(v4 + 74) |= 0x1000u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_12:
    *(v4 + 143) = self->_isDocumentEmpty;
    *(v4 + 74) |= 0x800u;
  }

LABEL_13:
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
    v4[14] = self->_maxTextualResponseItems;
    *(v4 + 74) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    v4[13] = self->_maxStructuredInfoItems;
    *(v4 + 74) |= 4u;
  }

  if (self->_initiatingProcess)
  {
    [v9 setInitiatingProcess:?];
    v4 = v9;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v4[16] = self->_numTextualResponseItems;
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
    v4[15] = self->_numStructuredInfoItems;
    *(v4 + 74) |= 0x10u;
    v7 = self->_has;
  }

  if ((v7 & 0x80) != 0)
  {
    v4[34] = self->_triggerSourceType;
    *(v4 + 74) |= 0x80u;
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
  if ((v8 & 0x100) != 0)
  {
    *(v4 + 140) = self->_hasContextBeforeInput;
    *(v4 + 74) |= 0x100u;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_43:
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_43;
  }

  v4[12] = self->_maxPredictionItems;
  *(v4 + 74) |= 2u;
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
LABEL_44:
    if ((v8 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_54:
  *(v4 + 141) = self->_hasRecipientNames;
  *(v4 + 74) |= 0x200u;
  if (*&self->_has)
  {
LABEL_45:
    v4[4] = self->_dataSourceType;
    *(v4 + 74) |= 1u;
  }

LABEL_46:
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  if ((*&self->_has & 0x40) != 0)
  {
    position = self->_position;
    PBDataWriterWriteUint32Field();
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
  if ((has & 0x400) != 0)
  {
    hasResponseContext = self->_hasResponseContext;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_11:
      if ((has & 0x800) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  isResponseContextBlacklisted = self->_isResponseContextBlacklisted;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_12:
    isDocumentEmpty = self->_isDocumentEmpty;
    PBDataWriterWriteBOOLField();
  }

LABEL_13:
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
  if ((v7 & 8) != 0)
  {
    maxTextualResponseItems = self->_maxTextualResponseItems;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
  }

  if ((v7 & 4) != 0)
  {
    maxStructuredInfoItems = self->_maxStructuredInfoItems;
    PBDataWriterWriteUint32Field();
  }

  if (self->_initiatingProcess)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    numTextualResponseItems = self->_numTextualResponseItems;
    PBDataWriterWriteUint32Field();
  }

  if (self->_textualResponseCategory)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    numStructuredInfoItems = self->_numStructuredInfoItems;
    PBDataWriterWriteUint32Field();
    v11 = self->_has;
  }

  if ((v11 & 0x80) != 0)
  {
    triggerSourceType = self->_triggerSourceType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_triggerCategory)
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

  v14 = self->_has;
  if ((v14 & 0x100) != 0)
  {
    hasContextBeforeInput = self->_hasContextBeforeInput;
    PBDataWriterWriteBOOLField();
    v14 = self->_has;
    if ((v14 & 2) == 0)
    {
LABEL_43:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_43;
  }

  maxPredictionItems = self->_maxPredictionItems;
  PBDataWriterWriteUint32Field();
  v14 = self->_has;
  if ((v14 & 0x200) == 0)
  {
LABEL_44:
    if ((v14 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_54:
  hasRecipientNames = self->_hasRecipientNames;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_45:
    dataSourceType = self->_dataSourceType;
    PBDataWriterWriteInt32Field();
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
  if ((has & 0x400) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasResponseContext];
    [v4 setObject:v22 forKey:@"has_response_context"];

    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_9:
      if ((has & 0x800) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_9;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_isResponseContextBlacklisted];
  [v4 setObject:v23 forKey:@"is_response_context_blacklisted"];

  if ((*&self->_has & 0x800) != 0)
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
  if ((v11 & 0x100) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasContextBeforeInput];
    [v4 setObject:v12 forKey:@"has_context_before_input"];

    v11 = self->_has;
  }

  if ((v11 & 0x200) != 0)
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
      if ((v21 & 0x80) == 0)
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
    v28 = off_279ABE390[dataSourceType];
  }

  [v4 setObject:v28 forKey:@"data_source_type"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_46:
    triggerSourceType = self->_triggerSourceType;
    if (triggerSourceType >= 7)
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_triggerSourceType];
    }

    else
    {
      v30 = off_279ABE3E8[triggerSourceType];
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

  if ((*&self->_has & 0x40) != 0)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_position];
    [v4 setObject:v35 forKey:@"position"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PSGPBEngagement;
  v4 = [(PSGPBEngagement *)&v8 description];
  v5 = [(PSGPBEngagement *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasPosition:(BOOL)a3
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
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)triggerSourceType
{
  if ((*&self->_has & 0x80) != 0)
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
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasHasContextBeforeInput:(BOOL)a3
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

- (void)setHasIsDocumentEmpty:(BOOL)a3
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

- (void)setHasIsResponseContextBlacklisted:(BOOL)a3
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

- (void)setHasHasResponseContext:(BOOL)a3
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

@end