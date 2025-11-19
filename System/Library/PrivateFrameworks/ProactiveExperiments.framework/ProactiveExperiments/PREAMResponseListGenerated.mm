@interface PREAMResponseListGenerated
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAgeGroup:(id)a3;
- (int)StringAsGenerationStatus:(id)a3;
- (int)ageGroup;
- (int)generationStatus;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasGenerationStatus:(BOOL)a3;
- (void)setHasIsApricotDevice:(BOOL)a3;
- (void)setHasIsCached:(BOOL)a3;
- (void)setHasNumberOfCustomResponses:(BOOL)a3;
- (void)setHasNumberOfResponsesGenerated:(BOOL)a3;
- (void)setHasNumberOfRobotResponses:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PREAMResponseListGenerated

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 92);
  if ((v5 & 0x40) != 0)
  {
    self->_isCached = *(v4 + 89);
    *&self->_has |= 0x40u;
    v5 = *(v4 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*(v4 + 92) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_generationStatus = *(v4 + 6);
  *&self->_has |= 2u;
  v5 = *(v4 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_numberOfResponsesGenerated = *(v4 + 15);
  *&self->_has |= 8u;
  v5 = *(v4 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_29:
  self->_numberOfCustomResponses = *(v4 + 14);
  *&self->_has |= 4u;
  if ((*(v4 + 92) & 0x10) != 0)
  {
LABEL_6:
    self->_numberOfRobotResponses = *(v4 + 16);
    *&self->_has |= 0x10u;
  }

LABEL_7:
  v7 = v4;
  if (*(v4 + 2))
  {
    [(PREAMResponseListGenerated *)self setExperimentId:?];
    v4 = v7;
  }

  if (*(v4 + 9))
  {
    [(PREAMResponseListGenerated *)self setTreatmentId:?];
    v4 = v7;
  }

  if (*(v4 + 10))
  {
    [(PREAMResponseListGenerated *)self setTreatmentModelName:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(PREAMResponseListGenerated *)self setHostProcess:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(PREAMResponseListGenerated *)self setLocale:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(PREAMResponseListGenerated *)self setLang:?];
    v4 = v7;
  }

  v6 = *(v4 + 92);
  if ((v6 & 0x20) != 0)
  {
    self->_isApricotDevice = *(v4 + 88);
    *&self->_has |= 0x20u;
    v6 = *(v4 + 92);
  }

  if (v6)
  {
    self->_ageGroup = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x40) != 0)
  {
    v17 = 2654435761 * self->_isCached;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v15 = 2654435761 * self->_generationStatus;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v3 = 2654435761 * self->_numberOfResponsesGenerated;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = 2654435761 * self->_numberOfCustomResponses;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_numberOfRobotResponses;
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  v6 = [(NSString *)self->_experimentId hash];
  v7 = [(NSString *)self->_treatmentId hash];
  v8 = [(NSString *)self->_treatmentModelName hash];
  v9 = [(NSString *)self->_hostProcess hash];
  v10 = [(NSString *)self->_locale hash];
  v11 = [(NSString *)self->_lang hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v12 = 2654435761 * self->_isApricotDevice;
    if (*&self->_has)
    {
      goto LABEL_14;
    }

LABEL_16:
    v13 = 0;
    return v16 ^ v17 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v13 = 2654435761 * self->_ageGroup;
  return v16 ^ v17 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  v5 = *(v4 + 92);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 92) & 0x40) == 0)
    {
      goto LABEL_49;
    }

    v6 = *(v4 + 89);
    if (self->_isCached)
    {
      if ((*(v4 + 89) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(v4 + 89))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 92) & 0x40) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 92) & 2) == 0 || self->_generationStatus != *(v4 + 6))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 92) & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 92) & 8) == 0 || self->_numberOfResponsesGenerated != *(v4 + 15))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 92) & 8) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 92) & 4) == 0 || self->_numberOfCustomResponses != *(v4 + 14))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 92) & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 92) & 0x10) == 0 || self->_numberOfRobotResponses != *(v4 + 16))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 92) & 0x10) != 0)
  {
    goto LABEL_49;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(v4 + 2) && ![(NSString *)experimentId isEqual:?])
  {
    goto LABEL_49;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(v4 + 9))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_49;
    }
  }

  treatmentModelName = self->_treatmentModelName;
  if (treatmentModelName | *(v4 + 10))
  {
    if (![(NSString *)treatmentModelName isEqual:?])
    {
      goto LABEL_49;
    }
  }

  hostProcess = self->_hostProcess;
  if (hostProcess | *(v4 + 4))
  {
    if (![(NSString *)hostProcess isEqual:?])
    {
      goto LABEL_49;
    }
  }

  locale = self->_locale;
  if (locale | *(v4 + 6))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_49;
    }
  }

  lang = self->_lang;
  if (lang | *(v4 + 5))
  {
    if (![(NSString *)lang isEqual:?])
    {
      goto LABEL_49;
    }
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(v4 + 92) & 0x20) == 0)
    {
      goto LABEL_44;
    }

LABEL_49:
    v13 = 0;
    goto LABEL_50;
  }

  if ((*(v4 + 92) & 0x20) == 0)
  {
    goto LABEL_49;
  }

  v15 = *(v4 + 88);
  if (self->_isApricotDevice)
  {
    if ((*(v4 + 88) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_49;
  }

LABEL_44:
  v13 = (*(v4 + 92) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 92) & 1) == 0 || self->_ageGroup != *(v4 + 2))
    {
      goto LABEL_49;
    }

    v13 = 1;
  }

LABEL_50:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 89) = self->_isCached;
    *(v5 + 92) |= 0x40u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_generationStatus;
  *(v5 + 92) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 60) = self->_numberOfResponsesGenerated;
  *(v5 + 92) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  *(v5 + 56) = self->_numberOfCustomResponses;
  *(v5 + 92) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 64) = self->_numberOfRobotResponses;
    *(v5 + 92) |= 0x10u;
  }

LABEL_7:
  v8 = [(NSString *)self->_experimentId copyWithZone:a3];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v10 = [(NSString *)self->_treatmentId copyWithZone:a3];
  v11 = *(v6 + 72);
  *(v6 + 72) = v10;

  v12 = [(NSString *)self->_treatmentModelName copyWithZone:a3];
  v13 = *(v6 + 80);
  *(v6 + 80) = v12;

  v14 = [(NSString *)self->_hostProcess copyWithZone:a3];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  v16 = [(NSString *)self->_locale copyWithZone:a3];
  v17 = *(v6 + 48);
  *(v6 + 48) = v16;

  v18 = [(NSString *)self->_lang copyWithZone:a3];
  v19 = *(v6 + 40);
  *(v6 + 40) = v18;

  v20 = self->_has;
  if ((v20 & 0x20) != 0)
  {
    *(v6 + 88) = self->_isApricotDevice;
    *(v6 + 92) |= 0x20u;
    v20 = self->_has;
  }

  if (v20)
  {
    *(v6 + 8) = self->_ageGroup;
    *(v6 + 92) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v4[89] = self->_isCached;
    v4[92] |= 0x40u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_generationStatus;
  v4[92] |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 15) = self->_numberOfResponsesGenerated;
  v4[92] |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_29:
  *(v4 + 14) = self->_numberOfCustomResponses;
  v4[92] |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v4 + 16) = self->_numberOfRobotResponses;
    v4[92] |= 0x10u;
  }

LABEL_7:
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
    v4[88] = self->_isApricotDevice;
    v4[92] |= 0x20u;
    v6 = self->_has;
  }

  if (v6)
  {
    *(v4 + 2) = self->_ageGroup;
    v4[92] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    isCached = self->_isCached;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  generationStatus = self->_generationStatus;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  numberOfResponsesGenerated = self->_numberOfResponsesGenerated;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_29:
  numberOfCustomResponses = self->_numberOfCustomResponses;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    numberOfRobotResponses = self->_numberOfRobotResponses;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
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
  }

  if (v6)
  {
    ageGroup = self->_ageGroup;
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCached];
    [v3 setObject:v16 forKey:@"is_cached"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  generationStatus = self->_generationStatus;
  if (generationStatus >= 6)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_generationStatus];
  }

  else
  {
    v18 = off_279ABAE20[generationStatus];
  }

  [v3 setObject:v18 forKey:@"generation_status"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfResponsesGenerated];
  [v3 setObject:v20 forKey:@"number_of_responses_generated"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_35:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfCustomResponses];
  [v3 setObject:v21 forKey:@"number_of_custom_responses"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfRobotResponses];
    [v3 setObject:v5 forKey:@"number_of_robot_responses"];
  }

LABEL_7:
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
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isApricotDevice];
    [v3 setObject:v13 forKey:@"is_apricot_device"];

    v12 = self->_has;
  }

  if (v12)
  {
    ageGroup = self->_ageGroup;
    if (ageGroup >= 7)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ageGroup];
    }

    else
    {
      v15 = off_279ABAE50[ageGroup];
    }

    [v3 setObject:v15 forKey:@"age_group"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREAMResponseListGenerated;
  v4 = [(PREAMResponseListGenerated *)&v8 description];
  v5 = [(PREAMResponseListGenerated *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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

- (void)setHasNumberOfRobotResponses:(BOOL)a3
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

- (void)setHasNumberOfCustomResponses:(BOOL)a3
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

- (void)setHasNumberOfResponsesGenerated:(BOOL)a3
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

- (int)StringAsGenerationStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"STATUS_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CACHED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FALLBACK_TO_RK_NIL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FALLBACK_TO_RK_ERROR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ONLY_CANNED_QR_EMPTY_ARRAY"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasGenerationStatus:(BOOL)a3
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

- (void)setHasIsCached:(BOOL)a3
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

@end