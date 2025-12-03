@interface PREUMTrialExperiment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PREUMTrialExperiment

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(PREUMTrialExperiment *)self setExperimentId:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(PREUMTrialExperiment *)self setTreatmentId:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(PREUMTrialExperiment *)self setTreatmentModelName:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_treatmentId hash]^ v3;
  return v4 ^ [(NSString *)self->_treatmentModelName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((experimentId = self->_experimentId, !(experimentId | equalCopy[1])) || -[NSString isEqual:](experimentId, "isEqual:")) && ((treatmentId = self->_treatmentId, !(treatmentId | equalCopy[2])) || -[NSString isEqual:](treatmentId, "isEqual:")))
  {
    treatmentModelName = self->_treatmentModelName;
    if (treatmentModelName | equalCopy[3])
    {
      v8 = [(NSString *)treatmentModelName isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_experimentId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_treatmentId copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_treatmentModelName copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_experimentId)
  {
    [toCopy setExperimentId:?];
    toCopy = v5;
  }

  if (self->_treatmentId)
  {
    [v5 setTreatmentId:?];
    toCopy = v5;
  }

  if (self->_treatmentModelName)
  {
    [v5 setTreatmentModelName:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_treatmentModelName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
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

  treatmentModelName = self->_treatmentModelName;
  if (treatmentModelName)
  {
    [v4 setObject:treatmentModelName forKey:@"treatment_model_name"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PREUMTrialExperiment;
  v4 = [(PREUMTrialExperiment *)&v8 description];
  dictionaryRepresentation = [(PREUMTrialExperiment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end