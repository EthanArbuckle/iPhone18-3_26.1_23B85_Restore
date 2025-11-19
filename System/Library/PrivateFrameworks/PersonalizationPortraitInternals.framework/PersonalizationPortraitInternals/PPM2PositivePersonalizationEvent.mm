@interface PPM2PositivePersonalizationEvent
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (int)domain;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPM2PositivePersonalizationEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(PPM2PositivePersonalizationEvent *)self setClientId:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PPM2PositivePersonalizationEvent *)self setBundleId:?];
    v4 = v5;
  }

  if (v4[9])
  {
    self->_domain = v4[8];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(PPM2PositivePersonalizationEvent *)self setActiveTreatments:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientId hash];
  v4 = [(NSString *)self->_bundleId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_domain;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_activeTreatments hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  clientId = self->_clientId;
  if (clientId | *(v4 + 3))
  {
    if (![(NSString *)clientId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_domain != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(v4 + 1))
  {
    v9 = [(NSString *)activeTreatments isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_domain;
    *(v5 + 36) |= 1u;
  }

  v10 = [(NSString *)self->_activeTreatments copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

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

  if (self->_bundleId)
  {
    [v5 setBundleId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_domain;
    *(v4 + 36) |= 1u;
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
  v6 = v4;
  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
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

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v4 setObject:bundleId forKey:@"bundleId"];
  }

  if (*&self->_has)
  {
    domain = self->_domain;
    if (domain >= 8)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_domain];
    }

    else
    {
      v8 = off_278979288[domain];
    }

    [v4 setObject:v8 forKey:@"domain"];
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
  v8.super_class = PPM2PositivePersonalizationEvent;
  v4 = [(PPM2PositivePersonalizationEvent *)&v8 description];
  v5 = [(PPM2PositivePersonalizationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Topics"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NamedEntities"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Locations"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Events"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ContactsDomain"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Connections"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"QuickTypeBroker"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"UniversalSearchSpotlightTopics"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)domain
{
  if (*&self->_has)
  {
    return self->_domain;
  }

  else
  {
    return 0;
  }
}

+ (id)options
{
  if (options_once_25873 != -1)
  {
    dispatch_once(&options_once_25873, &__block_literal_global_25874);
  }

  v3 = options_sOptions_25875;

  return v3;
}

void __43__PPM2PositivePersonalizationEvent_options__block_invoke()
{
  v0 = options_sOptions_25875;
  options_sOptions_25875 = &unk_284786068;
}

@end