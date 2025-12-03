@interface VISObjectTrackingConfig
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VISObjectTrackingConfig)initWithDictionary:(id)dictionary;
- (VISObjectTrackingConfig)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VISObjectTrackingConfig

- (void)writeTo:(id)to
{
  toCopy = to;
  [(VISObjectTrackingConfig *)self confidence_for_cache_update];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(VISObjectTrackingConfig *)self max_tracked_object_count])
  {
    PBDataWriterWriteInt32Field();
  }

  [(VISObjectTrackingConfig *)self geo_distance_threshold];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISObjectTrackingConfig *)self reticle_padding];
  v6 = toCopy;
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v6 = toCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (confidence_for_cache_update = self->_confidence_for_cache_update, objc_msgSend(equalCopy, "confidence_for_cache_update"), confidence_for_cache_update == v6) && (max_tracked_object_count = self->_max_tracked_object_count, max_tracked_object_count == objc_msgSend(equalCopy, "max_tracked_object_count")) && (geo_distance_threshold = self->_geo_distance_threshold, objc_msgSend(equalCopy, "geo_distance_threshold"), geo_distance_threshold == v9))
  {
    reticle_padding = self->_reticle_padding;
    [equalCopy reticle_padding];
    v10 = reticle_padding == v13;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  confidence_for_cache_update = self->_confidence_for_cache_update;
  v5 = confidence_for_cache_update < 0.0;
  if (confidence_for_cache_update == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = confidence_for_cache_update;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  geo_distance_threshold = self->_geo_distance_threshold;
  v11 = geo_distance_threshold < 0.0;
  if (geo_distance_threshold == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = geo_distance_threshold;
    if (v11)
    {
      v12 = -v12;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v15 = 2654435761u * *v2.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v15 += v13;
      }
    }

    else
    {
      v15 -= fabs(v13);
    }
  }

  reticle_padding = self->_reticle_padding;
  v17 = reticle_padding < 0.0;
  if (reticle_padding == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v18 = reticle_padding;
    if (v17)
    {
      v18 = -v18;
    }

    *v2.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v21 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v3, v2).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v21 += v19;
      }
    }

    else
    {
      v21 -= fabs(v19);
    }
  }

  return (2654435761 * self->_max_tracked_object_count) ^ v9 ^ v15 ^ v21;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_confidence_for_cache_update != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(VISObjectTrackingConfig *)self confidence_for_cache_update];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"confidenceForCacheUpdate"];
  }

  if (self->_geo_distance_threshold != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(VISObjectTrackingConfig *)self geo_distance_threshold];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"geoDistanceThreshold"];
  }

  if (self->_max_tracked_object_count)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[VISObjectTrackingConfig max_tracked_object_count](self, "max_tracked_object_count")}];
    [dictionary setObject:v8 forKeyedSubscript:@"maxTrackedObjectCount"];
  }

  if (self->_reticle_padding != 0.0)
  {
    v9 = MEMORY[0x1E696AD98];
    [(VISObjectTrackingConfig *)self reticle_padding];
    v10 = [v9 numberWithFloat:?];
    [dictionary setObject:v10 forKeyedSubscript:@"reticlePadding"];
  }

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VISObjectTrackingConfig *)self dictionaryRepresentation];
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

- (VISObjectTrackingConfig)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VISObjectTrackingConfig *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VISObjectTrackingConfig)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = VISObjectTrackingConfig;
  v5 = [(VISObjectTrackingConfig *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"confidenceForCacheUpdate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(VISObjectTrackingConfig *)v5 setConfidence_for_cache_update:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"maxTrackedObjectCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISObjectTrackingConfig setMax_tracked_object_count:](v5, "setMax_tracked_object_count:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"geoDistanceThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(VISObjectTrackingConfig *)v5 setGeo_distance_threshold:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"reticlePadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(VISObjectTrackingConfig *)v5 setReticle_padding:?];
    }

    v10 = v5;
  }

  return v5;
}

@end