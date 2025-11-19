@interface SMReceiverNotificationUtilities
+ (void)fetchDestinationNameFromMapItem:(id)a3 completionHandler:(id)a4;
+ (void)prepareNotificationBodyFromMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation SMReceiverNotificationUtilities

+ (void)prepareNotificationBodyFromMessage:(id)a3 completionHandler:(id)a4
{
  v117 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() messageType];
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__0;
  v109 = __Block_byref_object_dispose__0;
  v110 = 0;
  switch(v9)
  {
    case 3:
      v21 = [v7 summaryText];
      v22 = v106[5];
      v106[5] = v21;

      v23 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        v27 = v106[5];
        *buf = 138412802;
        v112 = v25;
        v113 = 2112;
        v114 = v26;
        v115 = 2112;
        v116 = v27;
        _os_log_impl(&dword_26455D000, v23, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageType SMMessageTypeKeyRelease summaryText: %@", buf, 0x20u);
      }

      v8[2](v8, v106[5], 0);
      goto LABEL_42;
    case 2:
      v16 = v7;
      v17 = [v16 summaryText];
      v18 = v106[5];
      v106[5] = v17;

      if ([v16 sessionEndReason] == 1 && objc_msgSend(v16, "destinationType") == 4)
      {
        v19 = [v16 destinationMapItem];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke_66;
        v88[3] = &unk_279B65438;
        v91 = a1;
        v92 = a2;
        v89 = v8;
        v90 = &v105;
        [SMReceiverNotificationUtilities fetchDestinationNameFromMapItem:v19 completionHandler:v88];

        v20 = v89;
      }

      else
      {
        v8[2](v8, v106[5], 0);
        v20 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = NSStringFromSelector(a2);
          v36 = v106[5];
          *buf = 138412802;
          v112 = v34;
          v113 = 2112;
          v114 = v35;
          v115 = 2112;
          v116 = v36;
          _os_log_impl(&dword_26455D000, v20, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageTypeSessionEnd DEFAULT summaryText: %@", buf, 0x20u);
        }
      }

      goto LABEL_41;
    case 1:
      v10 = v7;
      v11 = [v10 summaryText];
      v12 = v106[5];
      v106[5] = v11;

      v13 = [v10 coarseEstimatedEndTime];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [v10 estimatedEndTime];
      }

      v20 = v15;

      v37 = [v10 sessionType];
      if (v37 == 1)
      {
        v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v39 = [v52 localizedStringForKey:@"START_MESSAGE_TIME_BOUND_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Timer %@" table:0];

        v53 = MEMORY[0x277CCACA8];
        v54 = [v20 roundedTime];
        v55 = [v54 absoluteTimeString:0 preposition:1 capitalized:0];
        v56 = [v53 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:0, v55];
        v57 = v106[5];
        v106[5] = v56;

        v47 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v58 = objc_opt_class();
          v59 = NSStringFromClass(v58);
          v60 = NSStringFromSelector(a2);
          v61 = v106[5];
          *buf = 138412802;
          v112 = v59;
          v113 = 2112;
          v114 = v60;
          v115 = 2112;
          v116 = v61;
          _os_log_impl(&dword_26455D000, v47, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeTimeBound summaryText: %@", buf, 0x20u);
        }
      }

      else
      {
        if (v37 != 2)
        {
          if (v37 == 3)
          {
            v38 = [v10 destinationMapItem];
            v93[0] = MEMORY[0x277D85DD0];
            v93[1] = 3221225472;
            v93[2] = __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke_53;
            v93[3] = &unk_279B65410;
            v96 = &v105;
            v94 = v20;
            v97 = a1;
            v98 = a2;
            v95 = v8;
            [SMReceiverNotificationUtilities fetchDestinationNameFromMapItem:v38 completionHandler:v93];

            v39 = v94;
          }

          else
          {
            v8[2](v8, v106[5], 0);
            v39 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v62 = objc_opt_class();
              v63 = NSStringFromClass(v62);
              v64 = NSStringFromSelector(a2);
              v65 = v106[5];
              *buf = 138412802;
              v112 = v63;
              v113 = 2112;
              v114 = v64;
              v115 = 2112;
              v116 = v65;
              _os_log_impl(&dword_26455D000, v39, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageTypeSessionStart DEFAULT summaryText: %@", buf, 0x20u);
            }
          }

          goto LABEL_40;
        }

        v40 = [v10 destinationType];
        switch(v40)
        {
          case 3:
            v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v39 = [v76 localizedStringForKey:@"START_MESSAGE_SCHOOL_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: School %@" table:0];

            v77 = MEMORY[0x277CCACA8];
            v78 = [v20 roundedTime];
            v79 = [v78 absoluteTimeString:0 preposition:1 capitalized:0];
            v80 = [v77 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:0, v79];
            v81 = v106[5];
            v106[5] = v80;

            v47 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v82 = objc_opt_class();
              v83 = NSStringFromClass(v82);
              v84 = NSStringFromSelector(a2);
              v85 = v106[5];
              *buf = 138412802;
              v112 = v83;
              v113 = 2112;
              v114 = v84;
              v115 = 2112;
              v116 = v85;
              _os_log_impl(&dword_26455D000, v47, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeDestinationBound SCHOOL summaryText: %@", buf, 0x20u);
            }

            break;
          case 2:
            v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v39 = [v66 localizedStringForKey:@"START_MESSAGE_WORK_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Work %@" table:0];

            v67 = MEMORY[0x277CCACA8];
            v68 = [v20 roundedTime];
            v69 = [v68 absoluteTimeString:0 preposition:1 capitalized:0];
            v70 = [v67 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:0, v69];
            v71 = v106[5];
            v106[5] = v70;

            v47 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v72 = objc_opt_class();
              v73 = NSStringFromClass(v72);
              v74 = NSStringFromSelector(a2);
              v75 = v106[5];
              *buf = 138412802;
              v112 = v73;
              v113 = 2112;
              v114 = v74;
              v115 = 2112;
              v116 = v75;
              _os_log_impl(&dword_26455D000, v47, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeDestinationBound WORK summaryText: %@", buf, 0x20u);
            }

            break;
          case 1:
            v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v39 = [v41 localizedStringForKey:@"START_MESSAGE_HOME_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Home %@" table:0];

            v42 = MEMORY[0x277CCACA8];
            v43 = [v20 roundedTime];
            v44 = [v43 absoluteTimeString:0 preposition:1 capitalized:0];
            v45 = [v42 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:0, v44];
            v46 = v106[5];
            v106[5] = v45;

            v47 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v48 = objc_opt_class();
              v49 = NSStringFromClass(v48);
              v50 = NSStringFromSelector(a2);
              v51 = v106[5];
              *buf = 138412802;
              v112 = v49;
              v113 = 2112;
              v114 = v50;
              v115 = 2112;
              v116 = v51;
              _os_log_impl(&dword_26455D000, v47, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeDestinationBound HOME summaryText: %@", buf, 0x20u);
            }

            break;
          default:
            v86 = [v10 destinationMapItem];
            v99[0] = MEMORY[0x277D85DD0];
            v99[1] = 3221225472;
            v99[2] = __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke;
            v99[3] = &unk_279B65410;
            v102 = &v105;
            v100 = v20;
            v103 = a1;
            v104 = a2;
            v101 = v8;
            [SMReceiverNotificationUtilities fetchDestinationNameFromMapItem:v86 completionHandler:v99];

            v39 = v100;
            goto LABEL_40;
        }
      }

      v8[2](v8, v106[5], 0);
LABEL_40:

LABEL_41:
LABEL_42:

      goto LABEL_43;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = NSStringFromSelector(a2);
    v32 = v106[5];
    *buf = 138412802;
    v112 = v30;
    v113 = 2112;
    v114 = v31;
    v115 = 2112;
    v116 = v32;
    _os_log_impl(&dword_26455D000, v28, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageType DEFAULT summaryText: %@", buf, 0x20u);
  }

  v8[2](v8, v106[5], 0);
LABEL_43:
  _Block_object_dispose(&v105, 8);

  v87 = *MEMORY[0x277D85DE8];
}

void __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 localizedStringForKey:@"START_MESSAGE_FALLBACK_DESTINATION_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Destination %@" table:0];

    v10 = MEMORY[0x277CCACA8];
    v11 = [*(a1 + 32) roundedTime];
    v12 = [v11 absoluteTimeString:0 preposition:1 capitalized:0];
    v13 = [v10 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 56);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v35 = v32;
      v36 = 2112;
      v37 = v33;
      v38 = 2112;
      v39 = v6;
      _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@,Unable to fetch destination name due to error %@", buf, 0x20u);
    }
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"START_MESSAGE_CUSTOMISED_DESTINATION_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: %@ %@" table:0];

    v17 = MEMORY[0x277CCACA8];
    v18 = [*(a1 + 32) roundedTime];
    v19 = [v18 absoluteTimeString:0 preposition:1 capitalized:0];
    v20 = [v17 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v5, v19];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v16 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 56);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(*(a1 + 64));
      v27 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&dword_26455D000, v16, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionDestinationTypeOther summaryText: %@", buf, 0x20u);
    }
  }

  v28 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();

  v29 = *MEMORY[0x277D85DE8];
}

void __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 localizedStringForKey:@"START_MESSAGE_ROUNDTRIP_FALLBACK_DESTINATION_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Round trip to destination %@" table:0];

    v10 = MEMORY[0x277CCACA8];
    v11 = [*(a1 + 32) roundedTime];
    v12 = [v11 absoluteTimeString:0 preposition:1 capitalized:0];
    v13 = [v10 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 56);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v35 = v32;
      v36 = 2112;
      v37 = v33;
      v38 = 2112;
      v39 = v6;
      _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@,Unable to fetch destination name due to error %@", buf, 0x20u);
    }
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"START_MESSAGE_ROUNDTRIP_CUSTOMISED_SUMMARY_FORMAT_WITH_ETA" value:@"Check In: Round trip to %@ %@" table:0];

    v17 = MEMORY[0x277CCACA8];
    v18 = [*(a1 + 32) roundedTime];
    v19 = [v18 absoluteTimeString:0 preposition:1 capitalized:0];
    v20 = [v17 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%@%@" error:0, v5, v19];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v16 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 56);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(*(a1 + 64));
      v27 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&dword_26455D000, v16, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMSessionTypeRoundTrip summaryText: %@", buf, 0x20u);
    }
  }

  v28 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();

  v29 = *MEMORY[0x277D85DE8];
}

void __88__SMReceiverNotificationUtilities_prepareNotificationBodyFromMessage_completionHandler___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 48);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v27 = v24;
      v28 = 2112;
      v29 = v25;
      v30 = 2112;
      v31 = v6;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@,Unable to fetch destination name due to error %@", buf, 0x20u);
    }

    v8 = *(*(*(a1 + 40) + 8) + 40);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"END_MESSAGE_SAFE_ARRIVAL_CUSTOMISED_DESTINATION_SUMMARY" value:@"Check In: Arrived at %@" table:0];

    v11 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v5];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(*(a1 + 56));
      v19 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412802;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_26455D000, v14, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, SMMessageTypeSessionEnd Safe Arrival at customised destination summaryText: %@", buf, 0x20u);
    }

    v20 = *(*(*(a1 + 40) + 8) + 40);
    (*(*(a1 + 32) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)fetchDestinationNameFromMapItem:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = MEMORY[0x277D0EBD0];
  v9 = a3;
  v10 = [v8 sharedService];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SMReceiverNotificationUtilities_fetchDestinationNameFromMapItem_completionHandler___block_invoke;
  v12[3] = &unk_279B65460;
  v13 = v7;
  v14 = a1;
  v15 = a2;
  v11 = v7;
  [v10 resolveMapItemFromHandle:v9 completionHandler:v12];
}

void __85__SMReceiverNotificationUtilities_fetchDestinationNameFromMapItem_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v8 = [v5 geoAddress];
    v9 = [v8 structuredAddress];
    v10 = [v9 fullThoroughfare];
    v11 = [v10 length];

    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = [v6 geoAddress];
      v14 = [v13 structuredAddress];
      v15 = [v14 fullThoroughfare];
      (*(v12 + 16))(v12, v15, 0);
    }

    else
    {
      v16 = [v6 shortAddress];
      v17 = [v16 length];

      if (!v17)
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 40);
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = NSStringFromSelector(*(a1 + 48));
          v25 = 138412546;
          v26 = v23;
          v27 = 2112;
          v28 = v24;
          _os_log_error_impl(&dword_26455D000, v20, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@, Unable to retrieve destination address from geoMapItem", &v25, 0x16u);
        }

        v7 = *(*(a1 + 32) + 16);
        goto LABEL_3;
      }

      v18 = *(a1 + 32);
      v13 = [v6 shortAddress];
      (*(v18 + 16))(v18, v13, 0);
    }

    goto LABEL_9;
  }

  v7 = *(*(a1 + 32) + 16);
LABEL_3:
  v7();
LABEL_9:

  v19 = *MEMORY[0x277D85DE8];
}

@end