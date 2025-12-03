@interface SFEntitlements
+ (id)stringForEntitlement:(unint64_t)entitlement;
+ (unint64_t)entitlementForString:(id)string;
- (BOOL)BOOLForEntitlement:(unint64_t)entitlement;
- (BOOL)BOOLForEntitlementString:(id)string;
@end

@implementation SFEntitlements

+ (id)stringForEntitlement:(unint64_t)entitlement
{
  if (entitlement > 0x12)
  {
    return @"UnknownEntitlement";
  }

  else
  {
    return *(&off_27898A3C0 + entitlement);
  }
}

+ (unint64_t)entitlementForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.train"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.sweep"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.refresh"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.setwatchpoint"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.network_bitmap"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.query"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.linkAdvisory"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.reset"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.configure"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.setsnapshot"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.healthcheck"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.NetworkOfInterest"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.NetDomains.admin"])
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.rnftest"])
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.symptomstooltest"])
  {
    v4 = 14;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms_ndf"])
  {
    v4 = 15;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.cosm.admin"])
  {
    v4 = 16;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.nw_activity.database"])
  {
    v4 = 17;
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.NetworkDiagnostics"])
  {
    v4 = 18;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (BOOL)BOOLForEntitlementString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.train"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsTrain];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.sweep"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsSweep];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.refresh"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsRefresh];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.setwatchpoint"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsSetWatchpoint];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.network_bitmap"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsNetworkBitmap];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.query"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsQuery];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.linkAdvisory"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsLinkAdvisory];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.reset"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsReset];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.configure"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsConfigure];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.setsnapshot"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsSetSnapshot];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptom_analytics.healthcheck"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsHealthCheck];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.NetworkOfInterest"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNetworkOfInterest];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.NetDomains.admin"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNetDomainsAdmin];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.rnftest"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsRNFTest];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.symptomstooltest"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsSymptomsToolTest];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms_ndf"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNDF];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.cosm.admin"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsCOSMAdmin];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.nw_activity.database"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNWActivityDatabase];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_57;
    }
  }

  else if ([stringCopy isEqualToString:@"com.apple.symptoms.NetworkDiagnostics"])
  {
    symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNetworkDiagnostics];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
LABEL_57:
      v10 = 138478083;
      v11 = stringCopy;
      v12 = 1024;
      v13 = symptomAnalyticsTrain;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Boolean value for entitlement %{private}@ = %d", &v10, 0x12u);
    }
  }

  else
  {
    v9 = analyticsLogHandle;
    LOBYTE(symptomAnalyticsTrain) = 0;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138477827;
      v11 = stringCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Failed to match %{private}@ to any known entitlements", &v10, 0xCu);
      LOBYTE(symptomAnalyticsTrain) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return symptomAnalyticsTrain;
}

- (BOOL)BOOLForEntitlement:(unint64_t)entitlement
{
  v14 = *MEMORY[0x277D85DE8];
  switch(entitlement)
  {
    case 0uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsTrain];
      goto LABEL_21;
    case 1uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsSweep];
      goto LABEL_21;
    case 2uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsRefresh];
      goto LABEL_21;
    case 3uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsSetWatchpoint];
      goto LABEL_21;
    case 4uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsNetworkBitmap];
      goto LABEL_21;
    case 5uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsQuery];
      goto LABEL_21;
    case 6uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsLinkAdvisory];
      goto LABEL_21;
    case 7uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsReset];
      goto LABEL_21;
    case 8uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsConfigure];
      goto LABEL_21;
    case 9uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsSetSnapshot];
      goto LABEL_21;
    case 0xAuLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomAnalyticsHealthCheck];
      goto LABEL_21;
    case 0xBuLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNetworkOfInterest];
      goto LABEL_21;
    case 0xCuLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNetDomainsAdmin];
      goto LABEL_21;
    case 0xDuLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsRNFTest];
      goto LABEL_21;
    case 0xEuLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsSymptomsToolTest];
      goto LABEL_21;
    case 0xFuLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNDF];
      goto LABEL_21;
    case 0x10uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsCOSMAdmin];
      goto LABEL_21;
    case 0x11uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNWActivityDatabase];
      goto LABEL_21;
    case 0x12uLL:
      symptomAnalyticsTrain = [(SFEntitlements *)self symptomsNetworkDiagnostics];
LABEL_21:
      v5 = symptomAnalyticsTrain;
      break;
    default:
      v9 = analyticsLogHandle;
      v5 = 0;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        entitlementCopy2 = entitlement;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Failed to match %ld to any known entitlements", &v10, 0xCu);
        v5 = 0;
      }

      break;
  }

  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    v10 = 134218240;
    entitlementCopy2 = entitlement;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Boolean value for entitlement %ld = %d", &v10, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end