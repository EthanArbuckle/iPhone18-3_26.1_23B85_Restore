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
      v5 = [a1 createWithMapItemMO:v4];
LABEL_8:
      v6 = v5;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 createWithLearnedPlaceMO:v4];
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 createWithLearnedLocationOfInterestMO:v4];
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
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItemMO", buf, 2u);
    }

    goto LABEL_11;
  }

  v5 = [v3 managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = [v4 managedObjectContext];
  if (-[NSObject allowTombstones](v7, "allowTombstones") & 1) == 0 && ([v4 flags])
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  v8 = [v4 address];
  v9 = [v8 managedObjectContext];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v11 = [v4 address];
    v12 = [v11 managedObjectContext];

    if ([v12 allowTombstones])
    {

      goto LABEL_14;
    }

    v14 = [v4 address];
    v15 = [v14 flags];

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v96 = objc_alloc(MEMORY[0x277D01060]);
  v70 = [v4 address];
  v94 = [v70 identifier];
  v69 = [v4 address];
  v92 = [v69 geoAddressData];
  v68 = [v4 address];
  v90 = [v68 subPremises];
  v67 = [v4 address];
  v88 = [v67 subThoroughfare];
  v66 = [v4 address];
  v86 = [v66 thoroughfare];
  v65 = [v4 address];
  v82 = [v65 subLocality];
  v64 = [v4 address];
  v84 = [v64 locality];
  v63 = [v4 address];
  v80 = [v63 subAdministrativeArea];
  v62 = [v4 address];
  v78 = [v62 administrativeArea];
  v61 = [v4 address];
  v76 = [v61 administrativeAreaCode];
  v60 = [v4 address];
  v74 = [v60 postalCode];
  v59 = [v4 address];
  v53 = [v59 country];
  v58 = [v4 address];
  v51 = [v58 countryCode];
  v57 = [v4 address];
  v72 = [v57 inlandWater];
  v56 = [v4 address];
  v49 = [v56 ocean];
  v55 = [v4 address];
  v48 = [v55 areasOfInterest];
  v54 = [v4 address];
  v52 = [v54 island];
  v47 = [v52 BOOLValue];
  v50 = [v4 address];
  v16 = [v50 creationDate];
  v17 = [v4 address];
  v18 = [v17 expirationDate];
  v19 = [v4 address];
  v20 = [v19 iso3166CountryCode];
  v21 = [v4 address];
  v22 = [v21 iso3166SubdivisionCode];
  LOBYTE(v45) = v47;
  v97 = [v96 initWithIdentifier:v94 geoAddressData:v92 subPremises:v90 subThoroughfare:v88 thoroughfare:v86 subLocality:v82 locality:v84 subAdministrativeArea:v80 administrativeArea:v78 administrativeAreaCode:v76 postalCode:v74 country:v53 countryCode:v51 inlandWater:v72 ocean:v49 areasOfInterest:v48 isIsland:v45 creationDate:v16 expirationDate:v18 iso3166CountryCode:v20 iso3166SubdivisionCode:v22];

  v23 = objc_alloc(MEMORY[0x277D01160]);
  v24 = [v4 latitude];
  [v24 doubleValue];
  v26 = v25;
  v27 = [v4 longitude];
  [v27 doubleValue];
  v29 = v28;
  v30 = [v4 uncertainty];
  [v30 doubleValue];
  v32 = v31;
  v33 = [v4 creationDate];
  v34 = [v4 referenceFrame];
  v95 = [v23 initWithLatitude:v33 longitude:objc_msgSend(v34 horizontalUncertainty:"longValue") date:v26 referenceFrame:{v29, v32}];

  v35 = objc_alloc(MEMORY[0x277D011A8]);
  v36 = [v4 extendedAttributes];
  v77 = [v35 initWithExtendedAttributesMO:v36];

  v75 = objc_alloc(MEMORY[0x277D011A0]);
  v37 = [v4 identifier];
  v89 = [v4 name];
  v85 = [v4 category];
  v83 = [v4 categoryMUID];
  v93 = [v4 mapItemSource];
  v79 = [v93 unsignedIntegerValue];
  v91 = [v4 mapItemPlaceType];
  v73 = [v91 unsignedIntegerValue];
  v87 = [v4 muid];
  v38 = [v87 unsignedIntegerValue];
  v81 = [v4 resultProviderID];
  v39 = [v81 intValue];
  v71 = [v4 geoMapItemHandle];
  v40 = [v4 geoMapItemIdentifier];
  v41 = [v4 creationDate];
  v42 = [v4 expirationDate];
  v43 = [v4 displayLanguage];
  LOBYTE(v46) = [v4 disputed];
  v13 = [v75 initWithIdentifier:v37 name:v89 category:v85 categoryMUID:v83 address:v97 location:v95 source:v79 mapItemPlaceType:v73 muid:v38 resultProviderID:v39 geoMapItemHandle:v71 geoMapItemIdentifier:v40 creationDate:v41 expirationDate:v42 extendedAttributes:v77 displayLanguage:v43 disputed:v46];

LABEL_15:

  return v13;
}

+ (id)createWithLearnedPlaceMO:()RTCoreDataTransformable
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [v3 mapItem];
    v6 = [v4 createWithMapItemMO:v5];
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

  v5 = [v3 placeMapItemIdentifier];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 mapItem];
    v8 = [v6 createWithMapItemMO:v7];

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
    v3 = [RTMapItemMO managedObjectWithMapItem:a1 inManagedObjectContext:a3];
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