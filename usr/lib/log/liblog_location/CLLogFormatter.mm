@interface CLLogFormatter
- (CLLogFormatter)init;
- (SEL)selectorForType:(id)type;
- (id)JSONObjectWithType:(const char *)type value:(id)value info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLAppMonitor_Type__Notification:(id)notification info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLBTLEFenceManager_Type__Notification:(id)notification info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLBarometerCalibration_Types__Context:(id)context info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLBatteryChargerType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientAuthorizationStatus:(id)status info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientCorrectiveCompensation:(id)compensation info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientInUseLevel:(id)level info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientIncidentalUseMode:(id)mode info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientLocationReferenceFrame:(id)frame info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientLocationSuitability:(id)suitability info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientManager_Type__AuthorizationRequestType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientRegistrationResult:(id)result info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientServiceType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLClientServiceTypeMask:(id)mask info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLDaemonLocation:(id)location info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLDaemonLocationPrivate__OriginDevice:(id)device info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLDaemonStatus_Type__Battery:(id)battery info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLDaemonStatus_Type__Reachability:(id)reachability info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLFenceManager_Type__Notification:(id)notification info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationDictionaryUtilitiesArrowState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationDictionaryUtilitiesAuthorizationMask:(id)mask info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationDictionaryUtilitiesEntityClass:(id)class info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationProvider_Type__MotionDetected:(id)detected info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationProvider_Type__Notification:(id)notification info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationStreamingGranularity:(id)granularity info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLLocationType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLMonitoringState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLMotionActivity:(id)activity info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLMotionActivity__Confidence:(id)confidence info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLMotionActivity__Type:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLRegionState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLSensorRecorder_Types__DataType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLSimulationLocationDeliveryBehavior:(id)behavior info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLSimulationLocationRepeatBehavior:(id)behavior info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLStreamingAwareLocationProviderLocalGPSStateMachine__LocationSourceState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLStreamingAwareLocationProviderLocalGPSStateMachine__WorkoutState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLStreamingAwareLocationProviderNoLocalGPSStateMachine__LocationSourceState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLStreamingAwareLocationProviderStateMachine__LocationSource:(id)source info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLSubHarvesterIdentifier:(id)identifier info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLTelephonyService_Type__Cell:(id)cell info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CLWifiService_Type__ScanType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CMMotionCoprocessorReply_Log:(id)log info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CMWakeGestureCrownOrientation:(id)orientation info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CMWakeGestureState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_CMWakeGestureWristOrientation:(id)orientation info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Encrypted_CLClientLocation:(id)location info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Encrypted_CLLocationCoordinate2D:(id)d info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Encrypted_latitude:(id)encrypted_latitude info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Encrypted_longitude:(id)encrypted_longitude info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_Generic:(id)generic info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_IOMessage:(id)message info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_NEVPNConnectivityState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_PSYSyncRestriction:(id)restriction info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_PSYSyncSessionType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RBSTaskState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RTLGestureType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RTLState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RTLocationOfInterestType:(id)type info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_RTRoutineMode:(id)mode info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_SYSessionState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_SqliteResult:(id)result info:(os_log_type_info_s *)info;
- (id)JSONObjectWith__CLClientManagerStateTrackerState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith__CLDaemonStatusStateTrackerState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith__CLLocationManagerStateTrackerState:(id)state info:(os_log_type_info_s *)info;
- (id)JSONObjectWith_escape_only:(id)with_escape_only info:(os_log_type_info_s *)info;
- (void)dealloc;
@end

@implementation CLLogFormatter

- (CLLogFormatter)init
{
  v5.receiver = self;
  v5.super_class = CLLogFormatter;
  v2 = [(CLLogFormatter *)&v5 init];
  if (v2)
  {
    v2->_selectorForType = objc_opt_new();
    v2->_formatterSignature = [objc_opt_class() instanceMethodSignatureForSelector:sel_JSONObjectWith_Generic_info_];
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x29EDCA580], DISPATCH_AUTORELEASE_FREQUENCY_NEVER);
    v2->_q = dispatch_queue_create("CLLogFormatter", v3);
  }

  return v2;
}

- (void)dealloc
{
  self->_selectorForType = 0;

  self->_formatterSignature = 0;
  self->_q = 0;
  v3.receiver = self;
  v3.super_class = CLLogFormatter;
  [(CLLogFormatter *)&v3 dealloc];
}

- (SEL)selectorForType:(id)type
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  q = self->_q;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __34__CLLogFormatter_selectorForType___block_invoke;
  block[3] = &unk_29F27E8A0;
  block[5] = type;
  block[6] = &v11;
  block[4] = self;
  dispatch_sync(q, block);
  v6 = v12[3];
  if (!v6)
  {
    v8 = self->_q;
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __34__CLLogFormatter_selectorForType___block_invoke_2;
    v9[3] = &unk_29F27E8A0;
    v9[5] = type;
    v9[6] = &v11;
    v9[4] = self;
    dispatch_barrier_sync(v8, v9);
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __34__CLLogFormatter_selectorForType___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 8) objectForKeyedSubscript:{a1[5]), "pointerValue"}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __34__CLLogFormatter_selectorForType___block_invoke_2(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) objectForKeyedSubscript:{*(a1 + 40)), "pointerValue"}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v3 = [*(a1 + 40) stringByReplacingOccurrencesOfString:@":" withString:@"_"];
    *(*(*(a1 + 48) + 8) + 24) = NSSelectorFromString([MEMORY[0x29EDBA0F8] stringWithFormat:@"JSONObjectWith_%@:info:", v3]);
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 48) + 8) + 24);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = sel_JSONObjectWith_Generic_info_;
    }

    v6 = [MEMORY[0x29EDBA168] valueWithPointer:*(*(*(a1 + 48) + 8) + 24)];
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 8);

    return [v8 setObject:v6 forKeyedSubscript:v7];
  }

  return result;
}

- (id)JSONObjectWithType:(const char *)type value:(id)value info:(os_log_type_info_s *)info
{
  infoCopy = info;
  valueCopy = value;
  v7 = [MEMORY[0x29EDB8DD8] invocationWithMethodSignature:self->_formatterSignature];
  [v7 setSelector:{-[CLLogFormatter selectorForType:](self, "selectorForType:", objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", type))}];
  [v7 setTarget:self];
  [v7 setArgument:&valueCopy atIndex:2];
  [v7 setArgument:&infoCopy atIndex:3];
  [v7 invoke];
  v9 = 0;
  [v7 getReturnValue:&v9];
  return v9;
}

- (id)JSONObjectWith_Generic:(id)generic info:(os_log_type_info_s *)info
{
  v7[3] = *MEMORY[0x29EDCA608];
  v6[0] = @"type";
  v6[1] = @"expected type";
  v7[0] = @"decode failure";
  v7[1] = @"Generic";
  v6[2] = @"raw value";
  v7[2] = generic;
  result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_escape_only:(id)with_escape_only info:(os_log_type_info_s *)info
{
  v12[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11[0] = @"type";
    v11[1] = @"expected type";
    v12[0] = @"decode failure";
    v12[1] = @"NSString";
    v11[2] = @"raw value";
    v12[2] = with_escape_only;
    with_escape_only = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    goto LABEL_7;
  }

  v5 = strlen([with_escape_only UTF8String]);
  if (v5 == [with_escape_only length])
  {
LABEL_7:
    v10 = *MEMORY[0x29EDCA608];
    return with_escape_only;
  }

  v6 = MEMORY[0x29EDBA0F8];
  uTF8String = [with_escape_only UTF8String];
  v8 = *MEMORY[0x29EDCA608];

  return [v6 stringWithUTF8String:uTF8String];
}

- (id)JSONObjectWith_CLClientLocationReferenceFrame:(id)frame info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [frame intValue], v5 < 3))
  {
    result = *(&off_29F27E8C0 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientLocationReferenceFrame";
    v8[2] = @"raw value";
    v9[2] = frame;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientLocationSuitability:(id)suitability info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  intValue = [suitability intValue];
  switch(intValue)
  {
    case 1:
      result = @"RouteGuidance";
      break;
    case 0xFFFF:
      result = @"Any";
      break;
    case 2:
      result = @"Other";
      break;
    default:
LABEL_6:
      v8[0] = @"type";
      v8[1] = @"expected type";
      v9[0] = @"decode failure";
      v9[1] = @"CLClientLocationSuitability";
      v8[2] = @"raw value";
      v9[2] = suitability;
      result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
      break;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLLocationDictionaryUtilitiesEntityClass:(id)class info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [class intValue], v5 < 0xA))
  {
    result = *(&off_29F27E8D8 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientAuthorizationStatus";
    v8[2] = @"raw value";
    v9[2] = class;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLLocationDictionaryUtilitiesArrowState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 4))
  {
    result = *(&off_29F27E928 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientAuthorizationStatus";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientAuthorizationStatus:(id)status info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [status intValue], v5 < 5))
  {
    result = *(&off_29F27E948 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientAuthorizationStatus";
    v8[2] = @"raw value";
    v9[2] = status;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientCorrectiveCompensation:(id)compensation info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [compensation intValue], v5 < 3))
  {
    result = *(&off_29F27E970 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientCorrectiveCompensation";
    v8[2] = @"raw value";
    v9[2] = compensation;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLRegionState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 3))
  {
    result = *(&off_29F27E988 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLRegionState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLDaemonLocation:(id)location info:(os_log_type_info_s *)info
{
  v43[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __dst = 0xFFFF;
    v25 = 0.0;
    v26 = 0.0;
    __asm { FMOV            V0.2D, #-1.0 }

    v27 = xmmword_2999EDE60;
    v28 = _Q0;
    v29 = _Q0;
    v30 = _Q0;
    v31 = 0;
    v32 = -1.0;
    memset(v33, 0, sizeof(v33));
    v34 = -1.0;
    v35 = 0x7FFFFFFF;
    v38 = 0.0;
    v36 = 0;
    v37 = 0;
    v39 = 0;
    bytes = [location bytes];
    if ([location length] <= 0x9C)
    {
      v13 = [location length];
    }

    else
    {
      v13 = 156;
    }

    memcpy(&__dst, bytes, v13);
    v18 = -[CLLogFormatter JSONObjectWith_CLClientLocationSuitability:info:](self, "JSONObjectWith_CLClientLocationSuitability:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:__dst], info);
    v19 = -[CLLogFormatter JSONObjectWith_CLClientLocationReferenceFrame:info:](self, "JSONObjectWith_CLClientLocationReferenceFrame:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:HIDWORD(v36)], info);
    v20 = -[CLLogFormatter JSONObjectWith_CLClientLocationReferenceFrame:info:](self, "JSONObjectWith_CLClientLocationReferenceFrame:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:v37], info);
    v21 = -[CLLogFormatter JSONObjectWith_CLLocationType:info:](self, "JSONObjectWith_CLLocationType:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:*v33], info);
    v41[0] = v18;
    v40[0] = @"suitability";
    v40[1] = @"lat";
    v41[1] = [MEMORY[0x29EDBA070] numberWithDouble:v25];
    v40[2] = @"lon";
    v41[2] = [MEMORY[0x29EDBA070] numberWithDouble:v26];
    v40[3] = @"horizontalAccuracy";
    v41[3] = [MEMORY[0x29EDBA070] numberWithDouble:*&v27];
    v40[4] = @"altitude";
    v41[4] = [MEMORY[0x29EDBA070] numberWithDouble:*(&v27 + 1)];
    v40[5] = @"ellipsoidalAltitude";
    v41[5] = [MEMORY[0x29EDBA070] numberWithDouble:v38];
    v40[6] = @"verticalAccuracy";
    v41[6] = [MEMORY[0x29EDBA070] numberWithDouble:*&v28];
    v40[7] = @"speed";
    v41[7] = [MEMORY[0x29EDBA070] numberWithDouble:*(&v28 + 1)];
    v40[8] = @"speedAccuracy";
    v41[8] = [MEMORY[0x29EDBA070] numberWithDouble:*&v29];
    v40[9] = @"course";
    v41[9] = [MEMORY[0x29EDBA070] numberWithDouble:*(&v29 + 1)];
    v40[10] = @"courseAccuracy";
    v41[10] = [MEMORY[0x29EDBA070] numberWithDouble:*&v30];
    v40[11] = @"timestamp";
    v41[11] = [MEMORY[0x29EDBA070] numberWithDouble:*(&v30 + 1)];
    v40[12] = @"confidence";
    v41[12] = [MEMORY[0x29EDBA070] numberWithInt:v31];
    v40[13] = @"lifespan";
    v41[13] = [MEMORY[0x29EDBA070] numberWithDouble:v32];
    v41[14] = v21;
    v40[14] = @"type";
    v40[15] = @"rawLat";
    v41[15] = [MEMORY[0x29EDBA070] numberWithDouble:*&v33[4]];
    v40[16] = @"rawLon";
    v41[16] = [MEMORY[0x29EDBA070] numberWithDouble:*&v33[12]];
    v40[17] = @"rawCourse";
    v41[17] = [MEMORY[0x29EDBA070] numberWithDouble:v34];
    v40[18] = @"floor";
    v41[18] = [MEMORY[0x29EDBA070] numberWithInt:v35];
    v40[19] = @"integrity";
    v41[19] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v36];
    v41[20] = v19;
    v40[20] = @"referenceFrame";
    v40[21] = @"rawReferenceFrame";
    v41[21] = v20;
    v40[22] = @"fromSimulationController";
    v41[22] = [MEMORY[0x29EDBA070] numberWithBool:v39 & 1];
    v14 = MEMORY[0x29EDB8DC0];
    v15 = v41;
    v16 = v40;
    v17 = 23;
  }

  else
  {
    v42[0] = @"type";
    v42[1] = @"expected type";
    v42[2] = @"raw value";
    v43[0] = @"decode failure";
    v43[1] = @"CLDaemonLocation";
    v43[2] = location;
    v14 = MEMORY[0x29EDB8DC0];
    v15 = v43;
    v16 = v42;
    v17 = 3;
  }

  result = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientManager_Type__AuthorizationRequestType:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [type intValue], v5 < 0x14))
  {
    result = *(&off_29F27E9A0 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientManager_Type::AuthorizationRequestType";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientInUseLevel:(id)level info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [level intValue], v5 < 6))
  {
    result = *(&off_29F27EA40 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"ClientInUseLevel";
    v8[2] = @"raw value";
    v9[2] = level;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_SqliteResult:(id)result info:(os_log_type_info_s *)info
{
  v14[3] = *MEMORY[0x29EDCA608];
  if ([result length] != 4)
  {
    v13[0] = @"type";
    v13[1] = @"expected type";
    v14[0] = @"decode failure";
    v14[1] = @"SqliteResult";
    v13[2] = @"raw value";
    v14[2] = result;
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v14;
    v9 = v13;
LABEL_7:
    result = [v7 dictionaryWithObjects:v8 forKeys:v9 count:3];
    goto LABEL_8;
  }

  v5 = *[result bytes];
  if (v5 > 519)
  {
    if (v5 <= 2313)
    {
      if (v5 <= 1033)
      {
        if (v5 > 775)
        {
          if (v5 <= 781)
          {
            if (v5 == 776)
            {
              result = @"SQLITE_READONLY_ROLLBACK";
              goto LABEL_8;
            }

            if (v5 == 778)
            {
              result = @"SQLITE_IOERR_WRITE";
              goto LABEL_8;
            }
          }

          else
          {
            switch(v5)
            {
              case 782:
                result = @"SQLITE_CANTOPEN_FULLPATH";
                goto LABEL_8;
              case 787:
                result = @"SQLITE_CONSTRAINT_FOREIGNKEY";
                goto LABEL_8;
              case 1032:
                result = @"SQLITE_READONLY_DBMOVED";
                goto LABEL_8;
            }
          }
        }

        else if (v5 <= 525)
        {
          if (v5 == 520)
          {
            result = @"SQLITE_READONLY_CANTLOCK";
            goto LABEL_8;
          }

          if (v5 == 522)
          {
            result = @"SQLITE_IOERR_SHORT_READ";
            goto LABEL_8;
          }
        }

        else
        {
          switch(v5)
          {
            case 526:
              result = @"SQLITE_CANTOPEN_ISDIR";
              goto LABEL_8;
            case 531:
              result = @"SQLITE_CONSTRAINT_COMMITHOOK";
              goto LABEL_8;
            case 539:
              result = @"SQLITE_NOTICE_RECOVER_ROLLBACK";
              goto LABEL_8;
          }
        }
      }

      else if (v5 <= 1545)
      {
        if (v5 <= 1042)
        {
          if (v5 == 1034)
          {
            result = @"SQLITE_IOERR_FSYNC";
            goto LABEL_8;
          }

          if (v5 == 1038)
          {
            result = @"SQLITE_CANTOPEN_CONVPATH";
            goto LABEL_8;
          }
        }

        else
        {
          switch(v5)
          {
            case 1043:
              result = @"SQLITE_CONSTRAINT_FUNCTION";
              goto LABEL_8;
            case 1290:
              result = @"SQLITE_IOERR_DIR_FSYNC";
              goto LABEL_8;
            case 1299:
              result = @"SQLITE_CONSTRAINT_NOTNULL";
              goto LABEL_8;
          }
        }
      }

      else if (v5 > 1810)
      {
        switch(v5)
        {
          case 1811:
            result = @"SQLITE_CONSTRAINT_TRIGGER";
            goto LABEL_8;
          case 2058:
            result = @"SQLITE_IOERR_UNLOCK";
            goto LABEL_8;
          case 2067:
            result = @"SQLITE_CONSTRAINT_UNIQUE";
            goto LABEL_8;
        }
      }

      else
      {
        switch(v5)
        {
          case 1546:
            result = @"SQLITE_IOERR_TRUNCATE";
            goto LABEL_8;
          case 1555:
            result = @"SQLITE_CONSTRAINT_PRIMARYKEY";
            goto LABEL_8;
          case 1802:
            result = @"SQLITE_IOERR_FSTAT";
            goto LABEL_8;
        }
      }
    }

    else if (v5 > 4617)
    {
      if (v5 <= 5897)
      {
        if (v5 <= 5129)
        {
          if (v5 == 4618)
          {
            result = @"SQLITE_IOERR_SHMOPEN";
            goto LABEL_8;
          }

          if (v5 == 4874)
          {
            result = @"SQLITE_IOERR_SHMSIZE";
            goto LABEL_8;
          }
        }

        else
        {
          switch(v5)
          {
            case 5130:
              result = @"SQLITE_IOERR_SHMLOCK";
              goto LABEL_8;
            case 5386:
              result = @"SQLITE_IOERR_SHMMAP";
              goto LABEL_8;
            case 5642:
              result = @"SQLITE_IOERR_SEEK";
              goto LABEL_8;
          }
        }
      }

      else if (v5 > 6665)
      {
        switch(v5)
        {
          case 6666:
            result = @"SQLITE_IOERR_CONVPATH";
            goto LABEL_8;
          case 6922:
            result = @"SQLITE_IOERR_VNODE";
            goto LABEL_8;
          case 7178:
            result = @"SQLITE_IOERR_AUTH";
            goto LABEL_8;
        }
      }

      else
      {
        switch(v5)
        {
          case 5898:
            result = @"SQLITE_IOERR_DELETE_NOENT";
            goto LABEL_8;
          case 6154:
            result = @"SQLITE_IOERR_MMAP";
            goto LABEL_8;
          case 6410:
            result = @"SQLITE_IOERR_GETTEMPPATH";
            goto LABEL_8;
        }
      }
    }

    else if (v5 <= 3081)
    {
      if (v5 <= 2569)
      {
        if (v5 == 2314)
        {
          result = @"SQLITE_IOERR_RDLOCK";
          goto LABEL_8;
        }

        if (v5 == 2323)
        {
          result = @"SQLITE_CONSTRAINT_VTAB";
          goto LABEL_8;
        }
      }

      else
      {
        switch(v5)
        {
          case 2570:
            result = @"SQLITE_IOERR_DELETE";
            goto LABEL_8;
          case 2579:
            result = @"SQLITE_CONSTRAINT_ROWID";
            goto LABEL_8;
          case 2826:
            result = @"SQLITE_IOERR_BLOCKED";
            goto LABEL_8;
        }
      }
    }

    else if (v5 > 3849)
    {
      switch(v5)
      {
        case 3850:
          result = @"SQLITE_IOERR_LOCK";
          goto LABEL_8;
        case 4106:
          result = @"SQLITE_IOERR_CLOSE";
          goto LABEL_8;
        case 4362:
          result = @"SQLITE_IOERR_DIR_CLOSE";
          goto LABEL_8;
      }
    }

    else
    {
      switch(v5)
      {
        case 3082:
          result = @"SQLITE_IOERR_NOMEM";
          goto LABEL_8;
        case 3338:
          result = @"SQLITE_IOERR_ACCESS";
          goto LABEL_8;
        case 3594:
          result = @"SQLITE_IOERR_CHECKRESERVEDLOCK";
          goto LABEL_8;
      }
    }

    goto LABEL_170;
  }

  if (v5 > 99)
  {
    if (v5 > 269)
    {
      if (v5 <= 282)
      {
        switch(v5)
        {
          case 270:
            result = @"SQLITE_CANTOPEN_NOTEMPDIR";
            goto LABEL_8;
          case 275:
            result = @"SQLITE_CONSTRAINT_CHECK";
            goto LABEL_8;
          case 279:
            result = @"SQLITE_AUTH_USER";
            goto LABEL_8;
        }
      }

      else if (v5 > 515)
      {
        if (v5 == 516)
        {
          result = @"SQLITE_ABORT_ROLLBACK";
          goto LABEL_8;
        }

        if (v5 == 517)
        {
          result = @"SQLITE_BUSY_SNAPSHOT";
          goto LABEL_8;
        }
      }

      else
      {
        if (v5 == 283)
        {
          result = @"SQLITE_NOTICE_RECOVER_WAL";
          goto LABEL_8;
        }

        if (v5 == 284)
        {
          result = @"SQLITE_WARNING_AUTOINDEX";
          goto LABEL_8;
        }
      }
    }

    else if (v5 <= 261)
    {
      switch(v5)
      {
        case 100:
          result = @"SQLITE_ROW";
          goto LABEL_8;
        case 101:
          result = @"SQLITE_DONE";
          goto LABEL_8;
        case 261:
          result = @"SQLITE_BUSY_RECOVERY";
          goto LABEL_8;
      }
    }

    else if (v5 > 265)
    {
      if (v5 == 266)
      {
        result = @"SQLITE_IOERR_READ";
        goto LABEL_8;
      }

      if (v5 == 267)
      {
        result = @"SQLITE_CORRUPT_VTAB";
        goto LABEL_8;
      }
    }

    else
    {
      if (v5 == 262)
      {
        result = @"SQLITE_LOCKED_SHAREDCACHE";
        goto LABEL_8;
      }

      if (v5 == 264)
      {
        result = @"SQLITE_READONLY_RECOVERY";
        goto LABEL_8;
      }
    }

LABEL_170:
    v11[0] = @"type";
    v11[1] = @"expected type";
    v12[0] = @"decode failure";
    v12[1] = @"SqliteResult";
    v11[2] = @"raw value";
    v12[2] = result;
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v12;
    v9 = v11;
    goto LABEL_7;
  }

  result = @"SQLITE_OK";
  switch(v5)
  {
    case 0:
      break;
    case 1:
      result = @"SQLITE_ERROR";
      break;
    case 2:
      result = @"SQLITE_INTERNAL";
      break;
    case 3:
      result = @"SQLITE_PERM";
      break;
    case 4:
      result = @"SQLITE_ABORT";
      break;
    case 5:
      result = @"SQLITE_BUSY";
      break;
    case 6:
      result = @"SQLITE_LOCKED";
      break;
    case 7:
      result = @"SQLITE_NOMEM";
      break;
    case 8:
      result = @"SQLITE_READONLY";
      break;
    case 9:
      result = @"SQLITE_INTERRUPT";
      break;
    case 10:
      result = @"SQLITE_IOERR";
      break;
    case 11:
      result = @"SQLITE_CORRUPT";
      break;
    case 12:
      result = @"SQLITE_NOTFOUND";
      break;
    case 13:
      result = @"SQLITE_FULL";
      break;
    case 14:
      result = @"SQLITE_CANTOPEN";
      break;
    case 15:
      result = @"SQLITE_PROTOCOL";
      break;
    case 16:
      result = @"SQLITE_EMPTY";
      break;
    case 17:
      result = @"SQLITE_SCHEMA";
      break;
    case 18:
      result = @"SQLITE_TOOBIG";
      break;
    case 19:
      result = @"SQLITE_CONSTRAINT";
      break;
    case 20:
      result = @"SQLITE_MISMATCH";
      break;
    case 21:
      result = @"SQLITE_MISUSE";
      break;
    case 22:
      result = @"SQLITE_NOLFS";
      break;
    case 23:
      result = @"SQLITE_AUTH";
      break;
    case 24:
      result = @"SQLITE_FORMAT";
      break;
    case 25:
      result = @"SQLITE_RANGE";
      break;
    case 26:
      result = @"SQLITE_NOTADB";
      break;
    case 27:
      result = @"SQLITE_NOTICE";
      break;
    case 28:
      result = @"SQLITE_WARNING";
      break;
    default:
      goto LABEL_170;
  }

LABEL_8:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLLocationProvider_Type__Notification:(id)notification info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v5 = [notification intValue], v5 < 0x33) && ((0x7FFFEFFF3BF7FuLL >> v5))
  {
    result = *(&off_29F27EA70 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLLocationProvider_Type::Notification";
    v8[2] = @"raw value";
    v9[2] = notification;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLLocationStreamingGranularity:(id)granularity info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [granularity intValue], v5 < 4))
  {
    result = *(&off_29F27EC08 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLLocationStreamingGranularity";
    v8[2] = @"raw value";
    v9[2] = granularity;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLStreamingAwareLocationProviderNoLocalGPSStateMachine__LocationSourceState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 5))
  {
    result = *(&off_29F27EC28 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLStreamingAwareLocationProviderNoLocalGPSStateMachine::LocationSourceState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLStreamingAwareLocationProviderLocalGPSStateMachine__LocationSourceState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 6))
  {
    result = *(&off_29F27EC50 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLStreamingAwareLocationProviderLocalGPSStateMachine::LocationSourceState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLStreamingAwareLocationProviderLocalGPSStateMachine__WorkoutState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 3))
  {
    result = *(&off_29F27EC80 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLStreamingAwareLocationProviderLocalGPSStateMachine::LocationSourceState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLStreamingAwareLocationProviderStateMachine__LocationSource:(id)source info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  intValue = [source intValue];
  if (!intValue)
  {
    result = @"CLStreamingAwareLocationProviderStateMachine::kLocationSourceLocal";
    goto LABEL_6;
  }

  if (intValue == 1)
  {
    result = @"CLStreamingAwareLocationProviderStateMachine::kLocationSourceRemote";
  }

  else
  {
LABEL_5:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLStreamingAwareLocationProviderStateMachine::LocationSource";
    v8[2] = @"raw value";
    v9[2] = source;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

LABEL_6:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLLocationProvider_Type__MotionDetected:(id)detected info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [detected intValue], v5 < 3))
  {
    result = *(&off_29F27EC98 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLLocationProvider_Type::MotionDetected";
    v8[2] = @"raw value";
    v9[2] = detected;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLLocationType:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [type intValue], v5 < 0xF))
  {
    result = *(&off_29F27ECB0 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLLocationType";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLDaemonLocationPrivate__OriginDevice:(id)device info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [device intValue], v5 < 3))
  {
    result = *(&off_29F27ED28 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientLocationOriginDevice";
    v8[2] = @"raw value";
    v9[2] = device;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_IOMessage:(id)message info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_41;
  }

  unsignedLongValue = [message unsignedLongValue];
  if (unsignedLongValue > 3758096943)
  {
    if (unsignedLongValue > 3758097151)
    {
      if (unsignedLongValue > 3758097199)
      {
        switch(unsignedLongValue)
        {
          case 3758097200:
            result = @"CopyClientID";
            goto LABEL_42;
          case 3758097216:
            result = @"SystemCapabilityChange";
            goto LABEL_42;
          case 3758097232:
            result = @"DeviceSignaledWakeup";
            goto LABEL_42;
        }
      }

      else
      {
        switch(unsignedLongValue)
        {
          case 3758097152:
            result = @"SystemHasPoweredOn";
            goto LABEL_42;
          case 3758097168:
            result = @"SystemWillRestart";
            goto LABEL_42;
          case 3758097184:
            result = @"SystemWillPowerOn";
            goto LABEL_42;
        }
      }
    }

    else if (unsignedLongValue > 3758097007)
    {
      switch(unsignedLongValue)
      {
        case 3758097008:
          result = @"CanSystemSleep";
          goto LABEL_42;
        case 3758097024:
          result = @"SystemWillSleep";
          goto LABEL_42;
        case 3758097040:
          result = @"SystemWillNotSleep";
          goto LABEL_42;
      }
    }

    else
    {
      switch(unsignedLongValue)
      {
        case 3758096944:
          result = @"DeviceHasPoweredOn";
          goto LABEL_42;
        case 3758096976:
          result = @"SystemWillPowerOff";
          goto LABEL_42;
        case 3758096981:
          result = @"SystemPagingOff";
          goto LABEL_42;
      }
    }

LABEL_41:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"IOMessage";
    v8[2] = @"raw value";
    v9[2] = message;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    goto LABEL_42;
  }

  if (unsignedLongValue > 3758096671)
  {
    if (unsignedLongValue > 3758096895)
    {
      switch(unsignedLongValue)
      {
        case 3758096896:
          result = @"CanDevicePowerOff";
          goto LABEL_42;
        case 3758096912:
          result = @"DeviceWillPowerOff";
          goto LABEL_42;
        case 3758096928:
          result = @"DeviceWillNotPowerOff";
          goto LABEL_42;
      }
    }

    else
    {
      switch(unsignedLongValue)
      {
        case 3758096672:
          result = @"ServiceBusyStateChange";
          goto LABEL_42;
        case 3758096680:
          result = @"ConsoleSecurityChange";
          goto LABEL_42;
        case 3758096688:
          result = @"ServicePropertyChange";
          goto LABEL_42;
      }
    }

    goto LABEL_41;
  }

  if (unsignedLongValue > 3758096639)
  {
    switch(unsignedLongValue)
    {
      case 3758096640:
        result = @"ServiceIsRequestingClose";
        goto LABEL_42;
      case 3758096641:
        result = @"ServiceIsAttemptingOpen";
        goto LABEL_42;
      case 3758096656:
        result = @"ServiceWasClosed";
        goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (unsignedLongValue == 3758096400)
  {
    result = @"ServiceIsTerminated";
    goto LABEL_42;
  }

  if (unsignedLongValue == 3758096416)
  {
    result = @"ServiceIsSuspended";
    goto LABEL_42;
  }

  if (unsignedLongValue != 3758096432)
  {
    goto LABEL_41;
  }

  result = @"ServiceIsResumed";
LABEL_42:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLDaemonStatus_Type__Reachability:(id)reachability info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  intValue = [reachability intValue];
  if (intValue > 1)
  {
    if (intValue == 2)
    {
      result = @"kReachabilityLarge";
      goto LABEL_10;
    }

    if (intValue == 1000)
    {
      result = @"kReachabilityUnachievable";
      goto LABEL_10;
    }

LABEL_9:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLDaemonStatus_Type::Reachability";
    v8[2] = @"raw value";
    v9[2] = reachability;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    goto LABEL_10;
  }

  if (!intValue)
  {
    result = @"kReachabilityUnavailable";
    goto LABEL_10;
  }

  if (intValue != 1)
  {
    goto LABEL_9;
  }

  result = @"kReachabilitySmall";
LABEL_10:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLBatteryChargerType:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [type intValue], v5 < 5))
  {
    result = *(&off_29F27ED40 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLBatteryChargerType";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLDaemonStatus_Type__Battery:(id)battery info:(os_log_type_info_s *)info
{
  v24[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19[0] = @"type";
    v19[1] = @"expected type";
    v20[0] = @"decode failure";
    v20[1] = @"CLDaemonStatus_Type::Battery";
    v19[2] = @"raw value";
    v20[2] = battery;
    v13 = MEMORY[0x29EDB8DC0];
    v14 = v20;
    v15 = v19;
LABEL_6:
    v16 = 3;
    goto LABEL_7;
  }

  if ([battery length] != 24)
  {
    v23[0] = @"type";
    v23[1] = @"expected type";
    v24[0] = @"decode failure";
    v24[1] = @"CLDaemonStatus_Type::Battery";
    v23[2] = @"raw value";
    v24[2] = battery;
    v13 = MEMORY[0x29EDB8DC0];
    v14 = v24;
    v15 = v23;
    goto LABEL_6;
  }

  bytes = [battery bytes];
  v8 = *bytes;
  v9 = *(bytes + 8);
  v10 = *(bytes + 9);
  v11 = *(bytes + 16);
  v12 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 12)];
  v21[0] = @"level";
  v22[0] = [MEMORY[0x29EDBA070] numberWithDouble:v8];
  v21[1] = @"charged";
  v22[1] = [MEMORY[0x29EDBA070] numberWithBool:v9 & 1];
  v21[2] = @"connected";
  v22[2] = [MEMORY[0x29EDBA070] numberWithBool:v10 & 1];
  v21[3] = @"chargerType";
  v22[3] = [(CLLogFormatter *)self JSONObjectWith_CLBatteryChargerType:v12 info:info];
  v21[4] = @"wasConnected";
  v22[4] = [MEMORY[0x29EDBA070] numberWithBool:v11 & 1];
  v13 = MEMORY[0x29EDB8DC0];
  v14 = v22;
  v15 = v21;
  v16 = 5;
LABEL_7:
  result = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientServiceType:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [type integerValue], v5 < 0x19))
  {
    result = *(&off_29F27ED68 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientServiceType";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientServiceTypeMask:(id)mask info:(os_log_type_info_s *)info
{
  v16[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13[0] = @"type";
    v13[1] = @"expected type";
    v14[0] = @"decode failure";
    v14[1] = @"CLClientServiceTypeMask";
    v13[2] = @"raw value";
    v14[2] = mask;
    v8 = MEMORY[0x29EDB8DC0];
    v9 = v14;
    v10 = v13;
    goto LABEL_18;
  }

  integerValue = [mask integerValue];
  v6 = objc_opt_new();
  v7 = v6;
  if (integerValue)
  {
    [v6 addObject:@"RegionBeacon"];
    if ((integerValue & 2) == 0)
    {
LABEL_4:
      if ((integerValue & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((integerValue & 2) == 0)
  {
    goto LABEL_4;
  }

  [v7 addObject:@"RegionCircular"];
  if ((integerValue & 4) == 0)
  {
LABEL_5:
    if ((integerValue & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v7 addObject:@"Ranging"];
  if ((integerValue & 8) == 0)
  {
LABEL_6:
    if ((integerValue & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v7 addObject:@"PersistentSLC"];
  if ((integerValue & 0x10) == 0)
  {
LABEL_7:
    if ((integerValue & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v7 addObject:@"Location"];
  if ((integerValue & 0x20) == 0)
  {
LABEL_8:
    if ((integerValue & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v7 addObject:@"BackgroundLocation"];
  if ((integerValue & 0x40) == 0)
  {
LABEL_9:
    if ((integerValue & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v7 addObject:@"SLV"];
  if ((integerValue & 0x80) == 0)
  {
LABEL_10:
    if ((integerValue & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v7 addObject:@"RemoteLocation_Deprecated"];
  if ((integerValue & 0x100) == 0)
  {
LABEL_11:
    if ((integerValue & 0x200) == 0)
    {
      goto LABEL_12;
    }

LABEL_29:
    [v7 addObject:@"RemoteRegionCircular_Deprecated"];
    if ((integerValue & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_28:
  [v7 addObject:@"MicroLocation_Deprecated"];
  if ((integerValue & 0x200) != 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((integerValue & 0x800) != 0)
  {
LABEL_13:
    [v7 addObject:@"NonPersistentSLC"];
  }

LABEL_14:
  if (![v7 count] && integerValue)
  {
    v15[0] = @"type";
    v15[1] = @"expected type";
    v16[0] = @"decode failure";
    v16[1] = @"CLClientServiceTypeMask";
    v15[2] = @"raw value";
    v16[2] = mask;
    v8 = MEMORY[0x29EDB8DC0];
    v9 = v16;
    v10 = v15;
LABEL_18:
    v7 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:3];
  }

  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

- (id)JSONObjectWith_CLLocationDictionaryUtilitiesAuthorizationMask:(id)mask info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v5 = [mask integerValue], v5 < 8) && ((0xD7u >> v5))
  {
    result = *(&off_29F27EE30 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLLocationDictionaryUtilitiesAuthorizationMask";
    v8[2] = @"raw value";
    v9[2] = mask;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientIncidentalUseMode:(id)mode info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [mode integerValue], v5 < 4))
  {
    result = *(&off_29F27EE70 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientIncidentalUseMode";
    v8[2] = @"raw value";
    v9[2] = mode;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLTelephonyService_Type__Cell:(id)cell info:(os_log_type_info_s *)info
{
  v25[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20[0] = @"type";
    v20[1] = @"expected type";
    v21[0] = @"decode failure";
    v21[1] = @"CLTelephonyService_Type::Cell";
    v20[2] = @"raw value";
    v21[2] = cell;
    v14 = MEMORY[0x29EDB8DC0];
    v15 = v21;
    v16 = v20;
LABEL_6:
    v17 = 3;
    goto LABEL_7;
  }

  if ([cell length] != 32)
  {
    v24[0] = @"type";
    v24[1] = @"expected type";
    v25[0] = @"decode failure";
    v25[1] = @"CLTelephonyService_Type::Cell";
    v24[2] = @"raw value";
    v25[2] = cell;
    v14 = MEMORY[0x29EDB8DC0];
    v15 = v25;
    v16 = v24;
    goto LABEL_6;
  }

  bytes = [cell bytes];
  v6 = *bytes;
  v7 = bytes[1];
  v8 = bytes[2];
  v9 = bytes[3];
  v11 = bytes[4];
  v10 = bytes[5];
  v13 = bytes[6];
  v12 = bytes[7];
  v22[0] = @"mcc";
  v23[0] = [MEMORY[0x29EDBA070] numberWithInt:v6];
  v22[1] = @"mnc";
  v23[1] = [MEMORY[0x29EDBA070] numberWithInt:v7];
  v22[2] = @"lac";
  v23[2] = [MEMORY[0x29EDBA070] numberWithInt:v8];
  v22[3] = @"ci";
  v23[3] = [MEMORY[0x29EDBA070] numberWithInt:v9];
  v22[4] = @"uarfcn";
  v23[4] = [MEMORY[0x29EDBA070] numberWithInt:v11];
  v22[5] = @"psc";
  v23[5] = [MEMORY[0x29EDBA070] numberWithInt:v10];
  v22[6] = @"rscp";
  v23[6] = [MEMORY[0x29EDBA070] numberWithInt:v13];
  v22[7] = @"ecn0";
  v23[7] = [MEMORY[0x29EDBA070] numberWithInt:v12];
  v14 = MEMORY[0x29EDB8DC0];
  v15 = v23;
  v16 = v22;
  v17 = 8;
LABEL_7:
  result = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_PSYSyncRestriction:(id)restriction info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  longLongValue = [restriction longLongValue];
  if (!longLongValue)
  {
    result = @"PSYSyncRestrictionNone";
    goto LABEL_6;
  }

  if (longLongValue == 1)
  {
    result = @"PSYSyncRestrictionLimitPush";
  }

  else
  {
LABEL_5:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"PSYSyncRestriction";
    v8[2] = @"raw value";
    v9[2] = restriction;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

LABEL_6:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_PSYSyncSessionType:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  longLongValue = [type longLongValue];
  if (!longLongValue)
  {
    result = @"PSYSyncSessionTypeFullSync";
    goto LABEL_6;
  }

  if (longLongValue == 1)
  {
    result = @"PSYSyncSessionTypeReunionSync";
  }

  else
  {
LABEL_5:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"PSYSyncSessionType";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

LABEL_6:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_SYSessionState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state longLongValue], v5 < 0xA))
  {
    result = *(&off_29F27EE90 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"SYSessionState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLMonitoringState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state longLongValue], v5 < 3))
  {
    result = *(&off_29F27EEE0 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLMonitoringState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLFenceManager_Type__Notification:(id)notification info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [notification intValue], v5 < 0xC))
  {
    result = *(&off_29F27EEF8 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLFenceManager_Type::Notification";
    v8[2] = @"raw value";
    v9[2] = notification;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLBTLEFenceManager_Type__Notification:(id)notification info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [notification intValue], v5 < 4))
  {
    result = *(&off_29F27EF58 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLBTLEFenceManager_Type::Notification";
    v8[2] = @"raw value";
    v9[2] = notification;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLMotionActivity__Type:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_134;
  }

  intValue = [type intValue];
  if (intValue > 11804)
  {
    if (intValue > 15659)
    {
      if (intValue <= 18239)
      {
        if (intValue <= 15732)
        {
          if (intValue > 15674)
          {
            if (intValue == 15675)
            {
              result = @"CLMotionActivity::kTypeTennis";
              goto LABEL_135;
            }

            if (intValue == 15711)
            {
              result = @"CLMotionActivity::kTypeVolleyball";
              goto LABEL_135;
            }
          }

          else
          {
            if (intValue == 15660)
            {
              result = @"CLMotionActivity::kTypeTableTennis";
              goto LABEL_135;
            }

            if (intValue == 15670)
            {
              result = @"CLMotionActivity::kTypeTaiChi";
              goto LABEL_135;
            }
          }
        }

        else if (intValue <= 18049)
        {
          if (intValue == 15733)
          {
            result = @"CLMotionActivity::kTypeTrackAndField";
            goto LABEL_135;
          }

          if (intValue == 17150)
          {
            result = @"CLMotionActivity::kTypeIndoorWalking";
            goto LABEL_135;
          }
        }

        else
        {
          switch(intValue)
          {
            case 18050:
              result = @"CLMotionActivity::kTypeOutdoorRowing";
              goto LABEL_135;
            case 18100:
              result = @"CLMotionActivity::kTypePaddleSports";
              goto LABEL_135;
            case 18200:
              result = @"CLMotionActivity::kTypeScubaDiving";
              goto LABEL_135;
          }
        }
      }

      else if (intValue > 90121)
      {
        if (intValue <= 515620)
        {
          if (intValue == 90122)
          {
            result = @"CLMotionActivity::kTypeIndoorHandCycling";
            goto LABEL_135;
          }

          if (intValue == 90603)
          {
            result = @"CLMotionActivity::kTypeOutdoorWheelchair";
            goto LABEL_135;
          }
        }

        else
        {
          switch(intValue)
          {
            case 515621:
              result = @"CLMotionActivity::kTypeBaseball";
              goto LABEL_135;
            case 515652:
              result = @"CLMotionActivity::kTypeRacquetball";
              goto LABEL_135;
            case 519150:
              result = @"CLMotionActivity::kTypeSnowboarding";
              goto LABEL_135;
          }
        }
      }

      else if (intValue <= 19089)
      {
        if (intValue == 18240)
        {
          result = @"CLMotionActivity::kTypeSwimming";
          goto LABEL_135;
        }

        if (intValue == 19030)
        {
          result = @"CLMotionActivity::kTypeIndoorSkatingSports";
          goto LABEL_135;
        }
      }

      else
      {
        switch(intValue)
        {
          case 19090:
            result = @"CLMotionActivity::kTypeCrossCountrySkiing";
            goto LABEL_135;
          case 19150:
            result = @"CLMotionActivity::kTypeDownhillSkiing";
            goto LABEL_135;
          case 90121:
            result = @"CLMotionActivity::kTypeOutdoorHandCycling";
            goto LABEL_135;
        }
      }
    }

    else if (intValue <= 15254)
    {
      if (intValue <= 15099)
      {
        if (intValue > 15029)
        {
          if (intValue == 15030)
          {
            result = @"CLMotionActivity::kTypeBadminton";
            goto LABEL_135;
          }

          if (intValue == 15055)
          {
            result = @"CLMotionActivity::kTypeBasketball";
            goto LABEL_135;
          }
        }

        else
        {
          if (intValue == 11805)
          {
            result = @"CLMotionActivity::kTypePushingWheelchair";
            goto LABEL_135;
          }

          if (intValue == 12150)
          {
            result = @"CLMotionActivity::kTypeIndoorRunning";
            goto LABEL_135;
          }
        }
      }

      else if (intValue <= 15149)
      {
        if (intValue == 15100)
        {
          result = @"CLMotionActivity::kTypeBoxing";
          goto LABEL_135;
        }

        if (intValue == 15110)
        {
          result = @"CLMotionActivity::kTypeKickboxing";
          goto LABEL_135;
        }
      }

      else
      {
        switch(intValue)
        {
          case 15150:
            result = @"CLMotionActivity::kTypeCricket";
            goto LABEL_135;
          case 15230:
            result = @"CLMotionActivity::kTypeAmericanFootball";
            goto LABEL_135;
          case 15250:
            result = @"CLMotionActivity::kTypeDiscSports";
            goto LABEL_135;
        }
      }
    }

    else if (intValue > 15559)
    {
      if (intValue <= 15609)
      {
        if (intValue == 15560)
        {
          result = @"CLMotionActivity::kTypeRugby";
          goto LABEL_135;
        }

        if (intValue == 15592)
        {
          result = @"CLMotionActivity::kTypeOutdoorSkatingSports";
          goto LABEL_135;
        }
      }

      else
      {
        switch(intValue)
        {
          case 15610:
            result = @"CLMotionActivity::kTypeOutdoorSoccer";
            goto LABEL_135;
          case 15620:
            result = @"CLMotionActivity::kTypeSoftball";
            goto LABEL_135;
          case 15652:
            result = @"CLMotionActivity::kTypeSquash";
            goto LABEL_135;
        }
      }
    }

    else if (intValue <= 15349)
    {
      if (intValue == 15255)
      {
        result = @"CLMotionActivity::kTypeGolfing";
        goto LABEL_135;
      }

      if (intValue == 15330)
      {
        result = @"CLMotionActivity::kTypeHandball";
        goto LABEL_135;
      }
    }

    else
    {
      switch(intValue)
      {
        case 15350:
          result = @"CLMotionActivity::kTypeOutdoorHockey";
          goto LABEL_135;
        case 15360:
          result = @"CLMotionActivity::kTypeIndoorHockey";
          goto LABEL_135;
        case 15460:
          result = @"CLMotionActivity::kTypeLacrosse";
          goto LABEL_135;
      }
    }

LABEL_134:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLMotionActivity::Type";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    goto LABEL_135;
  }

  if (intValue <= 63)
  {
    if (intValue > 8)
    {
      if (intValue <= 51)
      {
        if (intValue > 10)
        {
          if (intValue == 11)
          {
            result = @"CLMotionActivity::kTypeInVehicleStatic";
            goto LABEL_135;
          }

          if (intValue == 41)
          {
            result = @"CLMotionActivity::kTypeWalkingSlow";
            goto LABEL_135;
          }

          goto LABEL_134;
        }

        if (intValue == 9)
        {
          result = @"CLMotionActivity::kTypeMovingCoarse";
        }

        else
        {
          result = @"CLMotionActivity::kTypeInVehicleFrozen";
        }
      }

      else
      {
        if (intValue <= 60)
        {
          if (intValue == 52)
          {
            result = @"CLMotionActivity::kTypeVehicularInHand";
            goto LABEL_135;
          }

          if (intValue == 56)
          {
            result = @"CLMotionActivity::kTypeDrivingOther";
            goto LABEL_135;
          }

          goto LABEL_134;
        }

        if (intValue == 61)
        {
          result = @"CLMotionActivity::kTypeMachineWorkout";
        }

        else if (intValue == 62)
        {
          result = @"CLMotionActivity::kTypeWorkout";
        }

        else
        {
          result = @"CLMotionActivity::kTypeMultiSportTransition";
        }
      }
    }

    else if (intValue <= 3)
    {
      if (intValue <= 1)
      {
        if (!intValue)
        {
          result = @"CLMotionActivity::kTypeUnknown";
          goto LABEL_135;
        }

        if (intValue == 1)
        {
          result = @"CLMotionActivity::kTypeFrozen";
          goto LABEL_135;
        }

        goto LABEL_134;
      }

      if (intValue == 2)
      {
        result = @"CLMotionActivity::kTypeStatic";
      }

      else
      {
        result = @"CLMotionActivity::kTypeMoving";
      }
    }

    else if (intValue <= 5)
    {
      if (intValue == 4)
      {
        result = @"CLMotionActivity::kTypeWalking";
      }

      else
      {
        result = @"CLMotionActivity::kTypeDriving";
      }
    }

    else if (intValue == 6)
    {
      result = @"CLMotionActivity::kTypeCycling";
    }

    else if (intValue == 7)
    {
      result = @"CLMotionActivity::kTypeSemiStationary";
    }

    else
    {
      result = @"CLMotionActivity::kTypeRunning";
    }
  }

  else
  {
    if (intValue > 2047)
    {
      if (intValue > 2100)
      {
        if (intValue <= 2149)
        {
          if (intValue == 2101)
          {
            result = @"CLMotionActivity::kTypeCoolDown";
            goto LABEL_135;
          }

          if (intValue == 2105)
          {
            result = @"CLMotionActivity::kTypePilates";
            goto LABEL_135;
          }
        }

        else
        {
          switch(intValue)
          {
            case 2150:
              result = @"CLMotionActivity::kTypeYoga";
              goto LABEL_135;
            case 3015:
              result = @"CLMotionActivity::kTypeDancing";
              goto LABEL_135;
            case 3016:
              result = @"CLMotionActivity::kTypeStepTraining";
              goto LABEL_135;
          }
        }
      }

      else if (intValue <= 2064)
      {
        if (intValue == 2048)
        {
          result = @"CLMotionActivity::kTypeElliptical";
          goto LABEL_135;
        }

        if (intValue == 2061)
        {
          result = @"CLMotionActivity::kTypeCrossTraining";
          goto LABEL_135;
        }
      }

      else
      {
        switch(intValue)
        {
          case 2065:
            result = @"CLMotionActivity::kTypeStairClimbing";
            goto LABEL_135;
          case 2068:
            result = @"CLMotionActivity::kTypeJumpRope";
            goto LABEL_135;
          case 2071:
            result = @"CLMotionActivity::kTypeRowing";
            goto LABEL_135;
        }
      }

      goto LABEL_134;
    }

    if (intValue > 99)
    {
      if (intValue <= 2019)
      {
        if (intValue == 100)
        {
          result = @"CLMotionActivity::kTypeCyclingLeg";
          goto LABEL_135;
        }

        if (intValue == 2010)
        {
          result = @"CLMotionActivity::kTypeStationaryCycling";
          goto LABEL_135;
        }
      }

      else
      {
        switch(intValue)
        {
          case 2020:
            result = @"CLMotionActivity::kTypeCalisthenics";
            goto LABEL_135;
          case 2022:
            result = @"CLMotionActivity::kTypeFunctionalStrength";
            goto LABEL_135;
          case 2024:
            result = @"CLMotionActivity::kTypeCoreTraining";
            goto LABEL_135;
        }
      }

      goto LABEL_134;
    }

    if (intValue > 65)
    {
      if (intValue == 66)
      {
        result = @"CLMotionActivity::kTypePickleball";
        goto LABEL_135;
      }

      if (intValue == 73)
      {
        result = @"CLMotionActivity::kTypeCount";
        goto LABEL_135;
      }

      goto LABEL_134;
    }

    if (intValue == 64)
    {
      result = @"CLMotionActivity::kTypeIndoorSoccer";
    }

    else
    {
      result = @"CLMotionActivity::kTypeAustralianFootball";
    }
  }

LABEL_135:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLMotionActivity__Confidence:(id)confidence info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [confidence intValue], v5 < 3))
  {
    result = *(&off_29F27EF78 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLMotionActivity::Confidence";
    v8[2] = @"raw value";
    v9[2] = confidence;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLMotionActivity:(id)activity info:(os_log_type_info_s *)info
{
  v21[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20[0] = @"type";
    v20[1] = @"expected type";
    v21[0] = @"decode failure";
    v21[1] = @"CLMotionActiviy";
    v20[2] = @"raw value";
    v21[2] = activity;
    v10 = MEMORY[0x29EDB8DC0];
    v11 = v21;
    v12 = v20;
LABEL_6:
    v13 = 3;
    goto LABEL_7;
  }

  if ([activity length] != 136)
  {
    v18[0] = @"type";
    v18[1] = @"expected type";
    v19[0] = @"decode failure";
    v19[1] = @"CLMotionActiviy";
    v18[2] = @"raw value";
    v19[2] = activity;
    v10 = MEMORY[0x29EDB8DC0];
    v11 = v19;
    v12 = v18;
    goto LABEL_6;
  }

  bytes = [activity bytes];
  v8 = bytes[1];
  v9 = -[CLLogFormatter JSONObjectWith_CLMotionActivity__Type:info:](self, "JSONObjectWith_CLMotionActivity__Type:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:*bytes], info);
  v16[0] = @"type";
  v16[1] = @"confidence";
  v17[0] = v9;
  v17[1] = -[CLLogFormatter JSONObjectWith_CLMotionActivity__Confidence:info:](self, "JSONObjectWith_CLMotionActivity__Confidence:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:v8], info);
  v10 = MEMORY[0x29EDB8DC0];
  v11 = v17;
  v12 = v16;
  v13 = 2;
LABEL_7:
  result = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CMWakeGestureWristOrientation:(id)orientation info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  intValue = [orientation intValue];
  if (!intValue)
  {
    result = @"Left";
    goto LABEL_6;
  }

  if (intValue == 1)
  {
    result = @"Right";
  }

  else
  {
LABEL_5:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CMWakeGestureWristOrientation";
    v8[2] = @"raw value";
    v9[2] = orientation;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

LABEL_6:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CMWakeGestureCrownOrientation:(id)orientation info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  intValue = [orientation intValue];
  if (!intValue)
  {
    result = @"Left";
    goto LABEL_6;
  }

  if (intValue == 1)
  {
    result = @"Right";
  }

  else
  {
LABEL_5:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CMWakeGestureCrownOrientation";
    v8[2] = @"raw value";
    v9[2] = orientation;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

LABEL_6:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CMWakeGestureState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 7))
  {
    result = *(&off_29F27EF90 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CMWakeGestureState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_RTLState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 0xAu))
  {
    result = *(&off_29F27EFC8 + (v5 & 0xF));
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"GestureState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_RTLGestureType:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [type intValue], v5 < 0xAu))
  {
    result = *(&off_29F27F018 + (v5 & 0xF));
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"GestureType";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CMMotionCoprocessorReply_Log:(id)log info:(os_log_type_info_s *)info
{
  v25[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([log length] == 72)
    {
      bytes = [log bytes];
      array = [MEMORY[0x29EDB8DE8] array];
      if (v17)
      {
        if (v17 >= 0x10u)
        {
          v7 = 16;
        }

        else
        {
          v7 = v17;
        }

        v8 = &v19;
        do
        {
          v9 = *v8++;
          [array addObject:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithUnsignedInt:", v9)}];
          --v7;
        }

        while (v7);
      }

      v22[0] = @"flags";
      v23[0] = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v16];
      v22[1] = @"seq";
      v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v18];
      v22[2] = @"data";
      v23[1] = v10;
      v23[2] = array;
      v11 = MEMORY[0x29EDB8DC0];
      v12 = v23;
      v13 = v22;
    }

    else
    {
      v24[0] = @"type";
      v24[1] = @"expected type";
      v25[0] = @"decode failure";
      v25[1] = @"CMMotionCoprocessorReply::Log";
      v24[2] = @"raw value";
      v25[2] = log;
      v11 = MEMORY[0x29EDB8DC0];
      v12 = v25;
      v13 = v24;
    }
  }

  else
  {
    v20[0] = @"type";
    v20[1] = @"expected type";
    v21[0] = @"decode failure";
    v21[1] = @"CMMotionCoprocessorReply::Log";
    v20[2] = @"raw value";
    v21[2] = log;
    v11 = MEMORY[0x29EDB8DC0];
    v12 = v21;
    v13 = v20;
  }

  result = [v11 dictionaryWithObjects:v12 forKeys:v13 count:3];
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLSubHarvesterIdentifier:(id)identifier info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [identifier intValue], v5 < 0x10))
  {
    result = *(&off_29F27F068 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLSubHarvesterIdentifier";
    v8[2] = @"raw value";
    v9[2] = identifier;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLWifiService_Type__ScanType:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [type intValue] + 1, v5 < 0xF))
  {
    result = *(&off_29F27F0E8 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLWifiService_Type::ScanType";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_RTRoutineMode:(id)mode info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [mode intValue], v5 < 3))
  {
    result = *(&off_29F27F160 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"RTRoutineMode";
    v8[2] = @"raw value";
    v9[2] = mode;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_RTLocationOfInterestType:(id)type info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [type intValue] + 1, v5 < 5))
  {
    result = *(&off_29F27F178 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"RTLocationOfInterestType";
    v8[2] = @"raw value";
    v9[2] = type;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_RBSTaskState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 5u))
  {
    result = *(&off_29F27F1A0 + (v5 & 7));
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"RBSTaskState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLAppMonitor_Type__Notification:(id)notification info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [notification intValue], v5 < 0xD))
  {
    result = *(&off_29F27F1C8 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLAppMonitor_Type::Notification";
    v8[2] = @"raw value";
    v9[2] = notification;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith__CLLocationManagerStateTrackerState:(id)state info:(os_log_type_info_s *)info
{
  v42[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [state bytes];
    if ([state length] <= 0x50)
    {
      v6 = [state length];
    }

    else
    {
      v6 = 80;
    }

    memcpy(v13, bytes, v6);
    v39[0] = @"distanceFilter";
    v40[0] = [MEMORY[0x29EDBA070] numberWithDouble:v13[0]];
    v39[1] = @"desiredAccuracy";
    v40[1] = [MEMORY[0x29EDBA070] numberWithDouble:v13[1]];
    v39[2] = @"updatingLocation";
    v40[2] = [MEMORY[0x29EDBA070] numberWithBool:v14 & 1];
    v39[3] = @"requestingLocation";
    v40[3] = [MEMORY[0x29EDBA070] numberWithBool:v15 & 1];
    v39[4] = @"updatingHeading";
    v40[4] = [MEMORY[0x29EDBA070] numberWithBool:v16 & 1];
    v39[5] = @"headingFilter";
    v40[5] = [MEMORY[0x29EDBA070] numberWithDouble:v17];
    v39[6] = @"allowsLocationPrompts";
    v40[6] = [MEMORY[0x29EDBA070] numberWithBool:v18 & 1];
    v39[7] = @"allowsAlteredAccessoryLocations";
    v40[7] = [MEMORY[0x29EDBA070] numberWithBool:v19 & 1];
    v39[8] = @"dynamicAccuracyReductionEnabled";
    v40[8] = [MEMORY[0x29EDBA070] numberWithBool:v20 & 1];
    v39[9] = @"previousAuthorizationStatusValid";
    v40[9] = [MEMORY[0x29EDBA070] numberWithBool:v21 & 1];
    v39[10] = @"previousAuthorizationStatus";
    v40[10] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v22];
    v39[11] = @"limitsPrecision";
    v40[11] = [MEMORY[0x29EDBA070] numberWithBool:v23 & 1];
    v39[12] = @"activityType";
    v40[12] = [MEMORY[0x29EDBA070] numberWithInteger:v24];
    v39[13] = @"pausesLocationUpdatesAutomatically";
    v40[13] = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v25];
    v39[14] = @"paused";
    v40[14] = [MEMORY[0x29EDBA070] numberWithBool:v26 & 1];
    v39[15] = @"allowsBackgroundLocationUpdates";
    v40[15] = [MEMORY[0x29EDBA070] numberWithBool:v27 & 1];
    v39[16] = @"showsBackgroundLocationIndicator";
    v40[16] = [MEMORY[0x29EDBA070] numberWithBool:v28 & 1];
    v39[17] = @"allowsMapCorrection";
    v40[17] = [MEMORY[0x29EDBA070] numberWithBool:v29 & 1];
    v39[18] = @"batchingLocation";
    v40[18] = [MEMORY[0x29EDBA070] numberWithBool:v30 & 1];
    v39[19] = @"updatingVehicleSpeed";
    v40[19] = [MEMORY[0x29EDBA070] numberWithBool:v31 & 1];
    v39[20] = @"updatingVehicleHeading";
    v40[20] = [MEMORY[0x29EDBA070] numberWithBool:v32 & 1];
    v39[21] = @"matchInfoEnabled";
    v40[21] = [MEMORY[0x29EDBA070] numberWithBool:v33 & 1];
    v39[22] = @"groundAltitudeEnabled";
    v40[22] = [MEMORY[0x29EDBA070] numberWithBool:v34 & 1];
    v39[23] = @"fusionInfoEnabled";
    v40[23] = [MEMORY[0x29EDBA070] numberWithBool:v35 & 1];
    v39[24] = @"courtesyPromptNeeded";
    v40[24] = [MEMORY[0x29EDBA070] numberWithBool:v36 & 1];
    v39[25] = @"isAuthorizedForWidgetUpdates";
    v40[25] = [MEMORY[0x29EDBA070] numberWithBool:v37 & 1];
    v39[26] = @"trackRunInfoEnabled";
    v40[26] = [MEMORY[0x29EDBA070] numberWithBool:v38 & 1];
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v40;
    v9 = v39;
    v10 = 27;
  }

  else
  {
    v41[0] = @"type";
    v41[1] = @"expected type";
    v42[0] = @"decode failure";
    v42[1] = @"_CLLocationManagerStateTrackerState";
    v41[2] = @"raw value";
    v42[2] = state;
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v42;
    v9 = v41;
    v10 = 3;
  }

  result = [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith__CLDaemonStatusStateTrackerState:(id)state info:(os_log_type_info_s *)info
{
  v24[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [state bytes];
    if ([state length] <= 0x28)
    {
      v8 = [state length];
    }

    else
    {
      v8 = 40;
    }

    memcpy(&v15, bytes, v8);
    v21[0] = @"batteryData";
    v22[0] = -[CLLogFormatter JSONObjectWith_CLDaemonStatus_Type__Battery:info:](self, "JSONObjectWith_CLDaemonStatus_Type__Battery:info:", [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:&v15 length:24 freeWhenDone:0], info);
    v21[1] = @"reachability";
    v22[1] = -[CLLogFormatter JSONObjectWith_CLDaemonStatus_Type__Reachability:info:](self, "JSONObjectWith_CLDaemonStatus_Type__Reachability:info:", [MEMORY[0x29EDBA070] numberWithUnsignedInt:v16], info);
    v21[2] = @"thermalLevel";
    v22[2] = [MEMORY[0x29EDBA070] numberWithInt:v17];
    v21[3] = @"airplaneMode";
    v22[3] = [MEMORY[0x29EDBA070] numberWithBool:v18];
    v21[4] = @"batterySaverModeEnabled";
    v22[4] = [MEMORY[0x29EDBA070] numberWithBool:v19];
    v21[5] = @"restrictedMode";
    v22[5] = [MEMORY[0x29EDBA070] numberWithBool:v20];
    v9 = MEMORY[0x29EDB8DC0];
    v10 = v22;
    v11 = v21;
    v12 = 6;
  }

  else
  {
    v23[0] = @"type";
    v23[1] = @"expected type";
    v24[0] = @"decode failure";
    v24[1] = @"_CLDaemonStatusStateTrackerState";
    v23[2] = @"raw value";
    v24[2] = state;
    v9 = MEMORY[0x29EDB8DC0];
    v10 = v24;
    v11 = v23;
    v12 = 3;
  }

  result = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith__CLClientManagerStateTrackerState:(id)state info:(os_log_type_info_s *)info
{
  v19[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bytes = [state bytes];
    if ([state length] <= 8)
    {
      v6 = [state length];
    }

    else
    {
      v6 = 8;
    }

    memcpy(&v14, bytes, v6);
    v16[0] = @"locationServicesEnabledStatus";
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v14];
    v16[1] = @"locationRestricted";
    v17[0] = v11;
    v17[1] = [MEMORY[0x29EDBA070] numberWithBool:v15 & 1];
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v17;
    v9 = v16;
    v10 = 2;
  }

  else
  {
    v18[0] = @"type";
    v18[1] = @"expected type";
    v19[0] = @"decode failure";
    v19[1] = @"_CLClientManagerStateTrackerState";
    v18[2] = @"raw value";
    v19[2] = state;
    v7 = MEMORY[0x29EDB8DC0];
    v8 = v19;
    v9 = v18;
    v10 = 3;
  }

  result = [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLClientRegistrationResult:(id)result info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [result intValue], v5 < 9))
  {
    result = *(&off_29F27F230 + v5);
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLClientRegistrationResult";
    v8[2] = @"raw value";
    v9[2] = result;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLSensorRecorder_Types__DataType:(id)type info:(os_log_type_info_s *)info
{
  v15[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x29EDBA0F8];
    intValue = [type intValue];
    if (intValue > 2)
    {
      v7 = &unk_2999F251E;
    }

    else
    {
      v7 = off_29F27F278[intValue];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    if (v13 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v8 = [v5 stringWithUTF8String:v9];
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v14[0] = @"type";
    v14[1] = @"expected type";
    v15[0] = @"decode failure";
    v15[1] = @"CLSensorRecorder_Types::DataType";
    v14[2] = @"raw value";
    v15[2] = type;
    v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

- (id)JSONObjectWith_CLSimulationLocationDeliveryBehavior:(id)behavior info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  intValue = [behavior intValue];
  if (!intValue)
  {
    result = @"PassThrough";
    goto LABEL_6;
  }

  if (intValue == 1)
  {
    result = @"ConsiderType";
  }

  else
  {
LABEL_5:
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLSimulationLocationDeliveryBehavior";
    v8[2] = @"raw value";
    v9[2] = behavior;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

LABEL_6:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLSimulationLocationRepeatBehavior:(id)behavior info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [behavior intValue], v5 < 3))
  {
    result = off_29F27F290[v5];
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLSimulationLocationRepeatBehavior";
    v8[2] = @"raw value";
    v9[2] = behavior;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_CLBarometerCalibration_Types__Context:(id)context info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v5 = [context intValue], v5 < 0xC) && ((0x80Fu >> v5))
  {
    result = off_29F27F2A8[v5];
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"CLBarometerCalibration_Types::Context::";
    v8[2] = @"raw value";
    v9[2] = context;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_NEVPNConnectivityState:(id)state info:(os_log_type_info_s *)info
{
  v9[3] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [state intValue], v5 < 6))
  {
    result = off_29F27F308[v5];
  }

  else
  {
    v8[0] = @"type";
    v8[1] = @"expected type";
    v9[0] = @"decode failure";
    v9[1] = @"NEVPNConnectivityState";
    v8[2] = @"raw value";
    v9[2] = state;
    result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_Encrypted_latitude:(id)encrypted_latitude info:(os_log_type_info_s *)info
{
  v11[1] = *MEMORY[0x29EDCA608];
  v8 = 0;
  v9 = 0;
  v4 = extractEncryptedData(encrypted_latitude, &v9, &v8);
  result = v8;
  if (!v8)
  {
    if (v9 >= 8)
    {
      v6 = *v4;
      v10 = @"lat";
      v11[0] = [MEMORY[0x29EDBA070] numberWithDouble:v6];
      result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      result = &unk_2A20010F0;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_Encrypted_longitude:(id)encrypted_longitude info:(os_log_type_info_s *)info
{
  v11[1] = *MEMORY[0x29EDCA608];
  v8 = 0;
  v9 = 0;
  v4 = extractEncryptedData(encrypted_longitude, &v9, &v8);
  result = v8;
  if (!v8)
  {
    if (v9 >= 8)
    {
      v6 = *v4;
      v10 = @"lon";
      v11[0] = [MEMORY[0x29EDBA070] numberWithDouble:v6];
      result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      result = &unk_2A20010F0;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_Encrypted_CLLocationCoordinate2D:(id)d info:(os_log_type_info_s *)info
{
  v13[2] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11 = 0;
  v4 = extractEncryptedData(d, &v11, &v10);
  result = v10;
  if (!v10)
  {
    if (v11 >= 0x10)
    {
      v6 = *v4;
      v7 = v4[1];
      v12[0] = @"lat";
      v8 = [MEMORY[0x29EDBA070] numberWithDouble:v6];
      v12[1] = @"lon";
      v13[0] = v8;
      v13[1] = [MEMORY[0x29EDBA070] numberWithDouble:v7];
      result = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    }

    else
    {
      result = &unk_2A20010A0;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)JSONObjectWith_Encrypted_CLClientLocation:(id)location info:(os_log_type_info_s *)info
{
  v18 = 0;
  v19 = 0;
  v6 = extractEncryptedData(location, &v19, &v18);
  v7 = v18;
  if (!v18)
  {
    if (v19 >= 0x9C)
    {
      v8 = v6[1];
      v16[0] = *v6;
      v16[1] = v8;
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[5];
      v16[4] = v6[4];
      v16[5] = v11;
      v16[2] = v9;
      v16[3] = v10;
      v12 = v6[6];
      v13 = v6[7];
      v14 = v6[8];
      *&v17[12] = *(v6 + 140);
      v16[7] = v13;
      *v17 = v14;
      v16[6] = v12;
      return -[CLLogFormatter JSONObjectWith_CLDaemonLocation:info:](self, "JSONObjectWith_CLDaemonLocation:info:", [MEMORY[0x29EDB8DA0] dataWithBytes:v16 length:156], info);
    }

    else
    {
      return &unk_2A20010C8;
    }
  }

  return v7;
}

@end