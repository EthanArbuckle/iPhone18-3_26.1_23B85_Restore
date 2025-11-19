@interface AudioAccessoryDeviceInfo
- (AudioAccessoryDeviceInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation AudioAccessoryDeviceInfo

- (id)descriptionWithLevel:(int)a3
{
  v53 = a3;
  identifier = self->_identifier;
  NSAppendPrintF_safe();
  v4 = 0;
  v5 = v4;
  autoANCCapability = self->_autoANCCapability;
  if (autoANCCapability)
  {
    v54 = v4;
    if (autoANCCapability <= 3)
    {
      v7 = off_1002BB620[autoANCCapability - 1];
    }

    NSAppendPrintF_safe();
    v8 = v54;

    v5 = v8;
  }

  if (self->_autoANCStrength)
  {
    NSAppendPrintF_safe();
    v10 = v5;

    v5 = v10;
  }

  if (self->_bobbleCapability)
  {
    self->_bobbleCapability;
    NSAppendPrintF_safe();
    v11 = v5;

    v5 = v11;
  }

  if (self->_cameraControlCapability)
  {
    self->_cameraControlCapability;
    NSAppendPrintF_safe();
    v12 = v5;

    v5 = v12;
  }

  if (self->_caseSoundCapability)
  {
    self->_caseSoundCapability;
    NSAppendPrintF_safe();
    v13 = v5;

    v5 = v13;
  }

  if (self->_discoveryFlags)
  {
    NSAppendPrintF_safe();
    v14 = v5;

    v5 = v14;
  }

  if (self->_dynamicEndOfChargeCapability)
  {
    self->_dynamicEndOfChargeCapability;
    NSAppendPrintF_safe();
    v15 = v5;

    v5 = v15;
  }

  if (self->_dynamicEndOfChargeEnabled)
  {
    self->_dynamicEndOfChargeEnabled;
    NSAppendPrintF_safe();
    v16 = v5;

    v5 = v16;
  }

  if (self->_earTipFitTestCapability)
  {
    self->_earTipFitTestCapability;
    NSAppendPrintF_safe();
    v17 = v5;

    v5 = v17;
  }

  enhancedTransparencyVersion = self->_enhancedTransparencyVersion;
  if (self->_enhancedTransparencyVersion)
  {
    if (enhancedTransparencyVersion <= 4)
    {
      v19 = off_1002BB638[enhancedTransparencyVersion - 1];
    }

    NSAppendPrintF_safe();
    v20 = v5;

    v5 = v20;
  }

  if (self->_farFieldUplinkCapability)
  {
    self->_farFieldUplinkCapability;
    NSAppendPrintF_safe();
    v21 = v5;

    v5 = v21;
  }

  if (self->_frequencyBand)
  {
    self->_frequencyBand;
    NSAppendPrintF_safe();
    v22 = v5;

    v5 = v22;
  }

  if (self->_hearingAidCapability)
  {
    self->_hearingAidCapability;
    NSAppendPrintF_safe();
    v23 = v5;

    v5 = v23;
  }

  if (self->_hearingAidEnabled)
  {
    self->_hearingAidEnabled;
    NSAppendPrintF_safe();
    v24 = v5;

    v5 = v24;
  }

  if (self->_hearingAidEnrolled)
  {
    self->_hearingAidEnrolled;
    NSAppendPrintF_safe();
    v25 = v5;

    v5 = v25;
  }

  if (self->_hearingAidGainSwipeEnabled)
  {
    self->_hearingAidGainSwipeEnabled;
    NSAppendPrintF_safe();
    v26 = v5;

    v5 = v26;
  }

  if (self->_hearingAidV2Capability)
  {
    self->_hearingAidV2Capability;
    NSAppendPrintF_safe();
    v27 = v5;

    v5 = v27;
  }

  if (self->_hearingAssistEnabled)
  {
    self->_hearingAssistEnabled;
    NSAppendPrintF_safe();
    v28 = v5;

    v5 = v28;
  }

  if (self->_hearingProtectionCapability)
  {
    self->_hearingProtectionCapability;
    NSAppendPrintF_safe();
    v29 = v5;

    v5 = v29;
  }

  if (self->_hearingProtectionPPECapability)
  {
    self->_hearingProtectionPPECapability;
    NSAppendPrintF_safe();
    v30 = v5;

    v5 = v30;
  }

  if (self->_hearingProtectionPPEEnabled)
  {
    self->_hearingProtectionPPEEnabled;
    NSAppendPrintF_safe();
    v31 = v5;

    v5 = v31;
  }

  if (self->_hearingTestCapability)
  {
    self->_hearingTestCapability;
    NSAppendPrintF_safe();
    v32 = v5;

    v5 = v32;
  }

  if (self->_heartRateMonitorCapability)
  {
    self->_heartRateMonitorCapability;
    NSAppendPrintF_safe();
    v33 = v5;

    v5 = v33;
  }

  if (self->_heartRateMonitorEnabled)
  {
    self->_heartRateMonitorEnabled;
    NSAppendPrintF_safe();
    v34 = v5;

    v5 = v34;
  }

  if (self->_hideEarDetectionCapability)
  {
    self->_hideEarDetectionCapability;
    NSAppendPrintF_safe();
    v35 = v5;

    v5 = v35;
  }

  if (self->_hideOffListeningModeCapability)
  {
    self->_hideOffListeningModeCapability;
    NSAppendPrintF_safe();
    v36 = v5;

    v5 = v36;
  }

  if (self->_lastSeenTime)
  {
    NSAppendPrintF_safe();
    v37 = v5;

    v5 = v37;
  }

  if (self->_pmeEverywhereCapability)
  {
    self->_pmeEverywhereCapability;
    NSAppendPrintF_safe();
    v38 = v5;

    v5 = v38;
  }

  if (self->_ovadStreamingCapability)
  {
    self->_ovadStreamingCapability;
    NSAppendPrintF_safe();
    v39 = v5;

    v5 = v39;
  }

  if (self->_rawGesturesConfigFlags)
  {
    v52 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v40 = v5;

    v5 = v40;
  }

  if (self->_siriMultitoneCapability)
  {
    self->_siriMultitoneCapability;
    NSAppendPrintF_safe();
    v41 = v5;

    v5 = v41;
  }

  if (self->_sleepDetectionCapability)
  {
    self->_sleepDetectionCapability;
    NSAppendPrintF_safe();
    v42 = v5;

    v5 = v42;
  }

  if (self->_sleepDetectionEnabled)
  {
    self->_sleepDetectionEnabled;
    NSAppendPrintF_safe();
    v43 = v5;

    v5 = v43;
  }

  streamStateAoS = self->_streamStateAoS;
  if (self->_streamStateAoS)
  {
    if (streamStateAoS <= 3)
    {
      v45 = off_1002BB658[streamStateAoS - 1];
    }

    NSAppendPrintF_safe();
    v46 = v5;

    v5 = v46;
  }

  if (self->_temporaryManagedPairedStatus)
  {
    self->_temporaryManagedPairedStatus;
    NSAppendPrintF_safe();
    v47 = v5;

    v5 = v47;
  }

  if (v53 < 0x15u)
  {
    NSAppendPrintF_safe();
    v48 = v5;

    v5 = v48;
  }

  v49 = v5;

  return v5;
}

- (AudioAccessoryDeviceInfo)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v46.receiver = self;
  v46.super_class = AudioAccessoryDeviceInfo;
  v7 = [(AudioAccessoryDeviceInfo *)&v46 init];

  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_118;
    }

LABEL_117:
    NSErrorF();
    *a4 = v44 = 0;
    goto LABEL_113;
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    if (!a4)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

  v47 = 0;
  sub_1000DACDC();
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_autoANCCapability = v47;
  }

  else if (v8 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  sub_1000DACDC();
  v9 = CUXPCDecodeUInt64RangedEx();
  if (v9 == 6)
  {
    v7->_autoANCStrength = v47;
  }

  else if (v9 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v10 = sub_1000DACB8();
  if (v10 == 6)
  {
    v7->_bobbleCapability = v47;
  }

  else if (v10 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v11 = sub_1000DACB8();
  if (v11 == 6)
  {
    v7->_cameraControlCapability = v47;
  }

  else if (v11 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v12 = sub_1000DACB8();
  if (v12 == 6)
  {
    v7->_caseSoundCapability = v47;
  }

  else if (v12 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  sub_1000DACDC();
  v13 = CUXPCDecodeUInt64RangedEx();
  if (v13 == 6)
  {
    v7->_discoveryFlags = v47;
  }

  else if (v13 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v14 = sub_1000DACB8();
  if (v14 == 6)
  {
    v7->_dynamicEndOfChargeCapability = v47;
  }

  else if (v14 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v15 = CUXPCDecodeSInt64RangedEx();
  if (v15 == 6)
  {
    v7->_dynamicEndOfChargeEnabled = v47;
  }

  else if (v15 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v16 = sub_1000DACB8();
  if (v16 == 6)
  {
    v7->_earTipFitTestCapability = v47;
  }

  else if (v16 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v17 = sub_1000DACB8();
  if (v17 == 6)
  {
    v7->_enhancedTransparencyVersion = v47;
  }

  else if (v17 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v18 = sub_1000DACB8();
  if (v18 == 6)
  {
    v7->_farFieldUplinkCapability = v47;
  }

  else if (v18 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v19 = sub_1000DACB8();
  if (v19 == 6)
  {
    v7->_frequencyBand = v47;
  }

  else if (v19 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v20 = sub_1000DACB8();
  if (v20 == 6)
  {
    v7->_ovadStreamingCapability = v47;
  }

  else if (v20 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v21 = sub_1000DACB8();
  if (v21 == 6)
  {
    v7->_hearingAidCapability = v47;
  }

  else if (v21 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v22 = sub_1000DACB8();
  if (v22 == 6)
  {
    v7->_hearingAidEnabled = v47;
  }

  else if (v22 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v23 = sub_1000DACB8();
  if (v23 == 6)
  {
    v7->_hearingAidEnrolled = v47;
  }

  else if (v23 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v24 = sub_1000DACB8();
  if (v24 == 6)
  {
    v7->_hearingAidGainSwipeEnabled = v47;
  }

  else if (v24 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v25 = sub_1000DACB8();
  if (v25 == 6)
  {
    v7->_hearingAidV2Capability = v47;
  }

  else if (v25 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v26 = sub_1000DACB8();
  if (v26 == 6)
  {
    v7->_hearingAssistEnabled = v47;
  }

  else if (v26 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v27 = sub_1000DACB8();
  if (v27 == 6)
  {
    v7->_hearingProtectionCapability = v47;
  }

  else if (v27 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v28 = sub_1000DACB8();
  if (v28 == 6)
  {
    v7->_hearingProtectionPPECapability = v47;
  }

  else if (v28 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  sub_1000DACDC();
  v29 = CUXPCDecodeUInt64RangedEx();
  if (v29 == 6)
  {
    v7->_hearingProtectionPPECapabilityLevel = v47;
  }

  else if (v29 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v30 = sub_1000DACB8();
  if (v30 == 6)
  {
    v7->_hearingProtectionPPEEnabled = v47;
  }

  else if (v30 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v31 = sub_1000DACB8();
  if (v31 == 6)
  {
    v7->_hearingTestCapability = v47;
  }

  else if (v31 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v32 = sub_1000DACB8();
  if (v32 == 6)
  {
    v7->_heartRateMonitorCapability = v47;
  }

  else if (v32 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v33 = sub_1000DACB8();
  if (v33 == 6)
  {
    v7->_heartRateMonitorEnabled = v47;
  }

  else if (v33 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v34 = sub_1000DACB8();
  if (v34 == 6)
  {
    v7->_hideEarDetectionCapability = v47;
  }

  else if (v34 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v35 = sub_1000DACB8();
  if (v35 == 6)
  {
    v7->_hideOffListeningModeCapability = v47;
  }

  else if (v35 == 5)
  {
    goto LABEL_118;
  }

  if (!CUXPCDecodeNSString())
  {
    goto LABEL_118;
  }

  v47 = 0;
  v36 = CUXPCDecodeSInt64RangedEx();
  if (v36 == 6)
  {
    v7->_lastSeenTime = v47;
  }

  else if (v36 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v37 = sub_1000DACB8();
  if (v37 == 6)
  {
    v7->_pmeEverywhereCapability = v47;
  }

  else if (v37 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  sub_1000DACDC();
  v38 = CUXPCDecodeUInt64RangedEx();
  if (v38 == 6)
  {
    v7->_rawGesturesConfigFlags = v47;
  }

  else if (v38 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v39 = sub_1000DACB8();
  if (v39 == 6)
  {
    v7->_siriMultitoneCapability = v47;
  }

  else if (v39 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v40 = sub_1000DACB8();
  if (v40 == 6)
  {
    v7->_sleepDetectionCapability = v47;
  }

  else if (v40 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v41 = sub_1000DACB8();
  if (v41 == 6)
  {
    v7->_sleepDetectionEnabled = v47;
  }

  else if (v41 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v42 = sub_1000DACB8();
  if (v42 == 6)
  {
    v7->_temporaryManagedPairedStatus = v47;
  }

  else if (v42 == 5)
  {
    goto LABEL_118;
  }

  v47 = 0;
  v43 = sub_1000DACB8();
  if (v43 != 6)
  {
    if (v43 != 5)
    {
      goto LABEL_112;
    }

LABEL_118:
    v44 = 0;
    goto LABEL_113;
  }

  v7->_streamStateAoS = v47;
LABEL_112:
  v44 = v7;
LABEL_113:

  return v44;
}

@end