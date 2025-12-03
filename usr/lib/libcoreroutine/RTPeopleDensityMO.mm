@interface RTPeopleDensityMO
+ (id)managedObjectWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate densityScore:(double)score scanDuration:(double)duration rssiHistogram:(id)histogram inManagedObjectContext:(id)context;
+ (id)managedObjectWithPeopleDensity:(id)density inManagedObjectContext:(id)context;
@end

@implementation RTPeopleDensityMO

+ (id)managedObjectWithPeopleDensity:(id)density inManagedObjectContext:(id)context
{
  densityCopy = density;
  contextCopy = context;
  v7 = contextCopy;
  if (!densityCopy)
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

  if (contextCopy)
  {
    uuid = [densityCopy uuid];
    startDate = [densityCopy startDate];
    endDate = [densityCopy endDate];
    [densityCopy densityScore];
    v12 = v11;
    [densityCopy scanDuration];
    v14 = v13;
    rssiHistogram = [densityCopy rssiHistogram];
    v16 = [RTPeopleDensityMO managedObjectWithIdentifier:uuid startDate:startDate endDate:endDate densityScore:rssiHistogram scanDuration:v7 rssiHistogram:v12 inManagedObjectContext:v14];

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

+ (id)managedObjectWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate densityScore:(double)score scanDuration:(double)duration rssiHistogram:(id)histogram inManagedObjectContext:(id)context
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  histogramCopy = histogram;
  contextCopy = context;
  v20 = contextCopy;
  if (contextCopy)
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
    v24 = contextCopy;
    v25 = identifierCopy;
    v26 = dateCopy;
    v27 = endDateCopy;
    scoreCopy = score;
    durationCopy = duration;
    v28 = histogramCopy;
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