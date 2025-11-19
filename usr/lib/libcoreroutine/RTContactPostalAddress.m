@interface RTContactPostalAddress
+ (id)labelTypeToString:(unint64_t)a3;
- (RTContactPostalAddress)initWithIdentifier:(id)a3 CNPostalAddress:(id)a4 lableType:(unint64_t)a5 creationDate:(id)a6 expirationDate:(id)a7;
- (RTContactPostalAddress)initWithIdentifier:(id)a3 geoAddressData:(id)a4 subPremises:(id)a5 isIsland:(BOOL)a6 creationDate:(id)a7 expirationDate:(id)a8 contactsIdentifier:(id)a9 labelType:(unint64_t)a10 iso3166CountryCode:(id)a11 iso3166SubdivisionCode:(id)a12;
- (RTContactPostalAddress)initWithIdentifier:(id)a3 geoAddressData:(id)a4 subPremises:(id)a5 subThoroughfare:(id)a6 thoroughfare:(id)a7 subLocality:(id)a8 locality:(id)a9 subAdministrativeArea:(id)a10 administrativeArea:(id)a11 administrativeAreaCode:(id)a12 postalCode:(id)a13 country:(id)a14 countryCode:(id)a15 inlandWater:(id)a16 ocean:(id)a17 areasOfInterest:(id)a18 isIsland:(BOOL)a19 creationDate:(id)a20 expirationDate:(id)a21 contactsIdentifier:(id)a22 labelType:(unint64_t)a23 iso3166CountryCode:(id)a24 iso3166SubdivisionCode:(id)a25;
- (RTContactPostalAddress)initWithIdentifier:(id)a3 geoAddressData:(id)a4 subPremises:(id)a5 subThoroughfare:(id)a6 thoroughfare:(id)a7 subLocality:(id)a8 locality:(id)a9 subAdministrativeArea:(id)a10 administrativeArea:(id)a11 administrativeAreaCode:(id)a12 postalCode:(id)a13 country:(id)a14 countryCode:(id)a15 inlandWater:(id)a16 ocean:(id)a17 areasOfInterest:(id)a18 isIsland:(BOOL)a19 creationDate:(id)a20 expirationDate:(id)a21 iso3166CountryCode:(id)a22 iso3166SubdivisionCode:(id)a23;
- (RTContactPostalAddress)initWithIdentifier:(id)a3 geoAddressObject:(id)a4 subPremises:(id)a5 isIsland:(BOOL)a6 creationDate:(id)a7 expirationDate:(id)a8 contactsIdentifier:(id)a9 labelType:(unint64_t)a10 iso3166CountryCode:(id)a11 iso3166SubdivisionCode:(id)a12;
- (RTContactPostalAddress)initWithIdentifier:(id)a3 lableType:(unint64_t)a4 geoDictionary:(id)a5 language:(id)a6 country:(id)a7 phoneticLocale:(id)a8;
- (id)description;
@end

@implementation RTContactPostalAddress

+ (id)labelTypeToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_2788CDDE0[a3];
  }
}

- (RTContactPostalAddress)initWithIdentifier:(id)a3 geoAddressData:(id)a4 subPremises:(id)a5 subThoroughfare:(id)a6 thoroughfare:(id)a7 subLocality:(id)a8 locality:(id)a9 subAdministrativeArea:(id)a10 administrativeArea:(id)a11 administrativeAreaCode:(id)a12 postalCode:(id)a13 country:(id)a14 countryCode:(id)a15 inlandWater:(id)a16 ocean:(id)a17 areasOfInterest:(id)a18 isIsland:(BOOL)a19 creationDate:(id)a20 expirationDate:(id)a21 iso3166CountryCode:(id)a22 iso3166SubdivisionCode:(id)a23
{
  v36 = MEMORY[0x277CCAD78];
  v38 = a23;
  v24 = a22;
  v25 = a21;
  v26 = a20;
  v27 = a18;
  v33 = a17;
  v46 = a16;
  v45 = a15;
  v52 = a14;
  v51 = a13;
  v50 = a12;
  v49 = a11;
  v48 = a10;
  v47 = a9;
  v35 = a8;
  v28 = a7;
  v29 = a6;
  v40 = a5;
  v30 = a4;
  v42 = [v36 UUID];
  LOBYTE(v32) = a19;
  v44 = [(RTContactPostalAddress *)self initWithIdentifier:v42 geoAddressData:v30 subPremises:v40 subThoroughfare:v29 thoroughfare:v28 subLocality:v35 locality:v47 subAdministrativeArea:v48 administrativeArea:v49 administrativeAreaCode:v50 postalCode:v51 country:v52 countryCode:v45 inlandWater:v46 ocean:v33 areasOfInterest:v27 isIsland:v32 creationDate:v26 expirationDate:v25 contactsIdentifier:0 labelType:0 iso3166CountryCode:v24 iso3166SubdivisionCode:v38];

  return v44;
}

- (RTContactPostalAddress)initWithIdentifier:(id)a3 geoAddressData:(id)a4 subPremises:(id)a5 isIsland:(BOOL)a6 creationDate:(id)a7 expirationDate:(id)a8 contactsIdentifier:(id)a9 labelType:(unint64_t)a10 iso3166CountryCode:(id)a11 iso3166SubdivisionCode:(id)a12
{
  v12 = self;
  if (a10 >= 4)
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
    LOBYTE(v16) = a6;
    v12 = [(RTContactPostalAddress *)self initWithIdentifier:a3 geoAddressData:a4 subPremises:a5 subThoroughfare:0 thoroughfare:0 subLocality:0 locality:0 subAdministrativeArea:0 administrativeArea:0 administrativeAreaCode:0 postalCode:0 country:0 countryCode:0 inlandWater:0 ocean:0 areasOfInterest:0 isIsland:v16 creationDate:a7 expirationDate:a8 contactsIdentifier:a9 labelType:a10 iso3166CountryCode:a11 iso3166SubdivisionCode:a12];
    v13 = v12;
  }

  return v13;
}

- (RTContactPostalAddress)initWithIdentifier:(id)a3 geoAddressData:(id)a4 subPremises:(id)a5 subThoroughfare:(id)a6 thoroughfare:(id)a7 subLocality:(id)a8 locality:(id)a9 subAdministrativeArea:(id)a10 administrativeArea:(id)a11 administrativeAreaCode:(id)a12 postalCode:(id)a13 country:(id)a14 countryCode:(id)a15 inlandWater:(id)a16 ocean:(id)a17 areasOfInterest:(id)a18 isIsland:(BOOL)a19 creationDate:(id)a20 expirationDate:(id)a21 contactsIdentifier:(id)a22 labelType:(unint64_t)a23 iso3166CountryCode:(id)a24 iso3166SubdivisionCode:(id)a25
{
  v32 = a22;
  if (a23 >= 4)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: labelType <= RTAddressLabelTypeMax", buf, 2u);
    }

    v35 = 0;
  }

  else
  {
    v39.receiver = self;
    v39.super_class = RTContactPostalAddress;
    v33 = [(RTContactPostalAddress *)&v39 initWithIdentifier:a3 geoAddressData:a4 subPremises:a5 subThoroughfare:a6 thoroughfare:a7 subLocality:a8 locality:a9 subAdministrativeArea:a10 administrativeArea:a11 administrativeAreaCode:a12 postalCode:a13 country:a14 countryCode:a15 inlandWater:a16 ocean:a17 areasOfInterest:a18 isIsland:a19 creationDate:a20 expirationDate:a21 iso3166CountryCode:a24 iso3166SubdivisionCode:a25];
    v34 = v33;
    if (v33)
    {
      objc_storeStrong(&v33->_contactsIdentifier, a22);
      v34->_labelType = a23;
    }

    self = v34;
    v35 = self;
  }

  return v35;
}

- (RTContactPostalAddress)initWithIdentifier:(id)a3 geoAddressObject:(id)a4 subPremises:(id)a5 isIsland:(BOOL)a6 creationDate:(id)a7 expirationDate:(id)a8 contactsIdentifier:(id)a9 labelType:(unint64_t)a10 iso3166CountryCode:(id)a11 iso3166SubdivisionCode:(id)a12
{
  v14 = a6;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  v25 = a12;
  if (!v18)
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

  if (!v21)
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

  if (!v22)
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

  if (!v19)
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

    v28 = 0;
    goto LABEL_16;
  }

  [objc_opt_class() _encodeGeoAddressObject:v19 compress:1];
  v33 = v19;
  v27 = v26 = v20;
  self = [(RTContactPostalAddress *)self initWithIdentifier:v18 geoAddressData:v27 subPremises:v26 isIsland:v14 creationDate:v21 expirationDate:v22 contactsIdentifier:v23 labelType:a10 iso3166CountryCode:v24 iso3166SubdivisionCode:v25];

  v20 = v26;
  v19 = v33;
  v28 = self;
LABEL_16:

  return v28;
}

- (RTContactPostalAddress)initWithIdentifier:(id)a3 CNPostalAddress:(id)a4 lableType:(unint64_t)a5 creationDate:(id)a6 expirationDate:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CBEAF8];
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = [v13 preferredLanguages];
  v19 = [v18 firstObject];

  v20 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v21 = [v20 objectForKey:*MEMORY[0x277CBE690]];

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
  v24 = [v16 value];
  v25 = [v23 initWithCNPostalAddress:v24 language:v19 country:v21 phoneticLocale:v19];

  v26 = [v16 identifier];

  v27 = [(RTContactPostalAddress *)self initWithIdentifier:v17 geoAddressObject:v25 subPremises:0 isIsland:0 creationDate:v15 expirationDate:v14 contactsIdentifier:v26 labelType:a5 iso3166CountryCode:0 iso3166SubdivisionCode:0];
  return v27;
}

- (RTContactPostalAddress)initWithIdentifier:(id)a3 lableType:(unint64_t)a4 geoDictionary:(id)a5 language:(id)a6 country:(id)a7 phoneticLocale:(id)a8
{
  v13 = MEMORY[0x277CBEAA8];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [v13 date];
  v20 = [v19 dateByAddingTimeInterval:4838400.0];
  v21 = [objc_alloc(MEMORY[0x277D0EAA8]) initWithContactAddressDictionary:v17 language:v16 country:v15 phoneticLocale:v14];

  v22 = [MEMORY[0x277CCAD78] UUID];
  v23 = [(RTContactPostalAddress *)self initWithIdentifier:v22 geoAddressObject:v21 subPremises:0 isIsland:0 creationDate:v19 expirationDate:v20 contactsIdentifier:v18 labelType:a4 iso3166CountryCode:0 iso3166SubdivisionCode:0];

  return v23;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = [(RTContactPostalAddress *)self identifier];
  v3 = [objc_opt_class() labelTypeToString:{-[RTContactPostalAddress labelType](self, "labelType")}];
  v4 = [(RTContactPostalAddress *)self mergedThoroughfare];
  v5 = [(RTContactPostalAddress *)self subLocality];
  v6 = [(RTContactPostalAddress *)self locality];
  v7 = [(RTContactPostalAddress *)self subAdministrativeArea];
  v8 = [(RTContactPostalAddress *)self administrativeArea];
  v9 = [(RTContactPostalAddress *)self postalCode];
  v10 = [(RTContactPostalAddress *)self country];
  v11 = [(RTContactPostalAddress *)self countryCode];
  v12 = [v15 stringWithFormat:@"identifier, %@, labelType, %@, street, %@, subLocality, %@, city, %@, subAdministrativeArea, %@, state, %@, postalCode, %@, country, %@, ISOCountryCode, %@", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end