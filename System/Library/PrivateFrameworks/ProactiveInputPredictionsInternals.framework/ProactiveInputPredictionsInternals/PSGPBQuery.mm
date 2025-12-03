@interface PSGPBQuery
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
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
- (void)writeTo:(id)to;
@end

@implementation PSGPBQuery

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 88);
  if ((v5 & 0x20) != 0)
  {
    self->_hasResponseContext = *(fromCopy + 82);
    *&self->_has |= 0x20u;
    v5 = *(fromCopy + 88);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 88) & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_isResponseContextBlacklisted = *(fromCopy + 84);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 88) & 0x40) != 0)
  {
LABEL_4:
    self->_isDocumentEmpty = *(fromCopy + 83);
    *&self->_has |= 0x40u;
  }

LABEL_5:
  v8 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(PSGPBQuery *)self setTextContentType:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 4))
  {
    [(PSGPBQuery *)self setLocaleIdentifier:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 1))
  {
    [(PSGPBQuery *)self setBundleIdentifier:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 88);
  if ((v6 & 4) != 0)
  {
    self->_maxTextualResponseItems = *(fromCopy + 12);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 88);
  }

  if ((v6 & 2) != 0)
  {
    self->_maxStructuredInfoItems = *(fromCopy + 11);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(PSGPBQuery *)self setInitiatingProcess:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 2))
  {
    [(PSGPBQuery *)self setExperimentId:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 8))
  {
    [(PSGPBQuery *)self setTreatmentId:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 9))
  {
    [(PSGPBQuery *)self setTreatmentName:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 88);
  if ((v7 & 8) != 0)
  {
    self->_hasContextBeforeInput = *(fromCopy + 80);
    *&self->_has |= 8u;
    v7 = *(fromCopy + 88);
    if ((v7 & 1) == 0)
    {
LABEL_25:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*(fromCopy + 88) & 1) == 0)
  {
    goto LABEL_25;
  }

  self->_maxPredictionItems = *(fromCopy + 10);
  *&self->_has |= 1u;
  if ((*(fromCopy + 88) & 0x10) != 0)
  {
LABEL_26:
    self->_hasRecipientNames = *(fromCopy + 81);
    *&self->_has |= 0x10u;
  }

LABEL_27:
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) == 0)
  {
    v18 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 2654435761 * self->_hasResponseContext;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = 2654435761 * self->_isResponseContextBlacklisted;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    v16 = 2654435761 * self->_isDocumentEmpty;
    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  v15 = [(NSString *)self->_textContentType hash];
  v3 = [(NSString *)self->_localeIdentifier hash];
  v4 = [(NSString *)self->_bundleIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_maxTextualResponseItems;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_10:
      v6 = 2654435761 * self->_maxStructuredInfoItems;
      goto LABEL_13;
    }
  }

  v6 = 0;
LABEL_13:
  v7 = [(NSString *)self->_initiatingProcess hash];
  v8 = [(NSString *)self->_experimentId hash];
  v9 = [(NSString *)self->_treatmentId hash];
  v10 = [(NSString *)self->_treatmentName hash];
  if ((*&self->_has & 8) == 0)
  {
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_15;
    }

LABEL_18:
    v12 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v13 = 0;
    return v17 ^ v18 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v11 = 2654435761 * self->_hasContextBeforeInput;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v12 = 2654435761 * self->_maxPredictionItems;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v13 = 2654435761 * self->_hasRecipientNames;
  return v17 ^ v18 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  v5 = *(equalCopy + 88);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 88) & 0x20) == 0)
    {
      goto LABEL_66;
    }

    v10 = *(equalCopy + 82);
    if (self->_hasResponseContext)
    {
      if ((*(equalCopy + 82) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 82))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 88) & 0x20) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equalCopy + 88) & 0x80) == 0)
    {
      goto LABEL_66;
    }

    v11 = *(equalCopy + 84);
    if (self->_isResponseContextBlacklisted)
    {
      if ((*(equalCopy + 84) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 84))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 88) & 0x80) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 88) & 0x40) == 0)
    {
      goto LABEL_66;
    }

    v12 = *(equalCopy + 83);
    if (self->_isDocumentEmpty)
    {
      if ((*(equalCopy + 83) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 83))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 88) & 0x40) != 0)
  {
    goto LABEL_66;
  }

  textContentType = self->_textContentType;
  if (textContentType | *(equalCopy + 7) && ![(NSString *)textContentType isEqual:?])
  {
    goto LABEL_66;
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_66;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_66;
    }
  }

  v9 = *(equalCopy + 88);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 88) & 4) == 0 || self->_maxTextualResponseItems != *(equalCopy + 12))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 88) & 4) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_maxStructuredInfoItems != *(equalCopy + 11))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_66;
  }

  initiatingProcess = self->_initiatingProcess;
  if (initiatingProcess | *(equalCopy + 3) && ![(NSString *)initiatingProcess isEqual:?])
  {
    goto LABEL_66;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(equalCopy + 2))
  {
    if (![(NSString *)experimentId isEqual:?])
    {
      goto LABEL_66;
    }
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(equalCopy + 8))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_66;
    }
  }

  treatmentName = self->_treatmentName;
  if (treatmentName | *(equalCopy + 9))
  {
    if (![(NSString *)treatmentName isEqual:?])
    {
      goto LABEL_66;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 88) & 8) == 0)
    {
      goto LABEL_66;
    }

    v17 = *(equalCopy + 80);
    if (self->_hasContextBeforeInput)
    {
      if ((*(equalCopy + 80) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 80))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 88) & 8) != 0)
  {
    goto LABEL_66;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_maxPredictionItems != *(equalCopy + 10))
    {
      goto LABEL_66;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 88) & 0x10) != 0)
    {
      if (self->_hasRecipientNames)
      {
        if ((*(equalCopy + 81) & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else if (*(equalCopy + 81))
      {
        goto LABEL_66;
      }

      v18 = 1;
      goto LABEL_67;
    }

LABEL_66:
    v18 = 0;
    goto LABEL_67;
  }

  v18 = (*(equalCopy + 88) & 0x10) == 0;
LABEL_67:

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v5[82] = self->_hasResponseContext;
    v5[88] |= 0x20u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v5[84] = self->_isResponseContextBlacklisted;
  v5[88] |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    v5[83] = self->_isDocumentEmpty;
    v5[88] |= 0x40u;
  }

LABEL_5:
  v8 = [(NSString *)self->_textContentType copyWithZone:zone];
  v9 = *(v6 + 7);
  *(v6 + 7) = v8;

  v10 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
  v11 = *(v6 + 4);
  *(v6 + 4) = v10;

  v12 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v13 = *(v6 + 1);
  *(v6 + 1) = v12;

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    *(v6 + 12) = self->_maxTextualResponseItems;
    v6[88] |= 4u;
    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    *(v6 + 11) = self->_maxStructuredInfoItems;
    v6[88] |= 2u;
  }

  v15 = [(NSString *)self->_initiatingProcess copyWithZone:zone];
  v16 = *(v6 + 3);
  *(v6 + 3) = v15;

  v17 = [(NSString *)self->_experimentId copyWithZone:zone];
  v18 = *(v6 + 2);
  *(v6 + 2) = v17;

  v19 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v20 = *(v6 + 8);
  *(v6 + 8) = v19;

  v21 = [(NSString *)self->_treatmentName copyWithZone:zone];
  v22 = *(v6 + 9);
  *(v6 + 9) = v21;

  v23 = self->_has;
  if ((v23 & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    *(v6 + 10) = self->_maxPredictionItems;
    v6[88] |= 1u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_12;
  }

  v6[80] = self->_hasContextBeforeInput;
  v6[88] |= 8u;
  v23 = self->_has;
  if (v23)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v23 & 0x10) != 0)
  {
LABEL_12:
    v6[81] = self->_hasRecipientNames;
    v6[88] |= 0x10u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    toCopy[82] = self->_hasResponseContext;
    toCopy[88] |= 0x20u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  toCopy[84] = self->_isResponseContextBlacklisted;
  toCopy[88] |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    toCopy[83] = self->_isDocumentEmpty;
    toCopy[88] |= 0x40u;
  }

LABEL_5:
  v8 = toCopy;
  if (self->_textContentType)
  {
    [toCopy setTextContentType:?];
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
  if ((v6 & 4) != 0)
  {
    *(toCopy + 12) = self->_maxTextualResponseItems;
    toCopy[88] |= 4u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    *(toCopy + 11) = self->_maxStructuredInfoItems;
    toCopy[88] |= 2u;
  }

  if (self->_initiatingProcess)
  {
    [v8 setInitiatingProcess:?];
    toCopy = v8;
  }

  if (self->_experimentId)
  {
    [v8 setExperimentId:?];
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

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    toCopy[80] = self->_hasContextBeforeInput;
    toCopy[88] |= 8u;
    v7 = self->_has;
    if ((v7 & 1) == 0)
    {
LABEL_25:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_25;
  }

  *(toCopy + 10) = self->_maxPredictionItems;
  toCopy[88] |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_26:
    toCopy[81] = self->_hasRecipientNames;
    toCopy[88] |= 0x10u;
  }

LABEL_27:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    hasResponseContext = self->_hasResponseContext;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  isResponseContextBlacklisted = self->_isResponseContextBlacklisted;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    isDocumentEmpty = self->_isDocumentEmpty;
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
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

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    maxTextualResponseItems = self->_maxTextualResponseItems;
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    maxStructuredInfoItems = self->_maxStructuredInfoItems;
    PBDataWriterWriteUint32Field();
  }

  if (self->_initiatingProcess)
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

  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    hasContextBeforeInput = self->_hasContextBeforeInput;
    PBDataWriterWriteBOOLField();
    v9 = self->_has;
    if ((v9 & 1) == 0)
    {
LABEL_25:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_25;
  }

  maxPredictionItems = self->_maxPredictionItems;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_26:
    hasRecipientNames = self->_hasRecipientNames;
    PBDataWriterWriteBOOLField();
  }

LABEL_27:
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
  if ((has & 0x20) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasResponseContext];
    [v4 setObject:v20 forKey:@"has_response_context"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_9:
      if ((has & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_9;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_isResponseContextBlacklisted];
  [v4 setObject:v21 forKey:@"is_response_context_blacklisted"];

  if ((*&self->_has & 0x40) != 0)
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
  if ((v11 & 8) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasContextBeforeInput];
    [v4 setObject:v12 forKey:@"has_context_before_input"];

    v11 = self->_has;
  }

  if ((v11 & 0x10) != 0)
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
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxTextualResponseItems];
    [v4 setObject:v22 forKey:@"max_textual_response_items"];

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

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_23;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_maxStructuredInfoItems];
  [v4 setObject:v23 forKey:@"max_structured_info_items"];

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

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PSGPBQuery;
  v4 = [(PSGPBQuery *)&v8 description];
  dictionaryRepresentation = [(PSGPBQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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

  *&self->_has = *&self->_has & 0xFD | v3;
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

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHasRecipientNames:(BOOL)names
{
  if (names)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasHasContextBeforeInput:(BOOL)input
{
  if (input)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsDocumentEmpty:(BOOL)empty
{
  if (empty)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsResponseContextBlacklisted:(BOOL)blacklisted
{
  if (blacklisted)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasHasResponseContext:(BOOL)context
{
  if (context)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

@end