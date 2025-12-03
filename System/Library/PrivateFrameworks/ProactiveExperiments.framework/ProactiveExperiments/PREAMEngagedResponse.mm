@interface PREAMEngagedResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAgeGroup:(id)group;
- (int)StringAsGenerationStatus:(id)status;
- (int)StringAsInputMethod:(id)method;
- (int)ageGroup;
- (int)generationStatus;
- (int)inputMethod;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGenerationStatus:(BOOL)status;
- (void)setHasHasQuestionMark:(BOOL)mark;
- (void)setHasInputMethod:(BOOL)method;
- (void)setHasIsApricotDevice:(BOOL)device;
- (void)setHasIsCustomResponse:(BOOL)response;
- (void)setHasIsRobotResponse:(BOOL)response;
- (void)setHasModelId:(BOOL)id;
- (void)setHasNumberOfCustomResponses:(BOOL)responses;
- (void)setHasNumberOfResponsesGenerated:(BOOL)generated;
- (void)setHasNumberOfRobotResponses:(BOOL)responses;
- (void)setHasPosition:(BOOL)position;
- (void)setHasReplyTextId:(BOOL)id;
- (void)setHasResponseClassId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation PREAMEngagedResponse

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 58);
  if ((v5 & 8) != 0)
  {
    self->_modelId = *(fromCopy + 16);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 58);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*(fromCopy + 58) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_responseClassId = *(fromCopy + 22);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 58);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_replyTextId = *(fromCopy + 21);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 58);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_position = *(fromCopy + 20);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 58);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_inputMethod = *(fromCopy + 10);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 58);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_generationStatus = *(fromCopy + 6);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 58);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_numberOfResponsesGenerated = *(fromCopy + 18);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 58);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_39:
  self->_numberOfCustomResponses = *(fromCopy + 17);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 58) & 0x40) != 0)
  {
LABEL_10:
    self->_numberOfRobotResponses = *(fromCopy + 19);
    *&self->_has |= 0x40u;
  }

LABEL_11:
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PREAMEngagedResponse *)self setExperimentId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 12))
  {
    [(PREAMEngagedResponse *)self setTreatmentId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 13))
  {
    [(PREAMEngagedResponse *)self setTreatmentModelName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(PREAMEngagedResponse *)self setHostProcess:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    [(PREAMEngagedResponse *)self setLocale:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 6))
  {
    [(PREAMEngagedResponse *)self setLang:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 58);
  if ((v6 & 0x800) != 0)
  {
    self->_isApricotDevice = *(fromCopy + 113);
    *&self->_has |= 0x800u;
    v6 = *(fromCopy + 58);
    if ((v6 & 1) == 0)
    {
LABEL_25:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_25;
  }

  self->_ageGroup = *(fromCopy + 2);
  *&self->_has |= 1u;
  v6 = *(fromCopy + 58);
  if ((v6 & 0x400) == 0)
  {
LABEL_26:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_hasQuestionMark = *(fromCopy + 112);
  *&self->_has |= 0x400u;
  v6 = *(fromCopy + 58);
  if ((v6 & 0x1000) == 0)
  {
LABEL_27:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_44:
  self->_isCustomResponse = *(fromCopy + 114);
  *&self->_has |= 0x1000u;
  if ((*(fromCopy + 58) & 0x2000) != 0)
  {
LABEL_28:
    self->_isRobotResponse = *(fromCopy + 115);
    *&self->_has |= 0x2000u;
  }

LABEL_29:
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    v25 = 2654435761 * self->_modelId;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v24 = 2654435761 * self->_responseClassId;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v25 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v23 = 2654435761 * self->_replyTextId;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v23 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_5:
    v22 = 2654435761 * self->_position;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v22 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v21 = 2654435761 * self->_inputMethod;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v21 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v20 = 2654435761 * self->_generationStatus;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v20 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v19 = 2654435761 * self->_numberOfResponsesGenerated;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v4 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v19 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v4 = 2654435761 * self->_numberOfCustomResponses;
  if ((has & 0x40) != 0)
  {
LABEL_10:
    v5 = 2654435761 * self->_numberOfRobotResponses;
    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
LABEL_20:
  v6 = [(NSString *)self->_experimentId hash];
  v7 = [(NSString *)self->_treatmentId hash];
  v8 = [(NSString *)self->_treatmentModelName hash];
  v9 = [(NSString *)self->_hostProcess hash];
  v10 = [(NSString *)self->_locale hash];
  v11 = [(NSString *)self->_lang hash];
  v12 = self->_has;
  if ((v12 & 0x800) != 0)
  {
    v13 = 2654435761 * self->_isApricotDevice;
    if (v12)
    {
LABEL_22:
      v14 = 2654435761 * self->_ageGroup;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_22;
    }
  }

  v14 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_23:
    v15 = 2654435761 * self->_hasQuestionMark;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_24;
    }

LABEL_29:
    v16 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_25;
    }

LABEL_30:
    v17 = 0;
    return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_28:
  v15 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  v16 = 2654435761 * self->_isCustomResponse;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  v17 = 2654435761 * self->_isRobotResponse;
  return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_91;
  }

  has = self->_has;
  v6 = *(equalCopy + 58);
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_modelId != *(equalCopy + 16))
    {
      goto LABEL_91;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 58) & 0x200) == 0 || self->_responseClassId != *(equalCopy + 22))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 58) & 0x200) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 58) & 0x100) == 0 || self->_replyTextId != *(equalCopy + 21))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 58) & 0x100) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_position != *(equalCopy + 20))
    {
      goto LABEL_91;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_inputMethod != *(equalCopy + 10))
    {
      goto LABEL_91;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_generationStatus != *(equalCopy + 6))
    {
      goto LABEL_91;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_numberOfResponsesGenerated != *(equalCopy + 18))
    {
      goto LABEL_91;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_numberOfCustomResponses != *(equalCopy + 17))
    {
      goto LABEL_91;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_numberOfRobotResponses != *(equalCopy + 19))
    {
      goto LABEL_91;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_91;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(equalCopy + 2) && ![(NSString *)experimentId isEqual:?])
  {
    goto LABEL_91;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(equalCopy + 12))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_91;
    }
  }

  treatmentModelName = self->_treatmentModelName;
  if (treatmentModelName | *(equalCopy + 13))
  {
    if (![(NSString *)treatmentModelName isEqual:?])
    {
      goto LABEL_91;
    }
  }

  hostProcess = self->_hostProcess;
  if (hostProcess | *(equalCopy + 4))
  {
    if (![(NSString *)hostProcess isEqual:?])
    {
      goto LABEL_91;
    }
  }

  locale = self->_locale;
  if (locale | *(equalCopy + 7))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_91;
    }
  }

  lang = self->_lang;
  if (lang | *(equalCopy + 6))
  {
    if (![(NSString *)lang isEqual:?])
    {
      goto LABEL_91;
    }
  }

  v13 = self->_has;
  v14 = *(equalCopy + 58);
  if ((v13 & 0x800) != 0)
  {
    if ((*(equalCopy + 58) & 0x800) == 0)
    {
      goto LABEL_91;
    }

    v15 = *(equalCopy + 113);
    if (self->_isApricotDevice)
    {
      if ((*(equalCopy + 113) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 113))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 58) & 0x800) != 0)
  {
    goto LABEL_91;
  }

  if (v13)
  {
    if ((v14 & 1) == 0 || self->_ageGroup != *(equalCopy + 2))
    {
      goto LABEL_91;
    }
  }

  else if (v14)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 58) & 0x400) == 0)
    {
      goto LABEL_91;
    }

    v16 = *(equalCopy + 112);
    if (self->_hasQuestionMark)
    {
      if ((*(equalCopy + 112) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 112))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 58) & 0x400) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 58) & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    v17 = *(equalCopy + 114);
    if (self->_isCustomResponse)
    {
      if ((*(equalCopy + 114) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 114))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 58) & 0x1000) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 58) & 0x2000) != 0)
    {
      if (self->_isRobotResponse)
      {
        if ((*(equalCopy + 115) & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else if (*(equalCopy + 115))
      {
        goto LABEL_91;
      }

      v18 = 1;
      goto LABEL_92;
    }

LABEL_91:
    v18 = 0;
    goto LABEL_92;
  }

  v18 = (v14 & 0x2000) == 0;
LABEL_92:

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 64) = self->_modelId;
    *(v5 + 116) |= 8u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 88) = self->_responseClassId;
  *(v5 + 116) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 84) = self->_replyTextId;
  *(v5 + 116) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 80) = self->_position;
  *(v5 + 116) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 40) = self->_inputMethod;
  *(v5 + 116) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 24) = self->_generationStatus;
  *(v5 + 116) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 72) = self->_numberOfResponsesGenerated;
  *(v5 + 116) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  *(v5 + 68) = self->_numberOfCustomResponses;
  *(v5 + 116) |= 0x10u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    *(v5 + 76) = self->_numberOfRobotResponses;
    *(v5 + 116) |= 0x40u;
  }

LABEL_11:
  v8 = [(NSString *)self->_experimentId copyWithZone:zone];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v10 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v11 = *(v6 + 96);
  *(v6 + 96) = v10;

  v12 = [(NSString *)self->_treatmentModelName copyWithZone:zone];
  v13 = *(v6 + 104);
  *(v6 + 104) = v12;

  v14 = [(NSString *)self->_hostProcess copyWithZone:zone];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  v16 = [(NSString *)self->_locale copyWithZone:zone];
  v17 = *(v6 + 56);
  *(v6 + 56) = v16;

  v18 = [(NSString *)self->_lang copyWithZone:zone];
  v19 = *(v6 + 48);
  *(v6 + 48) = v18;

  v20 = self->_has;
  if ((v20 & 0x800) != 0)
  {
    *(v6 + 113) = self->_isApricotDevice;
    *(v6 + 116) |= 0x800u;
    v20 = self->_has;
    if ((v20 & 1) == 0)
    {
LABEL_13:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    }
  }

  else if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

  *(v6 + 8) = self->_ageGroup;
  *(v6 + 116) |= 1u;
  v20 = self->_has;
  if ((v20 & 0x400) == 0)
  {
LABEL_14:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    *(v6 + 114) = self->_isCustomResponse;
    *(v6 + 116) |= 0x1000u;
    if ((*&self->_has & 0x2000) == 0)
    {
      return v6;
    }

    goto LABEL_16;
  }

LABEL_29:
  *(v6 + 112) = self->_hasQuestionMark;
  *(v6 + 116) |= 0x400u;
  v20 = self->_has;
  if ((v20 & 0x1000) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v20 & 0x2000) != 0)
  {
LABEL_16:
    *(v6 + 115) = self->_isRobotResponse;
    *(v6 + 116) |= 0x2000u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[16] = self->_modelId;
    *(toCopy + 58) |= 8u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  toCopy[22] = self->_responseClassId;
  *(toCopy + 58) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  toCopy[21] = self->_replyTextId;
  *(toCopy + 58) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  toCopy[20] = self->_position;
  *(toCopy + 58) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[10] = self->_inputMethod;
  *(toCopy + 58) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[6] = self->_generationStatus;
  *(toCopy + 58) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  toCopy[18] = self->_numberOfResponsesGenerated;
  *(toCopy + 58) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_39:
  toCopy[17] = self->_numberOfCustomResponses;
  *(toCopy + 58) |= 0x10u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    toCopy[19] = self->_numberOfRobotResponses;
    *(toCopy + 58) |= 0x40u;
  }

LABEL_11:
  v7 = toCopy;
  if (self->_experimentId)
  {
    [toCopy setExperimentId:?];
    toCopy = v7;
  }

  if (self->_treatmentId)
  {
    [v7 setTreatmentId:?];
    toCopy = v7;
  }

  if (self->_treatmentModelName)
  {
    [v7 setTreatmentModelName:?];
    toCopy = v7;
  }

  if (self->_hostProcess)
  {
    [v7 setHostProcess:?];
    toCopy = v7;
  }

  if (self->_locale)
  {
    [v7 setLocale:?];
    toCopy = v7;
  }

  if (self->_lang)
  {
    [v7 setLang:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    *(toCopy + 113) = self->_isApricotDevice;
    *(toCopy + 58) |= 0x800u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_25:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_25;
  }

  toCopy[2] = self->_ageGroup;
  *(toCopy + 58) |= 1u;
  v6 = self->_has;
  if ((v6 & 0x400) == 0)
  {
LABEL_26:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 112) = self->_hasQuestionMark;
  *(toCopy + 58) |= 0x400u;
  v6 = self->_has;
  if ((v6 & 0x1000) == 0)
  {
LABEL_27:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_44:
  *(toCopy + 114) = self->_isCustomResponse;
  *(toCopy + 58) |= 0x1000u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_28:
    *(toCopy + 115) = self->_isRobotResponse;
    *(toCopy + 58) |= 0x2000u;
  }

LABEL_29:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    modelId = self->_modelId;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  responseClassId = self->_responseClassId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  replyTextId = self->_replyTextId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  position = self->_position;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  inputMethod = self->_inputMethod;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  generationStatus = self->_generationStatus;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  numberOfResponsesGenerated = self->_numberOfResponsesGenerated;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_39:
  numberOfCustomResponses = self->_numberOfCustomResponses;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    numberOfRobotResponses = self->_numberOfRobotResponses;
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_treatmentModelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hostProcess)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lang)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x800) != 0)
  {
    isApricotDevice = self->_isApricotDevice;
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_25:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_25;
  }

  ageGroup = self->_ageGroup;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((v6 & 0x400) == 0)
  {
LABEL_26:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

LABEL_43:
  hasQuestionMark = self->_hasQuestionMark;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((v6 & 0x1000) == 0)
  {
LABEL_27:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_44:
  isCustomResponse = self->_isCustomResponse;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_28:
    isRobotResponse = self->_isRobotResponse;
    PBDataWriterWriteBOOLField();
  }

LABEL_29:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_modelId];
    [dictionary setObject:v15 forKey:@"model_id"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_responseClassId];
  [dictionary setObject:v16 forKey:@"response_class_id"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_replyTextId];
  [dictionary setObject:v17 forKey:@"reply_text_id"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_position];
  [dictionary setObject:v18 forKey:@"position"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_36:
  inputMethod = self->_inputMethod;
  if (inputMethod >= 6)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_inputMethod];
  }

  else
  {
    v20 = *(&off_279ABACE0 + inputMethod);
  }

  [dictionary setObject:v20 forKey:@"input_method"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_43:
  generationStatus = self->_generationStatus;
  if (generationStatus >= 6)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_generationStatus];
  }

  else
  {
    v25 = *(&off_279ABAD10 + generationStatus);
  }

  [dictionary setObject:v25 forKey:@"generation_status"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfResponsesGenerated];
  [dictionary setObject:v28 forKey:@"number_of_responses_generated"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_53:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfCustomResponses];
  [dictionary setObject:v29 forKey:@"number_of_custom_responses"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfRobotResponses];
    [dictionary setObject:v5 forKey:@"number_of_robot_responses"];
  }

LABEL_11:
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [dictionary setObject:experimentId forKey:@"experiment_id"];
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [dictionary setObject:treatmentId forKey:@"treatment_id"];
  }

  treatmentModelName = self->_treatmentModelName;
  if (treatmentModelName)
  {
    [dictionary setObject:treatmentModelName forKey:@"treatment_model_name"];
  }

  hostProcess = self->_hostProcess;
  if (hostProcess)
  {
    [dictionary setObject:hostProcess forKey:@"host_process"];
  }

  locale = self->_locale;
  if (locale)
  {
    [dictionary setObject:locale forKey:@"locale"];
  }

  lang = self->_lang;
  if (lang)
  {
    [dictionary setObject:lang forKey:@"lang"];
  }

  v12 = self->_has;
  if ((v12 & 0x800) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_isApricotDevice];
    [dictionary setObject:v21 forKey:@"is_apricot_device"];

    v12 = self->_has;
    if ((v12 & 1) == 0)
    {
LABEL_25:
      if ((v12 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_47;
    }
  }

  else if ((v12 & 1) == 0)
  {
    goto LABEL_25;
  }

  ageGroup = self->_ageGroup;
  if (ageGroup >= 7)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ageGroup];
  }

  else
  {
    v23 = *(&off_279ABAD40 + ageGroup);
  }

  [dictionary setObject:v23 forKey:@"age_group"];

  v12 = self->_has;
  if ((v12 & 0x400) == 0)
  {
LABEL_26:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_48;
  }

LABEL_47:
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasQuestionMark];
  [dictionary setObject:v26 forKey:@"has_question_mark"];

  v12 = self->_has;
  if ((v12 & 0x1000) == 0)
  {
LABEL_27:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_48:
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCustomResponse];
  [dictionary setObject:v27 forKey:@"is_custom_response"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_28:
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRobotResponse];
    [dictionary setObject:v13 forKey:@"is_robot_response"];
  }

LABEL_29:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREAMEngagedResponse;
  v4 = [(PREAMEngagedResponse *)&v8 description];
  dictionaryRepresentation = [(PREAMEngagedResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasIsRobotResponse:(BOOL)response
{
  if (response)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasIsCustomResponse:(BOOL)response
{
  if (response)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasHasQuestionMark:(BOOL)mark
{
  if (mark)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsAgeGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isEqualToString:@"GROUP_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([groupCopy isEqualToString:@"GROUP_0TO18"])
  {
    v4 = 1;
  }

  else if ([groupCopy isEqualToString:@"GROUP_19TO30"])
  {
    v4 = 2;
  }

  else if ([groupCopy isEqualToString:@"GROUP_31TO50"])
  {
    v4 = 3;
  }

  else if ([groupCopy isEqualToString:@"GROUP_51TO65"])
  {
    v4 = 4;
  }

  else if ([groupCopy isEqualToString:@"GROUP_66TO75"])
  {
    v4 = 5;
  }

  else if ([groupCopy isEqualToString:@"GROUP_76UP"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)ageGroup
{
  if (*&self->_has)
  {
    return self->_ageGroup;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIsApricotDevice:(BOOL)device
{
  if (device)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasNumberOfRobotResponses:(BOOL)responses
{
  if (responses)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumberOfCustomResponses:(BOOL)responses
{
  if (responses)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumberOfResponsesGenerated:(BOOL)generated
{
  if (generated)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)StringAsGenerationStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"STATUS_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"CACHED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"FALLBACK_TO_RK_NIL"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"FALLBACK_TO_RK_ERROR"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"ONLY_CANNED_QR_EMPTY_ARRAY"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasGenerationStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)generationStatus
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_generationStatus;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsInputMethod:(id)method
{
  methodCopy = method;
  if ([methodCopy isEqualToString:@"METHOD_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([methodCopy isEqualToString:@"CANNED"])
  {
    v4 = 1;
  }

  else if ([methodCopy isEqualToString:@"SCRIBBLE"])
  {
    v4 = 2;
  }

  else if ([methodCopy isEqualToString:@"DICTATION"])
  {
    v4 = 3;
  }

  else if ([methodCopy isEqualToString:@"EMOJI"])
  {
    v4 = 4;
  }

  else if ([methodCopy isEqualToString:@"HEART"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasInputMethod:(BOOL)method
{
  if (method)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)inputMethod
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_inputMethod;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPosition:(BOOL)position
{
  if (position)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasReplyTextId:(BOOL)id
{
  if (id)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasResponseClassId:(BOOL)id
{
  if (id)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasModelId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

@end