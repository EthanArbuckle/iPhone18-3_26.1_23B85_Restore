@interface RTContactPostalAddress
+ (id)labelTypeToString:(unint64_t)string;
- (RTContactPostalAddress)initWithIdentifier:(id)identifier CNPostalAddress:(id)address lableType:(unint64_t)type creationDate:(id)date expirationDate:(id)expirationDate;
- (RTContactPostalAddress)initWithIdentifier:(id)identifier geoAddressData:(id)data subPremises:(id)premises isIsland:(BOOL)island creationDate:(id)date expirationDate:(id)expirationDate contactsIdentifier:(id)contactsIdentifier labelType:(unint64_t)self0 iso3166CountryCode:(id)self1 iso3166SubdivisionCode:(id)self2;
- (RTContactPostalAddress)initWithIdentifier:(id)identifier geoAddressData:(id)data subPremises:(id)premises subThoroughfare:(id)thoroughfare thoroughfare:(id)a7 subLocality:(id)locality locality:(id)a9 subAdministrativeArea:(id)self0 administrativeArea:(id)self1 administrativeAreaCode:(id)self2 postalCode:(id)self3 country:(id)self4 countryCode:(id)self5 inlandWater:(id)self6 ocean:(id)self7 areasOfInterest:(id)self8 isIsland:(BOOL)self9 creationDate:(id)date expirationDate:(id)expirationDate contactsIdentifier:(id)contactsIdentifier labelType:(unint64_t)type iso3166CountryCode:(id)iso3166CountryCode iso3166SubdivisionCode:(id)subdivisionCode;
- (RTContactPostalAddress)initWithIdentifier:(id)identifier geoAddressData:(id)data subPremises:(id)premises subThoroughfare:(id)thoroughfare thoroughfare:(id)a7 subLocality:(id)locality locality:(id)a9 subAdministrativeArea:(id)self0 administrativeArea:(id)self1 administrativeAreaCode:(id)self2 postalCode:(id)self3 country:(id)self4 countryCode:(id)self5 inlandWater:(id)self6 ocean:(id)self7 areasOfInterest:(id)self8 isIsland:(BOOL)self9 creationDate:(id)date expirationDate:(id)expirationDate iso3166CountryCode:(id)iso3166CountryCode iso3166SubdivisionCode:(id)subdivisionCode;
- (RTContactPostalAddress)initWithIdentifier:(id)identifier geoAddressObject:(id)object subPremises:(id)premises isIsland:(BOOL)island creationDate:(id)date expirationDate:(id)expirationDate contactsIdentifier:(id)contactsIdentifier labelType:(unint64_t)self0 iso3166CountryCode:(id)self1 iso3166SubdivisionCode:(id)self2;
- (RTContactPostalAddress)initWithIdentifier:(id)identifier lableType:(unint64_t)type geoDictionary:(id)dictionary language:(id)language country:(id)country phoneticLocale:(id)locale;
- (id)description;
@end

@implementation RTContactPostalAddress

+ (id)labelTypeToString:(unint64_t)string
{
  if (string > 3)
  {
    return 0;
  }

  else
  {
    return off_2788CDDE0[string];
  }
}

- (RTContactPostalAddress)initWithIdentifier:(id)identifier geoAddressData:(id)data subPremises:(id)premises subThoroughfare:(id)thoroughfare thoroughfare:(id)a7 subLocality:(id)locality locality:(id)a9 subAdministrativeArea:(id)self0 administrativeArea:(id)self1 administrativeAreaCode:(id)self2 postalCode:(id)self3 country:(id)self4 countryCode:(id)self5 inlandWater:(id)self6 ocean:(id)self7 areasOfInterest:(id)self8 isIsland:(BOOL)self9 creationDate:(id)date expirationDate:(id)expirationDate iso3166CountryCode:(id)iso3166CountryCode iso3166SubdivisionCode:(id)subdivisionCode
{
  v36 = MEMORY[0x277CCAD78];
  subdivisionCodeCopy = subdivisionCode;
  iso3166CountryCodeCopy = iso3166CountryCode;
  expirationDateCopy = expirationDate;
  dateCopy = date;
  interestCopy = interest;
  oceanCopy = ocean;
  waterCopy = water;
  countryCodeCopy = countryCode;
  countryCopy = country;
  postalCodeCopy = postalCode;
  codeCopy = code;
  administrativeAreaCopy = administrativeArea;
  areaCopy = area;
  v47 = a9;
  localityCopy = locality;
  v28 = a7;
  thoroughfareCopy = thoroughfare;
  premisesCopy = premises;
  dataCopy = data;
  uUID = [v36 UUID];
  LOBYTE(v32) = island;
  v44 = [(RTContactPostalAddress *)self initWithIdentifier:uUID geoAddressData:dataCopy subPremises:premisesCopy subThoroughfare:thoroughfareCopy thoroughfare:v28 subLocality:localityCopy locality:v47 subAdministrativeArea:areaCopy administrativeArea:administrativeAreaCopy administrativeAreaCode:codeCopy postalCode:postalCodeCopy country:countryCopy countryCode:countryCodeCopy inlandWater:waterCopy ocean:oceanCopy areasOfInterest:interestCopy isIsland:v32 creationDate:dateCopy expirationDate:expirationDateCopy contactsIdentifier:0 labelType:0 iso3166CountryCode:iso3166CountryCodeCopy iso3166SubdivisionCode:subdivisionCodeCopy];

  return v44;
}

- (RTContactPostalAddress)initWithIdentifier:(id)identifier geoAddressData:(id)data subPremises:(id)premises isIsland:(BOOL)island creationDate:(id)date expirationDate:(id)expirationDate contactsIdentifier:(id)contactsIdentifier labelType:(unint64_t)self0 iso3166CountryCode:(id)self1 iso3166SubdivisionCode:(id)self2
{
  selfCopy = self;
  if (type >= 4)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: labelType <= RTAddressLabelTypeMax", buf, 2u);
    }

    v13 = 0;
  }

  else
  {
    LOBYTE(v16) = island;
    selfCopy = [(RTContactPostalAddress *)self initWithIdentifier:identifier geoAddressData:data subPremises:premises subThoroughfare:0 thoroughfare:0 subLocality:0 locality:0 subAdministrativeArea:0 administrativeArea:0 administrativeAreaCode:0 postalCode:0 country:0 countryCode:0 inlandWater:0 ocean:0 areasOfInterest:0 isIsland:v16 creationDate:date expirationDate:expirationDate contactsIdentifier:contactsIdentifier labelType:type iso3166CountryCode:code iso3166SubdivisionCode:subdivisionCode];
    v13 = selfCopy;
  }

  return v13;
}

- (RTContactPostalAddress)initWithIdentifier:(id)identifier geoAddressData:(id)data subPremises:(id)premises subThoroughfare:(id)thoroughfare thoroughfare:(id)a7 subLocality:(id)locality locality:(id)a9 subAdministrativeArea:(id)self0 administrativeArea:(id)self1 administrativeAreaCode:(id)self2 postalCode:(id)self3 country:(id)self4 countryCode:(id)self5 inlandWater:(id)self6 ocean:(id)self7 areasOfInterest:(id)self8 isIsland:(BOOL)self9 creationDate:(id)date expirationDate:(id)expirationDate contactsIdentifier:(id)contactsIdentifier labelType:(unint64_t)type iso3166CountryCode:(id)iso3166CountryCode iso3166SubdivisionCode:(id)subdivisionCode
{
  contactsIdentifierCopy = contactsIdentifier;
  if (type >= 4)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: labelType <= RTAddressLabelTypeMax", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v39.receiver = self;
    v39.super_class = RTContactPostalAddress;
    v33 = [(RTContactPostalAddress *)&v39 initWithIdentifier:identifier geoAddressData:data subPremises:premises subThoroughfare:thoroughfare thoroughfare:a7 subLocality:locality locality:a9 subAdministrativeArea:area administrativeArea:administrativeArea administrativeAreaCode:code postalCode:postalCode country:country countryCode:countryCode inlandWater:water ocean:ocean areasOfInterest:interest isIsland:island creationDate:date expirationDate:expirationDate iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:subdivisionCode];
    v34 = v33;
    if (v33)
    {
      objc_storeStrong(&v33->_contactsIdentifier, contactsIdentifier);
      v34->_labelType = type;
    }

    self = v34;
    selfCopy = self;
  }

  return selfCopy;
}

- (RTContactPostalAddress)initWithIdentifier:(id)identifier geoAddressObject:(id)object subPremises:(id)premises isIsland:(BOOL)island creationDate:(id)date expirationDate:(id)expirationDate contactsIdentifier:(id)contactsIdentifier labelType:(unint64_t)self0 iso3166CountryCode:(id)self1 iso3166SubdivisionCode:(id)self2
{
  islandCopy = island;
  identifierCopy = identifier;
  objectCopy = object;
  premisesCopy = premises;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  contactsIdentifierCopy = contactsIdentifier;
  codeCopy = code;
  subdivisionCodeCopy = subdivisionCode;
  if (!identifierCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v37 = 0;
    v30 = "Invalid parameter not satisfying: identifier";
    v31 = &v37;
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, v30, v31, 2u);
    goto LABEL_15;
  }

  if (!dateCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v36 = 0;
    v30 = "Invalid parameter not satisfying: creationDate";
    v31 = &v36;
    goto LABEL_14;
  }

  if (!expirationDateCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v35 = 0;
    v30 = "Invalid parameter not satisfying: expirationDate";
    v31 = &v35;
    goto LABEL_14;
  }

  if (!objectCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "Invalid parameter not satisfying: geoAddressObject";
      v31 = buf;
      goto LABEL_14;
    }

LABEL_15:

    selfCopy = 0;
    goto LABEL_16;
  }

  [objc_opt_class() _encodeGeoAddressObject:objectCopy compress:1];
  v33 = objectCopy;
  v27 = v26 = premisesCopy;
  self = [(RTContactPostalAddress *)self initWithIdentifier:identifierCopy geoAddressData:v27 subPremises:v26 isIsland:islandCopy creationDate:dateCopy expirationDate:expirationDateCopy contactsIdentifier:contactsIdentifierCopy labelType:type iso3166CountryCode:codeCopy iso3166SubdivisionCode:subdivisionCodeCopy];

  premisesCopy = v26;
  objectCopy = v33;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (RTContactPostalAddress)initWithIdentifier:(id)identifier CNPostalAddress:(id)address lableType:(unint64_t)type creationDate:(id)date expirationDate:(id)expirationDate
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CBEAF8];
  expirationDateCopy = expirationDate;
  dateCopy = date;
  addressCopy = address;
  identifierCopy = identifier;
  preferredLanguages = [v13 preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v21 = [autoupdatingCurrentLocale objectForKey:*MEMORY[0x277CBE690]];

  if (!v21)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityContacts);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      *buf = 138412546;
      v33 = v30;
      v34 = 2112;
      v35 = v31;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@, %@, [NSLocale currentLocale] failed for NSLocaleCountryCode", buf, 0x16u);
    }

    v21 = &stru_284528390;
  }

  v23 = objc_alloc(MEMORY[0x277D0EAA8]);
  value = [addressCopy value];
  v25 = [v23 initWithCNPostalAddress:value language:firstObject country:v21 phoneticLocale:firstObject];

  identifier = [addressCopy identifier];

  v27 = [(RTContactPostalAddress *)self initWithIdentifier:identifierCopy geoAddressObject:v25 subPremises:0 isIsland:0 creationDate:dateCopy expirationDate:expirationDateCopy contactsIdentifier:identifier labelType:type iso3166CountryCode:0 iso3166SubdivisionCode:0];
  return v27;
}

- (RTContactPostalAddress)initWithIdentifier:(id)identifier lableType:(unint64_t)type geoDictionary:(id)dictionary language:(id)language country:(id)country phoneticLocale:(id)locale
{
  v13 = MEMORY[0x277CBEAA8];
  localeCopy = locale;
  countryCopy = country;
  languageCopy = language;
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  date = [v13 date];
  v20 = [date dateByAddingTimeInterval:4838400.0];
  v21 = [objc_alloc(MEMORY[0x277D0EAA8]) initWithContactAddressDictionary:dictionaryCopy language:languageCopy country:countryCopy phoneticLocale:localeCopy];

  uUID = [MEMORY[0x277CCAD78] UUID];
  v23 = [(RTContactPostalAddress *)self initWithIdentifier:uUID geoAddressObject:v21 subPremises:0 isIsland:0 creationDate:date expirationDate:v20 contactsIdentifier:identifierCopy labelType:type iso3166CountryCode:0 iso3166SubdivisionCode:0];

  return v23;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  identifier = [(RTContactPostalAddress *)self identifier];
  v3 = [objc_opt_class() labelTypeToString:{-[RTContactPostalAddress labelType](self, "labelType")}];
  mergedThoroughfare = [(RTContactPostalAddress *)self mergedThoroughfare];
  subLocality = [(RTContactPostalAddress *)self subLocality];
  locality = [(RTContactPostalAddress *)self locality];
  subAdministrativeArea = [(RTContactPostalAddress *)self subAdministrativeArea];
  administrativeArea = [(RTContactPostalAddress *)self administrativeArea];
  postalCode = [(RTContactPostalAddress *)self postalCode];
  country = [(RTContactPostalAddress *)self country];
  countryCode = [(RTContactPostalAddress *)self countryCode];
  v12 = [v15 stringWithFormat:@"identifier, %@, labelType, %@, street, %@, subLocality, %@, city, %@, subAdministrativeArea, %@, state, %@, postalCode, %@, country, %@, ISOCountryCode, %@", identifier, v3, mergedThoroughfare, subLocality, locality, subAdministrativeArea, administrativeArea, postalCode, country, countryCode];

  return v12;
}

@end