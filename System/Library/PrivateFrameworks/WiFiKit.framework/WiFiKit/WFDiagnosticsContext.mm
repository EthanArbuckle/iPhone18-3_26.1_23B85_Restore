@interface WFDiagnosticsContext
- (WFDiagnosticsContext)initWithNetwork:(id)a3 profile:(id)a4 detailsContext:(id)a5;
- (void)cancel;
- (void)updateInfo:(id)a3;
@end

@implementation WFDiagnosticsContext

- (WFDiagnosticsContext)initWithNetwork:(id)a3 profile:(id)a4 detailsContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = WFDiagnosticsContext;
  v12 = [(WFDiagnosticsContext *)&v31 init];
  v13 = v12;
  if (!v12)
  {
    v30 = 0;
    goto LABEL_46;
  }

  if (!v9)
  {
    [WFDiagnosticsContext initWithNetwork:profile:detailsContext:];
    v30 = v13;
    v13 = 0;
    goto LABEL_46;
  }

  objc_storeStrong(&v12->_network, a3);
  objc_storeStrong((v13 + 248), a5);
  v14 = [*(v13 + 232) bssid];
  v15 = *(v13 + 16);
  *(v13 + 16) = v14;

  v16 = [v9 securityMode];
  v17 = @"kWFLocDiagnosticsSecurityOpen";
  if (v16 <= 63)
  {
    if (v16 <= 3)
    {
      if (v16)
      {
        if (v16 == 1)
        {
          v17 = @"kWFLocDiagnosticsSecurityWEP";
        }

        else
        {
          if (v16 != 2)
          {
            goto LABEL_39;
          }

          v17 = @"kWFLocDiagnosticsSecurityLEAP";
        }
      }
    }

    else if (v16 > 15)
    {
      if (v16 == 16)
      {
        v17 = @"kWFLocDiagnosticsSecurityWPAEnterprise";
      }

      else
      {
        if (v16 != 32)
        {
          goto LABEL_39;
        }

        v17 = @"kWFLocDiagnosticsSecurityWPA2 Enterprise";
      }
    }

    else if (v16 == 4)
    {
      v17 = @"kWFLocDiagnosticsSecurityWPAPersonal";
    }

    else
    {
      if (v16 != 8)
      {
        goto LABEL_39;
      }

      v17 = @"kWFLocDiagnosticsSecurityWPA2Personal";
    }

    goto LABEL_38;
  }

  if (v16 <= 519)
  {
    if (v16 > 255)
    {
      if (v16 == 256)
      {
        v17 = @"kWFLocDiagnosticsSecurityWEP40_128";
      }

      else
      {
        if (v16 != 512)
        {
          goto LABEL_39;
        }

        v17 = @"kWFLocDiagnosticsSecurityWPA3Personal";
      }
    }

    else if (v16 == 64)
    {
      v17 = @"kWFLocDiagnosticsSecurityWAPIPersonal";
    }

    else
    {
      if (v16 != 128)
      {
        goto LABEL_39;
      }

      v17 = @"kWFLocDiagnosticsSecurityWAPIEnterprise";
    }

    goto LABEL_38;
  }

  if (v16 <= 1074)
  {
    if (v16 == 520)
    {
      v17 = @"kWFLocDiagnosticsSecurityWPA3Transition";
    }

    else
    {
      if (v16 != 1024)
      {
        goto LABEL_39;
      }

      v17 = @"kWFLocDiagnosticsSecurityWPA3Enterprise";
    }

    goto LABEL_38;
  }

  if (v16 == 1075)
  {
    v17 = @"kWFLocDiagnosticsSecurityAnyEAPEncryption";
    goto LABEL_38;
  }

  if (v16 == 2048)
  {
LABEL_38:
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:v17 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    v20 = *(v13 + 72);
    *(v13 + 72) = v19;
  }

LABEL_39:
  *(v13 + 8) = [v10 isCaptive];
  v21 = [v10 networkQualityDate];
  v22 = [v21 copy];
  v23 = *(v13 + 216);
  *(v13 + 216) = v22;

  [v10 networkQualityResponsiveness];
  *(v13 + 224) = v24;
  v25 = *MEMORY[0x277CBECE8];
  v26 = WiFiManagerClientCreate();
  *(v13 + 256) = v26;
  if (v26)
  {
    v27 = WiFiManagerClientCopyDevices();
    if ([v27 count])
    {
      *(v13 + 264) = [v27 objectAtIndex:0];
    }
  }

  v28 = *(v13 + 264);
  if (v28)
  {
    [(WFDiagnosticsContext *)v28 initWithNetwork:v13 profile:(v13 + 256) detailsContext:&v32];
    v30 = v32;
LABEL_46:
  }

  return v13;
}

- (void)updateInfo:(id)a3
{
  v103 = a3;
  device = self->_device;
  v5 = WiFiDeviceClientCopyCurrentNetwork();
  if (!v103 || !v5)
  {
    goto LABEL_55;
  }

  v6 = WiFiNetworkGetProperty();
  BSSID = self->_BSSID;
  self->_BSSID = v6;

  v8 = WiFiNetworkGetProperty();
  channel = self->_channel;
  self->_channel = v8;

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%dMHz)", self->_channel, WiFiNetworkGetChannelWidthInMHz()];
  channelString = self->_channelString;
  self->_channelString = v10;

  v12 = WiFiNetworkGetAPEnv();
  v13 = [v12 intValue];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if ((v13 - 1) > 3)
  {
    v16 = @"kWFLocDiagnosticsUnspecifiedEnv";
  }

  else
  {
    v16 = off_279EBCE08[v13 - 1];
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  deployment = self->_deployment;
  self->_deployment = v17;

  v19 = [v103 objectForKey:*MEMORY[0x277D297B8]];
  if (![v19 isEqualToString:@"Stationary"])
  {
    if ([v19 isEqualToString:@"Walking"])
    {
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = v20;
      v22 = @"kWFLocDiagnosticsWalking";
      goto LABEL_14;
    }

    if ([v19 isEqualToString:@"Running"])
    {
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = v20;
      v22 = @"kWFLocDiagnosticsRunning";
      goto LABEL_14;
    }

    if ([v19 isEqualToString:@"Driving"])
    {
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = v20;
      v22 = @"kWFLocDiagnosticsDriving";
      goto LABEL_14;
    }

    if (![v19 isEqualToString:@"Moving"])
    {
      v95 = [v19 isEqualToString:@"Driving Stopped"];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = v20;
      if (v95)
      {
        v22 = @"kWFLocDiagnosticsDrivingStopped";
      }

      else
      {
        v22 = @"kWFLocDiagnosticsMotionUnknown";
      }

      goto LABEL_14;
    }
  }

  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = v20;
  v22 = @"kWFLocDiagnosticsMoving";
LABEL_14:
  v23 = [v20 localizedStringForKey:v22 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  motion = self->_motion;
  self->_motion = v23;

  v102 = [v103 objectForKey:*MEMORY[0x277D297B0]];
  if (v102)
  {
    v25 = v19;
    v26 = v12;
    v27 = v5;
    v28 = [v102 objectForKey:@"RSSI"];
    v29 = [v102 objectForKey:@"CCA"];
    if ([v28 intValue] < -59)
    {
      v33 = [v28 intValue];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = v30;
      if (v33 < -74)
      {
        v32 = @"kWFLocDiagnosticsRSSIWeak";
      }

      else
      {
        v32 = @"kWFLocDiagnosticsRSSIModerate";
      }
    }

    else
    {
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = v30;
      v32 = @"kWFLocDiagnosticsRSSIStrong";
    }

    v34 = [v30 localizedStringForKey:v32 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    rssiPerformance = self->_rssiPerformance;
    self->_rssiPerformance = v34;

    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v28, self->_rssiPerformance];
    rssi = self->_rssi;
    self->_rssi = v36;

    if ([v29 intValue] > 49)
    {
      v41 = [v29 intValue];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = v38;
      if (v41 > 69)
      {
        v40 = @"kWFLocDiagnosticsCCAWeak";
      }

      else
      {
        v40 = @"kWFLocDiagnosticsCCAModerate";
      }
    }

    else
    {
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = v38;
      v40 = @"kWFLocDiagnosticsCCAStrong";
    }

    v42 = [v38 localizedStringForKey:v40 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    cca = self->_cca;
    self->_cca = v42;

    v5 = v27;
    v12 = v26;
    v19 = v25;
  }

  v44 = [v103 objectForKey:*MEMORY[0x277D297C0]];
  v45 = [v44 objectAtIndexedSubscript:0];

  if (v45)
  {
    v46 = [v45 objectForKey:@"kWiFiLqaMgrNumProbesFail"];
    v47 = [v45 objectForKey:@"kWiFiLqaMgrAverageRTT"];
    if ([v46 intValue] < 1)
    {
      v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ms", v47];
      gateway = self->_gateway;
      self->_gateway = v51;
    }

    else
    {
      gateway = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [gateway localizedStringForKey:@"kWFLocDiagnosticsProbeNoConnection" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v50 = self->_gateway;
      self->_gateway = v49;
    }
  }

  v52 = [v103 objectForKey:*MEMORY[0x277D297C8]];
  v53 = [v52 objectAtIndexedSubscript:0];

  if (v53)
  {
    v54 = [v53 objectForKey:@"kWiFiLqaMgrNumProbesFail"];
    v55 = v53;
    v56 = [v53 objectForKey:@"kWiFiLqaMgrAverageRTT"];
    if ([v54 intValue] < 1)
    {
      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ms", v56];
      internet = self->_internet;
      self->_internet = v60;
    }

    else
    {
      internet = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v58 = [internet localizedStringForKey:@"kWFLocDiagnosticsProbeNoConnection" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v59 = self->_internet;
      self->_internet = v58;
    }

    v53 = v55;
  }

  v101 = v45;
  v61 = [v103 objectForKey:*MEMORY[0x277D297A0]];
  v62 = v61;
  if (v61)
  {
    v63 = [v61 objectForKey:@"LINK_CHANGED_IS_LINKDOWN"];
    v64 = [v63 BOOLValue];

    v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v66 = v65;
    if (v64)
    {
      v67 = @"kWFLocDiagnosticsAWDLInactive";
    }

    else
    {
      v67 = @"kWFLocDiagnosticsAWDLActive";
    }

    v68 = [v65 localizedStringForKey:v67 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    awdl = self->_awdl;
    self->_awdl = v68;
  }

  v100 = v62;
  v70 = [v103 objectForKey:*MEMORY[0x277D297A8]];
  v71 = v70;
  if (v70)
  {
    v72 = [v70 intValue];
    v73 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v74 = v73;
    if (v72 > 8)
    {
      v75 = @"kWFLocDiagnosticsBTUnnkown";
    }

    else
    {
      v75 = off_279EBCE28[v72];
    }

    v76 = [v73 localizedStringForKey:v75 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    bluetooth = self->_bluetooth;
    self->_bluetooth = v76;
  }

  v78 = [v103 objectForKey:*MEMORY[0x277D297D8]];
  if ([v78 intValue])
  {
    v79 = @"kWFLocDiagnosticsScanInactive";
  }

  else
  {
    v79 = @"kWFLocDiagnosticsScanActive";
  }

  v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v81 = [v80 localizedStringForKey:v79 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  scan = self->_scan;
  self->_scan = v81;

  v83 = [v103 objectForKey:*MEMORY[0x277D297D0]];
  v84 = v83;
  if (v83)
  {
    v99 = v53;
    v85 = [v83 objectForKey:*MEMORY[0x277D29788]];
    v86 = [v84 objectForKey:*MEMORY[0x277D29790]];
    v87 = v86;
    if (v85 && v86)
    {
      v96 = MEMORY[0x277CCACA8];
      v98 = v5;
      v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v88 = [v97 localizedStringForKey:@"kWFLocDiagnosticsLastScan" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [MEMORY[0x277CCA968] localizedStringFromDate:v87 dateStyle:1 timeStyle:1];
      v89 = v19;
      v91 = v90 = v12;
      v92 = [v96 stringWithFormat:@"%@ %@ at %@", v88, v85, v91];
      coexFooter = self->_coexFooter;
      self->_coexFooter = v92;

      v12 = v90;
      v19 = v89;

      v5 = v98;
    }

    v53 = v99;
  }

  v94 = [(WFDiagnosticsContext *)self refreshHandler];
  v94[2]();

  CFRelease(v5);
LABEL_55:
}

- (void)cancel
{
  if (self->_device)
  {
    WiFiDeviceClientRegisterDiagnosticsCallback();
  }

  if (self->_manager)
  {
    v4 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v4 getCFRunLoop];
    v3 = *MEMORY[0x277CBF058];
    WiFiManagerClientUnscheduleFromRunLoop();
  }
}

- (void)initWithNetwork:profile:detailsContext:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFDiagnosticsContext initWithNetwork:profile:detailsContext:]";
    _os_log_impl(&dword_273ECD000, v0, v1, "%s: nil network", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (uint64_t)initWithNetwork:(uint64_t *)a3 profile:(void *)a4 detailsContext:.cold.2(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  WiFiDeviceClientRegisterDiagnosticsCallback();
  v6 = *a3;
  v7 = [MEMORY[0x277CBEB88] mainRunLoop];
  *a4 = v7;
  [v7 getCFRunLoop];
  v8 = *MEMORY[0x277CBF058];
  return WiFiManagerClientScheduleWithRunLoop();
}

@end