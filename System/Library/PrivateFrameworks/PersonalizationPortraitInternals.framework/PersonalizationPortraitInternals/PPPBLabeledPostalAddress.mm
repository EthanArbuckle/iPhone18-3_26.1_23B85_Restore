@interface PPPBLabeledPostalAddress
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPPBLabeledPostalAddress

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(PPPBLabeledPostalAddress *)self setLabel:?];
  }

  if (fromCopy[7])
  {
    [(PPPBLabeledPostalAddress *)self setStreet:?];
  }

  if (fromCopy[9])
  {
    [(PPPBLabeledPostalAddress *)self setSubLocality:?];
  }

  if (fromCopy[1])
  {
    [(PPPBLabeledPostalAddress *)self setCity:?];
  }

  if (fromCopy[8])
  {
    [(PPPBLabeledPostalAddress *)self setSubAdministrativeArea:?];
  }

  if (fromCopy[6])
  {
    [(PPPBLabeledPostalAddress *)self setState:?];
  }

  if (fromCopy[5])
  {
    [(PPPBLabeledPostalAddress *)self setPostalCode:?];
  }

  if (fromCopy[2])
  {
    [(PPPBLabeledPostalAddress *)self setCountry:?];
  }

  if (fromCopy[3])
  {
    [(PPPBLabeledPostalAddress *)self setIsoCountryCode:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_label hash];
  v4 = [(NSString *)self->_street hash]^ v3;
  v5 = [(NSString *)self->_subLocality hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_city hash];
  v7 = [(NSString *)self->_subAdministrativeArea hash];
  v8 = v7 ^ [(NSString *)self->_state hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_postalCode hash];
  v10 = [(NSString *)self->_country hash];
  return v9 ^ v10 ^ [(NSString *)self->_isoCountryCode hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  label = self->_label;
  if (label | equalCopy[4])
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if (((street = self->_street, !(street | equalCopy[7])) || [(NSString *)street isEqual:?]) && ((subLocality = self->_subLocality, !(subLocality | equalCopy[9])) || [(NSString *)subLocality isEqual:?]) && ((city = self->_city, !(city | equalCopy[1])) || [(NSString *)city isEqual:?]) && ((subAdministrativeArea = self->_subAdministrativeArea, !(subAdministrativeArea | equalCopy[8])) || [(NSString *)subAdministrativeArea isEqual:?]) && ((state = self->_state, !(state | equalCopy[6])) || [(NSString *)state isEqual:?]) && ((postalCode = self->_postalCode, !(postalCode | equalCopy[5])) || [(NSString *)postalCode isEqual:?]) && ((country = self->_country, !(country | equalCopy[2])) || [(NSString *)country isEqual:?]))
  {
    isoCountryCode = self->_isoCountryCode;
    if (isoCountryCode | equalCopy[3])
    {
      v14 = [(NSString *)isoCountryCode isEqual:?];
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
LABEL_20:
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_label copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_street copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_subLocality copyWithZone:zone];
  v11 = v5[9];
  v5[9] = v10;

  v12 = [(NSString *)self->_city copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(NSString *)self->_subAdministrativeArea copyWithZone:zone];
  v15 = v5[8];
  v5[8] = v14;

  v16 = [(NSString *)self->_state copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSString *)self->_postalCode copyWithZone:zone];
  v19 = v5[5];
  v5[5] = v18;

  v20 = [(NSString *)self->_country copyWithZone:zone];
  v21 = v5[2];
  v5[2] = v20;

  v22 = [(NSString *)self->_isoCountryCode copyWithZone:zone];
  v23 = v5[3];
  v5[3] = v22;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_label)
  {
    [toCopy setLabel:?];
    toCopy = v5;
  }

  if (self->_street)
  {
    [v5 setStreet:?];
    toCopy = v5;
  }

  if (self->_subLocality)
  {
    [v5 setSubLocality:?];
    toCopy = v5;
  }

  if (self->_city)
  {
    [v5 setCity:?];
    toCopy = v5;
  }

  if (self->_subAdministrativeArea)
  {
    [v5 setSubAdministrativeArea:?];
    toCopy = v5;
  }

  if (self->_state)
  {
    [v5 setState:?];
    toCopy = v5;
  }

  if (self->_postalCode)
  {
    [v5 setPostalCode:?];
    toCopy = v5;
  }

  if (self->_country)
  {
    [v5 setCountry:?];
    toCopy = v5;
  }

  if (self->_isoCountryCode)
  {
    [v5 setIsoCountryCode:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_street)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_subLocality)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_subAdministrativeArea)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  street = self->_street;
  if (street)
  {
    [v4 setObject:street forKey:@"street"];
  }

  subLocality = self->_subLocality;
  if (subLocality)
  {
    [v4 setObject:subLocality forKey:@"subLocality"];
  }

  city = self->_city;
  if (city)
  {
    [v4 setObject:city forKey:@"city"];
  }

  subAdministrativeArea = self->_subAdministrativeArea;
  if (subAdministrativeArea)
  {
    [v4 setObject:subAdministrativeArea forKey:@"subAdministrativeArea"];
  }

  state = self->_state;
  if (state)
  {
    [v4 setObject:state forKey:@"state"];
  }

  postalCode = self->_postalCode;
  if (postalCode)
  {
    [v4 setObject:postalCode forKey:@"postalCode"];
  }

  country = self->_country;
  if (country)
  {
    [v4 setObject:country forKey:@"country"];
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode)
  {
    [v4 setObject:isoCountryCode forKey:@"isoCountryCode"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBLabeledPostalAddress;
  v4 = [(PPPBLabeledPostalAddress *)&v8 description];
  dictionaryRepresentation = [(PPPBLabeledPostalAddress *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end