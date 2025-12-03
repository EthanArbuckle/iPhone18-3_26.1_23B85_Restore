@interface PCPClusterEmbedding
- (BOOL)isEqual:(id)equal;
- (PCPClusterEmbedding)initWithEmbedding:(id)embedding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mapActivityContext:(id)context toEmbedding:(id)embedding;
- (void)mapLocationContext:(id)context toEmbedding:(id)embedding;
- (void)mapTimeContext:(id)context toEmbedding:(id)embedding;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPClusterEmbedding

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPClusterEmbedding;
  v4 = [(PCPClusterEmbedding *)&v8 description];
  dictionaryRepresentation = [(PCPClusterEmbedding *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  activityContext = self->_activityContext;
  if (activityContext)
  {
    dictionaryRepresentation = [(PCPClusterEmbeddingActivity *)activityContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"activityContext"];
  }

  locationContext = self->_locationContext;
  if (locationContext)
  {
    dictionaryRepresentation2 = [(PCPClusterEmbeddingLocation *)locationContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"locationContext"];
  }

  timeContext = self->_timeContext;
  if (timeContext)
  {
    dictionaryRepresentation3 = [(PCPClusterEmbeddingTime *)timeContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"timeContext"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_activityContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_locationContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_timeContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_activityContext)
  {
    [v5 setActivityContext:?];
    toCopy = v5;
  }

  if (self->_locationContext)
  {
    [v5 setLocationContext:?];
    toCopy = v5;
  }

  if (self->_timeContext)
  {
    [v5 setTimeContext:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PCPClusterEmbeddingActivity *)self->_activityContext copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(PCPClusterEmbeddingLocation *)self->_locationContext copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(PCPClusterEmbeddingTime *)self->_timeContext copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((activityContext = self->_activityContext, !(activityContext | equalCopy[1])) || -[PCPClusterEmbeddingActivity isEqual:](activityContext, "isEqual:")) && ((locationContext = self->_locationContext, !(locationContext | equalCopy[3])) || -[PCPClusterEmbeddingLocation isEqual:](locationContext, "isEqual:")))
  {
    timeContext = self->_timeContext;
    if (timeContext | equalCopy[4])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(PCPClusterEmbedding *)self setIdentifier:?];
  }

  activityContext = self->_activityContext;
  v5 = fromCopy[1];
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
  v7 = fromCopy[3];
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
  v9 = fromCopy[4];
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

- (PCPClusterEmbedding)initWithEmbedding:(id)embedding
{
  if (embedding)
  {
    embeddingCopy = embedding;
    v5 = objc_alloc_init(PCPClusterEmbedding);
    bundleIdentifier = [embeddingCopy bundleIdentifier];
    uUIDString = [bundleIdentifier UUIDString];
    [(PCPClusterEmbedding *)v5 setIdentifier:uUIDString];

    activityContextEmbedding = [embeddingCopy activityContextEmbedding];
    [(PCPClusterEmbedding *)self mapActivityContext:activityContextEmbedding toEmbedding:v5];

    locationContextEmbedding = [embeddingCopy locationContextEmbedding];
    [(PCPClusterEmbedding *)self mapLocationContext:locationContextEmbedding toEmbedding:v5];

    timeContextEmbedding = [embeddingCopy timeContextEmbedding];

    [(PCPClusterEmbedding *)self mapTimeContext:timeContextEmbedding toEmbedding:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mapActivityContext:(id)context toEmbedding:(id)embedding
{
  v15[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  embeddingCopy = embedding;
  if (contextCopy)
  {
    v7 = objc_alloc_init(PCPClusterEmbeddingActivity);
    v8 = [contextCopy objectForKeyedSubscript:@"activityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PCPClusterEmbeddingActivity *)v7 setActivityType:v8];
    }

    v9 = [contextCopy objectForKeyedSubscript:@"sourceBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PCPClusterEmbeddingActivity *)v7 setSourceBundleIdentifier:v9];
    }

    v10 = [contextCopy objectForKeyedSubscript:@"hkObjectUUID"];
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

    v13 = [contextCopy objectForKeyedSubscript:@"startTimeCFAbsolute"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(PCPClusterEmbeddingActivity *)v7 setStartTimeCFAbsolute:?];
    }

    if ([(PCPClusterEmbeddingActivity *)v7 hasActivityType]|| [(PCPClusterEmbeddingActivity *)v7 hasStartTimeCFAbsolute]|| [(PCPClusterEmbeddingActivity *)v7 hasSourceBundleIdentifier]|| [(PCPClusterEmbeddingActivity *)v7 hasHkObjectUUID])
    {
      [embeddingCopy setActivityContext:v7];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)mapLocationContext:(id)context toEmbedding:(id)embedding
{
  contextCopy = context;
  embeddingCopy = embedding;
  if (contextCopy)
  {
    v6 = objc_alloc_init(PCPClusterEmbeddingLocation);
    v7 = [contextCopy objectForKeyedSubscript:@"placeName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PCPClusterEmbeddingLocation *)v6 setPlaceName:v7];
    }

    v8 = [contextCopy objectForKeyedSubscript:@"combinedPlaceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PCPClusterEmbeddingLocation *)v6 setPlaceType:v8];
    }

    v9 = objc_alloc_init(PCPLocation);
    v10 = [contextCopy objectForKeyedSubscript:@"placeLatitude"];
    [v10 doubleValue];
    [(PCPLocation *)v9 setLocationLatitudeDeg:?];

    v11 = [contextCopy objectForKeyedSubscript:@"placeLongitude"];
    [v11 doubleValue];
    [(PCPLocation *)v9 setLocationLongitudeDeg:?];

    [(PCPClusterEmbeddingLocation *)v6 setPlaceLocation:v9];
    if ([(PCPClusterEmbeddingLocation *)v6 hasPlaceName]|| [(PCPClusterEmbeddingLocation *)v6 hasPlaceType]|| [(PCPClusterEmbeddingLocation *)v6 hasPlaceLocation])
    {
      [embeddingCopy setLocationContext:v6];
    }
  }
}

- (void)mapTimeContext:(id)context toEmbedding:(id)embedding
{
  contextCopy = context;
  embeddingCopy = embedding;
  if (contextCopy)
  {
    v6 = objc_alloc_init(PCPClusterEmbeddingTime);
    v7 = [contextCopy objectForKeyedSubscript:@"normalizedDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setNormalizedDuration:?];
      [(PCPClusterEmbeddingTime *)v6 setHasNormalizedDuration:1];
    }

    v8 = [contextCopy objectForKeyedSubscript:@"timeOfDayCos"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setTimeOfDayCos:?];
      [(PCPClusterEmbeddingTime *)v6 setHasTimeOfDayCos:1];
    }

    v9 = [contextCopy objectForKeyedSubscript:@"timeOfDaySin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setTimeOfDaySin:?];
      [(PCPClusterEmbeddingTime *)v6 setHasTimeOfDaySin:1];
    }

    v10 = [contextCopy objectForKeyedSubscript:@"dayOfWeekCos"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setDayOfWeekCos:?];
      [(PCPClusterEmbeddingTime *)v6 setHasDayOfWeekCos:1];
    }

    v11 = [contextCopy objectForKeyedSubscript:@"dayOfWeekSin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(PCPClusterEmbeddingTime *)v6 setDayOfWeekSin:?];
      [(PCPClusterEmbeddingTime *)v6 setHasDayOfWeekSin:1];
    }

    v12 = [contextCopy objectForKeyedSubscript:@"isWeekend"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PCPClusterEmbeddingTime setIsWeekend:](v6, "setIsWeekend:", [v12 BOOLValue]);
      [(PCPClusterEmbeddingTime *)v6 setHasIsWeekend:1];
    }

    v13 = [contextCopy objectForKeyedSubscript:@"weekOfYear"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PCPClusterEmbeddingTime setWeekOfYear:](v6, "setWeekOfYear:", [v13 unsignedIntValue]);
      [(PCPClusterEmbeddingTime *)v6 setHasWeekOfYear:1];
    }

    if ([(PCPClusterEmbeddingTime *)v6 hasNormalizedDuration]|| [(PCPClusterEmbeddingTime *)v6 hasTimeOfDayCos]|| [(PCPClusterEmbeddingTime *)v6 hasTimeOfDaySin]|| [(PCPClusterEmbeddingTime *)v6 hasDayOfWeekCos]|| [(PCPClusterEmbeddingTime *)v6 hasDayOfWeekSin]|| [(PCPClusterEmbeddingTime *)v6 hasIsWeekend]|| [(PCPClusterEmbeddingTime *)v6 hasWeekOfYear])
    {
      [embeddingCopy setTimeContext:v6];
    }
  }
}

@end