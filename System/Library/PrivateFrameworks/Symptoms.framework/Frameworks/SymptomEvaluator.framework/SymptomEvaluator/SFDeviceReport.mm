@interface SFDeviceReport
- (id)description;
- (id)dictionaryReport:(BOOL)report;
@end

@implementation SFDeviceReport

- (id)description
{
  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  timestampBucket = [(SFDeviceReport *)self timestampBucket];
  batteryPercentage = [(SFDeviceReport *)self batteryPercentage];
  batteryCurrentCapacity = [(SFDeviceReport *)self batteryCurrentCapacity];
  batteryMaximumCapacity = [(SFDeviceReport *)self batteryMaximumCapacity];
  batteryDesignCapacity = [(SFDeviceReport *)self batteryDesignCapacity];
  batteryAbsoluteCapacity = [(SFDeviceReport *)self batteryAbsoluteCapacity];
  batteryVoltage = [(SFDeviceReport *)self batteryVoltage];
  batteryTimeRemaining = [(SFDeviceReport *)self batteryTimeRemaining];
  batteryTemperature = [(SFDeviceReport *)self batteryTemperature];
  batteryExternalPowerIsConnected = [(SFDeviceReport *)self batteryExternalPowerIsConnected];
  batteryFullyCharged = [(SFDeviceReport *)self batteryFullyCharged];
  batteryAtWarnLevel = [(SFDeviceReport *)self batteryAtWarnLevel];
  batteryAtCriticalLevel = [(SFDeviceReport *)self batteryAtCriticalLevel];
  rnfEnabled = [(SFDeviceReport *)self rnfEnabled];
  devicePluggedIn = [(SFDeviceReport *)self devicePluggedIn];
  deviceScreenOn = [(SFDeviceReport *)self deviceScreenOn];
  deviceScreenBrightness = [(SFDeviceReport *)self deviceScreenBrightness];
  motionState = [(SFDeviceReport *)self motionState];
  deviceOrientation = [(SFDeviceReport *)self deviceOrientation];
  thermalPressure = [(SFDeviceReport *)self thermalPressure];
  quicExperimentallyEnabled = [(SFDeviceReport *)self quicExperimentallyEnabled];
  unifiedStackExperimentallyEnabled = [(SFDeviceReport *)self unifiedStackExperimentallyEnabled];
  privacyProxyServiceStatus = [(SFDeviceReport *)self privacyProxyServiceStatus];
  privacyProxyUserTier = [(SFDeviceReport *)self privacyProxyUserTier];
  privacyProxyNetworkStatus = [(SFDeviceReport *)self privacyProxyNetworkStatus];
  privacyProxyTraffic = [(SFDeviceReport *)self privacyProxyTraffic];
  v13 = [v31 initWithFormat:@"<NWDeviceReport:\n\tTimestamp Bucket:\t\t%u\n\tBattery Percentage:\t\t\t%u\n\tBattery Current Capacity:\t\t%u\n\tBattery Maximum Capacity:\t\t%u\n\tBattery Design Capacity:\t\t%u\n\tBattery Absolute Capacity:\t\t%u\n\tBattery Voltage:\t\t\t%u\n\tBattery Time Remaining:\t\t\t%u\n\tBattery Temperature:\t\t\t%u\n\tBattery External Power Is Connected:\t%u\n\tBattery Fully Charged:\t\t\t%u\n\tBattery At Warn Level:\t\t\t%u\n\tBattery At Critical Level:\t\t%u\n\tRNF Enabled:\t\t\t\t%u\n\tDevice Plugged In:\t\t\t%u\n\tDevice Screen On:\t\t\t%u\n\tDevice Screen Brightness:\t\t%u\n\tMotion State:\t\t\t\t%u\n\tDevice Orientation:\t\t\t%u\n\tThermal Pressure:\t\t\t%u\n\tQUIC Experimentally Enabled:\t\t%u\n\tUnified HTTP Stack Experimentally Enabled:\t\t%u\n\tPrivacy Proxy Service Status:\t\t%u\n\tPrivacy Proxy User Tier:\t\t%u\n\tPrivacy Proxy Networks:\t\t%@\n\tPrivacy Proxy Traffic:\t\t%@\n>", timestampBucket, batteryPercentage, batteryCurrentCapacity, batteryMaximumCapacity, batteryDesignCapacity, batteryAbsoluteCapacity, batteryVoltage, batteryTimeRemaining, batteryTemperature, batteryExternalPowerIsConnected, batteryFullyCharged, batteryAtWarnLevel, batteryAtCriticalLevel, rnfEnabled, devicePluggedIn, deviceScreenOn, deviceScreenBrightness, motionState, deviceOrientation, thermalPressure, quicExperimentallyEnabled, unifiedStackExperimentallyEnabled, privacyProxyServiceStatus, privacyProxyUserTier, privacyProxyNetworkStatus, privacyProxyTraffic];

  return v13;
}

- (id)dictionaryReport:(BOOL)report
{
  reportCopy = report;
  v108 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[SFDeviceReport timestampBucket](self, "timestampBucket")}];
  [v5 setObject:v6 forKeyedSubscript:@"timestampBucket"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryPercentage](self, "batteryPercentage")}];
  [v5 setObject:v7 forKeyedSubscript:@"batteryPercentage"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryCurrentCapacity](self, "batteryCurrentCapacity")}];
  [v5 setObject:v8 forKeyedSubscript:@"batteryCurrentCapacity"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryMaximumCapacity](self, "batteryMaximumCapacity")}];
  [v5 setObject:v9 forKeyedSubscript:@"batteryMaximumCapacity"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryDesignCapacity](self, "batteryDesignCapacity")}];
  [v5 setObject:v10 forKeyedSubscript:@"batteryDesignCapacity"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryAbsoluteCapacity](self, "batteryAbsoluteCapacity")}];
  [v5 setObject:v11 forKeyedSubscript:@"batteryAbsoluteCapacity"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryRawCurrentCapacity](self, "batteryRawCurrentCapacity")}];
  [v5 setObject:v12 forKeyedSubscript:@"batteryRawCurrentCapacity"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryRawMaximumCapacity](self, "batteryRawMaximumCapacity")}];
  [v5 setObject:v13 forKeyedSubscript:@"batteryRawMaximumCapacity"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryDepthOfDischarge](self, "batteryDepthOfDischarge")}];
  [v5 setObject:v14 forKeyedSubscript:@"batteryDepthOfDischarge"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryVoltage](self, "batteryVoltage")}];
  [v5 setObject:v15 forKeyedSubscript:@"batteryVoltage"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport batteryTimeRemaining](self, "batteryTimeRemaining")}];
  [v5 setObject:v16 forKeyedSubscript:@"batteryTimeRemaining"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[SFDeviceReport batteryTemperature](self, "batteryTemperature")}];
  [v5 setObject:v17 forKeyedSubscript:@"batteryTemperature"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport batteryExternalPowerIsConnected](self, "batteryExternalPowerIsConnected")}];
  [v5 setObject:v18 forKeyedSubscript:@"batteryExternalPowerIsConnected"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport batteryIsCharging](self, "batteryIsCharging")}];
  [v5 setObject:v19 forKeyedSubscript:@"batteryIsCharging"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport batteryFullyCharged](self, "batteryFullyCharged")}];
  [v5 setObject:v20 forKeyedSubscript:@"batteryFullyCharged"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport batteryAtWarnLevel](self, "batteryAtWarnLevel")}];
  [v5 setObject:v21 forKeyedSubscript:@"batteryAtWarnLevel"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport batteryAtCriticalLevel](self, "batteryAtCriticalLevel")}];
  [v5 setObject:v22 forKeyedSubscript:@"batteryAtCriticalLevel"];

  if (os_variant_has_internal_diagnostics())
  {
    serialNumber = [(SFDeviceReport *)self serialNumber];
    [v5 setObject:serialNumber forKeyedSubscript:@"serialNumber"];
  }

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport rnfEnabled](self, "rnfEnabled")}];
  [v5 setObject:v24 forKeyedSubscript:@"rnfEnabled"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport devicePluggedIn](self, "devicePluggedIn")}];
  [v5 setObject:v25 forKeyedSubscript:@"devicePluggedIn"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport deviceScreenOn](self, "deviceScreenOn")}];
  [v5 setObject:v26 forKeyedSubscript:@"deviceScreenOn"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport deviceScreenBrightness](self, "deviceScreenBrightness")}];
  [v5 setObject:v27 forKeyedSubscript:@"deviceScreenBrightness"];

  motionState = [(SFDeviceReport *)self motionState];
  if (motionState >= 6)
  {
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", motionState];
  }

  else
  {
    v29 = *(&off_27898A568 + motionState);
  }

  [v5 setObject:v29 forKeyedSubscript:@"motionState"];

  deviceOrientation = [(SFDeviceReport *)self deviceOrientation];
  if (deviceOrientation >= 7)
  {
    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", deviceOrientation];
  }

  else
  {
    v31 = *(&off_27898A598 + deviceOrientation);
  }

  [v5 setObject:v31 forKeyedSubscript:@"deviceOrientation"];

  thermalPressure = [(SFDeviceReport *)self thermalPressure];
  if (thermalPressure > 9)
  {
    if (thermalPressure <= 29)
    {
      if (thermalPressure == 10)
      {
        v33 = @"NW_DEVICE_THERMAL_PRESSURE_LIGHT";
        goto LABEL_33;
      }

      if (thermalPressure == 20)
      {
        v33 = @"NW_DEVICE_THERMAL_PRESSURE_MODERATE";
        goto LABEL_33;
      }
    }

    else
    {
      switch(thermalPressure)
      {
        case 0x1E:
          v33 = @"NW_DEVICE_THERMAL_PRESSURE_HEAVY";
          goto LABEL_33;
        case 0x28:
          v33 = @"NW_DEVICE_THERMAL_PRESSURE_TRAPPING";
          goto LABEL_33;
        case 0x32:
          v33 = @"NW_DEVICE_THERMAL_PRESSURE_SLEEPING";
          goto LABEL_33;
      }
    }
  }

  else if (thermalPressure <= 1)
  {
    if (!thermalPressure)
    {
      v33 = @"NW_DEVICE_THERMAL_PRESSURE_NOMINAL";
      goto LABEL_33;
    }

    if (thermalPressure == 1)
    {
      v33 = @"NW_DEVICE_THERMAL_PRESSURE_MODERATE_MAC";
      goto LABEL_33;
    }
  }

  else
  {
    switch(thermalPressure)
    {
      case 2:
        v33 = @"NW_DEVICE_THERMAL_PRESSURE_HEAVY_MAC";
        goto LABEL_33;
      case 3:
        v33 = @"NW_DEVICE_THERMAL_PRESSURE_TRAPPING_MAC";
        goto LABEL_33;
      case 4:
        v33 = @"NW_DEVICE_THERMAL_PRESSURE_SLEEPING_MAC";
        goto LABEL_33;
    }
  }

  v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", thermalPressure];
LABEL_33:
  [v5 setObject:v33 forKeyedSubscript:@"thermalPressure"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport quicExperimentallyEnabled](self, "quicExperimentallyEnabled")}];
  [v5 setObject:v34 forKeyedSubscript:@"quicExperimentallyEnabled"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport unifiedStackExperimentallyEnabled](self, "unifiedStackExperimentallyEnabled")}];
  [v5 setObject:v35 forKeyedSubscript:@"unifiedStackExperimentallyEnabled"];

  privacyProxyServiceStatus = [(SFDeviceReport *)self privacyProxyServiceStatus];
  if (privacyProxyServiceStatus >= 8)
  {
    v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", privacyProxyServiceStatus];
  }

  else
  {
    v37 = *(&off_27898A5D0 + privacyProxyServiceStatus);
  }

  [v5 setObject:v37 forKeyedSubscript:@"privacyProxyServiceStatus"];

  privacyProxyUserTier = [(SFDeviceReport *)self privacyProxyUserTier];
  if (privacyProxyUserTier >= 3)
  {
    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", privacyProxyUserTier];
  }

  else
  {
    v39 = *(&off_27898A610 + privacyProxyUserTier);
  }

  [v5 setObject:v39 forKeyedSubscript:@"privacyProxyUserTier"];

  privacyProxyNetworkStatus = [(SFDeviceReport *)self privacyProxyNetworkStatus];
  v41 = [privacyProxyNetworkStatus count];

  if (v41)
  {
    v101 = v5;
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    selfCopy = self;
    obj = [(SFDeviceReport *)self privacyProxyNetworkStatus];
    v43 = [obj countByEnumeratingWithState:&v103 objects:v107 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v104;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v104 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v103 + 1) + 8 * i);
          v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
          type = [v47 type];
          if (type >= 5)
          {
            v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", type];
          }

          else
          {
            v50 = *(&off_27898A628 + type);
          }

          [v48 setObject:v50 forKeyedSubscript:@"type"];

          status = [v47 status];
          if (status >= 4)
          {
            v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", status];
          }

          else
          {
            v52 = *(&off_27898A650 + status);
          }

          [v48 setObject:v52 forKeyedSubscript:@"status"];

          [v42 addObject:v48];
        }

        v44 = [obj countByEnumeratingWithState:&v103 objects:v107 count:16];
      }

      while (v44);
    }

    v5 = v101;
    [v101 setObject:v42 forKeyedSubscript:@"privacyProxyNetworkStatus"];

    self = selfCopy;
  }

  privacyProxyTraffic = [(SFDeviceReport *)self privacyProxyTraffic];

  if (privacyProxyTraffic)
  {
    v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v55 = MEMORY[0x277CCABB0];
    privacyProxyTraffic2 = [(SFDeviceReport *)self privacyProxyTraffic];
    v57 = [v55 numberWithBool:{objc_msgSend(privacyProxyTraffic2, "safariUnencrypted")}];
    [v54 setObject:v57 forKeyedSubscript:@"safariUnencrypted"];

    v58 = MEMORY[0x277CCABB0];
    privacyProxyTraffic3 = [(SFDeviceReport *)self privacyProxyTraffic];
    v60 = [v58 numberWithBool:{objc_msgSend(privacyProxyTraffic3, "safariDNS")}];
    [v54 setObject:v60 forKeyedSubscript:@"safariDNS"];

    v61 = MEMORY[0x277CCABB0];
    privacyProxyTraffic4 = [(SFDeviceReport *)self privacyProxyTraffic];
    v63 = [v61 numberWithBool:{objc_msgSend(privacyProxyTraffic4, "safariTrackers")}];
    [v54 setObject:v63 forKeyedSubscript:@"safariTrackers"];

    v64 = MEMORY[0x277CCABB0];
    privacyProxyTraffic5 = [(SFDeviceReport *)self privacyProxyTraffic];
    v66 = [v64 numberWithBool:{objc_msgSend(privacyProxyTraffic5, "safariAll")}];
    [v54 setObject:v66 forKeyedSubscript:@"safariAll"];

    v67 = MEMORY[0x277CCABB0];
    privacyProxyTraffic6 = [(SFDeviceReport *)self privacyProxyTraffic];
    v69 = [v67 numberWithBool:{objc_msgSend(privacyProxyTraffic6, "safariHTTP")}];
    [v54 setObject:v69 forKeyedSubscript:@"safariHTTP"];

    v70 = MEMORY[0x277CCABB0];
    privacyProxyTraffic7 = [(SFDeviceReport *)self privacyProxyTraffic];
    v72 = [v70 numberWithBool:{objc_msgSend(privacyProxyTraffic7, "mailTrackers")}];
    [v54 setObject:v72 forKeyedSubscript:@"mailTrackers"];

    v73 = MEMORY[0x277CCABB0];
    privacyProxyTraffic8 = [(SFDeviceReport *)self privacyProxyTraffic];
    v75 = [v73 numberWithBool:{objc_msgSend(privacyProxyTraffic8, "anyUnencrypted")}];
    [v54 setObject:v75 forKeyedSubscript:@"anyUnencrypted"];

    v76 = MEMORY[0x277CCABB0];
    privacyProxyTraffic9 = [(SFDeviceReport *)self privacyProxyTraffic];
    v78 = [v76 numberWithBool:{objc_msgSend(privacyProxyTraffic9, "anyDNS")}];
    [v54 setObject:v78 forKeyedSubscript:@"anyDNS"];

    v79 = MEMORY[0x277CCABB0];
    privacyProxyTraffic10 = [(SFDeviceReport *)self privacyProxyTraffic];
    v81 = [v79 numberWithBool:{objc_msgSend(privacyProxyTraffic10, "anyKnownTrackers")}];
    [v54 setObject:v81 forKeyedSubscript:@"anyKnownTrackers"];

    v82 = MEMORY[0x277CCABB0];
    privacyProxyTraffic11 = [(SFDeviceReport *)self privacyProxyTraffic];
    v84 = [v82 numberWithBool:{objc_msgSend(privacyProxyTraffic11, "anyAppTrackers")}];
    [v54 setObject:v84 forKeyedSubscript:@"anyAppTrackers"];

    v85 = MEMORY[0x277CCABB0];
    privacyProxyTraffic12 = [(SFDeviceReport *)self privacyProxyTraffic];
    v87 = [v85 numberWithBool:{objc_msgSend(privacyProxyTraffic12, "newsURLResolution")}];
    [v54 setObject:v87 forKeyedSubscript:@"newsURLResolution"];

    [v5 setObject:v54 forKeyedSubscript:@"privacyProxyTraffic"];
  }

  trialTreatmentId = [(SFDeviceReport *)self trialTreatmentId];

  if (trialTreatmentId)
  {
    trialTreatmentId2 = [(SFDeviceReport *)self trialTreatmentId];
    [v5 setObject:trialTreatmentId2 forKeyedSubscript:@"trialTreatmentId"];
  }

  packetFilterState = [(SFDeviceReport *)self packetFilterState];
  if (packetFilterState)
  {
    v91 = packetFilterState;
    packetFilterState2 = [(SFDeviceReport *)self packetFilterState];
    v93 = [packetFilterState2 length];

    if (v93)
    {
      packetFilterState3 = [(SFDeviceReport *)self packetFilterState];
      [v5 setObject:packetFilterState3 forKeyedSubscript:@"packetFilterState"];
    }
  }

  if (reportCopy)
  {
    batteryAccumulator = [(SFDeviceReport *)self batteryAccumulator];

    if (batteryAccumulator)
    {
      batteryAccumulator2 = [(SFDeviceReport *)self batteryAccumulator];
      dictionaryRepresentation = [batteryAccumulator2 dictionaryRepresentation];
      [v5 setObject:dictionaryRepresentation forKeyedSubscript:@"batteryAccumulator"];
    }
  }

  v98 = *MEMORY[0x277D85DE8];

  return v5;
}

@end