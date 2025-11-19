@interface RTCLLocationMO
+ (id)managedObjectWithLatitude:(double)a3 longitude:(double)a4 altitude:(double)a5 horizontalAccuracy:(double)a6 verticalAccuracy:(double)a7 course:(double)a8 courseAccuracy:(double)a9 speed:(double)a10 speedAccuracy:(double)a11 timestamp:(id)a12 type:(id)a13 signalEnvironmentType:(id)a14 integrity:(id)a15 inManagedObjectContext:(id)a16;
@end

@implementation RTCLLocationMO

+ (id)managedObjectWithLatitude:(double)a3 longitude:(double)a4 altitude:(double)a5 horizontalAccuracy:(double)a6 verticalAccuracy:(double)a7 course:(double)a8 courseAccuracy:(double)a9 speed:(double)a10 speedAccuracy:(double)a11 timestamp:(id)a12 type:(id)a13 signalEnvironmentType:(id)a14 integrity:(id)a15 inManagedObjectContext:(id)a16
{
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v32 = v31;
  if (v31)
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__52;
    v56 = __Block_byref_object_dispose__52;
    v57 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __211__RTCLLocationMO_managedObjectWithLatitude_longitude_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_type_signalEnvironmentType_integrity_inManagedObjectContext___block_invoke;
    v36[3] = &unk_2788C93B8;
    v42 = &v52;
    v37 = v31;
    v43 = a3;
    v44 = a4;
    v45 = a5;
    v46 = a6;
    v47 = a7;
    v48 = a8;
    v49 = a9;
    v50 = a10;
    v51 = a11;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    [v37 performBlockAndWait:v36];
    v33 = v53[5];

    _Block_object_dispose(&v52, 8);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

uint64_t __211__RTCLLocationMO_managedObjectWithLatitude_longitude_altitude_horizontalAccuracy_verticalAccuracy_course_courseAccuracy_speed_speedAccuracy_timestamp_type_signalEnvironmentType_integrity_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTCLLocationMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 72) + 8) + 40) setLatitude:*(a1 + 80)];
  [*(*(*(a1 + 72) + 8) + 40) setLongitude:*(a1 + 88)];
  [*(*(*(a1 + 72) + 8) + 40) setAltitude:*(a1 + 96)];
  [*(*(*(a1 + 72) + 8) + 40) setHorizontalAccuracy:*(a1 + 104)];
  [*(*(*(a1 + 72) + 8) + 40) setVerticalAccuracy:*(a1 + 112)];
  [*(*(*(a1 + 72) + 8) + 40) setCourse:*(a1 + 120)];
  [*(*(*(a1 + 72) + 8) + 40) setCourseAccuracy:*(a1 + 128)];
  [*(*(*(a1 + 72) + 8) + 40) setSpeed:*(a1 + 136)];
  [*(*(*(a1 + 72) + 8) + 40) setSpeedAccuracy:*(a1 + 144)];
  [*(*(*(a1 + 72) + 8) + 40) setTimestamp:*(a1 + 40)];
  [*(*(*(a1 + 72) + 8) + 40) setType:*(a1 + 48)];
  [*(*(*(a1 + 72) + 8) + 40) setSignalEnvironmentType:*(a1 + 56)];
  v5 = *(a1 + 64);
  v6 = *(*(*(a1 + 72) + 8) + 40);

  return [v6 setIntegrity:v5];
}

@end