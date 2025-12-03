@interface PPM2FrustrationEvent
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)domain;
- (int)domain;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPM2FrustrationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(PPM2FrustrationEvent *)self setClientId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(PPM2FrustrationEvent *)self setBundleId:?];
    fromCopy = v5;
  }

  if (fromCopy[9])
  {
    self->_domain = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(PPM2FrustrationEvent *)self setActiveTreatments:?];
    fromCopy = v5;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  clientId = self->_clientId;
  if (clientId | *(equalCopy + 3))
  {
    if (![(NSString *)clientId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 2))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_domain != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_bundleId copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_domain;
    *(v5 + 36) |= 1u;
  }

  v10 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_clientId)
  {
    [toCopy setClientId:?];
    toCopy = v5;
  }

  if (self->_bundleId)
  {
    [v5 setBundleId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_domain;
    *(toCopy + 36) |= 1u;
  }

  if (self->_activeTreatments)
  {
    [v5 setActiveTreatments:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  clientId = self->_clientId;
  if (clientId)
  {
    [dictionary setObject:clientId forKey:@"clientId"];
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
      v8 = off_278976E68[domain];
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
  v8.super_class = PPM2FrustrationEvent;
  v4 = [(PPM2FrustrationEvent *)&v8 description];
  dictionaryRepresentation = [(PPM2FrustrationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:@"Topics"])
  {
    v4 = 0;
  }

  else if ([domainCopy isEqualToString:@"NamedEntities"])
  {
    v4 = 1;
  }

  else if ([domainCopy isEqualToString:@"Locations"])
  {
    v4 = 2;
  }

  else if ([domainCopy isEqualToString:@"Events"])
  {
    v4 = 3;
  }

  else if ([domainCopy isEqualToString:@"ContactsDomain"])
  {
    v4 = 4;
  }

  else if ([domainCopy isEqualToString:@"Connections"])
  {
    v4 = 5;
  }

  else if ([domainCopy isEqualToString:@"QuickTypeBroker"])
  {
    v4 = 6;
  }

  else if ([domainCopy isEqualToString:@"UniversalSearchSpotlightTopics"])
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
  if (options_once_19747 != -1)
  {
    dispatch_once(&options_once_19747, &__block_literal_global_19748);
  }

  v3 = options_sOptions_19749;

  return v3;
}

void __31__PPM2FrustrationEvent_options__block_invoke()
{
  v0 = options_sOptions_19749;
  options_sOptions_19749 = &unk_284785FF0;
}

@end