@interface _SFPBAirport
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAirport)initWithDictionary:(id)a3;
- (_SFPBAirport)initWithFacade:(id)a3;
- (_SFPBAirport)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setCity:(id)a3;
- (void)setCode:(id)a3;
- (void)setCountry:(id)a3;
- (void)setCountryCode:(id)a3;
- (void)setDistrict:(id)a3;
- (void)setName:(id)a3;
- (void)setPostalCode:(id)a3;
- (void)setState:(id)a3;
- (void)setStreet:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAirport

- (_SFPBAirport)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBAirport *)self init];
  if (v5)
  {
    v6 = [v4 code];

    if (v6)
    {
      v7 = [v4 code];
      [(_SFPBAirport *)v5 setCode:v7];
    }

    v8 = [v4 timezone];

    if (v8)
    {
      v9 = [_SFPBTimeZone alloc];
      v10 = [v4 timezone];
      v11 = [(_SFPBTimeZone *)v9 initWithNSTimeZone:v10];
      [(_SFPBAirport *)v5 setTimezone:v11];
    }

    v12 = [v4 location];

    if (v12)
    {
      v13 = [_SFPBLatLng alloc];
      v14 = [v4 location];
      v15 = [(_SFPBLatLng *)v13 initWithFacade:v14];
      [(_SFPBAirport *)v5 setLocation:v15];
    }

    v16 = [v4 city];

    if (v16)
    {
      v17 = [v4 city];
      [(_SFPBAirport *)v5 setCity:v17];
    }

    v18 = [v4 street];

    if (v18)
    {
      v19 = [v4 street];
      [(_SFPBAirport *)v5 setStreet:v19];
    }

    v20 = [v4 district];

    if (v20)
    {
      v21 = [v4 district];
      [(_SFPBAirport *)v5 setDistrict:v21];
    }

    v22 = [v4 state];

    if (v22)
    {
      v23 = [v4 state];
      [(_SFPBAirport *)v5 setState:v23];
    }

    v24 = [v4 postalCode];

    if (v24)
    {
      v25 = [v4 postalCode];
      [(_SFPBAirport *)v5 setPostalCode:v25];
    }

    v26 = [v4 countryCode];

    if (v26)
    {
      v27 = [v4 countryCode];
      [(_SFPBAirport *)v5 setCountryCode:v27];
    }

    v28 = [v4 country];

    if (v28)
    {
      v29 = [v4 country];
      [(_SFPBAirport *)v5 setCountry:v29];
    }

    v30 = [v4 name];

    if (v30)
    {
      v31 = [v4 name];
      [(_SFPBAirport *)v5 setName:v31];
    }

    v32 = v5;
  }

  return v5;
}

- (_SFPBAirport)initWithDictionary:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = _SFPBAirport;
  v5 = [(_SFPBAirport *)&v34 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"code"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAirport *)v5 setCode:v7];
    }

    v33 = v6;
    v8 = [v4 objectForKeyedSubscript:@"timezone"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBTimeZone alloc] initWithDictionary:v8];
      [(_SFPBAirport *)v5 setTimezone:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBLatLng alloc] initWithDictionary:v10];
      [(_SFPBAirport *)v5 setLocation:v11];
    }

    v31 = v10;
    v12 = [v4 objectForKeyedSubscript:@"city"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(_SFPBAirport *)v5 setCity:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"street"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBAirport *)v5 setStreet:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"district"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBAirport *)v5 setDistrict:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      [(_SFPBAirport *)v5 setState:v19];
    }

    v20 = [v4 objectForKeyedSubscript:{@"postalCode", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 copy];
      [(_SFPBAirport *)v5 setPostalCode:v21];
    }

    v32 = v8;
    v22 = [v4 objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBAirport *)v5 setCountryCode:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"country"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBAirport *)v5 setCountry:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"name"];
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

- (_SFPBAirport)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAirport *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAirport *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_city)
  {
    v4 = [(_SFPBAirport *)self city];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"city"];
  }

  if (self->_code)
  {
    v6 = [(_SFPBAirport *)self code];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"code"];
  }

  if (self->_country)
  {
    v8 = [(_SFPBAirport *)self country];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"country"];
  }

  if (self->_countryCode)
  {
    v10 = [(_SFPBAirport *)self countryCode];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"countryCode"];
  }

  if (self->_district)
  {
    v12 = [(_SFPBAirport *)self district];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"district"];
  }

  if (self->_location)
  {
    v14 = [(_SFPBAirport *)self location];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"location"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"location"];
    }
  }

  if (self->_name)
  {
    v17 = [(_SFPBAirport *)self name];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"name"];
  }

  if (self->_postalCode)
  {
    v19 = [(_SFPBAirport *)self postalCode];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"postalCode"];
  }

  if (self->_state)
  {
    v21 = [(_SFPBAirport *)self state];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"state"];
  }

  if (self->_street)
  {
    v23 = [(_SFPBAirport *)self street];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"street"];
  }

  if (self->_timezone)
  {
    v25 = [(_SFPBAirport *)self timezone];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"timezone"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"timezone"];
    }
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  v5 = [(_SFPBAirport *)self code];
  v6 = [v4 code];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v7 = [(_SFPBAirport *)self code];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBAirport *)self code];
    v10 = [v4 code];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self timezone];
  v6 = [v4 timezone];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v12 = [(_SFPBAirport *)self timezone];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBAirport *)self timezone];
    v15 = [v4 timezone];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v17 = [(_SFPBAirport *)self location];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBAirport *)self location];
    v20 = [v4 location];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self city];
  v6 = [v4 city];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v22 = [(_SFPBAirport *)self city];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBAirport *)self city];
    v25 = [v4 city];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self street];
  v6 = [v4 street];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v27 = [(_SFPBAirport *)self street];
  if (v27)
  {
    v28 = v27;
    v29 = [(_SFPBAirport *)self street];
    v30 = [v4 street];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self district];
  v6 = [v4 district];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v32 = [(_SFPBAirport *)self district];
  if (v32)
  {
    v33 = v32;
    v34 = [(_SFPBAirport *)self district];
    v35 = [v4 district];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self state];
  v6 = [v4 state];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v37 = [(_SFPBAirport *)self state];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBAirport *)self state];
    v40 = [v4 state];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self postalCode];
  v6 = [v4 postalCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v42 = [(_SFPBAirport *)self postalCode];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBAirport *)self postalCode];
    v45 = [v4 postalCode];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self countryCode];
  v6 = [v4 countryCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v47 = [(_SFPBAirport *)self countryCode];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBAirport *)self countryCode];
    v50 = [v4 countryCode];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self country];
  v6 = [v4 country];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v52 = [(_SFPBAirport *)self country];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBAirport *)self country];
    v55 = [v4 country];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAirport *)self name];
  v6 = [v4 name];
  if ((v5 != 0) != (v6 == 0))
  {
    v57 = [(_SFPBAirport *)self name];
    if (!v57)
    {

LABEL_60:
      v62 = 1;
      goto LABEL_58;
    }

    v58 = v57;
    v59 = [(_SFPBAirport *)self name];
    v60 = [v4 name];
    v61 = [v59 isEqual:v60];

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

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(_SFPBAirport *)self code];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBAirport *)self timezone];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBAirport *)self location];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBAirport *)self city];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBAirport *)self street];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(_SFPBAirport *)self district];
  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(_SFPBAirport *)self state];
  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  v11 = [(_SFPBAirport *)self postalCode];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBAirport *)self countryCode];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(_SFPBAirport *)self country];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  v14 = [(_SFPBAirport *)self name];
  if (v14)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCountry:(id)a3
{
  v4 = [a3 copy];
  country = self->_country;
  self->_country = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCountryCode:(id)a3
{
  v4 = [a3 copy];
  countryCode = self->_countryCode;
  self->_countryCode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPostalCode:(id)a3
{
  v4 = [a3 copy];
  postalCode = self->_postalCode;
  self->_postalCode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setState:(id)a3
{
  v4 = [a3 copy];
  state = self->_state;
  self->_state = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDistrict:(id)a3
{
  v4 = [a3 copy];
  district = self->_district;
  self->_district = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStreet:(id)a3
{
  v4 = [a3 copy];
  street = self->_street;
  self->_street = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCity:(id)a3
{
  v4 = [a3 copy];
  city = self->_city;
  self->_city = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCode:(id)a3
{
  v4 = [a3 copy];
  code = self->_code;
  self->_code = v4;

  MEMORY[0x1EEE66BB8]();
}

@end