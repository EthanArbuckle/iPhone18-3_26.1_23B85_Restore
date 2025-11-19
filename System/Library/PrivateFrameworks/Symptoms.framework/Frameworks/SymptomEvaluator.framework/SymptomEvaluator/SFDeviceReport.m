@interface SFDeviceReport
- (id)description;
- (id)dictionaryReport:(BOOL)a3;
@end

@implementation SFDeviceReport

- (id)description
{
  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  v30 = [(SFDeviceReport *)self timestampBucket];
  v29 = [(SFDeviceReport *)self batteryPercentage];
  v28 = [(SFDeviceReport *)self batteryCurrentCapacity];
  v27 = [(SFDeviceReport *)self batteryMaximumCapacity];
  v26 = [(SFDeviceReport *)self batteryDesignCapacity];
  v25 = [(SFDeviceReport *)self batteryAbsoluteCapacity];
  v24 = [(SFDeviceReport *)self batteryVoltage];
  v23 = [(SFDeviceReport *)self batteryTimeRemaining];
  v22 = [(SFDeviceReport *)self batteryTemperature];
  v21 = [(SFDeviceReport *)self batteryExternalPowerIsConnected];
  v20 = [(SFDeviceReport *)self batteryFullyCharged];
  v19 = [(SFDeviceReport *)self batteryAtWarnLevel];
  v18 = [(SFDeviceReport *)self batteryAtCriticalLevel];
  v17 = [(SFDeviceReport *)self rnfEnabled];
  v16 = [(SFDeviceReport *)self devicePluggedIn];
  v15 = [(SFDeviceReport *)self deviceScreenOn];
  v3 = [(SFDeviceReport *)self deviceScreenBrightness];
  v4 = [(SFDeviceReport *)self motionState];
  v5 = [(SFDeviceReport *)self deviceOrientation];
  v6 = [(SFDeviceReport *)self thermalPressure];
  v7 = [(SFDeviceReport *)self quicExperimentallyEnabled];
  v8 = [(SFDeviceReport *)self unifiedStackExperimentallyEnabled];
  v9 = [(SFDeviceReport *)self privacyProxyServiceStatus];
  v10 = [(SFDeviceReport *)self privacyProxyUserTier];
  v11 = [(SFDeviceReport *)self privacyProxyNetworkStatus];
  v12 = [(SFDeviceReport *)self privacyProxyTraffic];
  v13 = [v31 initWithFormat:@"<NWDeviceReport:\n\tTimestamp Bucket:\t\t%u\n\tBattery Percentage:\t\t\t%u\n\tBattery Current Capacity:\t\t%u\n\tBattery Maximum Capacity:\t\t%u\n\tBattery Design Capacity:\t\t%u\n\tBattery Absolute Capacity:\t\t%u\n\tBattery Voltage:\t\t\t%u\n\tBattery Time Remaining:\t\t\t%u\n\tBattery Temperature:\t\t\t%u\n\tBattery External Power Is Connected:\t%u\n\tBattery Fully Charged:\t\t\t%u\n\tBattery At Warn Level:\t\t\t%u\n\tBattery At Critical Level:\t\t%u\n\tRNF Enabled:\t\t\t\t%u\n\tDevice Plugged In:\t\t\t%u\n\tDevice Screen On:\t\t\t%u\n\tDevice Screen Brightness:\t\t%u\n\tMotion State:\t\t\t\t%u\n\tDevice Orientation:\t\t\t%u\n\tThermal Pressure:\t\t\t%u\n\tQUIC Experimentally Enabled:\t\t%u\n\tUnified HTTP Stack Experimentally Enabled:\t\t%u\n\tPrivacy Proxy Service Status:\t\t%u\n\tPrivacy Proxy User Tier:\t\t%u\n\tPrivacy Proxy Networks:\t\t%@\n\tPrivacy Proxy Traffic:\t\t%@\n>", v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (id)dictionaryReport:(BOOL)a3
{
  v3 = a3;
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
    v23 = [(SFDeviceReport *)self serialNumber];
    [v5 setObject:v23 forKeyedSubscript:@"serialNumber"];
  }

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport rnfEnabled](self, "rnfEnabled")}];
  [v5 setObject:v24 forKeyedSubscript:@"rnfEnabled"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport devicePluggedIn](self, "devicePluggedIn")}];
  [v5 setObject:v25 forKeyedSubscript:@"devicePluggedIn"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport deviceScreenOn](self, "deviceScreenOn")}];
  [v5 setObject:v26 forKeyedSubscript:@"deviceScreenOn"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SFDeviceReport deviceScreenBrightness](self, "deviceScreenBrightness")}];
  [v5 setObject:v27 forKeyedSubscript:@"deviceScreenBrightness"];

  v28 = [(SFDeviceReport *)self motionState];
  if (v28 >= 6)
  {
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v28];
  }

  else
  {
    v29 = *(&off_27898A568 + v28);
  }

  [v5 setObject:v29 forKeyedSubscript:@"motionState"];

  v30 = [(SFDeviceReport *)self deviceOrientation];
  if (v30 >= 7)
  {
    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v30];
  }

  else
  {
    v31 = *(&off_27898A598 + v30);
  }

  [v5 setObject:v31 forKeyedSubscript:@"deviceOrientation"];

  v32 = [(SFDeviceReport *)self thermalPressure];
  if (v32 > 9)
  {
    if (v32 <= 29)
    {
      if (v32 == 10)
      {
        v33 = @"NW_DEVICE_THERMAL_PRESSURE_LIGHT";
        goto LABEL_33;
      }

      if (v32 == 20)
      {
        v33 = @"NW_DEVICE_THERMAL_PRESSURE_MODERATE";
        goto LABEL_33;
      }
    }

    else
    {
      switch(v32)
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

  else if (v32 <= 1)
  {
    if (!v32)
    {
      v33 = @"NW_DEVICE_THERMAL_PRESSURE_NOMINAL";
      goto LABEL_33;
    }

    if (v32 == 1)
    {
      v33 = @"NW_DEVICE_THERMAL_PRESSURE_MODERATE_MAC";
      goto LABEL_33;
    }
  }

  else
  {
    switch(v32)
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

  v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v32];
LABEL_33:
  [v5 setObject:v33 forKeyedSubscript:@"thermalPressure"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport quicExperimentallyEnabled](self, "quicExperimentallyEnabled")}];
  [v5 setObject:v34 forKeyedSubscript:@"quicExperimentallyEnabled"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[SFDeviceReport unifiedStackExperimentallyEnabled](self, "unifiedStackExperimentallyEnabled")}];
  [v5 setObject:v35 forKeyedSubscript:@"unifiedStackExperimentallyEnabled"];

  v36 = [(SFDeviceReport *)self privacyProxyServiceStatus];
  if (v36 >= 8)
  {
    v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v36];
  }

  else
  {
    v37 = *(&off_27898A5D0 + v36);
  }

  [v5 setObject:v37 forKeyedSubscript:@"privacyProxyServiceStatus"];

  v38 = [(SFDeviceReport *)self privacyProxyUserTier];
  if (v38 >= 3)
  {
    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v38];
  }

  else
  {
    v39 = *(&off_27898A610 + v38);
  }

  [v5 setObject:v39 forKeyedSubscript:@"privacyProxyUserTier"];

  v40 = [(SFDeviceReport *)self privacyProxyNetworkStatus];
  v41 = [v40 count];

  if (v41)
  {
    v101 = v5;
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v100 = self;
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
          v49 = [v47 type];
          if (v49 >= 5)
          {
            v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v49];
          }

          else
          {
            v50 = *(&off_27898A628 + v49);
          }

          [v48 setObject:v50 forKeyedSubscript:@"type"];

          v51 = [v47 status];
          if (v51 >= 4)
          {
            v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v51];
          }

          else
          {
            v52 = *(&off_27898A650 + v51);
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

    self = v100;
  }

  v53 = [(SFDeviceReport *)self privacyProxyTraffic];

  if (v53)
  {
    v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v55 = MEMORY[0x277CCABB0];
    v56 = [(SFDeviceReport *)self privacyProxyTraffic];
    v57 = [v55 numberWithBool:{objc_msgSend(v56, "safariUnencrypted")}];
    [v54 setObject:v57 forKeyedSubscript:@"safariUnencrypted"];

    v58 = MEMORY[0x277CCABB0];
    v59 = [(SFDeviceReport *)self privacyProxyTraffic];
    v60 = [v58 numberWithBool:{objc_msgSend(v59, "safariDNS")}];
    [v54 setObject:v60 forKeyedSubscript:@"safariDNS"];

    v61 = MEMORY[0x277CCABB0];
    v62 = [(SFDeviceReport *)self privacyProxyTraffic];
    v63 = [v61 numberWithBool:{objc_msgSend(v62, "safariTrackers")}];
    [v54 setObject:v63 forKeyedSubscript:@"safariTrackers"];

    v64 = MEMORY[0x277CCABB0];
    v65 = [(SFDeviceReport *)self privacyProxyTraffic];
    v66 = [v64 numberWithBool:{objc_msgSend(v65, "safariAll")}];
    [v54 setObject:v66 forKeyedSubscript:@"safariAll"];

    v67 = MEMORY[0x277CCABB0];
    v68 = [(SFDeviceReport *)self privacyProxyTraffic];
    v69 = [v67 numberWithBool:{objc_msgSend(v68, "safariHTTP")}];
    [v54 setObject:v69 forKeyedSubscript:@"safariHTTP"];

    v70 = MEMORY[0x277CCABB0];
    v71 = [(SFDeviceReport *)self privacyProxyTraffic];
    v72 = [v70 numberWithBool:{objc_msgSend(v71, "mailTrackers")}];
    [v54 setObject:v72 forKeyedSubscript:@"mailTrackers"];

    v73 = MEMORY[0x277CCABB0];
    v74 = [(SFDeviceReport *)self privacyProxyTraffic];
    v75 = [v73 numberWithBool:{objc_msgSend(v74, "anyUnencrypted")}];
    [v54 setObject:v75 forKeyedSubscript:@"anyUnencrypted"];

    v76 = MEMORY[0x277CCABB0];
    v77 = [(SFDeviceReport *)self privacyProxyTraffic];
    v78 = [v76 numberWithBool:{objc_msgSend(v77, "anyDNS")}];
    [v54 setObject:v78 forKeyedSubscript:@"anyDNS"];

    v79 = MEMORY[0x277CCABB0];
    v80 = [(SFDeviceReport *)self privacyProxyTraffic];
    v81 = [v79 numberWithBool:{objc_msgSend(v80, "anyKnownTrackers")}];
    [v54 setObject:v81 forKeyedSubscript:@"anyKnownTrackers"];

    v82 = MEMORY[0x277CCABB0];
    v83 = [(SFDeviceReport *)self privacyProxyTraffic];
    v84 = [v82 numberWithBool:{objc_msgSend(v83, "anyAppTrackers")}];
    [v54 setObject:v84 forKeyedSubscript:@"anyAppTrackers"];

    v85 = MEMORY[0x277CCABB0];
    v86 = [(SFDeviceReport *)self privacyProxyTraffic];
    v87 = [v85 numberWithBool:{objc_msgSend(v86, "newsURLResolution")}];
    [v54 setObject:v87 forKeyedSubscript:@"newsURLResolution"];

    [v5 setObject:v54 forKeyedSubscript:@"privacyProxyTraffic"];
  }

  v88 = [(SFDeviceReport *)self trialTreatmentId];

  if (v88)
  {
    v89 = [(SFDeviceReport *)self trialTreatmentId];
    [v5 setObject:v89 forKeyedSubscript:@"trialTreatmentId"];
  }

  v90 = [(SFDeviceReport *)self packetFilterState];
  if (v90)
  {
    v91 = v90;
    v92 = [(SFDeviceReport *)self packetFilterState];
    v93 = [v92 length];

    if (v93)
    {
      v94 = [(SFDeviceReport *)self packetFilterState];
      [v5 setObject:v94 forKeyedSubscript:@"packetFilterState"];
    }
  }

  if (v3)
  {
    v95 = [(SFDeviceReport *)self batteryAccumulator];

    if (v95)
    {
      v96 = [(SFDeviceReport *)self batteryAccumulator];
      v97 = [v96 dictionaryRepresentation];
      [v5 setObject:v97 forKeyedSubscript:@"batteryAccumulator"];
    }
  }

  v98 = *MEMORY[0x277D85DE8];

  return v5;
}

@end