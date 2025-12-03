@interface SMSessionConfigurationMO
+ (SMSessionConfigurationMO)initWithSessionConfiguration:(id)configuration managedObject:(id)object inManagedObjectContext:(id)context;
+ (id)managedObjectWithSessionIdentifier:(id)identifier sessionType:(unint64_t)type sessionStartDate:(id)date destinationLatitude:(double)latitude destinationLongitude:(double)longitude destinationReferenceFrame:(int)frame destinationRadius:(double)radius destinationType:(unint64_t)self0 expectedTravelTime:(double)self1 additionalTravelTime:(double)self2 transportType:(unint64_t)self3 sessionTimeBound:(id)self4 conversation:(id)self5 destinationMapItem:(id)self6 sessionSupportsHandoff:(BOOL)self7 sosReceivers:(id)self8 sessionWorkoutIdentifier:(id)self9 sessionWorkoutType:(unint64_t)workoutType sessionWorkoutMirrorType:(int64_t)mirrorType managedObject:(id)object managedObjectContext:(id)context;
@end

@implementation SMSessionConfigurationMO

+ (SMSessionConfigurationMO)initWithSessionConfiguration:(id)configuration managedObject:(id)object inManagedObjectContext:(id)context
{
  configurationCopy = configuration;
  objectCopy = object;
  contextCopy = context;
  if (!configurationCopy)
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

  if (!contextCopy)
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

  if (!objectCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    sessionID = [configurationCopy sessionID];
    sessionType = [configurationCopy sessionType];
    sessionStartDate = [configurationCopy sessionStartDate];
    destination = [configurationCopy destination];
    location = [destination location];
    [location latitude];
    v11 = v10;
    destination2 = [configurationCopy destination];
    location2 = [destination2 location];
    [location2 longitude];
    v13 = v12;
    destination3 = [configurationCopy destination];
    location3 = [destination3 location];
    referenceFrame = [location3 referenceFrame];
    destination4 = [configurationCopy destination];
    [destination4 radius];
    v15 = v14;
    destination5 = [configurationCopy destination];
    destinationType = [destination5 destinationType];
    destination6 = [configurationCopy destination];
    v41 = [destination6 eta];
    [v41 expectedTravelTime];
    v17 = v16;
    destination7 = [configurationCopy destination];
    v38 = [destination7 eta];
    [v38 additionalTravelTime];
    v19 = v18;
    destination8 = [configurationCopy destination];
    v35 = [destination8 eta];
    transportType = [v35 transportType];
    time = [configurationCopy time];
    timeBound = [time timeBound];
    conversation = [configurationCopy conversation];
    destination9 = [configurationCopy destination];
    destinationMapItem = [destination9 destinationMapItem];
    sessionSupportsHandoff = [configurationCopy sessionSupportsHandoff];
    sosReceivers = [configurationCopy sosReceivers];
    sessionWorkoutIdentifier = [configurationCopy sessionWorkoutIdentifier];
    LOBYTE(v31) = sessionSupportsHandoff;
    v26 = [self managedObjectWithSessionIdentifier:sessionID sessionType:sessionType sessionStartDate:sessionStartDate destinationLatitude:referenceFrame destinationLongitude:destinationType destinationReferenceFrame:transportType destinationRadius:v11 destinationType:v13 expectedTravelTime:v15 additionalTravelTime:v17 transportType:v19 sessionTimeBound:timeBound conversation:conversation destinationMapItem:destinationMapItem sessionSupportsHandoff:v31 sosReceivers:sosReceivers sessionWorkoutIdentifier:sessionWorkoutIdentifier sessionWorkoutType:objc_msgSend(configurationCopy sessionWorkoutMirrorType:"sessionWorkoutType") managedObject:objc_msgSend(configurationCopy managedObjectContext:{"sessionWorkoutMirrorType"), objectCopy, contextCopy}];

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

+ (id)managedObjectWithSessionIdentifier:(id)identifier sessionType:(unint64_t)type sessionStartDate:(id)date destinationLatitude:(double)latitude destinationLongitude:(double)longitude destinationReferenceFrame:(int)frame destinationRadius:(double)radius destinationType:(unint64_t)self0 expectedTravelTime:(double)self1 additionalTravelTime:(double)self2 transportType:(unint64_t)self3 sessionTimeBound:(id)self4 conversation:(id)self5 destinationMapItem:(id)self6 sessionSupportsHandoff:(BOOL)self7 sosReceivers:(id)self8 sessionWorkoutIdentifier:(id)self9 sessionWorkoutType:(unint64_t)workoutType sessionWorkoutMirrorType:(int64_t)mirrorType managedObject:(id)object managedObjectContext:(id)context
{
  identifierCopy = identifier;
  dateCopy = date;
  boundCopy = bound;
  conversationCopy = conversation;
  itemCopy = item;
  receiversCopy = receivers;
  workoutIdentifierCopy = workoutIdentifier;
  objectCopy = object;
  contextCopy = context;
  if (contextCopy)
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
    v46 = objectCopy;
    v47 = contextCopy;
    v48 = identifierCopy;
    typeCopy = type;
    v49 = dateCopy;
    latitudeCopy = latitude;
    longitudeCopy = longitude;
    frameCopy = frame;
    radiusCopy = radius;
    destinationTypeCopy = destinationType;
    timeCopy = time;
    travelTimeCopy = travelTime;
    transportTypeCopy = transportType;
    v38 = boundCopy;
    v50 = boundCopy;
    v51 = conversationCopy;
    v52 = itemCopy;
    handoffCopy = handoff;
    v53 = receiversCopy;
    v54 = workoutIdentifierCopy;
    workoutTypeCopy = workoutType;
    mirrorTypeCopy = mirrorType;
    [v47 performBlockAndWait:v45];
    v39 = v69[5];

    _Block_object_dispose(&v68, 8);
  }

  else
  {
    v38 = boundCopy;
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