@interface PPPBLabeledPostalAddress
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PPPBLabeledPostalAddress

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    [(PPPBLabeledPostalAddress *)self setLabel:?];
  }

  if (v4[7])
  {
    [(PPPBLabeledPostalAddress *)self setStreet:?];
  }

  if (v4[9])
  {
    [(PPPBLabeledPostalAddress *)self setSubLocality:?];
  }

  if (v4[1])
  {
    [(PPPBLabeledPostalAddress *)self setCity:?];
  }

  if (v4[8])
  {
    [(PPPBLabeledPostalAddress *)self setSubAdministrativeArea:?];
  }

  if (v4[6])
  {
    [(PPPBLabeledPostalAddress *)self setState:?];
  }

  if (v4[5])
  {
    [(PPPBLabeledPostalAddress *)self setPostalCode:?];
  }

  if (v4[2])
  {
    [(PPPBLabeledPostalAddress *)self setCountry:?];
  }

  if (v4[3])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  label = self->_label;
  if (label | v4[4])
  {
    if (![(NSString *)label isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if (((street = self->_street, !(street | v4[7])) || [(NSString *)street isEqual:?]) && ((subLocality = self->_subLocality, !(subLocality | v4[9])) || [(NSString *)subLocality isEqual:?]) && ((city = self->_city, !(city | v4[1])) || [(NSString *)city isEqual:?]) && ((subAdministrativeArea = self->_subAdministrativeArea, !(subAdministrativeArea | v4[8])) || [(NSString *)subAdministrativeArea isEqual:?]) && ((state = self->_state, !(state | v4[6])) || [(NSString *)state isEqual:?]) && ((postalCode = self->_postalCode, !(postalCode | v4[5])) || [(NSString *)postalCode isEqual:?]) && ((country = self->_country, !(country | v4[2])) || [(NSString *)country isEqual:?]))
  {
    isoCountryCode = self->_isoCountryCode;
    if (isoCountryCode | v4[3])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_label copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_street copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_subLocality copyWithZone:a3];
  v11 = v5[9];
  v5[9] = v10;

  v12 = [(NSString *)self->_city copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(NSString *)self->_subAdministrativeArea copyWithZone:a3];
  v15 = v5[8];
  v5[8] = v14;

  v16 = [(NSString *)self->_state copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSString *)self->_postalCode copyWithZone:a3];
  v19 = v5[5];
  v5[5] = v18;

  v20 = [(NSString *)self->_country copyWithZone:a3];
  v21 = v5[2];
  v5[2] = v20;

  v22 = [(NSString *)self->_isoCountryCode copyWithZone:a3];
  v23 = v5[3];
  v5[3] = v22;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_label)
  {
    [v4 setLabel:?];
    v4 = v5;
  }

  if (self->_street)
  {
    [v5 setStreet:?];
    v4 = v5;
  }

  if (self->_subLocality)
  {
    [v5 setSubLocality:?];
    v4 = v5;
  }

  if (self->_city)
  {
    [v5 setCity:?];
    v4 = v5;
  }

  if (self->_subAdministrativeArea)
  {
    [v5 setSubAdministrativeArea:?];
    v4 = v5;
  }

  if (self->_state)
  {
    [v5 setState:?];
    v4 = v5;
  }

  if (self->_postalCode)
  {
    [v5 setPostalCode:?];
    v4 = v5;
  }

  if (self->_country)
  {
    [v5 setCountry:?];
    v4 = v5;
  }

  if (self->_isoCountryCode)
  {
    [v5 setIsoCountryCode:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_street)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_subLocality)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_city)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_subAdministrativeArea)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_state)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_postalCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_country)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
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
  v5 = [(PPPBLabeledPostalAddress *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end