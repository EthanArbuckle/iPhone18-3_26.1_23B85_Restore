@interface PREAMResponseItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAgeGroup:(id)a3;
- (int)ageGroup;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsApricotDevice:(BOOL)a3;
- (void)setHasIsCustomResponse:(BOOL)a3;
- (void)setHasIsRobotResponse:(BOOL)a3;
- (void)setHasModelId:(BOOL)a3;
- (void)setHasPosition:(BOOL)a3;
- (void)setHasReplyTextId:(BOOL)a3;
- (void)setHasResponseClassId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PREAMResponseItem

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 84);
  if ((v5 & 2) != 0)
  {
    self->_modelId = *(v4 + 12);
    *&self->_has |= 2u;
    v5 = *(v4 + 84);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v4 + 84) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_responseClassId = *(v4 + 15);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 84);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  self->_replyTextId = *(v4 + 14);
  *&self->_has |= 8u;
  if ((*(v4 + 84) & 4) != 0)
  {
LABEL_5:
    self->_position = *(v4 + 13);
    *&self->_has |= 4u;
  }

LABEL_6:
  v7 = v4;
  if (*(v4 + 2))
  {
    [(PREAMResponseItem *)self setExperimentId:?];
    v4 = v7;
  }

  if (*(v4 + 8))
  {
    [(PREAMResponseItem *)self setTreatmentId:?];
    v4 = v7;
  }

  if (*(v4 + 9))
  {
    [(PREAMResponseItem *)self setTreatmentModelName:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(PREAMResponseItem *)self setHostProcess:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(PREAMResponseItem *)self setLocale:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(PREAMResponseItem *)self setLang:?];
    v4 = v7;
  }

  v6 = *(v4 + 84);
  if ((v6 & 0x20) != 0)
  {
    self->_isApricotDevice = *(v4 + 80);
    *&self->_has |= 0x20u;
    v6 = *(v4 + 84);
    if ((v6 & 1) == 0)
    {
LABEL_20:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_21;
      }

LABEL_31:
      self->_isCustomResponse = *(v4 + 81);
      *&self->_has |= 0x40u;
      if ((*(v4 + 84) & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((*(v4 + 84) & 1) == 0)
  {
    goto LABEL_20;
  }

  self->_ageGroup = *(v4 + 2);
  *&self->_has |= 1u;
  v6 = *(v4 + 84);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_32:
  self->_isRobotResponse = *(v4 + 82);
  *&self->_has |= 0x80u;
LABEL_22:
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v18 = 2654435761 * self->_modelId;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v16 = 2654435761 * self->_responseClassId;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v3 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = 2654435761 * self->_replyTextId;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_position;
    goto LABEL_10;
  }

LABEL_9:
  v4 = 0;
LABEL_10:
  v5 = [(NSString *)self->_experimentId hash];
  v6 = [(NSString *)self->_treatmentId hash];
  v7 = [(NSString *)self->_treatmentModelName hash];
  v8 = [(NSString *)self->_hostProcess hash];
  v9 = [(NSString *)self->_locale hash];
  v10 = [(NSString *)self->_lang hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_isApricotDevice;
    if (*&self->_has)
    {
LABEL_12:
      v12 = 2654435761 * self->_ageGroup;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v13 = 0;
      if ((*&self->_has & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      v14 = 0;
      return v17 ^ v18 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
    }
  }

  else
  {
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_12;
    }
  }

  v12 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v13 = 2654435761 * self->_isCustomResponse;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v14 = 2654435761 * self->_isRobotResponse;
  return v17 ^ v18 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  v5 = v4[84];
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[84] & 2) == 0 || self->_modelId != *(v4 + 12))
    {
      goto LABEL_60;
    }
  }

  else if ((v4[84] & 2) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((v4[84] & 0x10) == 0 || self->_responseClassId != *(v4 + 15))
    {
      goto LABEL_60;
    }
  }

  else if ((v4[84] & 0x10) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((v4[84] & 8) == 0 || self->_replyTextId != *(v4 + 14))
    {
      goto LABEL_60;
    }
  }

  else if ((v4[84] & 8) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[84] & 4) == 0 || self->_position != *(v4 + 13))
    {
      goto LABEL_60;
    }
  }

  else if ((v4[84] & 4) != 0)
  {
    goto LABEL_60;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(v4 + 2) && ![(NSString *)experimentId isEqual:?])
  {
    goto LABEL_60;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(v4 + 8))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_60;
    }
  }

  treatmentModelName = self->_treatmentModelName;
  if (treatmentModelName | *(v4 + 9))
  {
    if (![(NSString *)treatmentModelName isEqual:?])
    {
      goto LABEL_60;
    }
  }

  hostProcess = self->_hostProcess;
  if (hostProcess | *(v4 + 3))
  {
    if (![(NSString *)hostProcess isEqual:?])
    {
      goto LABEL_60;
    }
  }

  locale = self->_locale;
  if (locale | *(v4 + 5))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_60;
    }
  }

  lang = self->_lang;
  if (lang | *(v4 + 4))
  {
    if (![(NSString *)lang isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((v4[84] & 0x20) == 0)
    {
      goto LABEL_60;
    }

    v12 = v4[80];
    if (self->_isApricotDevice)
    {
      if ((v4[80] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[80])
    {
      goto LABEL_60;
    }
  }

  else if ((v4[84] & 0x20) != 0)
  {
    goto LABEL_60;
  }

  if (*&self->_has)
  {
    if ((v4[84] & 1) == 0 || self->_ageGroup != *(v4 + 2))
    {
      goto LABEL_60;
    }
  }

  else if (v4[84])
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((v4[84] & 0x40) == 0)
    {
      goto LABEL_60;
    }

    v14 = v4[81];
    if (self->_isCustomResponse)
    {
      if ((v4[81] & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v4[81])
    {
      goto LABEL_60;
    }
  }

  else if ((v4[84] & 0x40) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if (v4[84] < 0)
    {
      if (self->_isRobotResponse)
      {
        if (v4[82])
        {
          goto LABEL_63;
        }
      }

      else if (!v4[82])
      {
LABEL_63:
        v13 = 1;
        goto LABEL_61;
      }
    }

LABEL_60:
    v13 = 0;
    goto LABEL_61;
  }

  v13 = v4[84] >= 0;
LABEL_61:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_modelId;
    *(v5 + 84) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 60) = self->_responseClassId;
  *(v5 + 84) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v5 + 56) = self->_replyTextId;
  *(v5 + 84) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v5 + 52) = self->_position;
    *(v5 + 84) |= 4u;
  }

LABEL_6:
  v8 = [(NSString *)self->_experimentId copyWithZone:a3];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v10 = [(NSString *)self->_treatmentId copyWithZone:a3];
  v11 = *(v6 + 64);
  *(v6 + 64) = v10;

  v12 = [(NSString *)self->_treatmentModelName copyWithZone:a3];
  v13 = *(v6 + 72);
  *(v6 + 72) = v12;

  v14 = [(NSString *)self->_hostProcess copyWithZone:a3];
  v15 = *(v6 + 24);
  *(v6 + 24) = v14;

  v16 = [(NSString *)self->_locale copyWithZone:a3];
  v17 = *(v6 + 40);
  *(v6 + 40) = v16;

  v18 = [(NSString *)self->_lang copyWithZone:a3];
  v19 = *(v6 + 32);
  *(v6 + 32) = v18;

  v20 = self->_has;
  if ((v20 & 0x20) != 0)
  {
    *(v6 + 80) = self->_isApricotDevice;
    *(v6 + 84) |= 0x20u;
    v20 = self->_has;
    if ((v20 & 1) == 0)
    {
LABEL_8:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      *(v6 + 81) = self->_isCustomResponse;
      *(v6 + 84) |= 0x40u;
      if ((*&self->_has & 0x80) == 0)
      {
        return v6;
      }

LABEL_18:
      *(v6 + 82) = self->_isRobotResponse;
      *(v6 + 84) |= 0x80u;
      return v6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

  *(v6 + 8) = self->_ageGroup;
  *(v6 + 84) |= 1u;
  v20 = self->_has;
  if ((v20 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v20 < 0)
  {
    goto LABEL_18;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[12] = self->_modelId;
    *(v4 + 84) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v4[15] = self->_responseClassId;
  *(v4 + 84) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  v4[14] = self->_replyTextId;
  *(v4 + 84) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v4[13] = self->_position;
    *(v4 + 84) |= 4u;
  }

LABEL_6:
  v7 = v4;
  if (self->_experimentId)
  {
    [v4 setExperimentId:?];
    v4 = v7;
  }

  if (self->_treatmentId)
  {
    [v7 setTreatmentId:?];
    v4 = v7;
  }

  if (self->_treatmentModelName)
  {
    [v7 setTreatmentModelName:?];
    v4 = v7;
  }

  if (self->_hostProcess)
  {
    [v7 setHostProcess:?];
    v4 = v7;
  }

  if (self->_locale)
  {
    [v7 setLocale:?];
    v4 = v7;
  }

  if (self->_lang)
  {
    [v7 setLang:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(v4 + 80) = self->_isApricotDevice;
    *(v4 + 84) |= 0x20u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_20:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_21;
      }

LABEL_31:
      *(v4 + 81) = self->_isCustomResponse;
      *(v4 + 84) |= 0x40u;
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_20;
  }

  v4[2] = self->_ageGroup;
  *(v4 + 84) |= 1u;
  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_32:
  *(v4 + 82) = self->_isRobotResponse;
  *(v4 + 84) |= 0x80u;
LABEL_22:
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    modelId = self->_modelId;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  responseClassId = self->_responseClassId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  replyTextId = self->_replyTextId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    position = self->_position;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
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
  if ((v6 & 0x20) != 0)
  {
    isApricotDevice = self->_isApricotDevice;
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_20:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_21;
      }

LABEL_31:
      isCustomResponse = self->_isCustomResponse;
      PBDataWriterWriteBOOLField();
      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_20;
  }

  ageGroup = self->_ageGroup;
  PBDataWriterWriteInt32Field();
  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_32:
  isRobotResponse = self->_isRobotResponse;
  PBDataWriterWriteBOOLField();
LABEL_22:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_modelId];
    [v3 setObject:v14 forKey:@"model_id"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_responseClassId];
  [v3 setObject:v15 forKey:@"response_class_id"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_replyTextId];
  [v3 setObject:v16 forKey:@"reply_text_id"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_position];
    [v3 setObject:v5 forKey:@"position"];
  }

LABEL_6:
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [v3 setObject:experimentId forKey:@"experiment_id"];
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [v3 setObject:treatmentId forKey:@"treatment_id"];
  }

  treatmentModelName = self->_treatmentModelName;
  if (treatmentModelName)
  {
    [v3 setObject:treatmentModelName forKey:@"treatment_model_name"];
  }

  hostProcess = self->_hostProcess;
  if (hostProcess)
  {
    [v3 setObject:hostProcess forKey:@"host_process"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
  }

  lang = self->_lang;
  if (lang)
  {
    [v3 setObject:lang forKey:@"lang"];
  }

  v12 = self->_has;
  if ((v12 & 0x20) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isApricotDevice];
    [v3 setObject:v17 forKey:@"is_apricot_device"];

    v12 = self->_has;
    if ((v12 & 1) == 0)
    {
LABEL_20:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_21;
      }

LABEL_34:
      v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCustomResponse];
      [v3 setObject:v20 forKey:@"is_custom_response"];

      if ((*&self->_has & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_20;
  }

  ageGroup = self->_ageGroup;
  if (ageGroup >= 7)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ageGroup];
  }

  else
  {
    v19 = off_279ABB008[ageGroup];
  }

  [v3 setObject:v19 forKey:@"age_group"];

  v12 = self->_has;
  if ((v12 & 0x40) != 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_35:
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_isRobotResponse];
  [v3 setObject:v21 forKey:@"is_robot_response"];

LABEL_22:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREAMResponseItem;
  v4 = [(PREAMResponseItem *)&v8 description];
  v5 = [(PREAMResponseItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIsRobotResponse:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasIsCustomResponse:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)StringAsAgeGroup:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GROUP_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GROUP_0TO18"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GROUP_19TO30"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GROUP_31TO50"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GROUP_51TO65"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"GROUP_66TO75"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GROUP_76UP"])
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

- (void)setHasIsApricotDevice:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasPosition:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasReplyTextId:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasResponseClassId:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasModelId:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end