@interface PCPClusterEmbeddingActivity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPClusterEmbeddingActivity

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPClusterEmbeddingActivity;
  v4 = [(PCPClusterEmbeddingActivity *)&v8 description];
  v5 = [(PCPClusterEmbeddingActivity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  activityType = self->_activityType;
  if (activityType)
  {
    [v3 setObject:activityType forKey:@"activityType"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_hkObjectUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_activityType)
  {
    [v4 setActivityType:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_startTimeCFAbsolute;
    *(v4 + 40) |= 1u;
  }

  if (self->_hkObjectUUID)
  {
    [v5 setHkObjectUUID:?];
    v4 = v5;
  }

  if (self->_sourceBundleIdentifier)
  {
    [v5 setSourceBundleIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_activityType copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_startTimeCFAbsolute;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSData *)self->_hkObjectUUID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  activityType = self->_activityType;
  if (activityType | *(v4 + 2))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v6 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_startTimeCFAbsolute != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  hkObjectUUID = self->_hkObjectUUID;
  if (hkObjectUUID | *(v4 + 3) && ![(NSData *)hkObjectUUID isEqual:?])
  {
    goto LABEL_13;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(PCPClusterEmbeddingActivity *)self setActivityType:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_startTimeCFAbsolute = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PCPClusterEmbeddingActivity *)self setHkObjectUUID:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(PCPClusterEmbeddingActivity *)self setSourceBundleIdentifier:?];
    v4 = v5;
  }
}

@end