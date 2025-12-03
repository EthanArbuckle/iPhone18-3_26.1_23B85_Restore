@interface PPPostalAddress
+ (id)normalizeAddressString:(id)string;
+ (id)postalAddressWithThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area subAdministrativeArea:(id)administrativeArea postalCode:(id)code country:(id)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPostalAddress:(id)address;
- (PPPostalAddress)initWithCoder:(id)coder;
- (PPPostalAddress)initWithContactsPostalAddress:(id)address;
- (PPPostalAddress)initWithFoundInAppsPostalAddress:(id)address;
- (PPPostalAddress)initWithThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area subAdministrativeArea:(id)administrativeArea postalCode:(id)code country:(id)self0;
- (id)_countryStringWithCountry:(id)country isoCode:(id)code;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)singleLineNormalizedAddressString;
- (id)toCNPostalAddress;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPPostalAddress

- (id)_countryStringWithCountry:(id)country isoCode:(id)code
{
  countryCopy = country;
  codeCopy = code;
  if ([codeCopy length])
  {
    v7 = objc_autoreleasePoolPush();
    uppercaseString = [codeCopy uppercaseString];
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    uppercaseString = countryCopy;
    if ([uppercaseString length] <= 3)
    {
      v9 = objc_autoreleasePoolPush();
      v8UppercaseString = [uppercaseString uppercaseString];
      objc_autoreleasePoolPop(v9);

      uppercaseString = v8UppercaseString;
    }
  }

  return uppercaseString;
}

- (BOOL)isEqualToPostalAddress:(id)address
{
  addressCopy = address;
  if (!addressCopy)
  {
    goto LABEL_28;
  }

  v5 = self->_thoroughfare;
  v6 = v5;
  if (v5 == addressCopy[1])
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
  if (v8 == addressCopy[2])
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
  if (v11 == addressCopy[3])
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
  if (v14 == addressCopy[4])
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
  if (v17 == addressCopy[5])
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
  if (v20 == addressCopy[6])
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
  if (v23 == addressCopy[7])
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
  if (v28 == addressCopy[8])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPPostalAddress *)self isEqualToPostalAddress:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v6 = [(NSString *)self->_thoroughfare copyWithZone:zone];
  v7 = [(NSString *)self->_subThoroughfare copyWithZone:zone];
  v8 = [(NSString *)self->_locality copyWithZone:zone];
  v9 = [(NSString *)self->_subLocality copyWithZone:zone];
  v10 = [(NSString *)self->_administrativeArea copyWithZone:zone];
  v11 = [(NSString *)self->_subAdministrativeArea copyWithZone:zone];
  v12 = [(NSString *)self->_postalCode copyWithZone:zone];
  v13 = [(NSString *)self->_country copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  thoroughfare = self->_thoroughfare;
  coderCopy = coder;
  [coderCopy encodeObject:thoroughfare forKey:@"tho"];
  [coderCopy encodeObject:self->_subThoroughfare forKey:@"sth"];
  [coderCopy encodeObject:self->_locality forKey:@"loc"];
  [coderCopy encodeObject:self->_subLocality forKey:@"slo"];
  [coderCopy encodeObject:self->_administrativeArea forKey:@"aaa"];
  [coderCopy encodeObject:self->_subAdministrativeArea forKey:@"saa"];
  [coderCopy encodeObject:self->_postalCode forKey:@"pco"];
  [coderCopy encodeObject:self->_country forKey:@"cou"];
}

- (PPPostalAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"tho"];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"sth"];
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"loc"];
  v9 = [coderCopy decodeObjectOfClass:v5 forKey:@"slo"];
  v10 = [coderCopy decodeObjectOfClass:v5 forKey:@"aaa"];
  v11 = [coderCopy decodeObjectOfClass:v5 forKey:@"saa"];
  v12 = [coderCopy decodeObjectOfClass:v5 forKey:@"pco"];
  v13 = [coderCopy decodeObjectOfClass:v5 forKey:@"cou"];

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
  toCNPostalAddress = [(PPPostalAddress *)self toCNPostalAddress];
  v3 = [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:toCNPostalAddress addCountryName:0];
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

- (PPPostalAddress)initWithFoundInAppsPostalAddress:(id)address
{
  addressCopy = address;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPPostalAddress.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"[postalAddress respondsToSelector:@selector((components))]"}];
  }

  v6 = [addressCopy performSelector:sel_components];
  street = [v6 street];
  v8 = objc_autoreleasePoolPush();
  street2 = [v6 street];
  v10 = [street2 componentsSeparatedByString:@"\n"];

  objc_autoreleasePoolPop(v8);
  v25 = addressCopy;
  if ([v10 count] == 2)
  {
    v11 = [v10 objectAtIndexedSubscript:0];

    v24 = [v10 objectAtIndexedSubscript:1];
  }

  else
  {
    v24 = 0;
    v11 = street;
  }

  country = [v6 country];
  isoCountryCode = [v6 isoCountryCode];
  v14 = [(PPPostalAddress *)self _countryStringWithCountry:country isoCode:isoCountryCode];

  city = [v6 city];
  subLocality = [v6 subLocality];
  state = [v6 state];
  [v6 subAdministrativeArea];
  v19 = v18 = self;
  postalCode = [v6 postalCode];
  v21 = [(PPPostalAddress *)v18 initWithThoroughfare:v11 subThoroughfare:v24 locality:city subLocality:subLocality administrativeArea:state subAdministrativeArea:v19 postalCode:postalCode country:v14];

  return v21;
}

- (PPPostalAddress)initWithContactsPostalAddress:(id)address
{
  addressCopy = address;
  street = [addressCopy street];
  v6 = objc_autoreleasePoolPush();
  street2 = [addressCopy street];
  v8 = [street2 componentsSeparatedByString:@"\n"];

  objc_autoreleasePoolPop(v6);
  v23 = v8;
  if ([v8 count] == 2)
  {
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v8 objectAtIndexedSubscript:1];
    street = v9;
  }

  else
  {
    v10 = 0;
  }

  country = [addressCopy country];
  iSOCountryCode = [addressCopy ISOCountryCode];
  v13 = [(PPPostalAddress *)self _countryStringWithCountry:country isoCode:iSOCountryCode];

  city = [addressCopy city];
  subLocality = [addressCopy subLocality];
  state = [addressCopy state];
  subAdministrativeArea = [addressCopy subAdministrativeArea];
  postalCode = [addressCopy postalCode];
  selfCopy = self;
  v20 = postalCode;
  v21 = [(PPPostalAddress *)selfCopy initWithThoroughfare:street subThoroughfare:v10 locality:city subLocality:subLocality administrativeArea:state subAdministrativeArea:subAdministrativeArea postalCode:postalCode country:v13];

  return v21;
}

- (PPPostalAddress)initWithThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area subAdministrativeArea:(id)administrativeArea postalCode:(id)code country:(id)self0
{
  thoroughfareCopy = thoroughfare;
  subThoroughfareCopy = subThoroughfare;
  localityCopy = locality;
  subLocalityCopy = subLocality;
  areaCopy = area;
  administrativeAreaCopy = administrativeArea;
  codeCopy = code;
  countryCopy = country;
  v28.receiver = self;
  v28.super_class = PPPostalAddress;
  v19 = [(PPPostalAddress *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_thoroughfare, thoroughfare);
    objc_storeStrong(&v20->_subThoroughfare, subThoroughfare);
    objc_storeStrong(&v20->_locality, locality);
    objc_storeStrong(&v20->_subLocality, subLocality);
    objc_storeStrong(&v20->_administrativeArea, area);
    objc_storeStrong(&v20->_subAdministrativeArea, administrativeArea);
    objc_storeStrong(&v20->_postalCode, code);
    objc_storeStrong(&v20->_country, country);
  }

  return v20;
}

+ (id)normalizeAddressString:(id)string
{
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  v7 = [v6 mutableCopy];

  v8 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_8830];
  [v7 filterUsingPredicate:v8];

  v9 = [v7 _pas_componentsJoinedByString:@" "];
  punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v11 = [v9 componentsSeparatedByCharactersInSet:punctuationCharacterSet];
  v12 = [v11 _pas_componentsJoinedByString:&stru_1F1B327D8];

  objc_autoreleasePoolPop(v4);

  return v12;
}

+ (id)postalAddressWithThoroughfare:(id)thoroughfare subThoroughfare:(id)subThoroughfare locality:(id)locality subLocality:(id)subLocality administrativeArea:(id)area subAdministrativeArea:(id)administrativeArea postalCode:(id)code country:(id)self0
{
  countryCopy = country;
  codeCopy = code;
  administrativeAreaCopy = administrativeArea;
  areaCopy = area;
  subLocalityCopy = subLocality;
  localityCopy = locality;
  subThoroughfareCopy = subThoroughfare;
  thoroughfareCopy = thoroughfare;
  v25 = [[self alloc] initWithThoroughfare:thoroughfareCopy subThoroughfare:subThoroughfareCopy locality:localityCopy subLocality:subLocalityCopy administrativeArea:areaCopy subAdministrativeArea:administrativeAreaCopy postalCode:codeCopy country:countryCopy];

  return v25;
}

@end