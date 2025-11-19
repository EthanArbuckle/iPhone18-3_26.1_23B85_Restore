@interface RTAddressMO
+ (id)managedObjectWithAddress:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
- (id)description;
@end

@implementation RTAddressMO

+ (id)managedObjectWithAddress:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v41 = 0;
    v15 = "Invalid parameter not satisfying: address";
    v16 = &v41;
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    goto LABEL_12;
  }

  if (!v9)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v40 = 0;
    v15 = "Invalid parameter not satisfying: managedObjectContext";
    v16 = &v40;
    goto LABEL_19;
  }

  v11 = [v8 managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    if (v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = [[RTAddressMO alloc] initWithContext:v10];
    }

    v17 = v14;
    v18 = [v7 identifier];
    [(RTCloudManagedObject *)v17 setIdentifier:v18];

    v19 = [v7 geoAddressData];
    [(RTAddressMO *)v17 setGeoAddressData:v19];

    v20 = [v7 subPremises];
    [(RTAddressMO *)v17 setSubPremises:v20];

    v21 = [v7 subThoroughfare];
    [(RTAddressMO *)v17 setSubThoroughfare:v21];

    v22 = [v7 thoroughfare];
    [(RTAddressMO *)v17 setThoroughfare:v22];

    v23 = [v7 subLocality];
    [(RTAddressMO *)v17 setSubLocality:v23];

    v24 = [v7 locality];
    [(RTAddressMO *)v17 setLocality:v24];

    v25 = [v7 subAdministrativeArea];
    [(RTAddressMO *)v17 setSubAdministrativeArea:v25];

    v26 = [v7 administrativeArea];
    [(RTAddressMO *)v17 setAdministrativeArea:v26];

    v27 = [v7 administrativeAreaCode];
    [(RTAddressMO *)v17 setAdministrativeAreaCode:v27];

    v28 = [v7 postalCode];
    [(RTAddressMO *)v17 setPostalCode:v28];

    v29 = [v7 country];
    [(RTAddressMO *)v17 setCountry:v29];

    v30 = [v7 countryCode];
    [(RTAddressMO *)v17 setCountryCode:v30];

    v31 = [v7 inlandWater];
    [(RTAddressMO *)v17 setInlandWater:v31];

    v32 = [v7 ocean];
    [(RTAddressMO *)v17 setOcean:v32];

    v33 = [v7 areasOfInterest];
    [(RTAddressMO *)v17 setAreasOfInterest:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isIsland")}];
    [(RTAddressMO *)v17 setIsland:v34];

    v35 = [v7 creationDate];
    [(RTAddressMO *)v17 setCreationDate:v35];

    v36 = [v7 expirationDate];
    [(RTAddressMO *)v17 setExpirationDate:v36];

    v37 = [v7 iso3166CountryCode];
    [(RTAddressMO *)v17 setIso3166CountryCode:v37];

    v38 = [v7 iso3166SubdivisionCode];
    [(RTAddressMO *)v17 setIso3166SubdivisionCode:v38];

    goto LABEL_15;
  }

  v13 = [v8 managedObjectContext];
  if ((-[NSObject allowTombstones](v13, "allowTombstones") & 1) != 0 || ([v8 flags] & 1) == 0)
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
  v30 = [(RTCloudManagedObject *)self identifier];
  v23 = [(RTAddressMO *)self geoAddressData];
  v20 = [v23 length];
  v26 = [(RTAddressMO *)self subPremises];
  v29 = [(RTAddressMO *)self subThoroughfare];
  v19 = [(RTAddressMO *)self thoroughfare];
  v28 = [(RTAddressMO *)self subLocality];
  v18 = [(RTAddressMO *)self locality];
  v27 = [(RTAddressMO *)self subAdministrativeArea];
  v25 = [(RTAddressMO *)self administrativeArea];
  v16 = [(RTAddressMO *)self administrativeAreaCode];
  v24 = [(RTAddressMO *)self postalCode];
  v14 = [(RTAddressMO *)self country];
  v3 = [(RTAddressMO *)self countryCode];
  v4 = [(RTAddressMO *)self inlandWater];
  v13 = [(RTAddressMO *)self ocean];
  v17 = [(RTAddressMO *)self areasOfInterest];
  v11 = [v17 count];
  v12 = [(RTAddressMO *)self island];
  v15 = [(RTAddressMO *)self creationDate];
  v5 = [v15 stringFromDate];
  v6 = [(RTAddressMO *)self expirationDate];
  v7 = [v6 stringFromDate];
  v8 = [(RTAddressMO *)self iso3166CountryCode];
  v9 = [(RTAddressMO *)self iso3166SubdivisionCode];
  v22 = [v21 stringWithFormat:@"identifier, %@, geoAddressData.length, %lu, subPremises, %@, subThoroughfare, %@, thoroughfare, %@, subLocality, %@, locality, %@, subAdministrativeArea, %@, administrativeArea, %@, administrativeAreaCode, %@, postalCode, %@, country, %@, countryCode, %@, inlandWater, %@, ocean, %@, areasOfInterest.count, %lu, island, %@, creationDate, %@, expirationDate, %@, iso3166CountryCode, %@, iso3166SubdivisionCode, %@", v30, v20, v26, v29, v19, v28, v18, v27, v25, v16, v24, v14, v3, v4, v13, v11, v12, v5, v7, v8, v9];

  return v22;
}

@end