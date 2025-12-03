@interface RTCLLocationMO
+ (id)managedObjectWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)self0 speedAccuracy:(double)self1 timestamp:(id)self2 type:(id)self3 signalEnvironmentType:(id)self4 integrity:(id)self5 inManagedObjectContext:(id)self6;
@end

@implementation RTCLLocationMO

+ (id)managedObjectWithLatitude:(double)latitude longitude:(double)longitude altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)self0 speedAccuracy:(double)self1 timestamp:(id)self2 type:(id)self3 signalEnvironmentType:(id)self4 integrity:(id)self5 inManagedObjectContext:(id)self6
{
  timestampCopy = timestamp;
  typeCopy = type;
  environmentTypeCopy = environmentType;
  integrityCopy = integrity;
  contextCopy = context;
  v32 = contextCopy;
  if (contextCopy)
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
    v37 = contextCopy;
    latitudeCopy = latitude;
    longitudeCopy = longitude;
    altitudeCopy = altitude;
    accuracyCopy = accuracy;
    verticalAccuracyCopy = verticalAccuracy;
    courseCopy = course;
    courseAccuracyCopy = courseAccuracy;
    speedCopy = speed;
    speedAccuracyCopy = speedAccuracy;
    v38 = timestampCopy;
    v39 = typeCopy;
    v40 = environmentTypeCopy;
    v41 = integrityCopy;
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