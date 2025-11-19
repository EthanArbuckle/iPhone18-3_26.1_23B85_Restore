@interface PPPBExperimentalGroup
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPPBExperimentalGroup

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(PPPBExperimentalGroup *)self setExperimentId:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(PPPBExperimentalGroup *)self setAbGroupIdentifier:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((experimentId = self->_experimentId, !(experimentId | v4[2])) || -[NSString isEqual:](experimentId, "isEqual:")))
  {
    abGroupIdentifier = self->_abGroupIdentifier;
    if (abGroupIdentifier | v4[1])
    {
      v7 = [(NSString *)abGroupIdentifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_experimentId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_abGroupIdentifier copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

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

  if (self->_abGroupIdentifier)
  {
    [v5 setAbGroupIdentifier:?];
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

  if (self->_abGroupIdentifier)
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
    [v3 setObject:experimentId forKey:@"experimentId"];
  }

  abGroupIdentifier = self->_abGroupIdentifier;
  if (abGroupIdentifier)
  {
    [v4 setObject:abGroupIdentifier forKey:@"abGroupIdentifier"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBExperimentalGroup;
  v4 = [(PPPBExperimentalGroup *)&v8 description];
  v5 = [(PPPBExperimentalGroup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end