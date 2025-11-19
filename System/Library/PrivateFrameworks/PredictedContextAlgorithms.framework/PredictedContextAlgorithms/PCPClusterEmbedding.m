@interface PCPClusterEmbedding
- (BOOL)isEqual:(id)a3;
- (PCPClusterEmbedding)initWithEmbedding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mapActivityContext:(id)a3 toEmbedding:(id)a4;
- (void)mapLocationContext:(id)a3 toEmbedding:(id)a4;
- (void)mapTimeContext:(id)a3 toEmbedding:(id)a4;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPClusterEmbedding

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPClusterEmbedding;
  v4 = [(PCPClusterEmbedding *)&v8 description];
  v5 = [(PCPClusterEmbedding *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  activityContext = self->_activityContext;
  if (activityContext)
  {
    v7 = [(PCPClusterEmbeddingActivity *)activityContext dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"activityContext"];
  }

  locationContext = self->_locationContext;
  if (locationContext)
  {
    v9 = [(PCPClusterEmbeddingLocation *)locationContext dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"locationContext"];
  }

  timeContext = self->_timeContext;
  if (timeContext)
  {
    v11 = [(PCPClusterEmbeddingTime *)timeContext dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"timeContext"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_activityContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_locationContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_timeContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_activityContext)
  {
    [v5 setActivityContext:?];
    v4 = v5;
  }

  if (self->_locationContext)
  {
    [v5 setLocationContext:?];
    v4 = v5;
  }

  if (self->_timeContext)
  {
    [v5 setTimeContext:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PCPClusterEmbeddingActivity *)self->_activityContext copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(PCPClusterEmbeddingLocation *)self->_locationContext copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(PCPClusterEmbeddingTime *)self->_timeContext copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((activityContext = self->_activityContext, !(activityContext | v4[1])) || -[PCPClusterEmbeddingActivity isEqual:](activityContext, "isEqual:")) && ((locationContext = self->_locationContext, !(locationContext | v4[3])) || -[PCPClusterEmbeddingLocation isEqual:](locationContext, "isEqual:")))
  {
    timeContext = self->_timeContext;
    if (timeContext | v4[4])
    {
      v9 = [(PCPClusterEmbeddingTime *)timeContext isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(PCPClusterEmbeddingActivity *)self->_activityContext hash]^ v3;
  v5 = [(PCPClusterEmbeddingLocation *)self->_locationContext hash];
  return v4 ^ v5 ^ [(PCPClusterEmbeddingTime *)self->_timeContext hash];
}

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  if (v10[2])
  {
    [(PCPClusterEmbedding *)self setIdentifier:?];
  }

  activityContext = self->_activityContext;
  v5 = v10[1];
  if (activityContext)
  {
    if (v5)
    {
      [(PCPClusterEmbeddingActivity *)activityContext mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PCPClusterEmbedding *)self setActivityContext:?];
  }

  locationContext = self->_locationContext;
  v7 = v10[3];
  if (locationContext)
  {
    if (v7)
    {
      [(PCPClusterEmbeddingLocation *)locationContext mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PCPClusterEmbedding *)self setLocationContext:?];
  }

  timeContext = self->_timeContext;
  v9 = v10[4];
  if (timeContext)
  {
    if (v9)
    {
      [(PCPClusterEmbeddingTime *)timeContext mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PCPClusterEmbedding *)self setTimeContext:?];
  }
}

- (PCPClusterEmbedding)initWithEmbedding:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(PCPClusterEmbedding);
    v6 = [v4 bundleIdentifier];
    v7 = [v6 UUIDString];
    [(PCPClusterEmbedding *)v5 setIdentifier:v7];

    v8 = [v4 activityContextEmbedding];
    [(PCPClusterEmbedding *)self mapActivityContext:v8 toEmbedding:v5];

    v9 = [v4 locationContextEmbedding];
    [(PCPClusterEmbedding *)self mapLocationContext:v9 toEmbedding:v5];

    v10 = [v4 timeContextEmbedding];

    [(PCPClusterEmbedding *)self mapTimeContext:v10 toEmbedding:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mapActivityContext:(id)a3 toEmbedding:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_alloc_init(PCPClusterEmbeddingActivity);
    v8 = [v5 objectForKeyedSubscript:@"activityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PCPClusterEmbeddingActivity *)v7 setActivityType:v8];
    }

    v9 = [v5 objectForKeyedSubscript:@"sourceBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PCPClusterEmbeddingActivity *)v7 setSourceBundleIdentifier:v9];
    }

    v10 = [v5 objectForKeyedSubscript:@"hkObjectUUID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
      v15[0] = 0;
      v15[1] = 0;
      [v11 getUUIDBytes:v15];
      v12 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:16];
      [(PCPClusterEmbeddingActivity *)v7 setHkObjectUUID:v12];
    }

    v13 = [v5 objectForKeyedSubscript:@"startTimeCFAbsolute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(PCPClusterEmbeddingActivity *)v7 setStartTimeCFAbsolute:?];
    }

    if ([(PCPClusterEmbeddingActivity *)v7 hasActivityType]|| [(PCPClusterEmbeddingActivity *)v7 hasStartTimeCFAbsolute]|| [(PCPClusterEmbeddingActivity *)v7 hasSourceBundleIdentifier]|| [(PCPClusterEmbeddingActivity *)v7 hasHkObjectUUID])
    {
      [v6 setActivityContext:v7];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)mapLocationContext:(id)a3 toEmbedding:(id)a4
{
  v12 = a3;
  v5 = a4;
  if (v12)
  {
    v6 = objc_alloc_init(PCPClusterEmbeddingLocation);
    v7 = [v12 objectForKeyedSubscript:@"placeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PCPClusterEmbeddingLocation *)v6 setPlaceName:v7];
    }

    v8 = [v12 objectForKeyedSubscript:@"combinedPlaceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PCPClusterEmbeddingLocation *)v6 setPlaceType:v8];
    }

    v9 = objc_alloc_init(PCPLocation);
    v10 = [v12 objectForKeyedSubscript:@"placeLatitude"];
    [v10 doubleValue];
    [(PCPLocation *)v9 setLocationLatitudeDeg:?];

    v11 = [v12 objectForKeyedSubscript:@"placeLongitude"];
    [v11 doubleValue];
    [(PCPLocation *)v9 setLocationLongitudeDeg:?];

    [(PCPClusterEmbeddingLocation *)v6 setPlaceLocation:v9];
    if ([(PCPClusterEmbeddingLocation *)v6 hasPlaceName]|| [(PCPClusterEmbeddingLocation *)v6 hasPlaceType]|| [(PCPClusterEmbeddingLocation *)v6 hasPlaceLocation])
    {
      [v5 setLocationContext:v6];
    }
  }
}

- (void)mapTimeContext:(id)a3 toEmbedding:(id)a4
{
  v14 = a3;
  v5 = a4;
  if (v14)
  {
    v6 = objc_alloc_init(PCPClusterEmbeddingTime);
    v7 = [v14 objectForKeyedSubscript:@"normalizedDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setNormalizedDuration:?];
      [(PCPClusterEmbeddingTime *)v6 setHasNormalizedDuration:1];
    }

    v8 = [v14 objectForKeyedSubscript:@"timeOfDayCos"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setTimeOfDayCos:?];
      [(PCPClusterEmbeddingTime *)v6 setHasTimeOfDayCos:1];
    }

    v9 = [v14 objectForKeyedSubscript:@"timeOfDaySin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setTimeOfDaySin:?];
      [(PCPClusterEmbeddingTime *)v6 setHasTimeOfDaySin:1];
    }

    v10 = [v14 objectForKeyedSubscript:@"dayOfWeekCos"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setDayOfWeekCos:?];
      [(PCPClusterEmbeddingTime *)v6 setHasDayOfWeekCos:1];
    }

    v11 = [v14 objectForKeyedSubscript:@"dayOfWeekSin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setDayOfWeekSin:?];
      [(PCPClusterEmbeddingTime *)v6 setHasDayOfWeekSin:1];
    }

    v12 = [v14 objectForKeyedSubscript:@"isWeekend"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PCPClusterEmbeddingTime setIsWeekend:](v6, "setIsWeekend:", [v12 BOOLValue]);
      [(PCPClusterEmbeddingTime *)v6 setHasIsWeekend:1];
    }

    v13 = [v14 objectForKeyedSubscript:@"weekOfYear"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PCPClusterEmbeddingTime setWeekOfYear:](v6, "setWeekOfYear:", [v13 unsignedIntValue]);
      [(PCPClusterEmbeddingTime *)v6 setHasWeekOfYear:1];
    }

    if ([(PCPClusterEmbeddingTime *)v6 hasNormalizedDuration]|| [(PCPClusterEmbeddingTime *)v6 hasTimeOfDayCos]|| [(PCPClusterEmbeddingTime *)v6 hasTimeOfDaySin]|| [(PCPClusterEmbeddingTime *)v6 hasDayOfWeekCos]|| [(PCPClusterEmbeddingTime *)v6 hasDayOfWeekSin]|| [(PCPClusterEmbeddingTime *)v6 hasIsWeekend]|| [(PCPClusterEmbeddingTime *)v6 hasWeekOfYear])
    {
      [v5 setTimeContext:v6];
    }
  }
}

@end