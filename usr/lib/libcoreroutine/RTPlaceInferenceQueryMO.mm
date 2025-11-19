@interface RTPlaceInferenceQueryMO
+ (id)managedObjectWithPlaceInferenceQuery:(id)a3 inManagedObjectContext:(id)a4;
- (id)mapItem;
- (void)setMapItem:(id)a3;
@end

@implementation RTPlaceInferenceQueryMO

- (id)mapItem
{
  v17 = *MEMORY[0x277D85DE8];
  [(RTPlaceInferenceQueryMO *)self willAccessValueForKey:@"mapItem"];
  v4 = [(RTPlaceInferenceQueryMO *)self cachedMapItem];

  if (!v4)
  {
    v5 = [(RTPlaceInferenceQueryMO *)self mapItemIdentifier];
    v12 = 0;
    v6 = [RTMapItemMO mapItemForIdentifier:v5 error:&v12];
    v7 = v12;
    [(RTPlaceInferenceQueryMO *)self setCachedMapItem:v6];

    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412547;
        v14 = v11;
        v15 = 2117;
        v16 = v7;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, Error fulfilling transient property mapItem, %{sensitive}@", buf, 0x16u);
      }
    }
  }

  [(RTPlaceInferenceQueryMO *)self didAccessValueForKey:@"mapItem"];
  v9 = [(RTPlaceInferenceQueryMO *)self cachedMapItem];

  return v9;
}

+ (id)managedObjectWithPlaceInferenceQuery:(id)a3 inManagedObjectContext:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v16 = 0;
      goto LABEL_21;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: placeInferenceQuery";
LABEL_26:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_10;
  }

  if (!v7)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_26;
  }

  v9 = [v6 placeInference];
  v10 = [v9 mapItem];

  if (v10)
  {
    *buf = 0;
    v72 = buf;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__38;
    v75 = __Block_byref_object_dispose__38;
    v76 = 0;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __87__RTPlaceInferenceQueryMO_managedObjectWithPlaceInferenceQuery_inManagedObjectContext___block_invoke;
    v67[3] = &unk_2788C8430;
    v11 = v6;
    v68 = v11;
    v70 = buf;
    v12 = v8;
    v69 = v12;
    [v12 performBlockAndWait:v67];
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__38;
    v65 = __Block_byref_object_dispose__38;
    v66 = 0;
    if ([*(v72 + 5) count])
    {
      if ([*(v72 + 5) count] == 1)
      {
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __87__RTPlaceInferenceQueryMO_managedObjectWithPlaceInferenceQuery_inManagedObjectContext___block_invoke_3;
        v52[3] = &unk_2788C8458;
        v53 = v11;
        v55 = buf;
        v54 = v12;
        v56 = &v61;
        [v54 performBlockAndWait:v52];

        v13 = v53;
      }

      else
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *v77 = 0;
          _os_log_fault_impl(&dword_2304B3000, v13, OS_LOG_TYPE_FAULT, "multiple mapItemMOs with the same identifier", v77, 2u);
        }
      }
    }

    else
    {
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __87__RTPlaceInferenceQueryMO_managedObjectWithPlaceInferenceQuery_inManagedObjectContext___block_invoke_2;
      v57[3] = &unk_2788C51F0;
      v58 = v11;
      v59 = v12;
      v60 = &v61;
      [v59 performBlockAndWait:v57];

      v13 = v58;
    }

    v17 = v62[5];
    if (v17)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v50 = NSStringFromSelector(a2);
        v51 = v62[5];
        *v77 = 138412803;
        v78 = v50;
        v79 = 2117;
        v80 = v11;
        v81 = 2112;
        v82 = v51;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%@, error persisting place inference query, %{sensitive}@, error, %@", v77, 0x20u);
      }
    }

    _Block_object_dispose(&v61, 8);

    _Block_object_dispose(buf, 8);
    if (v17)
    {
      v16 = 0;
      goto LABEL_22;
    }
  }

  v16 = [[RTPlaceInferenceQueryMO alloc] initWithContext:v8];
  v19 = [v6 identifier];
  [(RTPlaceInferenceQueryMO *)v16 setIdentifier:v19];

  v20 = [v6 placeInference];
  [v20 confidence];
  [(RTPlaceInferenceQueryMO *)v16 setConfidence:?];

  v21 = [v6 date];
  [(RTPlaceInferenceQueryMO *)v16 setDate:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "errorCode")}];
  [(RTPlaceInferenceQueryMO *)v16 setErrorCode:v22];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "fidelityPolicyMask")}];
  [(RTPlaceInferenceQueryMO *)v16 setFidelityPolicyMask:v23];

  v24 = [v6 placeInference];
  v25 = [v24 referenceLocation];
  v26 = [v25 date];
  [(RTPlaceInferenceQueryMO *)v16 setLocationDate:v26];

  v27 = [v6 placeInference];
  v28 = [v27 referenceLocation];
  [v28 latitude];
  [(RTPlaceInferenceQueryMO *)v16 setLocationLatitude:?];

  v29 = [v6 placeInference];
  v30 = [v29 referenceLocation];
  [v30 longitude];
  [(RTPlaceInferenceQueryMO *)v16 setLocationLongitude:?];

  v31 = [v6 placeInference];
  v32 = [v31 referenceLocation];
  [v32 horizontalUncertainty];
  [(RTPlaceInferenceQueryMO *)v16 setLocationUncertainty:?];

  v33 = MEMORY[0x277CCABB0];
  v34 = [v6 placeInference];
  v35 = [v34 referenceLocation];
  v36 = [v33 numberWithUnsignedInt:{objc_msgSend(v35, "referenceFrame")}];
  [(RTPlaceInferenceQueryMO *)v16 setLocationReferenceFrame:v36];

  v37 = [v6 placeInference];
  v38 = [v37 mapItem];
  v39 = [v38 identifier];
  [(RTPlaceInferenceQueryMO *)v16 setMapItemIdentifier:v39];

  v40 = MEMORY[0x277CCABB0];
  v41 = [v6 placeInference];
  v42 = [v40 numberWithUnsignedInteger:{objc_msgSend(v41, "placeType")}];
  [(RTPlaceInferenceQueryMO *)v16 setPlaceType:v42];

  v43 = [v6 sourceIdentifier];
  [(RTPlaceInferenceQueryMO *)v16 setSourceIdentifier:v43];

  v44 = MEMORY[0x277CCABB0];
  v45 = [v6 placeInference];
  v46 = [v44 numberWithUnsignedInteger:{objc_msgSend(v45, "userType")}];
  [(RTPlaceInferenceQueryMO *)v16 setUserType:v46];

  v47 = MEMORY[0x277CCABB0];
  v14 = [v6 placeInference];
  v48 = [v47 numberWithUnsignedInteger:{-[NSObject userTypeSource](v14, "userTypeSource")}];
  [(RTPlaceInferenceQueryMO *)v16 setUserTypeSource:v48];

LABEL_21:
LABEL_22:

  return v16;
}

void __87__RTPlaceInferenceQueryMO_managedObjectWithPlaceInferenceQuery_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = +[RTMapItemMO fetchRequest];
  v3 = MEMORY[0x277CCAC30];
  v4 = [*(a1 + 32) placeInference];
  v5 = [v4 mapItem];
  v6 = [v5 identifier];
  v7 = [v3 predicateWithFormat:@"%K == %@", @"identifier", v6];
  [v2 setPredicate:v7];

  v8 = *(a1 + 40);
  v13 = 0;
  v9 = [v8 executeFetchRequest:v2 error:&v13];
  v10 = v13;
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
}

void __87__RTPlaceInferenceQueryMO_managedObjectWithPlaceInferenceQuery_inManagedObjectContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) placeInference];
  v3 = [v2 mapItem];
  v4 = [RTMapItemMO managedObjectWithMapItem:v3 inManagedObjectContext:*(a1 + 40)];

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  [v5 save:&obj];
  objc_storeStrong((v6 + 40), obj);
}

void __87__RTPlaceInferenceQueryMO_managedObjectWithPlaceInferenceQuery_inManagedObjectContext___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) placeInference];
  v3 = [v2 mapItem];
  v4 = [*(*(*(a1 + 48) + 8) + 40) firstObject];
  v5 = [RTMapItemMO managedObjectWithMapItem:v3 managedObject:v4 inManagedObjectContext:*(a1 + 40)];

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  [v6 save:&obj];
  objc_storeStrong((v7 + 40), obj);
}

- (void)setMapItem:(id)a3
{
  v4 = a3;
  [(RTPlaceInferenceQueryMO *)self willChangeValueForKey:@"mapItem"];
  v5 = [v4 identifier];
  [(RTPlaceInferenceQueryMO *)self setMapItemIdentifier:v5];

  [(RTPlaceInferenceQueryMO *)self setCachedMapItem:v4];

  [(RTPlaceInferenceQueryMO *)self didChangeValueForKey:@"mapItem"];
}

@end