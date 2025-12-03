@interface _SFPBAirport
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAirport)initWithDictionary:(id)dictionary;
- (_SFPBAirport)initWithFacade:(id)facade;
- (_SFPBAirport)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCity:(id)city;
- (void)setCode:(id)code;
- (void)setCountry:(id)country;
- (void)setCountryCode:(id)code;
- (void)setDistrict:(id)district;
- (void)setName:(id)name;
- (void)setPostalCode:(id)code;
- (void)setState:(id)state;
- (void)setStreet:(id)street;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAirport

- (_SFPBAirport)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAirport *)self init];
  if (v5)
  {
    code = [facadeCopy code];

    if (code)
    {
      code2 = [facadeCopy code];
      [(_SFPBAirport *)v5 setCode:code2];
    }

    timezone = [facadeCopy timezone];

    if (timezone)
    {
      v9 = [_SFPBTimeZone alloc];
      timezone2 = [facadeCopy timezone];
      v11 = [(_SFPBTimeZone *)v9 initWithNSTimeZone:timezone2];
      [(_SFPBAirport *)v5 setTimezone:v11];
    }

    location = [facadeCopy location];

    if (location)
    {
      v13 = [_SFPBLatLng alloc];
      location2 = [facadeCopy location];
      v15 = [(_SFPBLatLng *)v13 initWithFacade:location2];
      [(_SFPBAirport *)v5 setLocation:v15];
    }

    city = [facadeCopy city];

    if (city)
    {
      city2 = [facadeCopy city];
      [(_SFPBAirport *)v5 setCity:city2];
    }

    street = [facadeCopy street];

    if (street)
    {
      street2 = [facadeCopy street];
      [(_SFPBAirport *)v5 setStreet:street2];
    }

    district = [facadeCopy district];

    if (district)
    {
      district2 = [facadeCopy district];
      [(_SFPBAirport *)v5 setDistrict:district2];
    }

    state = [facadeCopy state];

    if (state)
    {
      state2 = [facadeCopy state];
      [(_SFPBAirport *)v5 setState:state2];
    }

    postalCode = [facadeCopy postalCode];

    if (postalCode)
    {
      postalCode2 = [facadeCopy postalCode];
      [(_SFPBAirport *)v5 setPostalCode:postalCode2];
    }

    countryCode = [facadeCopy countryCode];

    if (countryCode)
    {
      countryCode2 = [facadeCopy countryCode];
      [(_SFPBAirport *)v5 setCountryCode:countryCode2];
    }

    country = [facadeCopy country];

    if (country)
    {
      country2 = [facadeCopy country];
      [(_SFPBAirport *)v5 setCountry:country2];
    }

    name = [facadeCopy name];

    if (name)
    {
      name2 = [facadeCopy name];
      [(_SFPBAirport *)v5 setName:name2];
    }

    v32 = v5;
  }

  return v5;
}

- (_SFPBAirport)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = _SFPBAirport;
  v5 = [(_SFPBAirport *)&v34 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"code"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAirport *)v5 setCode:v7];
    }

    v33 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"timezone"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBTimeZone alloc] initWithDictionary:v8];
      [(_SFPBAirport *)v5 setTimezone:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBLatLng alloc] initWithDictionary:v10];
      [(_SFPBAirport *)v5 setLocation:v11];
    }

    v31 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"city"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBAirport *)v5 setCity:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"street"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBAirport *)v5 setStreet:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"district"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBAirport *)v5 setDistrict:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(_SFPBAirport *)v5 setState:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:{@"postalCode", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(_SFPBAirport *)v5 setPostalCode:v21];
    }

    v32 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBAirport *)v5 setCountryCode:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"country"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBAirport *)v5 setCountry:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBAirport *)v5 setName:v27];
    }

    v28 = v5;
  }

  return v5;
}

- (_SFPBAirport)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAirport *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAirport *)self dictionaryRepresentation];
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
  if (self->_city)
  {
    city = [(_SFPBAirport *)self city];
    v5 = [city copy];
    [dictionary setObject:v5 forKeyedSubscript:@"city"];
  }

  if (self->_code)
  {
    code = [(_SFPBAirport *)self code];
    v7 = [code copy];
    [dictionary setObject:v7 forKeyedSubscript:@"code"];
  }

  if (self->_country)
  {
    country = [(_SFPBAirport *)self country];
    v9 = [country copy];
    [dictionary setObject:v9 forKeyedSubscript:@"country"];
  }

  if (self->_countryCode)
  {
    countryCode = [(_SFPBAirport *)self countryCode];
    v11 = [countryCode copy];
    [dictionary setObject:v11 forKeyedSubscript:@"countryCode"];
  }

  if (self->_district)
  {
    district = [(_SFPBAirport *)self district];
    v13 = [district copy];
    [dictionary setObject:v13 forKeyedSubscript:@"district"];
  }

  if (self->_location)
  {
    location = [(_SFPBAirport *)self location];
    dictionaryRepresentation = [location dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"location"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"location"];
    }
  }

  if (self->_name)
  {
    name = [(_SFPBAirport *)self name];
    v18 = [name copy];
    [dictionary setObject:v18 forKeyedSubscript:@"name"];
  }

  if (self->_postalCode)
  {
    postalCode = [(_SFPBAirport *)self postalCode];
    v20 = [postalCode copy];
    [dictionary setObject:v20 forKeyedSubscript:@"postalCode"];
  }

  if (self->_state)
  {
    state = [(_SFPBAirport *)self state];
    v22 = [state copy];
    [dictionary setObject:v22 forKeyedSubscript:@"state"];
  }

  if (self->_street)
  {
    street = [(_SFPBAirport *)self street];
    v24 = [street copy];
    [dictionary setObject:v24 forKeyedSubscript:@"street"];
  }

  if (self->_timezone)
  {
    timezone = [(_SFPBAirport *)self timezone];
    dictionaryRepresentation2 = [timezone dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"timezone"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"timezone"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_code hash];
  v4 = [(_SFPBTimeZone *)self->_timezone hash]^ v3;
  v5 = [(_SFPBLatLng *)self->_location hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_city hash];
  v7 = [(NSString *)self->_street hash];
  v8 = v7 ^ [(NSString *)self->_district hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_state hash];
  v10 = [(NSString *)self->_postalCode hash];
  v11 = v10 ^ [(NSString *)self->_countryCode hash];
  v12 = v11 ^ [(NSString *)self->_country hash];
  return v9 ^ v12 ^ [(NSString *)self->_name hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  code = [(_SFPBAirport *)self code];
  code2 = [equalCopy code];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  code3 = [(_SFPBAirport *)self code];
  if (code3)
  {
    v8 = code3;
    code4 = [(_SFPBAirport *)self code];
    code5 = [equalCopy code];
    v11 = [code4 isEqual:code5];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self timezone];
  code2 = [equalCopy timezone];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  timezone = [(_SFPBAirport *)self timezone];
  if (timezone)
  {
    v13 = timezone;
    timezone2 = [(_SFPBAirport *)self timezone];
    timezone3 = [equalCopy timezone];
    v16 = [timezone2 isEqual:timezone3];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self location];
  code2 = [equalCopy location];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  location = [(_SFPBAirport *)self location];
  if (location)
  {
    v18 = location;
    location2 = [(_SFPBAirport *)self location];
    location3 = [equalCopy location];
    v21 = [location2 isEqual:location3];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self city];
  code2 = [equalCopy city];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  city = [(_SFPBAirport *)self city];
  if (city)
  {
    v23 = city;
    city2 = [(_SFPBAirport *)self city];
    city3 = [equalCopy city];
    v26 = [city2 isEqual:city3];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self street];
  code2 = [equalCopy street];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  street = [(_SFPBAirport *)self street];
  if (street)
  {
    v28 = street;
    street2 = [(_SFPBAirport *)self street];
    street3 = [equalCopy street];
    v31 = [street2 isEqual:street3];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self district];
  code2 = [equalCopy district];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  district = [(_SFPBAirport *)self district];
  if (district)
  {
    v33 = district;
    district2 = [(_SFPBAirport *)self district];
    district3 = [equalCopy district];
    v36 = [district2 isEqual:district3];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self state];
  code2 = [equalCopy state];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  state = [(_SFPBAirport *)self state];
  if (state)
  {
    v38 = state;
    state2 = [(_SFPBAirport *)self state];
    state3 = [equalCopy state];
    v41 = [state2 isEqual:state3];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self postalCode];
  code2 = [equalCopy postalCode];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  postalCode = [(_SFPBAirport *)self postalCode];
  if (postalCode)
  {
    v43 = postalCode;
    postalCode2 = [(_SFPBAirport *)self postalCode];
    postalCode3 = [equalCopy postalCode];
    v46 = [postalCode2 isEqual:postalCode3];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self countryCode];
  code2 = [equalCopy countryCode];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  countryCode = [(_SFPBAirport *)self countryCode];
  if (countryCode)
  {
    v48 = countryCode;
    countryCode2 = [(_SFPBAirport *)self countryCode];
    countryCode3 = [equalCopy countryCode];
    v51 = [countryCode2 isEqual:countryCode3];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self country];
  code2 = [equalCopy country];
  if ((code != 0) == (code2 == 0))
  {
    goto LABEL_56;
  }

  country = [(_SFPBAirport *)self country];
  if (country)
  {
    v53 = country;
    country2 = [(_SFPBAirport *)self country];
    country3 = [equalCopy country];
    v56 = [country2 isEqual:country3];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  code = [(_SFPBAirport *)self name];
  code2 = [equalCopy name];
  if ((code != 0) != (code2 == 0))
  {
    name = [(_SFPBAirport *)self name];
    if (!name)
    {

LABEL_60:
      v62 = 1;
      goto LABEL_58;
    }

    v58 = name;
    name2 = [(_SFPBAirport *)self name];
    name3 = [equalCopy name];
    v61 = [name2 isEqual:name3];

    if (v61)
    {
      goto LABEL_60;
    }
  }

  else
  {
LABEL_56:
  }

LABEL_57:
  v62 = 0;
LABEL_58:

  return v62;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  code = [(_SFPBAirport *)self code];
  if (code)
  {
    PBDataWriterWriteStringField();
  }

  timezone = [(_SFPBAirport *)self timezone];
  if (timezone)
  {
    PBDataWriterWriteSubmessage();
  }

  location = [(_SFPBAirport *)self location];
  if (location)
  {
    PBDataWriterWriteSubmessage();
  }

  city = [(_SFPBAirport *)self city];
  if (city)
  {
    PBDataWriterWriteStringField();
  }

  street = [(_SFPBAirport *)self street];
  if (street)
  {
    PBDataWriterWriteStringField();
  }

  district = [(_SFPBAirport *)self district];
  if (district)
  {
    PBDataWriterWriteStringField();
  }

  state = [(_SFPBAirport *)self state];
  if (state)
  {
    PBDataWriterWriteStringField();
  }

  postalCode = [(_SFPBAirport *)self postalCode];
  if (postalCode)
  {
    PBDataWriterWriteStringField();
  }

  countryCode = [(_SFPBAirport *)self countryCode];
  if (countryCode)
  {
    PBDataWriterWriteStringField();
  }

  country = [(_SFPBAirport *)self country];
  if (country)
  {
    PBDataWriterWriteStringField();
  }

  name = [(_SFPBAirport *)self name];
  if (name)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCountry:(id)country
{
  v4 = [country copy];
  country = self->_country;
  self->_country = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCountryCode:(id)code
{
  v4 = [code copy];
  countryCode = self->_countryCode;
  self->_countryCode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPostalCode:(id)code
{
  v4 = [code copy];
  postalCode = self->_postalCode;
  self->_postalCode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setState:(id)state
{
  v4 = [state copy];
  state = self->_state;
  self->_state = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDistrict:(id)district
{
  v4 = [district copy];
  district = self->_district;
  self->_district = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStreet:(id)street
{
  v4 = [street copy];
  street = self->_street;
  self->_street = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCity:(id)city
{
  v4 = [city copy];
  city = self->_city;
  self->_city = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCode:(id)code
{
  v4 = [code copy];
  code = self->_code;
  self->_code = v4;

  MEMORY[0x1EEE66BB8]();
}

@end