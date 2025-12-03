@interface RTMapItem(RTCoreDataTransformable)
+ (id)createWithLearnedLocationOfInterestMO:()RTCoreDataTransformable;
+ (id)createWithLearnedPlaceMO:()RTCoreDataTransformable;
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithMapItemMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTMapItem(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self createWithMapItemMO:v4];
LABEL_8:
      v6 = v5;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self createWithLearnedPlaceMO:v4];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self createWithLearnedLocationOfInterestMO:v4];
      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = v4;
      v11 = 2080;
      v12 = "+[RTMapItem(RTCoreDataTransformable) createWithManagedObject:]";
      v13 = 1024;
      v14 = 43;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "managed object, %@, is not supported by RTMapItem+CoreDataTransformable (in %s:%d)", &v9, 0x1Cu);
    }
  }

  v6 = 0;
LABEL_13:

  return v6;
}

+ (id)createWithMapItemMO:()RTCoreDataTransformable
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    managedObjectContext2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, managedObjectContext2, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItemMO", buf, 2u);
    }

    goto LABEL_11;
  }

  managedObjectContext = [v3 managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  managedObjectContext2 = [v4 managedObjectContext];
  if (-[NSObject allowTombstones](managedObjectContext2, "allowTombstones") & 1) == 0 && ([v4 flags])
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  address = [v4 address];
  managedObjectContext3 = [address managedObjectContext];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    address2 = [v4 address];
    managedObjectContext4 = [address2 managedObjectContext];

    if ([managedObjectContext4 allowTombstones])
    {

      goto LABEL_14;
    }

    address3 = [v4 address];
    flags = [address3 flags];

    if ((flags & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v96 = objc_alloc(MEMORY[0x277D01060]);
  address4 = [v4 address];
  identifier = [address4 identifier];
  address5 = [v4 address];
  geoAddressData = [address5 geoAddressData];
  address6 = [v4 address];
  subPremises = [address6 subPremises];
  address7 = [v4 address];
  subThoroughfare = [address7 subThoroughfare];
  address8 = [v4 address];
  thoroughfare = [address8 thoroughfare];
  address9 = [v4 address];
  subLocality = [address9 subLocality];
  address10 = [v4 address];
  locality = [address10 locality];
  address11 = [v4 address];
  subAdministrativeArea = [address11 subAdministrativeArea];
  address12 = [v4 address];
  administrativeArea = [address12 administrativeArea];
  address13 = [v4 address];
  administrativeAreaCode = [address13 administrativeAreaCode];
  address14 = [v4 address];
  postalCode = [address14 postalCode];
  address15 = [v4 address];
  country = [address15 country];
  address16 = [v4 address];
  countryCode = [address16 countryCode];
  address17 = [v4 address];
  inlandWater = [address17 inlandWater];
  address18 = [v4 address];
  ocean = [address18 ocean];
  address19 = [v4 address];
  areasOfInterest = [address19 areasOfInterest];
  address20 = [v4 address];
  island = [address20 island];
  bOOLValue = [island BOOLValue];
  address21 = [v4 address];
  creationDate = [address21 creationDate];
  address22 = [v4 address];
  expirationDate = [address22 expirationDate];
  address23 = [v4 address];
  iso3166CountryCode = [address23 iso3166CountryCode];
  address24 = [v4 address];
  iso3166SubdivisionCode = [address24 iso3166SubdivisionCode];
  LOBYTE(v45) = bOOLValue;
  v97 = [v96 initWithIdentifier:identifier geoAddressData:geoAddressData subPremises:subPremises subThoroughfare:subThoroughfare thoroughfare:thoroughfare subLocality:subLocality locality:locality subAdministrativeArea:subAdministrativeArea administrativeArea:administrativeArea administrativeAreaCode:administrativeAreaCode postalCode:postalCode country:country countryCode:countryCode inlandWater:inlandWater ocean:ocean areasOfInterest:areasOfInterest isIsland:v45 creationDate:creationDate expirationDate:expirationDate iso3166CountryCode:iso3166CountryCode iso3166SubdivisionCode:iso3166SubdivisionCode];

  v23 = objc_alloc(MEMORY[0x277D01160]);
  latitude = [v4 latitude];
  [latitude doubleValue];
  v26 = v25;
  longitude = [v4 longitude];
  [longitude doubleValue];
  v29 = v28;
  uncertainty = [v4 uncertainty];
  [uncertainty doubleValue];
  v32 = v31;
  creationDate2 = [v4 creationDate];
  referenceFrame = [v4 referenceFrame];
  v95 = [v23 initWithLatitude:creationDate2 longitude:objc_msgSend(referenceFrame horizontalUncertainty:"longValue") date:v26 referenceFrame:{v29, v32}];

  v35 = objc_alloc(MEMORY[0x277D011A8]);
  extendedAttributes = [v4 extendedAttributes];
  v77 = [v35 initWithExtendedAttributesMO:extendedAttributes];

  v75 = objc_alloc(MEMORY[0x277D011A0]);
  identifier2 = [v4 identifier];
  name = [v4 name];
  category = [v4 category];
  categoryMUID = [v4 categoryMUID];
  mapItemSource = [v4 mapItemSource];
  unsignedIntegerValue = [mapItemSource unsignedIntegerValue];
  mapItemPlaceType = [v4 mapItemPlaceType];
  unsignedIntegerValue2 = [mapItemPlaceType unsignedIntegerValue];
  muid = [v4 muid];
  unsignedIntegerValue3 = [muid unsignedIntegerValue];
  resultProviderID = [v4 resultProviderID];
  intValue = [resultProviderID intValue];
  geoMapItemHandle = [v4 geoMapItemHandle];
  geoMapItemIdentifier = [v4 geoMapItemIdentifier];
  creationDate3 = [v4 creationDate];
  expirationDate2 = [v4 expirationDate];
  displayLanguage = [v4 displayLanguage];
  LOBYTE(v46) = [v4 disputed];
  v13 = [v75 initWithIdentifier:identifier2 name:name category:category categoryMUID:categoryMUID address:v97 location:v95 source:unsignedIntegerValue mapItemPlaceType:unsignedIntegerValue2 muid:unsignedIntegerValue3 resultProviderID:intValue geoMapItemHandle:geoMapItemHandle geoMapItemIdentifier:geoMapItemIdentifier creationDate:creationDate3 expirationDate:expirationDate2 extendedAttributes:v77 displayLanguage:displayLanguage disputed:v46];

LABEL_15:

  return v13;
}

+ (id)createWithLearnedPlaceMO:()RTCoreDataTransformable
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_class();
    mapItem = [v3 mapItem];
    v6 = [v4 createWithMapItemMO:mapItem];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedPlaceMO", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)createWithLearnedLocationOfInterestMO:()RTCoreDataTransformable
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = 0;
    v10 = "Invalid parameter not satisfying: loiMO";
    v11 = &v14;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_7;
  }

  placeMapItemIdentifier = [v3 placeMapItemIdentifier];

  if (placeMapItemIdentifier)
  {
    v6 = objc_opt_class();
    mapItem = [v4 mapItem];
    v8 = [v6 createWithMapItemMO:mapItem];

    goto LABEL_8;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = 0;
    v10 = "Invalid parameter not satisfying: loiMO.placeMapItemIdentifier";
    v11 = &v13;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTMapItemMO managedObjectWithMapItem:self inManagedObjectContext:a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

@end