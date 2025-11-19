@interface RTRadarUtilities
+ (void)createRadarWithTitle:(id)a3 description:(id)a4;
+ (void)promptUserToCreateRadarForAssertionIdentifier:(id)a3 alertMessage:(id)a4 radarTitle:(id)a5 radarDescription:(id)a6 handler:(id)a7;
@end

@implementation RTRadarUtilities

+ (void)promptUserToCreateRadarForAssertionIdentifier:(id)a3 alertMessage:(id)a4 radarTitle:(id)a5 radarDescription:(id)a6 handler:(id)a7
{
  v73 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (!v11)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: assertionIdentifier";
LABEL_18:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_62;
  }

  if (!v13)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: radarTitle";
    goto LABEL_18;
  }

  if (!v14)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: radarDescription";
    goto LABEL_18;
  }

  if (!v15)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: handler";
    goto LABEL_18;
  }

  v17 = objc_opt_new();
  if (([v17 internalInstall]& 1) != 0)
  {
    v18 = objc_opt_new();
    v19 = [v18 objectForKey:@"DisabledAssertAlerts"];
    v20 = [v19 objectForKey:v11];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v70 = v11;
          v23 = "Suppressing alert for assertion identifier, %@, because defaults key was set.";
LABEL_26:
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
          goto LABEL_59;
        }

        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v25 = NotificationHandlerMap();
    v26 = [v25 count];

    if (v26)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v70 = v11;
          v23 = "Suppressing alert for assertion identifier, %@, because an alert is already showing.";
          goto LABEL_26;
        }

LABEL_59:
      }

LABEL_60:

LABEL_61:
      goto LABEL_62;
    }

    v61 = v19;
    v62 = [v18 objectForKey:@"RecentAssertAlerts"];
    v27 = [v62 objectForKey:v11];
    v28 = [MEMORY[0x277CBEAA8] date];
    v64 = v28;
    v65 = v27;
    if (v27)
    {
      v29 = v28;
      v30 = [MEMORY[0x277CBEA80] currentCalendar];
      v31 = [v30 isDate:v27 inSameDayAsDate:v29];

      v32 = v65;
      if (v31)
      {
        v19 = v61;
        v22 = v62;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_58:

          goto LABEL_59;
        }

        log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v70 = v11;
          v71 = 2112;
          v72 = v65;
          _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_INFO, "Suppressing alert for assertion identifier, %@, because it was recently shown (on %@).", buf, 0x16u);
        }

LABEL_57:

        goto LABEL_58;
      }
    }

    v19 = v61;
    v22 = v62;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v70 = v11;
        v71 = 2112;
        v72 = v12;
        _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "Showing alert for assertion identifier, %@, to file a bug with message: %@.", buf, 0x16u);
      }
    }

    v34 = *MEMORY[0x277CBF198];
    v67[0] = *MEMORY[0x277CBF188];
    v67[1] = v34;
    v35 = @"You discovered a bug in CoreRoutine. Please file a radar.";
    if (v12)
    {
      v35 = v12;
    }

    v68[0] = @"CoreRoutine Bug!";
    v68[1] = v35;
    v36 = *MEMORY[0x277CBF1C0];
    v67[2] = *MEMORY[0x277CBF1E8];
    v67[3] = v36;
    v68[2] = @"File Radar";
    v68[3] = @"Stop Asking";
    v67[4] = *MEMORY[0x277CBF218];
    v68[4] = @"Dismiss";
    log = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:5];
    if (v62)
    {
      v37 = [v62 mutableCopy];
    }

    else
    {
      v37 = objc_opt_new();
    }

    v38 = v37;
    [v37 setObject:v64 forKey:v11];
    v60 = v38;
    [v18 setObject:v38 forKey:@"RecentAssertAlerts"];
    error = 0;
    v39 = *MEMORY[0x277CBECE8];
    v40 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 3uLL, &error, log);
    if (v40)
    {
      v41 = v40;
      if (error)
      {
        cf = v40;
        v32 = v65;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v56 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v70) = error;
            _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "Failed to create CFUserNotificationRef, error %d", buf, 8u);
          }
        }

        CFRelease(cf);
        goto LABEL_56;
      }

      v46 = v39;
      v47 = v41;
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v46, v41, handleNotificationCallback, 0);
      if (RunLoopSource)
      {
        source = RunLoopSource;
        v49 = objc_opt_new();
        [v49 setObject:v11 forKey:@"assertionIdentifier"];
        [v49 setObject:v13 forKey:@"radarTitle"];
        v57 = v49;
        cfa = v47;
        v50 = v49;
        [v49 setObject:v14 forKeyedSubscript:@"radarDescription"];
        v51 = [v16 copy];
        [v50 setObject:v51 forKey:@"handler"];

        v52 = NotificationHandlerMap();
        v53 = [MEMORY[0x277CCAE60] valueWithPointer:cfa];
        [v52 setObject:v57 forKey:v53];

        v22 = v62;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, source, *MEMORY[0x277CBF048]);
        CFRelease(source);

        goto LABEL_55;
      }

      CFRelease(v47);
      v32 = v65;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_56;
      }

      v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
LABEL_52:

LABEL_55:
        v32 = v65;
        goto LABEL_56;
      }

      *buf = 0;
      v43 = "Failed to create CFRunLoopSourceRef";
      v44 = v42;
      v45 = 2;
    }

    else
    {
      v32 = v65;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_56:

        goto LABEL_57;
      }

      v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        goto LABEL_52;
      }

      *buf = 138412290;
      v70 = log;
      v43 = "Failed to create CFUserNotificationRef for alertOptions: %@.";
      v44 = v42;
      v45 = 12;
    }

    _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, v43, buf, v45);
    goto LABEL_52;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = v11;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "Suppressing alert for assertion identifier, %@, because we're not on an internal build.", buf, 0xCu);
    }

    goto LABEL_61;
  }

LABEL_62:
}

+ (void)createRadarWithTitle:(id)a3 description:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v7 internalInstall])
  {
    v8 = objc_opt_new();
    [v8 setScheme:@"tap-to-radar"];
    [v8 setHost:@"new"];
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentID" value:@"527926"];
    [v9 addObject:v10];

    v11 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentName" value:@"CoreRoutine"];
    [v9 addObject:v11];

    v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ComponentVersion" value:@"All"];
    [v9 addObject:v12];

    v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ExtensionIdentifiers" value:{@"com.apple.CoreRoutine.RTDiagnosticExtension, com.apple.DiagnosticExtensions.Syslog, com.apple.DiagnosticExtensions.CrashLogs"}];
    [v9 addObject:v13];

    if ([v5 length])
    {
      v14 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Title" value:v5];
      [v9 addObject:v14];
    }

    v15 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"Description" value:v6];
    [v9 addObject:v15];

    [v8 setQueryItems:v9];
    v16 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v17 = [v8 URL];
    [v16 openURL:v17 configuration:0 completionHandler:0];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityRoutineApp);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v8;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "Radar URL: %@", &v19, 0xCu);
      }
    }
  }
}

@end