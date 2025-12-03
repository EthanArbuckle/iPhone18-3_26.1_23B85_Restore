@interface TAFilterKnownDevices
+ (id)removeAndProcessBackgroundDetections:(id)detections deviceRecord:(id)record;
+ (id)removeDuplicateSuspiciousDevices:(id)devices;
+ (id)removeIssuedDevices:(id)devices deviceRecord:(id)record;
+ (id)removeKnownSuspiciousDevices:(id)devices deviceRecord:(id)record;
+ (id)removeMetricsFromKnownDevices:(id)devices deviceRecord:(id)record;
@end

@implementation TAFilterKnownDevices

+ (id)removeKnownSuspiciousDevices:(id)devices deviceRecord:(id)record
{
  v52 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  recordCopy = record;
  v7 = recordCopy;
  v8 = MEMORY[0x277CBEBF8];
  if (devicesCopy && recordCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = devicesCopy;
    obj = devicesCopy;
    v9 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      v33 = *v38;
      do
      {
        v12 = 0;
        v34 = v10;
        do
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v37 + 1) + 8 * v12);
          if (v13)
          {
            address = [*(*(&v37 + 1) + 8 * v12) address];
            v15 = [v7 isKnownDevice:address];

            address2 = [v13 address];
            v17 = [v7 getDeviceNotificationState:address2];

            if ([v13 immediacyType] == 2)
            {
              address3 = [v13 address];
              v36 = [v7 hasStagedImmediateDetections:address3] ^ 1;
            }

            else
            {
              v36 = 0;
            }

            v19 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              v20 = v19;
              address4 = [v13 address];
              *buf = 68290563;
              *v42 = 0;
              *&v42[4] = 2082;
              *&v42[6] = "";
              *&v42[14] = 2113;
              *&v42[16] = address4;
              *&v42[24] = 1026;
              *&v42[26] = v15;
              v43 = 1026;
              v44 = v17 == 0;
              v45 = 1026;
              v46 = v17 == 4;
              v47 = 1026;
              v48 = v17 == 3;
              v11 = v33;
              v10 = v34;
              v49 = 1026;
              v50 = v36;
              _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAFilterKnownDevices decisions, address:%{private}@, isKnownDevice:%{public}hhd, isUnknownState:%{public}hhd, isPendingReprompt:%{public}hhd, isStaged:%{public}hhd, isFirstImmediateType:%{public}hhd}", buf, 0x3Au);
            }

            if ((v15 & 1) == 0 && ((v17 | 4) == 4 || ((v17 == 3) & v36) == 1))
            {
              [array addObject:v13];
            }

            else
            {
              v22 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
              {
                v23 = v22;
                address5 = [v13 address];
                hexString = [address5 hexString];
                if (v15)
                {
                  v26 = "known device";
                }

                else
                {
                  v26 = "unknown device";
                }

                v27 = [TADeviceRecord notificationInternalStateToString:v17];
                *buf = 138478339;
                *v42 = hexString;
                *&v42[8] = 2082;
                *&v42[10] = v26;
                *&v42[18] = 2114;
                *&v42[20] = v27;
                _os_log_debug_impl(&dword_26F2E2000, v23, OS_LOG_TYPE_DEBUG, "#TAFilterKnownDevices not surfacing notification for %{private}@ due to %{public}s and device state %{public}@", buf, 0x20u);
              }
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v28 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
        v10 = v28;
      }

      while (v28);
    }

    v8 = [array copy];
    devicesCopy = v31;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)removeDuplicateSuspiciousDevices:(id)devices
{
  v36 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  if (devicesCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = devicesCopy;
    v5 = devicesCopy;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = v6;
    v8 = *v26;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if (v10)
        {
          if (![*(*(&v25 + 1) + 8 * i) immediacyType])
          {
            v15 = TAStatusLog;
            if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            *buf = 68289283;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2117;
            v34 = v10;
            v12 = v15;
            v13 = OS_LOG_TYPE_ERROR;
            v14 = "{msg%{public}.0s:#TAFilterKnownDevices got TANotificationImmediacyTypeNever device, detection:%{sensitive}@}";
            goto LABEL_14;
          }

          if ([v10 immediacyType] == 3)
          {
            v11 = TAStatusLog;
            if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              continue;
            }

            *buf = 68289283;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2117;
            v34 = v10;
            v12 = v11;
            v13 = OS_LOG_TYPE_FAULT;
            v14 = "{msg%{public}.0s:#TAFilterKnownDevices got background immediate type. This is unexpected, detection:%{sensitive}@}";
LABEL_14:
            _os_log_impl(&dword_26F2E2000, v12, v13, v14, buf, 0x1Cu);
            continue;
          }

          address = [v10 address];
          v17 = [dictionary objectForKey:address];

          if (!v17 || (v18 = [v17 immediacyType], objc_msgSend(v10, "immediacyType") > v18))
          {
            address2 = [v10 address];
            [dictionary setObject:v10 forKey:address2];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (!v7)
      {
LABEL_21:

        allValues = [dictionary allValues];
        v21 = [allValues copy];

        devicesCopy = v24;
        goto LABEL_23;
      }
    }
  }

  v21 = MEMORY[0x277CBEBF8];
LABEL_23:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)removeIssuedDevices:(id)devices deviceRecord:(id)record
{
  v32 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  recordCopy = record;
  v7 = recordCopy;
  array = MEMORY[0x277CBEBF8];
  if (devicesCopy && recordCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = devicesCopy;
    v9 = devicesCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          address = [v14 address];
          v16 = [v7 getDeviceNotificationState:address];

          if (v16 == 2)
          {
            v17 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              v26 = 0;
              v27 = 2082;
              v28 = "";
              v29 = 2117;
              v30 = v14;
              _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterKnownDevices dropping detection due to Issued state, detection:%{sensitive}@}", buf, 0x1Cu);
            }
          }

          else
          {
            [array addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v11);
    }

    devicesCopy = v20;
  }

  v18 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)removeMetricsFromKnownDevices:(id)devices deviceRecord:(id)record
{
  v67 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  recordCopy = record;
  v7 = recordCopy;
  v8 = MEMORY[0x277CBEBF8];
  if (devicesCopy && recordCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v41 = devicesCopy;
    obj = devicesCopy;
    v45 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v45)
    {
      v43 = *v57;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v56 + 1) + 8 * i);
          v11 = [v10 key];
          v12 = [v11 isEqualToString:@"DonatingInterVisitMetrics"];

          if (v12)
          {
            v46 = v10;
            additionalInformation = [v10 additionalInformation];
            v14 = [additionalInformation mutableCopy];

            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            allKeys = [v14 allKeys];
            v16 = [allKeys countByEnumeratingWithState:&v52 objects:v65 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v53;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v53 != v18)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v20 = *(*(&v52 + 1) + 8 * j);
                  if ([v7 isKnownDevice:v20])
                  {
                    v21 = TAStatusLog;
                    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                    {
                      [(TAFilterKnownDevices *)&v63 removeMetricsFromKnownDevices:v21 deviceRecord:v20, &v64];
                    }

                    [v14 removeObjectForKey:v20];
                  }
                }

                v17 = [allKeys countByEnumeratingWithState:&v52 objects:v65 count:16];
              }

              while (v17);
            }

            v22 = [TAOutgoingRequests alloc];
            date = [v46 date];
            v24 = [(TAOutgoingRequests *)v22 initWithRequestKey:@"DonatingInterVisitMetrics" additionalInformation:v14 date:date];

            [array addObject:v24];
          }

          else
          {
            v25 = [v10 key];
            v26 = [v25 isEqualToString:@"DonatingVisitMetrics"];

            if (v26)
            {
              v47 = v10;
              additionalInformation2 = [v10 additionalInformation];
              v28 = [additionalInformation2 mutableCopy];

              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              allKeys2 = [v28 allKeys];
              v30 = [allKeys2 countByEnumeratingWithState:&v48 objects:v62 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v49;
                do
                {
                  for (k = 0; k != v31; ++k)
                  {
                    if (*v49 != v32)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v34 = *(*(&v48 + 1) + 8 * k);
                    if ([v7 isKnownDevice:v34])
                    {
                      v35 = TAStatusLog;
                      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                      {
                        [(TAFilterKnownDevices *)&v60 removeMetricsFromKnownDevices:v35 deviceRecord:v34, &v61];
                      }

                      [v28 removeObjectForKey:v34];
                    }
                  }

                  v31 = [allKeys2 countByEnumeratingWithState:&v48 objects:v62 count:16];
                }

                while (v31);
              }

              v36 = [TAOutgoingRequests alloc];
              date2 = [v47 date];
              v38 = [(TAOutgoingRequests *)v36 initWithRequestKey:@"DonatingVisitMetrics" additionalInformation:v28 date:date2];

              [array addObject:v38];
            }

            else
            {
              [array addObject:v10];
            }
          }
        }

        v45 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v45);
    }

    v8 = [array copy];
    devicesCopy = v41;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)removeAndProcessBackgroundDetections:(id)detections deviceRecord:(id)record
{
  v23 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  recordCopy = record;
  v7 = recordCopy;
  v8 = MEMORY[0x277CBEBF8];
  if (detectionsCopy && recordCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = detectionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([v15 immediacyType] == 3)
          {
            [v7 processBackgroundDetection:v15];
          }

          else
          {
            [array addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v8 = [array copy];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)removeMetricsFromKnownDevices:(void *)a3 deviceRecord:(void *)a4 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138477827;
  *a4 = v8;
  OUTLINED_FUNCTION_0(&dword_26F2E2000, v9, v10, "#TATrackingAvoidanceService dropping %{private}@ intervisit metrics since it is from owner, shared, or ignored device");
}

+ (void)removeMetricsFromKnownDevices:(void *)a3 deviceRecord:(void *)a4 .cold.2(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138477827;
  *a4 = v8;
  OUTLINED_FUNCTION_0(&dword_26F2E2000, v9, v10, "#TAFilterKnownDevices dropping %{private}@ intervisit metrics since it is from owner, shared, or ignored device");
}

@end