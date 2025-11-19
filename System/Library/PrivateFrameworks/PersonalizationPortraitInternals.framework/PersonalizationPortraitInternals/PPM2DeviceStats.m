@interface PPM2DeviceStats
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2DeviceStats

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(PPM2DeviceStats *)self setActiveTreatments:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    activeTreatments = self->_activeTreatments;
    if (activeTreatments | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [a3 setActiveTreatments:activeTreatments];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v3 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2DeviceStats;
  v4 = [(PPM2DeviceStats *)&v8 description];
  v5 = [(PPM2DeviceStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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