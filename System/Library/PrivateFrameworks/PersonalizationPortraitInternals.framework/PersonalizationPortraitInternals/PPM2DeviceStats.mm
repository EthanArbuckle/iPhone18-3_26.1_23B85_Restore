@interface PPM2DeviceStats
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPM2DeviceStats

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(PPM2DeviceStats *)self setActiveTreatments:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    activeTreatments = self->_activeTreatments;
    if (activeTreatments | equalCopy[1])
    {
      v6 = [(NSString *)activeTreatments isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [to setActiveTreatments:activeTreatments];
  }
}

- (void)writeTo:(id)to
{
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [dictionary setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2DeviceStats;
  v4 = [(PPM2DeviceStats *)&v8 description];
  dictionaryRepresentation = [(PPM2DeviceStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

+ (id)options
{
  if (options_once_957 != -1)
  {
    dispatch_once(&options_once_957, &__block_literal_global_958);
  }

  v3 = options_sOptions_959;

  return v3;
}

void __26__PPM2DeviceStats_options__block_invoke()
{
  v0 = options_sOptions_959;
  options_sOptions_959 = &unk_284785E60;
}

@end