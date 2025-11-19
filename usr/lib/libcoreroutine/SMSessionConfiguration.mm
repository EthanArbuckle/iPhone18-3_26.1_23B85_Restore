@interface SMSessionConfiguration
@end

@implementation SMSessionConfiguration

void __86__SMSessionConfiguration_RTCoreDataTransformable__createWithSMSessionConfigurationMO___block_invoke(uint64_t a1)
{
  v65[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversation];

  if (v2)
  {
    v3 = MEMORY[0x277D4AA98];
    v4 = [*(a1 + 32) conversation];
    v5 = [v3 createWithManagedObject:v4];
  }

  else
  {
    v6 = [*(a1 + 32) primaryHandle];

    if (!v6)
    {
      goto LABEL_9;
    }

    v4 = [*(a1 + 32) primaryHandle];
    v7 = [*(a1 + 32) secondaryHandles];
    v8 = v7;
    v9 = MEMORY[0x277CBEBF8];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [objc_alloc(MEMORY[0x277D4AAE8]) initWithPrimaryHandle:v4 secondaryHandles:v10];
    v12 = objc_alloc(MEMORY[0x277D4AA98]);
    v65[0] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    v5 = [v12 initWithReceiverHandles:v13 identifier:0 displayName:0];
  }

  if (v5)
  {
    v14 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v59 = *(a1 + 32);
    *buf = 136315394;
    v62 = "+[SMSessionConfiguration(RTCoreDataTransformable) createWithSMSessionConfigurationMO:]_block_invoke";
    v63 = 2112;
    v64 = v59;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%s, no conversation from SMSessionConfigurationMO, %@", buf, 0x16u);
  }

  v5 = 0;
  v14 = 1;
LABEL_12:
  v16 = [*(a1 + 32) sosReceivers];

  if (v16)
  {
    v17 = MEMORY[0x277D4AA98];
    v18 = [*(a1 + 32) sosReceivers];
    v19 = [v17 createWithManagedObject:v18];

    if (v19)
    {
      goto LABEL_20;
    }
  }

  else if ((v14 & 1) == 0)
  {
    v19 = v5;
    if (v19)
    {
      goto LABEL_20;
    }
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v58 = *(a1 + 32);
    *buf = 136315394;
    v62 = "+[SMSessionConfiguration(RTCoreDataTransformable) createWithSMSessionConfigurationMO:]_block_invoke";
    v63 = 2112;
    v64 = v58;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%s, no sosReceivers from SMSessionConfigurationMO, %@", buf, 0x16u);
  }

  v19 = 0;
LABEL_20:
  v21 = [*(a1 + 32) sessionType];
  if ((v21 - 2) < 2)
  {
    [*(a1 + 32) destinationLatitude];
    v30 = v29;
    [*(a1 + 32) destinationLongitude];
    v32 = CLLocationCoordinate2DMake(v30, v31);
    v33 = objc_alloc(MEMORY[0x277CE41F8]);
    v34 = [MEMORY[0x277CBEAA8] date];
    v24 = [v33 initWithCoordinate:v34 altitude:objc_msgSend(*(a1 + 32) horizontalAccuracy:"destinationReferenceFrame") verticalAccuracy:v32.latitude timestamp:v32.longitude referenceFrame:{0.0, 0.0, -1.0}];

    v35 = objc_alloc(MEMORY[0x277D4AB90]);
    [*(a1 + 32) expectedTravelTime];
    v37 = v36;
    [*(a1 + 32) additionalTravelTime];
    v26 = [v35 initWithExpectedTravelTime:objc_msgSend(*(a1 + 32) additionalTravelTime:"transportType") transportType:{v37, v38}];
    v39 = objc_alloc(MEMORY[0x277D4AB88]);
    [*(a1 + 32) destinationRadius];
    v41 = v40;
    v42 = [*(a1 + 32) destinationType];
    v43 = [*(a1 + 32) destinationMapItem];
    v27 = [v39 initWithCLLocation:v24 eta:v26 radius:v42 destinationType:v43 destinationMapItem:v41];

    v44 = objc_alloc(MEMORY[0x277D4AB78]);
    v45 = [*(a1 + 32) sessionIdentifier];
    v46 = [*(a1 + 32) sessionStartDate];
    v47 = [*(a1 + 32) userResponseSafeDate];
    v48 = [v44 initDestinationBoundSessionConfigurationWithConversation:v5 sessionID:v45 destination:v27 sessionStartDate:v46 userResponseSafeDate:v47 sessionSupportsHandoff:objc_msgSend(*(a1 + 32) sosReceivers:{"sessionSupportsHandoff"), v19}];
    v49 = *(*(a1 + 40) + 8);
    v50 = *(v49 + 40);
    *(v49 + 40) = v48;
  }

  else
  {
    if (v21 == 4)
    {
      v51 = objc_alloc(MEMORY[0x277D4AB78]);
      v24 = [*(a1 + 32) sessionIdentifier];
      v26 = [*(a1 + 32) sessionStartDate];
      v52 = [*(a1 + 32) sessionSupportsHandoff];
      v27 = [*(a1 + 32) sessionWorkoutIdentifier];
      v28 = [v51 initWorkoutBoundSessionConfigurationWithConversation:v5 sessionID:v24 sessionStartDate:v26 sessionSupportsHandoff:v52 sosReceivers:v19 sessionWorkoutIdentifier:v27 sessionWorkoutType:objc_msgSend(*(a1 + 32) sessionWorkoutMirrorType:{"sessionWorkoutType"), objc_msgSend(*(a1 + 32), "sessionWorkoutMirrorType")}];
    }

    else
    {
      if (v21 != 1)
      {
        v55 = objc_alloc(MEMORY[0x277D4AB78]);
        v24 = [*(a1 + 32) sessionIdentifier];
        v26 = [*(a1 + 32) sessionStartDate];
        LOBYTE(v60) = [*(a1 + 32) sessionSupportsHandoff];
        v56 = [v55 initWithConversation:v5 sessionID:v24 sessionStartDate:v26 sessionType:0 time:0 destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v60 sosReceivers:v19 sessionWorkoutIdentifier:0 sessionWorkoutType:0 sessionWorkoutMirrorType:0];
        v57 = *(*(a1 + 40) + 8);
        v27 = *(v57 + 40);
        *(v57 + 40) = v56;
        goto LABEL_28;
      }

      v22 = objc_alloc(MEMORY[0x277D4AC08]);
      v23 = [*(a1 + 32) sessionTimeBound];
      v24 = [v22 initWithTimeBound:v23];

      v25 = objc_alloc(MEMORY[0x277D4AB78]);
      v26 = [*(a1 + 32) sessionIdentifier];
      v27 = [*(a1 + 32) sessionStartDate];
      v28 = [v25 initTimeBoundSessionConfigurationWithConversation:v5 sessionID:v26 time:v24 sessionStartDate:v27 sessionSupportsHandoff:objc_msgSend(*(a1 + 32) sosReceivers:{"sessionSupportsHandoff"), v19}];
    }

    v53 = *(*(a1 + 40) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = v28;
  }

LABEL_28:
}

@end