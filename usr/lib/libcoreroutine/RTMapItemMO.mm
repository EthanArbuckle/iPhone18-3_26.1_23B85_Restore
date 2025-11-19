@interface RTMapItemMO
+ (id)fetchManagedObjectsForMapItem:(id)a3 predicate:(id)a4 inManagedObjectContext:(id)a5;
+ (id)fetchRequest;
+ (id)managedObjectWithMapItem:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
+ (id)mapItemForIdentifier:(id)a3 error:(id *)a4;
+ (void)updateDatabaseWithMapItem:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)description;
- (id)extendedAttributes;
- (void)didSave;
- (void)setExtendedAttributes:(id)a3;
@end

@implementation RTMapItemMO

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTMapItemMO"];

  return v2;
}

- (id)extendedAttributes
{
  v18 = *MEMORY[0x277D85DE8];
  [(RTMapItemMO *)self willAccessValueForKey:@"extendedAttributes"];
  v3 = [(RTMapItemMO *)self cachedExtendedAttributes];

  if (!v3)
  {
    v4 = [(RTMapItemMO *)self extendedAttributesIdentifier];

    if (v4)
    {
      v5 = +[RTMapItemExtendedAttributesMO fetchRequest];
      [v5 setReturnsObjectsAsFaults:0];
      [v5 setFetchLimit:1];
      v6 = MEMORY[0x277CCAC30];
      v7 = [(RTMapItemMO *)self extendedAttributesIdentifier];
      v8 = [v6 predicateWithFormat:@"%K == %@", @"identifier", v7];
      [v5 setPredicate:v8];

      v15 = 0;
      v9 = [v5 execute:&v15];
      v10 = v15;
      if (v10)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138739971;
          v17 = v10;
          _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Error fulfilling transient property mapItem, %{sensitive}@", buf, 0xCu);
        }
      }

      v12 = [v9 firstObject];
      [(RTMapItemMO *)self setCachedExtendedAttributes:v12];
    }
  }

  [(RTMapItemMO *)self didAccessValueForKey:@"extendedAttributes"];
  v13 = [(RTMapItemMO *)self cachedExtendedAttributes];

  return v13;
}

- (void)setExtendedAttributes:(id)a3
{
  v4 = a3;
  [(RTCloudManagedObject *)self willChangeValueForKey:@"extendedAttributes"];
  v5 = [v4 identifier];

  [(RTMapItemMO *)self setExtendedAttributesIdentifier:v5];
  [(RTMapItemMO *)self setCachedExtendedAttributes:0];

  [(RTMapItemMO *)self didChangeValueForKey:@"extendedAttributes"];
}

+ (id)managedObjectWithMapItem:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
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
      goto LABEL_11;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: mapItem";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_11;
  }

  if (!v9)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_16;
  }

  v11 = [v8 managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__113;
    v26 = __Block_byref_object_dispose__113;
    v27 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__RTMapItemMO_managedObjectWithMapItem_managedObject_inManagedObjectContext___block_invoke;
    v17[3] = &unk_2788C5DA0;
    v21 = buf;
    v18 = v8;
    v19 = v10;
    v20 = v7;
    [v19 performBlockAndWait:v17];
    v14 = *(v23 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_12;
  }

  v13 = [v8 managedObjectContext];
  if ((-[NSObject allowTombstones](v13, "allowTombstones") & 1) != 0 || ([v8 flags] & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_11:

  v14 = 0;
LABEL_12:

  return v14;
}

void __77__RTMapItemMO_managedObjectWithMapItem_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[RTMapItemMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = [*(a1 + 48) name];
  [*(*(*(a1 + 56) + 8) + 40) setName:v5];

  v6 = [*(a1 + 48) category];
  [*(*(*(a1 + 56) + 8) + 40) setCategory:v6];

  v7 = [*(a1 + 48) categoryMUID];
  [*(*(*(a1 + 56) + 8) + 40) setCategoryMUID:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = [*(a1 + 48) location];
  [v9 latitude];
  v10 = [v8 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setLatitude:v10];

  v11 = MEMORY[0x277CCABB0];
  v12 = [*(a1 + 48) location];
  [v12 longitude];
  v13 = [v11 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setLongitude:v13];

  v14 = MEMORY[0x277CCABB0];
  v15 = [*(a1 + 48) location];
  [v15 horizontalUncertainty];
  v16 = [v14 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setUncertainty:v16];

  v17 = MEMORY[0x277CCABB0];
  v18 = [*(a1 + 48) location];
  v19 = [v17 numberWithUnsignedInt:{objc_msgSend(v18, "referenceFrame")}];
  [*(*(*(a1 + 56) + 8) + 40) setReferenceFrame:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "source")}];
  [*(*(*(a1 + 56) + 8) + 40) setMapItemSource:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "mapItemPlaceType")}];
  [*(*(*(a1 + 56) + 8) + 40) setMapItemPlaceType:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "muid")}];
  [*(*(*(a1 + 56) + 8) + 40) setMuid:v22];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "resultProviderID")}];
  [*(*(*(a1 + 56) + 8) + 40) setResultProviderID:v23];

  v24 = [*(a1 + 48) geoMapItemHandle];
  [*(*(*(a1 + 56) + 8) + 40) setGeoMapItemHandle:v24];

  v25 = [*(a1 + 48) geoMapItemIdentifier];
  [*(*(*(a1 + 56) + 8) + 40) setGeoMapItemIdentifier:v25];

  v26 = [*(a1 + 48) creationDate];
  [*(*(*(a1 + 56) + 8) + 40) setCreationDate:v26];

  v27 = [*(a1 + 48) displayLanguage];
  [*(*(*(a1 + 56) + 8) + 40) setDisplayLanguage:v27];

  v28 = [*(a1 + 48) expirationDate];
  [*(*(*(a1 + 56) + 8) + 40) setExpirationDate:v28];

  [*(*(*(a1 + 56) + 8) + 40) setDisputed:{objc_msgSend(*(a1 + 48), "disputed")}];
  v29 = +[RTMapItemExtendedAttributesMO fetchRequest];
  v30 = MEMORY[0x277CCAC30];
  v31 = [*(a1 + 48) extendedAttributes];
  v32 = [v31 identifier];
  v33 = [v30 predicateWithFormat:@"%K == %@", @"identifier", v32];
  [v29 setPredicate:v33];

  v34 = *(a1 + 40);
  v54 = 0;
  v35 = [v34 executeFetchRequest:v29 error:&v54];
  v36 = v54;
  if (v36)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v36;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "error fetching extended attributes, %@", buf, 0xCu);
    }
  }

  v38 = [*(a1 + 48) extendedAttributes];
  v39 = [v35 firstObject];
  v40 = [RTMapItemExtendedAttributesMO managedObjectWithExtendedAttributes:v38 managedObject:v39 inManagedObjectContext:*(a1 + 40)];

  [*(*(*(a1 + 56) + 8) + 40) setExtendedAttributes:v40];
  v41 = +[RTAddressMO fetchRequest];
  v42 = MEMORY[0x277CCAC30];
  v43 = [*(a1 + 48) address];
  v44 = [v43 identifier];
  v45 = [v42 predicateWithFormat:@"%K == %@", @"identifier", v44];
  [v41 setPredicate:v45];

  v46 = *(a1 + 40);
  v53 = 0;
  v47 = [v46 executeFetchRequest:v41 error:&v53];
  v48 = v53;
  if (v48)
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v48;
      _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "error fetching address, %@", buf, 0xCu);
    }
  }

  v50 = [*(a1 + 48) address];
  v51 = [v47 firstObject];
  v52 = [RTAddressMO managedObjectWithAddress:v50 managedObject:v51 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setAddress:v52];
}

+ (id)mapItemForIdentifier:(id)a3 error:(id *)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
  v7 = os_signpost_id_generate(v6);

  v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "mapItemForIdentifier", " enableTelemetry=YES ", buf, 2u);
  }

  if (v5)
  {
    v10 = +[RTMapItemMO fetchRequest];
    [v10 setReturnsObjectsAsFaults:0];
    [v10 setFetchLimit:1];
    v22[0] = @"address";
    v22[1] = @"extendedAttributes";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [v10 setRelationshipKeyPathsForPrefetching:v11];

    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", v5];
    [v10 setPredicate:v12];

    v20 = 0;
    v13 = [v10 execute:&v20];
    v14 = v20;
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    v16 = v15;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v16, OS_SIGNPOST_INTERVAL_END, v7, "mapItemForIdentifier", " enableTelemetry=YES ", buf, 2u);
    }

    if (a4)
    {
      v17 = v14;
      *a4 = v14;
    }

    v18 = [v13 firstObject];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)fetchManagedObjectsForMapItem:(id)a3 predicate:(id)a4 inManagedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: mapItem";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_7;
  }

  if (v10)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__113;
    v26 = __Block_byref_object_dispose__113;
    v27 = [MEMORY[0x277CBEB18] array];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__RTMapItemMO_fetchManagedObjectsForMapItem_predicate_inManagedObjectContext___block_invoke;
    v16[3] = &unk_2788CB638;
    v17 = v9;
    v18 = v8;
    v19 = v11;
    v20 = buf;
    v21 = a2;
    [v19 performBlockAndWait:v16];
    v12 = [*(v23 + 5) copy];

    _Block_object_dispose(buf, 8);
    goto LABEL_8;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v14 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_12;
  }

LABEL_7:

  v12 = 0;
LABEL_8:

  return v12;
}

void __78__RTMapItemMO_fetchManagedObjectsForMapItem_predicate_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v81[1] = *MEMORY[0x277D85DE8];
  v2 = +[RTMapItemMO fetchRequest];
  [v2 setFetchLimit:5];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 addObject:?];
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = MEMORY[0x277CCA920];
  v7 = MEMORY[0x277CCAC30];
  v8 = [*(a1 + 40) identifier];
  v9 = [v7 predicateWithFormat:@"%K == %@", @"identifier", v8];
  v81[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
  v11 = [v6 andPredicateWithSubpredicates:v10];

  v63 = v11;
  [v5 addObject:v11];
  v66 = v5;
  if ([*(a1 + 40) validMUID])
  {
    v12 = MEMORY[0x277CCA920];
    v13 = MEMORY[0x277CCAC30];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "muid")}];
    v15 = [v13 predicateWithFormat:@"%K = %@", @"muid", v14];
    v80[0] = v15;
    v16 = MEMORY[0x277CCAC30];
    v17 = v4;
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "resultProviderID")}];
    v19 = [v16 predicateWithFormat:@"%K == %@", @"resultProviderID", v18];
    v80[1] = v19;
    [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
    v21 = v20 = v2;
    v22 = [v12 andPredicateWithSubpredicates:v21];

    v2 = v20;
    v4 = v17;

    [v5 addObject:v22];
  }

  memset(&v72[1], 0, 32);
  v23 = [*(a1 + 40) location];
  [v23 latitude];
  v24 = [*(a1 + 40) location];
  [v24 longitude];
  RTCommonCalculateBoundingBox();

  v25 = MEMORY[0x277CCAC30];
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v65 = [v25 predicateWithFormat:@"%@ <= %K", v26, @"longitude"];

  v27 = MEMORY[0x277CCAC30];
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  [v27 predicateWithFormat:@"%K <= %@", @"longitude", v28];
  v30 = v29 = v4;

  v31 = MEMORY[0x277CCAC30];
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v33 = [v31 predicateWithFormat:@"%@ <= %K", v32, @"latitude"];

  v34 = MEMORY[0x277CCAC30];
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v36 = [v34 predicateWithFormat:@"%K <= %@", @"latitude", v35];

  v37 = MEMORY[0x277CCA920];
  v79[0] = v65;
  v79[1] = v30;
  v61 = v33;
  v62 = v30;
  v79[2] = v33;
  v79[3] = v36;
  v60 = v36;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:4];
  v39 = [v37 andPredicateWithSubpredicates:v38];

  v59 = v39;
  [v66 addObject:v39];
  v58 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v66];
  [v29 addObject:?];
  v64 = v29;
  v40 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v29];
  [v2 setPredicate:v40];

  v41 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v78 = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  [v2 setSortDescriptors:v42];

  v43 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v44 = *(a1 + 48);
    v72[0] = 0;
    v45 = v2;
    v46 = [v44 executeFetchRequest:v2 error:v72];
    v47 = v72[0];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v43 = v46;
    v48 = [v43 countByEnumeratingWithState:&v68 objects:v77 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v69;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v69 != v50)
          {
            objc_enumerationMutation(v43);
          }

          v52 = *(*(&v68 + 1) + 8 * i);
          v53 = [MEMORY[0x277D011A0] createWithManagedObject:v52];
          v54 = v53;
          if (v53 && [v53 isEqualToMapItem:*(a1 + 40)])
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v52];
          }
        }

        v49 = [v43 countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v49);
    }

    v2 = v45;
    [v45 setFetchOffset:{objc_msgSend(v45, "fetchOffset") + objc_msgSend(v43, "count")}];
    objc_autoreleasePoolPop(context);
    v55 = v47;
  }

  while ([v43 count] && !v47);
  if (v47)
  {
    v56 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v74 = v57;
      v75 = 2112;
      v76 = v55;
      _os_log_error_impl(&dword_2304B3000, v56, OS_LOG_TYPE_ERROR, "%@, error fetching RTMapItemMO, %@", buf, 0x16u);
    }
  }
}

+ (void)updateDatabaseWithMapItem:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    *v42 = 0;
    v43 = v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__113;
    v46 = __Block_byref_object_dispose__113;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__113;
    v40 = __Block_byref_object_dispose__113;
    v41 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __68__RTMapItemMO_updateDatabaseWithMapItem_managedObjectContext_error___block_invoke;
    v31[3] = &unk_2788CE578;
    v33 = v42;
    v35 = a1;
    v11 = v9;
    v32 = v11;
    v34 = &v36;
    [v10 performBlockAndWait:v31];
    if (v37[5])
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(a2);
        v22 = v37[5];
        *buf = 138412803;
        v49 = v21;
        v50 = 2117;
        v51 = v11;
        v52 = 2112;
        v53 = v22;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, error fetching map item MO for mapItem, %{sensitive}@, error, %@", buf, 0x20u);
      }
    }

    else
    {
      v14 = *(v43 + 5);
      if (!v14 || ([v14 device], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "currentDevice"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "identifier"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v16, "isEqual:", v18), v18, v17, v16, v15, v19))
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __68__RTMapItemMO_updateDatabaseWithMapItem_managedObjectContext_error___block_invoke_60;
        v25[3] = &unk_2788CE5A0;
        v26 = v11;
        v28 = v42;
        v27 = v10;
        v29 = &v36;
        v30 = a2;
        [v27 performBlockAndWait:v25];
      }

      if (!v37[5])
      {
        goto LABEL_18;
      }

      v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        v24 = v37[5];
        *buf = 138412803;
        v49 = v23;
        v50 = 2117;
        v51 = v11;
        v52 = 2112;
        v53 = v24;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, error persisting mapItem, %{sensitive}@, error, %@", buf, 0x20u);
      }
    }

    if (a5)
    {
      *a5 = v37[5];
    }

LABEL_18:

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(v42, 8);

    goto LABEL_19;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v42 = 0;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem != nil", v42, 2u);
  }

LABEL_19:
}

void __68__RTMapItemMO_updateDatabaseWithMapItem_managedObjectContext_error___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) identifier];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 mapItemForIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __68__RTMapItemMO_updateDatabaseWithMapItem_managedObjectContext_error___block_invoke_60(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [RTMapItemMO managedObjectWithMapItem:*(a1 + 32) managedObject:*(*(*(a1 + 48) + 8) + 40) inManagedObjectContext:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 56) + 8);
    v16 = *(v4 + 40);
    [v3 save:&v16];
    v5 = v16;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"The updatedMapItemMO was nil indicating an error has occurred while updating the database.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v10 = [v7 errorWithDomain:v8 code:0 userInfo:v9];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = *(a1 + 32);
      v15 = [*(*(*(a1 + 48) + 8) + 40) debugDescription];
      *buf = 138412803;
      v18 = v13;
      v19 = 2117;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, error persisting mapItem, %{sensitive}@, with existing mapItemMO, %@, the updatedMapItemMO is nil.", buf, 0x20u);
    }
  }
}

- (id)description
{
  v25 = MEMORY[0x277CCACA8];
  v32 = [(RTCloudManagedObject *)self identifier];
  v30 = [(RTMapItemMO *)self name];
  v28 = [(RTMapItemMO *)self category];
  v31 = [(RTMapItemMO *)self categoryMUID];
  v23 = [(RTMapItemMO *)self latitude];
  v29 = [(RTMapItemMO *)self longitude];
  v21 = [(RTMapItemMO *)self uncertainty];
  v27 = [(RTMapItemMO *)self referenceFrame];
  v19 = [(RTMapItemMO *)self mapItemSource];
  v18 = [(RTMapItemMO *)self mapItemPlaceType];
  v3 = [(RTMapItemMO *)self muid];
  v4 = [(RTMapItemMO *)self resultProviderID];
  v24 = [(RTMapItemMO *)self geoMapItemHandle];
  if (v24)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v17 = v5;
  v22 = [(RTMapItemMO *)self geoMapItemIdentifier];
  if (v22)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v16 = v6;
  v20 = [(RTMapItemMO *)self creationDate];
  v7 = [v20 stringFromDate];
  v8 = [(RTMapItemMO *)self expirationDate];
  v9 = [v8 stringFromDate];
  v10 = [(RTMapItemMO *)self displayLanguage];
  if ([(RTMapItemMO *)self disputed])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [(RTMapItemMO *)self address];
  v13 = [v12 description];
  v14 = [(RTMapItemMO *)self extendedAttributesIdentifier];
  v26 = [v25 stringWithFormat:@"identifier, %@, name, %@, category, %@, categoryMUID, %@, latitude, %@, longitude, %@, uncertainty, %@, referenceFrame, %@, mapItemSource, %@, mapItemPlaceType, %@, muid, %@, resultProviderID, %@, geoMapItemHandle, %@, geoMapItemIdentifier, %@, creationDate, %@, expirationDate, %@, displayLanguage, %@, disputed, %@, address, %@, extendedAttributesIdentifier, %@", v32, v30, v28, v31, v23, v29, v21, v27, v19, v18, v3, v4, v17, v16, v7, v9, v10, v11, v13, v14];

  return v26;
}

- (void)didSave
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(RTMapItemMO *)self geoMapItemHandle];

  if (!v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "[RTMapItemMO didSave]";
      v8 = 1024;
      v9 = 323;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "map item handle should not be nil (in %s:%d)", buf, 0x12u);
    }
  }

  v5.receiver = self;
  v5.super_class = RTMapItemMO;
  [(RTMapItemMO *)&v5 didSave];
}

@end