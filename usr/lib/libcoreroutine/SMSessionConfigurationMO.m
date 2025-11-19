@interface SMSessionConfigurationMO
+ (SMSessionConfigurationMO)initWithSessionConfiguration:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
+ (id)managedObjectWithSessionIdentifier:(id)a3 sessionType:(unint64_t)a4 sessionStartDate:(id)a5 destinationLatitude:(double)a6 destinationLongitude:(double)a7 destinationReferenceFrame:(int)a8 destinationRadius:(double)a9 destinationType:(unint64_t)a10 expectedTravelTime:(double)a11 additionalTravelTime:(double)a12 transportType:(unint64_t)a13 sessionTimeBound:(id)a14 conversation:(id)a15 destinationMapItem:(id)a16 sessionSupportsHandoff:(BOOL)a17 sosReceivers:(id)a18 sessionWorkoutIdentifier:(id)a19 sessionWorkoutType:(unint64_t)a20 sessionWorkoutMirrorType:(int64_t)a21 managedObject:(id)a22 managedObjectContext:(id)a23;
@end

@implementation SMSessionConfigurationMO

+ (SMSessionConfigurationMO)initWithSessionConfiguration:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v54 = a5;
  if (!v8)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v57 = 0;
    v28 = "Invalid parameter not satisfying: sessionConfiguration";
    v29 = &v57;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, v28, v29, 2u);
    goto LABEL_13;
  }

  if (!v54)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v56 = 0;
    v28 = "Invalid parameter not satisfying: managedObjectContext";
    v29 = &v56;
    goto LABEL_12;
  }

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v53 = [v8 sessionID];
    v45 = [v8 sessionType];
    v44 = [v8 sessionStartDate];
    v52 = [v8 destination];
    v51 = [v52 location];
    [v51 latitude];
    v11 = v10;
    v50 = [v8 destination];
    v49 = [v50 location];
    [v49 longitude];
    v13 = v12;
    v48 = [v8 destination];
    v47 = [v48 location];
    v39 = [v47 referenceFrame];
    v46 = [v8 destination];
    [v46 radius];
    v15 = v14;
    v43 = [v8 destination];
    v36 = [v43 destinationType];
    v42 = [v8 destination];
    v41 = [v42 eta];
    [v41 expectedTravelTime];
    v17 = v16;
    v40 = [v8 destination];
    v38 = [v40 eta];
    [v38 additionalTravelTime];
    v19 = v18;
    v37 = [v8 destination];
    v35 = [v37 eta];
    v33 = [v35 transportType];
    v34 = [v8 time];
    v32 = [v34 timeBound];
    v20 = [v8 conversation];
    v21 = [v8 destination];
    v22 = [v21 destinationMapItem];
    v23 = [v8 sessionSupportsHandoff];
    v24 = [v8 sosReceivers];
    v25 = [v8 sessionWorkoutIdentifier];
    LOBYTE(v31) = v23;
    v26 = [a1 managedObjectWithSessionIdentifier:v53 sessionType:v45 sessionStartDate:v44 destinationLatitude:v39 destinationLongitude:v36 destinationReferenceFrame:v33 destinationRadius:v11 destinationType:v13 expectedTravelTime:v15 additionalTravelTime:v17 transportType:v19 sessionTimeBound:v32 conversation:v20 destinationMapItem:v22 sessionSupportsHandoff:v31 sosReceivers:v24 sessionWorkoutIdentifier:v25 sessionWorkoutType:objc_msgSend(v8 sessionWorkoutMirrorType:"sessionWorkoutType") managedObject:objc_msgSend(v8 managedObjectContext:{"sessionWorkoutMirrorType"), v9, v54}];

    goto LABEL_14;
  }

  v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v28 = "Invalid parameter not satisfying: [managedObject isKindOfClass:[SMSessionConfigurationMO class]]";
    v29 = buf;
    goto LABEL_12;
  }

LABEL_13:

  v26 = 0;
LABEL_14:

  return v26;
}

+ (id)managedObjectWithSessionIdentifier:(id)a3 sessionType:(unint64_t)a4 sessionStartDate:(id)a5 destinationLatitude:(double)a6 destinationLongitude:(double)a7 destinationReferenceFrame:(int)a8 destinationRadius:(double)a9 destinationType:(unint64_t)a10 expectedTravelTime:(double)a11 additionalTravelTime:(double)a12 transportType:(unint64_t)a13 sessionTimeBound:(id)a14 conversation:(id)a15 destinationMapItem:(id)a16 sessionSupportsHandoff:(BOOL)a17 sosReceivers:(id)a18 sessionWorkoutIdentifier:(id)a19 sessionWorkoutType:(unint64_t)a20 sessionWorkoutMirrorType:(int64_t)a21 managedObject:(id)a22 managedObjectContext:(id)a23
{
  v29 = a3;
  v30 = a5;
  v31 = a14;
  v32 = a15;
  v33 = a16;
  v34 = a18;
  v35 = a19;
  v36 = a22;
  v37 = a23;
  if (v37)
  {
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__204;
    v72 = __Block_byref_object_dispose__204;
    v73 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __436__SMSessionConfigurationMO_managedObjectWithSessionIdentifier_sessionType_sessionStartDate_destinationLatitude_destinationLongitude_destinationReferenceFrame_destinationRadius_destinationType_expectedTravelTime_additionalTravelTime_transportType_sessionTimeBound_conversation_destinationMapItem_sessionSupportsHandoff_sosReceivers_sessionWorkoutIdentifier_sessionWorkoutType_sessionWorkoutMirrorType_managedObject_managedObjectContext___block_invoke;
    v45[3] = &unk_2788D3718;
    v55 = &v68;
    v46 = v36;
    v47 = v37;
    v48 = v29;
    v56 = a4;
    v49 = v30;
    v57 = a6;
    v58 = a7;
    v66 = a8;
    v59 = a9;
    v60 = a10;
    v61 = a11;
    v62 = a12;
    v63 = a13;
    v38 = v31;
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v67 = a17;
    v53 = v34;
    v54 = v35;
    v64 = a20;
    v65 = a21;
    [v47 performBlockAndWait:v45];
    v39 = v69[5];

    _Block_object_dispose(&v68, 8);
  }

  else
  {
    v38 = v31;
    v39 = 0;
  }

  return v39;
}

uint64_t __436__SMSessionConfigurationMO_managedObjectWithSessionIdentifier_sessionType_sessionStartDate_destinationLatitude_destinationLongitude_destinationReferenceFrame_destinationRadius_destinationType_expectedTravelTime_additionalTravelTime_transportType_sessionTimeBound_conversation_destinationMapItem_sessionSupportsHandoff_sosReceivers_sessionWorkoutIdentifier_sessionWorkoutType_sessionWorkoutMirrorType_managedObject_managedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[SMSessionConfigurationMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 104) + 8) + 40), v3);
  if (!v2)
  {
  }

  [*(*(*(a1 + 104) + 8) + 40) setSessionIdentifier:*(a1 + 48)];
  [*(*(*(a1 + 104) + 8) + 40) setSessionType:*(a1 + 112)];
  [*(*(*(a1 + 104) + 8) + 40) setSessionStartDate:*(a1 + 56)];
  [*(*(*(a1 + 104) + 8) + 40) setDestinationLatitude:*(a1 + 120)];
  [*(*(*(a1 + 104) + 8) + 40) setDestinationLongitude:*(a1 + 128)];
  [*(*(*(a1 + 104) + 8) + 40) setDestinationReferenceFrame:*(a1 + 192)];
  [*(*(*(a1 + 104) + 8) + 40) setDestinationRadius:*(a1 + 136)];
  [*(*(*(a1 + 104) + 8) + 40) setDestinationType:*(a1 + 144)];
  [*(*(*(a1 + 104) + 8) + 40) setExpectedTravelTime:*(a1 + 152)];
  [*(*(*(a1 + 104) + 8) + 40) setAdditionalTravelTime:*(a1 + 160)];
  [*(*(*(a1 + 104) + 8) + 40) setTransportType:*(a1 + 168)];
  [*(*(*(a1 + 104) + 8) + 40) setSessionTimeBound:*(a1 + 64)];
  v4 = [SMConversationMO managedObjectWithSMConversation:*(a1 + 72) inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 104) + 8) + 40) setConversation:v4];

  [*(*(*(a1 + 104) + 8) + 40) setDestinationMapItem:*(a1 + 80)];
  [*(*(*(a1 + 104) + 8) + 40) setSessionSupportsHandoff:*(a1 + 196)];
  v5 = [SMConversationMO managedObjectWithSMConversation:*(a1 + 88) inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 104) + 8) + 40) setSosReceivers:v5];

  [*(*(*(a1 + 104) + 8) + 40) setSessionWorkoutIdentifier:*(a1 + 96)];
  [*(*(*(a1 + 104) + 8) + 40) setSessionWorkoutType:*(a1 + 176)];
  v6 = *(a1 + 184);
  v7 = *(*(*(a1 + 104) + 8) + 40);

  return [v7 setSessionWorkoutMirrorType:v6];
}

@end