@interface PREUMTrialExperiment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PREUMTrialExperiment

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(PREUMTrialExperiment *)self setExperimentId:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(PREUMTrialExperiment *)self setTreatmentId:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(PREUMTrialExperiment *)self setTreatmentModelName:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = [(NSString *)self->_treatmentId hash]^ v3;
  return v4 ^ [(NSString *)self->_treatmentModelName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((experimentId = self->_experimentId, !(experimentId | v4[1])) || -[NSString isEqual:](experimentId, "isEqual:")) && ((treatmentId = self->_treatmentId, !(treatmentId | v4[2])) || -[NSString isEqual:](treatmentId, "isEqual:")))
  {
    treatmentModelName = self->_treatmentModelName;
    if (treatmentModelName | v4[3])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_experimentId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_treatmentId copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_treatmentModelName copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_experimentId)
  {
    [v4 setExperimentId:?];
    v4 = v5;
  }

  if (self->_treatmentId)
  {
    [v5 setTreatmentId:?];
    v4 = v5;
  }

  if (self->_treatmentModelName)
  {
    [v5 setTreatmentModelName:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_experimentId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_treatmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_treatmentModelName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
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
  v5 = [(PREUMTrialExperiment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end