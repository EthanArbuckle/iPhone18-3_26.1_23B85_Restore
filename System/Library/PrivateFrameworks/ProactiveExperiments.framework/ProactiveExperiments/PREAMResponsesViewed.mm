@interface PREAMResponsesViewed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAgeGroup:(id)group;
- (int)ageGroup;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsApricotDevice:(BOOL)device;
- (void)setHasLastViewedIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation PREAMResponsesViewed

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 60) & 2) != 0)
  {
    self->_lastViewedIndex = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PREAMResponsesViewed *)self setExperimentId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(PREAMResponsesViewed *)self setTreatmentId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(PREAMResponsesViewed *)self setTreatmentModelName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(PREAMResponsesViewed *)self setHostProcess:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 60);
  if ((v5 & 4) != 0)
  {
    self->_isApricotDevice = *(fromCopy + 56);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 60);
  }

  if (v5)
  {
    self->_ageGroup = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_lastViewedIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_experimentId hash];
  v5 = [(NSString *)self->_treatmentId hash];
  v6 = [(NSString *)self->_treatmentModelName hash];
  v7 = [(NSString *)self->_hostProcess hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_isApricotDevice;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = 2654435761 * self->_ageGroup;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(equalCopy + 60);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_lastViewedIndex != *(equalCopy + 8))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_22;
  }

  experimentId = self->_experimentId;
  if (experimentId | *(equalCopy + 2) && ![(NSString *)experimentId isEqual:?])
  {
    goto LABEL_22;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId | *(equalCopy + 5))
  {
    if (![(NSString *)treatmentId isEqual:?])
    {
      goto LABEL_22;
    }
  }

  treatmentModelName = self->_treatmentModelName;
  if (treatmentModelName | *(equalCopy + 6))
  {
    if (![(NSString *)treatmentModelName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  hostProcess = self->_hostProcess;
  if (hostProcess | *(equalCopy + 3))
  {
    if (![(NSString *)hostProcess isEqual:?])
    {
      goto LABEL_22;
    }
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 60) & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 60) & 4) == 0)
  {
    goto LABEL_22;
  }

  v12 = *(equalCopy + 56);
  if (self->_isApricotDevice)
  {
    if ((*(equalCopy + 56) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_22;
  }

LABEL_17:
  v10 = (*(equalCopy + 60) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_ageGroup != *(equalCopy + 2))
    {
      goto LABEL_22;
    }

    v10 = 1;
  }

LABEL_23:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_lastViewedIndex;
    *(v5 + 60) |= 2u;
  }

  v7 = [(NSString *)self->_experimentId copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(NSString *)self->_treatmentModelName copyWithZone:zone];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = [(NSString *)self->_hostProcess copyWithZone:zone];
  v14 = *(v6 + 24);
  *(v6 + 24) = v13;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 56) = self->_isApricotDevice;
    *(v6 + 60) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_ageGroup;
    *(v6 + 60) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[8] = self->_lastViewedIndex;
    *(toCopy + 60) |= 2u;
  }

  v6 = toCopy;
  if (self->_experimentId)
  {
    [toCopy setExperimentId:?];
    toCopy = v6;
  }

  if (self->_treatmentId)
  {
    [v6 setTreatmentId:?];
    toCopy = v6;
  }

  if (self->_treatmentModelName)
  {
    [v6 setTreatmentModelName:?];
    toCopy = v6;
  }

  if (self->_hostProcess)
  {
    [v6 setHostProcess:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 56) = self->_isApricotDevice;
    *(toCopy + 60) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_ageGroup;
    *(toCopy + 60) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    lastViewedIndex = self->_lastViewedIndex;
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

  if (self->_treatmentModelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hostProcess)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    isApricotDevice = self->_isApricotDevice;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    ageGroup = self->_ageGroup;
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lastViewedIndex];
    [dictionary setObject:v4 forKey:@"last_viewed_index"];
  }

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

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_isApricotDevice];
    [dictionary setObject:v10 forKey:@"is_apricot_device"];

    has = self->_has;
  }

  if (has)
  {
    ageGroup = self->_ageGroup;
    if (ageGroup >= 7)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ageGroup];
    }

    else
    {
      v12 = *(&off_279ABAC48 + ageGroup);
    }

    [dictionary setObject:v12 forKey:@"age_group"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREAMResponsesViewed;
  v4 = [(PREAMResponsesViewed *)&v8 description];
  dictionaryRepresentation = [(PREAMResponsesViewed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLastViewedIndex:(BOOL)index
{
  if (index)
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