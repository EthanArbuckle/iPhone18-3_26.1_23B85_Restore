@interface SMCache
@end

@implementation SMCache

void __56__SMCache_RTCoreDataTransformable__createWithSMCacheMO___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4AA70]);
  v34 = [*(a1 + 32) identifier];
  v3 = MEMORY[0x277D4AAB8];
  v32 = [*(a1 + 32) deviceStatus];
  v33 = [v3 createWithManagedObject:v32];
  v4 = MEMORY[0x277D4AA70];
  v31 = [*(a1 + 32) locationsDuringSession];
  v5 = [v4 _getOrCreateManagedLocationsFromLocations:v31];
  v6 = MEMORY[0x277D4AB28];
  v30 = [*(a1 + 32) unlockLocation];
  v26 = [v6 createWithManagedObject:v30];
  v7 = MEMORY[0x277D4AB28];
  v29 = [*(a1 + 32) lockLocation];
  v24 = [v7 createWithManagedObject:v29];
  v8 = MEMORY[0x277D4AB28];
  v28 = [*(a1 + 32) mostRecentLocation];
  v23 = [v8 createWithManagedObject:v28];
  v9 = MEMORY[0x277D4AB28];
  v27 = [*(a1 + 32) startingLocation];
  v22 = [v9 createWithManagedObject:v27];
  v10 = MEMORY[0x277D4AB28];
  v25 = [*(a1 + 32) offWristLocation];
  v21 = [v10 createWithManagedObject:v25];
  v11 = MEMORY[0x277D4AB28];
  v12 = [*(a1 + 32) parkedCarLocation];
  v13 = [v11 createWithManagedObject:v12];
  v14 = [*(a1 + 32) destinationMapItem];
  v15 = MEMORY[0x277D4AC40];
  v16 = [*(a1 + 32) workoutEvents];
  v17 = [v15 createWithSMWorkoutEventMOs:v16];
  v18 = [v2 initWithIdentifier:v34 deviceStatus:v33 locationsDuringSession:v5 unlockLocation:v26 lockLocation:v24 mostRecentLocation:v23 startingLocation:v22 offWristLocation:v21 parkedCarLocation:v13 destinationMapItem:v14 workoutEvents:v17];
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

@end