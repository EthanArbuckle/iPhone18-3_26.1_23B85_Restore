@interface SFEntitlements
+ (id)stringForEntitlement:(unint64_t)a3;
+ (unint64_t)entitlementForString:(id)a3;
- (BOOL)BOOLForEntitlement:(unint64_t)a3;
- (BOOL)BOOLForEntitlementString:(id)a3;
@end

@implementation SFEntitlements

+ (id)stringForEntitlement:(unint64_t)a3
{
  if (a3 > 0x12)
  {
    return @"UnknownEntitlement";
  }

  else
  {
    return *(&off_27898A3C0 + a3);
  }
}

+ (unint64_t)entitlementForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.symptom_analytics.train"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.sweep"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.refresh"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.setwatchpoint"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.network_bitmap"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.query"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms.linkAdvisory"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.reset"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.configure"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.setsnapshot"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"com.apple.symptom_analytics.healthcheck"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms.NetworkOfInterest"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms.NetDomains.admin"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms.rnftest"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms.symptomstooltest"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms_ndf"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms.cosm.admin"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms.nw_activity.database"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"com.apple.symptoms.NetworkDiagnostics"])
  {
    v4 = 18;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (BOOL)BOOLForEntitlementString:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.symptom_analytics.train"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsTrain];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.sweep"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsSweep];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.refresh"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsRefresh];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.setwatchpoint"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsSetWatchpoint];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.network_bitmap"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsNetworkBitmap];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.query"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsQuery];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms.linkAdvisory"])
  {
    v5 = [(SFEntitlements *)self symptomsLinkAdvisory];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.reset"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsReset];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.configure"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsConfigure];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.setsnapshot"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsSetSnapshot];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptom_analytics.healthcheck"])
  {
    v5 = [(SFEntitlements *)self symptomAnalyticsHealthCheck];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms.NetworkOfInterest"])
  {
    v5 = [(SFEntitlements *)self symptomsNetworkOfInterest];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms.NetDomains.admin"])
  {
    v5 = [(SFEntitlements *)self symptomsNetDomainsAdmin];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms.rnftest"])
  {
    v5 = [(SFEntitlements *)self symptomsRNFTest];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms.symptomstooltest"])
  {
    v5 = [(SFEntitlements *)self symptomsSymptomsToolTest];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms_ndf"])
  {
    v5 = [(SFEntitlements *)self symptomsNDF];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms.cosm.admin"])
  {
    v5 = [(SFEntitlements *)self symptomsCOSMAdmin];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms.nw_activity.database"])
  {
    v5 = [(SFEntitlements *)self symptomsNWActivityDatabase];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([v4 isEqualToString:@"com.apple.symptoms.NetworkDiagnostics"])
  {
    v5 = [(SFEntitlements *)self symptomsNetworkDiagnostics];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
LABEL_57:
      v10 = 138478083;
      v11 = v4;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Boolean value for entitlement %{private}@ = %d", &v10, 0x12u);
    }
  }

  else
  {
    v9 = analyticsLogHandle;
    LOBYTE(v5) = 0;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138477827;
      v11 = v4;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Failed to match %{private}@ to any known entitlements", &v10, 0xCu);
      LOBYTE(v5) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)BOOLForEntitlement:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 0uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsTrain];
      goto LABEL_21;
    case 1uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsSweep];
      goto LABEL_21;
    case 2uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsRefresh];
      goto LABEL_21;
    case 3uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsSetWatchpoint];
      goto LABEL_21;
    case 4uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsNetworkBitmap];
      goto LABEL_21;
    case 5uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsQuery];
      goto LABEL_21;
    case 6uLL:
      v4 = [(SFEntitlements *)self symptomsLinkAdvisory];
      goto LABEL_21;
    case 7uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsReset];
      goto LABEL_21;
    case 8uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsConfigure];
      goto LABEL_21;
    case 9uLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsSetSnapshot];
      goto LABEL_21;
    case 0xAuLL:
      v4 = [(SFEntitlements *)self symptomAnalyticsHealthCheck];
      goto LABEL_21;
    case 0xBuLL:
      v4 = [(SFEntitlements *)self symptomsNetworkOfInterest];
      goto LABEL_21;
    case 0xCuLL:
      v4 = [(SFEntitlements *)self symptomsNetDomainsAdmin];
      goto LABEL_21;
    case 0xDuLL:
      v4 = [(SFEntitlements *)self symptomsRNFTest];
      goto LABEL_21;
    case 0xEuLL:
      v4 = [(SFEntitlements *)self symptomsSymptomsToolTest];
      goto LABEL_21;
    case 0xFuLL:
      v4 = [(SFEntitlements *)self symptomsNDF];
      goto LABEL_21;
    case 0x10uLL:
      v4 = [(SFEntitlements *)self symptomsCOSMAdmin];
      goto LABEL_21;
    case 0x11uLL:
      v4 = [(SFEntitlements *)self symptomsNWActivityDatabase];
      goto LABEL_21;
    case 0x12uLL:
      v4 = [(SFEntitlements *)self symptomsNetworkDiagnostics];
LABEL_21:
      v5 = v4;
      break;
    default:
      v9 = analyticsLogHandle;
      v5 = 0;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = a3;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Failed to match %ld to any known entitlements", &v10, 0xCu);
        v5 = 0;
      }

      break;
  }

  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    v10 = 134218240;
    v11 = a3;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Boolean value for entitlement %ld = %d", &v10, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end