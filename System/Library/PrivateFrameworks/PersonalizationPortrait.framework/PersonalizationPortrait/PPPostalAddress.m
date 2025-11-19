@interface PPPostalAddress
+ (id)normalizeAddressString:(id)a3;
+ (id)postalAddressWithThoroughfare:(id)a3 subThoroughfare:(id)a4 locality:(id)a5 subLocality:(id)a6 administrativeArea:(id)a7 subAdministrativeArea:(id)a8 postalCode:(id)a9 country:(id)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPostalAddress:(id)a3;
- (PPPostalAddress)initWithCoder:(id)a3;
- (PPPostalAddress)initWithContactsPostalAddress:(id)a3;
- (PPPostalAddress)initWithFoundInAppsPostalAddress:(id)a3;
- (PPPostalAddress)initWithThoroughfare:(id)a3 subThoroughfare:(id)a4 locality:(id)a5 subLocality:(id)a6 administrativeArea:(id)a7 subAdministrativeArea:(id)a8 postalCode:(id)a9 country:(id)a10;
- (id)_countryStringWithCountry:(id)a3 isoCode:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)singleLineNormalizedAddressString;
- (id)toCNPostalAddress;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPPostalAddress

- (id)_countryStringWithCountry:(id)a3 isoCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [v6 uppercaseString];
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = v5;
    if ([v8 length] <= 3)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v8 uppercaseString];
      objc_autoreleasePoolPop(v9);

      v8 = v10;
    }
  }

  return v8;
}

- (BOOL)isEqualToPostalAddress:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = self->_thoroughfare;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v8 = self->_subThoroughfare;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v11 = self->_locality;
  v12 = v11;
  if (v11 == v4[3])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v14 = self->_subLocality;
  v15 = v14;
  if (v14 == v4[4])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v17 = self->_administrativeArea;
  v18 = v17;
  if (v17 == v4[5])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v20 = self->_subAdministrativeArea;
  v21 = v20;
  if (v20 == v4[6])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v23 = self->_postalCode;
  v24 = v23;
  if (v23 == v4[7])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
LABEL_28:
      v26 = 0;
      goto LABEL_29;
    }
  }

  v28 = self->_country;
  v29 = v28;
  if (v28 == v4[8])
  {
    v26 = 1;
  }

  else
  {
    v26 = [(NSString *)v28 isEqual:?];
  }

LABEL_29:
  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPPostalAddress *)self isEqualToPostalAddress:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v6 = [(NSString *)self->_thoroughfare copyWithZone:a3];
  v7 = [(NSString *)self->_subThoroughfare copyWithZone:a3];
  v8 = [(NSString *)self->_locality copyWithZone:a3];
  v9 = [(NSString *)self->_subLocality copyWithZone:a3];
  v10 = [(NSString *)self->_administrativeArea copyWithZone:a3];
  v11 = [(NSString *)self->_subAdministrativeArea copyWithZone:a3];
  v12 = [(NSString *)self->_postalCode copyWithZone:a3];
  v13 = [(NSString *)self->_country copyWithZone:a3];
  v14 = [v5 postalAddressWithThoroughfare:v6 subThoroughfare:v7 locality:v8 subLocality:v9 administrativeArea:v10 subAdministrativeArea:v11 postalCode:v12 country:v13];

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_thoroughfare hash];
  v4 = [(NSString *)self->_subThoroughfare hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_locality hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_subLocality hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_administrativeArea hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_subAdministrativeArea hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_postalCode hash]- v8 + 32 * v8;
  return [(NSString *)self->_country hash]- v9 + 32 * v9;
}

- (void)encodeWithCoder:(id)a3
{
  thoroughfare = self->_thoroughfare;
  v5 = a3;
  [v5 encodeObject:thoroughfare forKey:@"tho"];
  [v5 encodeObject:self->_subThoroughfare forKey:@"sth"];
  [v5 encodeObject:self->_locality forKey:@"loc"];
  [v5 encodeObject:self->_subLocality forKey:@"slo"];
  [v5 encodeObject:self->_administrativeArea forKey:@"aaa"];
  [v5 encodeObject:self->_subAdministrativeArea forKey:@"saa"];
  [v5 encodeObject:self->_postalCode forKey:@"pco"];
  [v5 encodeObject:self->_country forKey:@"cou"];
}

- (PPPostalAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"tho"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"sth"];
  v8 = [v4 decodeObjectOfClass:v5 forKey:@"loc"];
  v9 = [v4 decodeObjectOfClass:v5 forKey:@"slo"];
  v10 = [v4 decodeObjectOfClass:v5 forKey:@"aaa"];
  v11 = [v4 decodeObjectOfClass:v5 forKey:@"saa"];
  v12 = [v4 decodeObjectOfClass:v5 forKey:@"pco"];
  v13 = [v4 decodeObjectOfClass:v5 forKey:@"cou"];

  v14 = [(PPPostalAddress *)self initWithThoroughfare:v6 subThoroughfare:v7 locality:v8 subLocality:v9 administrativeArea:v10 subAdministrativeArea:v11 postalCode:v12 country:v13];
  return v14;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_locality;
  v5 = [v3 initWithFormat:@"<PPPostalAddress t:'%@' st:'%@' l:'%@' sl:'%@' a:'%@' sa:'%@' pc:'%@' c:'%@'>", self->_thoroughfare, self->_subThoroughfare, self->_locality, self->_subLocality, self->_administrativeArea, self->_subAdministrativeArea, self->_postalCode, self->_country];

  return v5;
}

- (id)singleLineNormalizedAddressString
{
  v2 = [(PPPostalAddress *)self toCNPostalAddress];
  v3 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:v2 addCountryName:0];
  if (v3)
  {
    v4 = v3;
    v5 = [PPPostalAddress normalizeAddressString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)toCNPostalAddress
{
  v3 = objc_opt_new();
  if ([(NSString *)self->_thoroughfare length]&& [(NSString *)self->_subThoroughfare length])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@\n%@", self->_thoroughfare, self->_subThoroughfare];
    [v3 setStreet:v4];
  }

  else
  {
    [v3 setStreet:self->_thoroughfare];
  }

  [v3 setCity:self->_locality];
  [v3 setSubLocality:self->_subLocality];
  [v3 setState:self->_administrativeArea];
  [v3 setSubAdministrativeArea:self->_subAdministrativeArea];
  v5 = [(NSString *)self->_country length];
  country = self->_country;
  if (v5 == 2)
  {
    [v3 setISOCountryCode:country];
  }

  else
  {
    [v3 setCountry:country];
  }

  [v3 setPostalCode:self->_postalCode];

  return v3;
}

- (PPPostalAddress)initWithFoundInAppsPostalAddress:(id)a3
{
  v5 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PPPostalAddress.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"[postalAddress respondsToSelector:@selector((components))]"}];
  }

  v6 = [v5 performSelector:sel_components];
  v7 = [v6 street];
  v8 = objc_autoreleasePoolPush();
  v9 = [v6 street];
  v10 = [v9 componentsSeparatedByString:@"\n"];

  objc_autoreleasePoolPop(v8);
  v25 = v5;
  if ([v10 count] == 2)
  {
    v11 = [v10 objectAtIndexedSubscript:0];

    v24 = [v10 objectAtIndexedSubscript:1];
  }

  else
  {
    v24 = 0;
    v11 = v7;
  }

  v12 = [v6 country];
  v13 = [v6 isoCountryCode];
  v14 = [(PPPostalAddress *)self _countryStringWithCountry:v12 isoCode:v13];

  v15 = [v6 city];
  v16 = [v6 subLocality];
  v17 = [v6 state];
  [v6 subAdministrativeArea];
  v19 = v18 = self;
  v20 = [v6 postalCode];
  v21 = [(PPPostalAddress *)v18 initWithThoroughfare:v11 subThoroughfare:v24 locality:v15 subLocality:v16 administrativeArea:v17 subAdministrativeArea:v19 postalCode:v20 country:v14];

  return v21;
}

- (PPPostalAddress)initWithContactsPostalAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 street];
  v6 = objc_autoreleasePoolPush();
  v7 = [v4 street];
  v8 = [v7 componentsSeparatedByString:@"\n"];

  objc_autoreleasePoolPop(v6);
  v23 = v8;
  if ([v8 count] == 2)
  {
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v8 objectAtIndexedSubscript:1];
    v5 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 country];
  v12 = [v4 ISOCountryCode];
  v13 = [(PPPostalAddress *)self _countryStringWithCountry:v11 isoCode:v12];

  v14 = [v4 city];
  v15 = [v4 subLocality];
  v16 = [v4 state];
  v17 = [v4 subAdministrativeArea];
  v18 = [v4 postalCode];
  v19 = self;
  v20 = v18;
  v21 = [(PPPostalAddress *)v19 initWithThoroughfare:v5 subThoroughfare:v10 locality:v14 subLocality:v15 administrativeArea:v16 subAdministrativeArea:v17 postalCode:v18 country:v13];

  return v21;
}

- (PPPostalAddress)initWithThoroughfare:(id)a3 subThoroughfare:(id)a4 locality:(id)a5 subLocality:(id)a6 administrativeArea:(id)a7 subAdministrativeArea:(id)a8 postalCode:(id)a9 country:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = PPPostalAddress;
  v19 = [(PPPostalAddress *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_thoroughfare, a3);
    objc_storeStrong(&v20->_subThoroughfare, a4);
    objc_storeStrong(&v20->_locality, a5);
    objc_storeStrong(&v20->_subLocality, a6);
    objc_storeStrong(&v20->_administrativeArea, a7);
    objc_storeStrong(&v20->_subAdministrativeArea, a8);
    objc_storeStrong(&v20->_postalCode, a9);
    objc_storeStrong(&v20->_country, a10);
  }

  return v20;
}

+ (id)normalizeAddressString:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v3 componentsSeparatedByCharactersInSet:v5];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_8830];
  [v7 filterUsingPredicate:v8];

  v9 = [v7 _pas_componentsJoinedByString:@" "];
  v10 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v11 = [v9 componentsSeparatedByCharactersInSet:v10];
  v12 = [v11 _pas_componentsJoinedByString:&stru_1F1B327D8];

  objc_autoreleasePoolPop(v4);

  return v12;
}

+ (id)postalAddressWithThoroughfare:(id)a3 subThoroughfare:(id)a4 locality:(id)a5 subLocality:(id)a6 administrativeArea:(id)a7 subAdministrativeArea:(id)a8 postalCode:(id)a9 country:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[a1 alloc] initWithThoroughfare:v24 subThoroughfare:v23 locality:v22 subLocality:v21 administrativeArea:v20 subAdministrativeArea:v19 postalCode:v18 country:v17];

  return v25;
}

@end