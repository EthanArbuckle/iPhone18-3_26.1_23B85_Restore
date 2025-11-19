@interface PPM2UnmappedMatchedFeedback
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2UnmappedMatchedFeedback

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(PPM2UnmappedMatchedFeedback *)self setClientId:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(PPM2UnmappedMatchedFeedback *)self setMappingId:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(PPM2UnmappedMatchedFeedback *)self setActiveTreatments:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientId hash];
  v4 = [(NSString *)self->_mappingId hash]^ v3;
  return v4 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((clientId = self->_clientId, !(clientId | v4[2])) || -[NSString isEqual:](clientId, "isEqual:")) && ((mappingId = self->_mappingId, !(mappingId | v4[3])) || -[NSString isEqual:](mappingId, "isEqual:")))
  {
    activeTreatments = self->_activeTreatments;
    if (activeTreatments | v4[1])
    {
      v8 = [(NSString *)activeTreatments isEqual:?];
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
  v6 = [(NSString *)self->_clientId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_mappingId copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_clientId)
  {
    [v4 setClientId:?];
    v4 = v5;
  }

  if (self->_mappingId)
  {
    [v5 setMappingId:?];
    v4 = v5;
  }

  if (self->_activeTreatments)
  {
    [v5 setActiveTreatments:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  clientId = self->_clientId;
  if (clientId)
  {
    [v3 setObject:clientId forKey:@"clientId"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [v4 setObject:mappingId forKey:@"mappingId"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v4 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2UnmappedMatchedFeedback;
  v4 = [(PPM2UnmappedMatchedFeedback *)&v8 description];
  v5 = [(PPM2UnmappedMatchedFeedback *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end