@interface RTPeopleDensityMO
+ (id)managedObjectWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 densityScore:(double)a6 scanDuration:(double)a7 rssiHistogram:(id)a8 inManagedObjectContext:(id)a9;
+ (id)managedObjectWithPeopleDensity:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTPeopleDensityMO

+ (id)managedObjectWithPeopleDensity:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v22 = 0;
    v18 = "Invalid parameter not satisfying: peopleDensity";
    v19 = &v22;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, v19, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [v5 uuid];
    v9 = [v5 startDate];
    v10 = [v5 endDate];
    [v5 densityScore];
    v12 = v11;
    [v5 scanDuration];
    v14 = v13;
    v15 = [v5 rssiHistogram];
    v16 = [RTPeopleDensityMO managedObjectWithIdentifier:v8 startDate:v9 endDate:v10 densityScore:v15 scanDuration:v7 rssiHistogram:v12 inManagedObjectContext:v14];

    goto LABEL_8;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v21 = 0;
    v18 = "Invalid parameter not satisfying: managedObjectContext";
    v19 = &v21;
    goto LABEL_12;
  }

LABEL_7:

  v16 = 0;
LABEL_8:

  return v16;
}

+ (id)managedObjectWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 densityScore:(double)a6 scanDuration:(double)a7 rssiHistogram:(id)a8 inManagedObjectContext:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = v19;
  if (v19)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__30;
    v36 = __Block_byref_object_dispose__30;
    v37 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __130__RTPeopleDensityMO_managedObjectWithIdentifier_startDate_endDate_densityScore_scanDuration_rssiHistogram_inManagedObjectContext___block_invoke;
    v23[3] = &unk_2788C5E90;
    v29 = &v32;
    v24 = v19;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v30 = a6;
    v31 = a7;
    v28 = v18;
    [v24 performBlockAndWait:v23];
    v21 = v33[5];

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __130__RTPeopleDensityMO_managedObjectWithIdentifier_startDate_endDate_densityScore_scanDuration_rssiHistogram_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTPeopleDensityMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 72) + 8) + 40) setIdentifier:*(a1 + 40)];
  [*(*(*(a1 + 72) + 8) + 40) setStartDate:*(a1 + 48)];
  [*(*(*(a1 + 72) + 8) + 40) setEndDate:*(a1 + 56)];
  [*(*(*(a1 + 72) + 8) + 40) setDensityScore:*(a1 + 80)];
  [*(*(*(a1 + 72) + 8) + 40) setScanDuration:*(a1 + 88)];
  v5 = *(a1 + 64);
  v6 = *(*(*(a1 + 72) + 8) + 40);

  return [v6 setRssiHistogram:v5];
}

@end