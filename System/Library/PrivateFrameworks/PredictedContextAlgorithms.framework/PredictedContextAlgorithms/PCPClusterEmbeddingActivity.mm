@interface PCPClusterEmbeddingActivity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPClusterEmbeddingActivity

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPClusterEmbeddingActivity;
  v4 = [(PCPClusterEmbeddingActivity *)&v8 description];
  dictionaryRepresentation = [(PCPClusterEmbeddingActivity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  activityType = self->_activityType;
  if (activityType)
  {
    [dictionary setObject:activityType forKey:@"activityType"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTimeCFAbsolute];
    [v4 setObject:v6 forKey:@"startTimeCFAbsolute"];
  }

  hkObjectUUID = self->_hkObjectUUID;
  if (hkObjectUUID)
  {
    [v4 setObject:hkObjectUUID forKey:@"hkObjectUUID"];
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [v4 setObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_hkObjectUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_activityType)
  {
    [toCopy setActivityType:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_startTimeCFAbsolute;
    *(toCopy + 40) |= 1u;
  }

  if (self->_hkObjectUUID)
  {
    [v5 setHkObjectUUID:?];
    toCopy = v5;
  }

  if (self->_sourceBundleIdentifier)
  {
    [v5 setSourceBundleIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_activityType copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_startTimeCFAbsolute;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSData *)self->_hkObjectUUID copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  activityType = self->_activityType;
  if (activityType | *(equalCopy + 2))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_startTimeCFAbsolute != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  hkObjectUUID = self->_hkObjectUUID;
  if (hkObjectUUID | *(equalCopy + 3) && ![(NSData *)hkObjectUUID isEqual:?])
  {
    goto LABEL_13;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier | *(equalCopy + 4))
  {
    v9 = [(NSString *)sourceBundleIdentifier isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_activityType hash];
  if (*&self->_has)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    if (startTimeCFAbsolute < 0.0)
    {
      startTimeCFAbsolute = -startTimeCFAbsolute;
    }

    *v4.i64 = floor(startTimeCFAbsolute + 0.5);
    v8 = (startTimeCFAbsolute - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = v6 ^ v3;
  v11 = [(NSData *)self->_hkObjectUUID hash];
  return v10 ^ v11 ^ [(NSString *)self->_sourceBundleIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PCPClusterEmbeddingActivity *)self setActivityType:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_startTimeCFAbsolute = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PCPClusterEmbeddingActivity *)self setHkObjectUUID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(PCPClusterEmbeddingActivity *)self setSourceBundleIdentifier:?];
    fromCopy = v5;
  }
}

@end