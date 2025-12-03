@interface RTAddressMO
+ (id)managedObjectWithAddress:(id)address managedObject:(id)object inManagedObjectContext:(id)context;
- (id)description;
@end

@implementation RTAddressMO

+ (id)managedObjectWithAddress:(id)address managedObject:(id)object inManagedObjectContext:(id)context
{
  addressCopy = address;
  objectCopy = object;
  contextCopy = context;
  v10 = contextCopy;
  if (!addressCopy)
  {
    managedObjectContext2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v41 = 0;
    v15 = "Invalid parameter not satisfying: address";
    v16 = &v41;
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, managedObjectContext2, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    goto LABEL_12;
  }

  if (!contextCopy)
  {
    managedObjectContext2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v40 = 0;
    v15 = "Invalid parameter not satisfying: managedObjectContext";
    v16 = &v40;
    goto LABEL_19;
  }

  managedObjectContext = [objectCopy managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    if (objectCopy)
    {
      v14 = objectCopy;
    }

    else
    {
      v14 = [[RTAddressMO alloc] initWithContext:v10];
    }

    v17 = v14;
    identifier = [addressCopy identifier];
    [(RTCloudManagedObject *)v17 setIdentifier:identifier];

    geoAddressData = [addressCopy geoAddressData];
    [(RTAddressMO *)v17 setGeoAddressData:geoAddressData];

    subPremises = [addressCopy subPremises];
    [(RTAddressMO *)v17 setSubPremises:subPremises];

    subThoroughfare = [addressCopy subThoroughfare];
    [(RTAddressMO *)v17 setSubThoroughfare:subThoroughfare];

    thoroughfare = [addressCopy thoroughfare];
    [(RTAddressMO *)v17 setThoroughfare:thoroughfare];

    subLocality = [addressCopy subLocality];
    [(RTAddressMO *)v17 setSubLocality:subLocality];

    locality = [addressCopy locality];
    [(RTAddressMO *)v17 setLocality:locality];

    subAdministrativeArea = [addressCopy subAdministrativeArea];
    [(RTAddressMO *)v17 setSubAdministrativeArea:subAdministrativeArea];

    administrativeArea = [addressCopy administrativeArea];
    [(RTAddressMO *)v17 setAdministrativeArea:administrativeArea];

    administrativeAreaCode = [addressCopy administrativeAreaCode];
    [(RTAddressMO *)v17 setAdministrativeAreaCode:administrativeAreaCode];

    postalCode = [addressCopy postalCode];
    [(RTAddressMO *)v17 setPostalCode:postalCode];

    country = [addressCopy country];
    [(RTAddressMO *)v17 setCountry:country];

    countryCode = [addressCopy countryCode];
    [(RTAddressMO *)v17 setCountryCode:countryCode];

    inlandWater = [addressCopy inlandWater];
    [(RTAddressMO *)v17 setInlandWater:inlandWater];

    ocean = [addressCopy ocean];
    [(RTAddressMO *)v17 setOcean:ocean];

    areasOfInterest = [addressCopy areasOfInterest];
    [(RTAddressMO *)v17 setAreasOfInterest:areasOfInterest];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(addressCopy, "isIsland")}];
    [(RTAddressMO *)v17 setIsland:v34];

    creationDate = [addressCopy creationDate];
    [(RTAddressMO *)v17 setCreationDate:creationDate];

    expirationDate = [addressCopy expirationDate];
    [(RTAddressMO *)v17 setExpirationDate:expirationDate];

    iso3166CountryCode = [addressCopy iso3166CountryCode];
    [(RTAddressMO *)v17 setIso3166CountryCode:iso3166CountryCode];

    iso3166SubdivisionCode = [addressCopy iso3166SubdivisionCode];
    [(RTAddressMO *)v17 setIso3166SubdivisionCode:iso3166SubdivisionCode];

    goto LABEL_15;
  }

  managedObjectContext2 = [objectCopy managedObjectContext];
  if ((-[NSObject allowTombstones](managedObjectContext2, "allowTombstones") & 1) != 0 || ([objectCopy flags] & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_12:

  v17 = 0;
LABEL_15:

  return v17;
}

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  identifier = [(RTCloudManagedObject *)self identifier];
  geoAddressData = [(RTAddressMO *)self geoAddressData];
  v20 = [geoAddressData length];
  subPremises = [(RTAddressMO *)self subPremises];
  subThoroughfare = [(RTAddressMO *)self subThoroughfare];
  thoroughfare = [(RTAddressMO *)self thoroughfare];
  subLocality = [(RTAddressMO *)self subLocality];
  locality = [(RTAddressMO *)self locality];
  subAdministrativeArea = [(RTAddressMO *)self subAdministrativeArea];
  administrativeArea = [(RTAddressMO *)self administrativeArea];
  administrativeAreaCode = [(RTAddressMO *)self administrativeAreaCode];
  postalCode = [(RTAddressMO *)self postalCode];
  country = [(RTAddressMO *)self country];
  countryCode = [(RTAddressMO *)self countryCode];
  inlandWater = [(RTAddressMO *)self inlandWater];
  ocean = [(RTAddressMO *)self ocean];
  areasOfInterest = [(RTAddressMO *)self areasOfInterest];
  v11 = [areasOfInterest count];
  island = [(RTAddressMO *)self island];
  creationDate = [(RTAddressMO *)self creationDate];
  stringFromDate = [creationDate stringFromDate];
  expirationDate = [(RTAddressMO *)self expirationDate];
  stringFromDate2 = [expirationDate stringFromDate];
  iso3166CountryCode = [(RTAddressMO *)self iso3166CountryCode];
  iso3166SubdivisionCode = [(RTAddressMO *)self iso3166SubdivisionCode];
  v22 = [v21 stringWithFormat:@"identifier, %@, geoAddressData.length, %lu, subPremises, %@, subThoroughfare, %@, thoroughfare, %@, subLocality, %@, locality, %@, subAdministrativeArea, %@, administrativeArea, %@, administrativeAreaCode, %@, postalCode, %@, country, %@, countryCode, %@, inlandWater, %@, ocean, %@, areasOfInterest.count, %lu, island, %@, creationDate, %@, expirationDate, %@, iso3166CountryCode, %@, iso3166SubdivisionCode, %@", identifier, v20, subPremises, subThoroughfare, thoroughfare, subLocality, locality, subAdministrativeArea, administrativeArea, administrativeAreaCode, postalCode, country, countryCode, inlandWater, ocean, v11, island, stringFromDate, stringFromDate2, iso3166CountryCode, iso3166SubdivisionCode];

  return v22;
}

@end