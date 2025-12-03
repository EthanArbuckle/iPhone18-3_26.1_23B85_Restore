@interface SISchemaLocation
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaLocation)initWithDictionary:(id)dictionary;
- (SISchemaLocation)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHorizontalAccuracyInMeters:(BOOL)meters;
- (void)setHasLongitude:(BOOL)longitude;
- (void)writeTo:(id)to;
@end

@implementation SISchemaLocation

- (SISchemaLocation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaLocation;
  v5 = [(SISchemaLocation *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"latitude"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(SISchemaLocation *)v5 setLatitude:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"longitude"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(SISchemaLocation *)v5 setLongitude:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"horizontalAccuracyInMeters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(SISchemaLocation *)v5 setHorizontalAccuracyInMeters:?];
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaLocation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaLocation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaLocation *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(SISchemaLocation *)self horizontalAccuracyInMeters];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"horizontalAccuracyInMeters"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x1E696AD98];
  [(SISchemaLocation *)self latitude];
  v11 = [v10 numberWithFloat:?];
  [dictionary setObject:v11 forKeyedSubscript:@"latitude"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = MEMORY[0x1E696AD98];
    [(SISchemaLocation *)self longitude];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"longitude"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    latitude = self->_latitude;
    if (latitude >= 0.0)
    {
      v6 = latitude;
    }

    else
    {
      v6 = -latitude;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    longitude = self->_longitude;
    if (longitude >= 0.0)
    {
      v11 = longitude;
    }

    else
    {
      v11 = -longitude;
    }

    *v2.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    horizontalAccuracyInMeters = self->_horizontalAccuracyInMeters;
    if (horizontalAccuracyInMeters >= 0.0)
    {
      v16 = horizontalAccuracyInMeters;
    }

    else
    {
      v16 = -horizontalAccuracyInMeters;
    }

    *v2.i64 = floor(v16 + 0.5);
    v17 = (v16 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v3, v2).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v14 += v17;
      }
    }

    else
    {
      v14 -= fabs(v17);
    }
  }

  else
  {
    v14 = 0;
  }

  return v9 ^ v4 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_13;
  }

  if (*&has)
  {
    latitude = self->_latitude;
    [equalCopy latitude];
    if (latitude != v8)
    {
      goto LABEL_13;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      longitude = self->_longitude;
      [equalCopy longitude];
      if (longitude != v11)
      {
        goto LABEL_13;
      }

      has = self->_has;
      v6 = equalCopy[20];
    }

    v12 = (*&has >> 2) & 1;
    if (v12 == ((v6 >> 2) & 1))
    {
      if (!v12 || (horizontalAccuracyInMeters = self->_horizontalAccuracyInMeters, [equalCopy horizontalAccuracyInMeters], horizontalAccuracyInMeters == v14))
      {
        v15 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_13:
  v15 = 0;
LABEL_14:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasHorizontalAccuracyInMeters:(BOOL)meters
{
  if (meters)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end