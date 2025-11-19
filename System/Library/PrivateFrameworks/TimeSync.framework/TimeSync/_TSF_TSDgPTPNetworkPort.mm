@interface _TSF_TSDgPTPNetworkPort
+ (id)diagnosticInfoForService:(id)a3;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3;
- (BOOL)_enabled;
- (BOOL)_hasLocalFrequencyStabilityLower;
- (BOOL)_hasLocalFrequencyStabilityUpper;
- (BOOL)_hasLocalFrequencyToleranceLower;
- (BOOL)_hasLocalFrequencyToleranceUpper;
- (BOOL)_hasRemoteFrequencyStabilityLower;
- (BOOL)_hasRemoteFrequencyStabilityUpper;
- (BOOL)_hasRemoteFrequencyToleranceLower;
- (BOOL)_hasRemoteFrequencyToleranceUpper;
- (BOOL)_isASCapable;
- (BOOL)_overridenReceiveMatching;
- (BOOL)_remoteIsSameDevice;
- (BOOL)deregisterAsyncCallbackError:(id *)a3;
- (BOOL)disablePortError:(id *)a3;
- (BOOL)enablePortError:(id *)a3;
- (BOOL)getCurrentPortInfo:(id *)a3 error:(id *)a4;
- (BOOL)logNotifyTest;
- (BOOL)overrideReceiveMatchingWithRemoteClockIdentity:(unint64_t)a3 remotePortNumber:(unsigned __int16)a4 error:(id *)a5;
- (BOOL)registerAsyncCallbackError:(id *)a3;
- (BOOL)requestRemoteMessageIntervalsWithPDelayMessageInterval:(char)a3 syncMessageInterval:(char)a4 announceMessageInterval:(char)a5 error:(id *)a6;
- (BOOL)restoreReceiveMatchingError:(id *)a3;
- (char)_localAnnounceLogMeanInterval;
- (char)_localSyncLogMeanInterval;
- (char)_remoteAnnounceLogMeanInterval;
- (char)_remoteSyncLogMeanInterval;
- (id)_interfaceName;
- (id)propertiesForXPC;
- (int)_localFrequencyStabilityLower;
- (int)_localFrequencyStabilityUpper;
- (int)_localFrequencyToleranceLower;
- (int)_localFrequencyToleranceUpper;
- (int)_remoteFrequencyStabilityLower;
- (int)_remoteFrequencyStabilityUpper;
- (int)_remoteFrequencyToleranceLower;
- (int)_remoteFrequencyToleranceUpper;
- (unint64_t)_overridenReceiveClockIdentity;
- (unint64_t)_remoteClockIdentity;
- (unsigned)_localLinkType;
- (unsigned)_localOscillatorType;
- (unsigned)_localTimestampingMode;
- (unsigned)_maximumPropagationDelay;
- (unsigned)_maximumRawDelay;
- (unsigned)_minimumPropagationDelay;
- (unsigned)_minimumRawDelay;
- (unsigned)_overridenReceivePortNumber;
- (unsigned)_propagationDelay;
- (unsigned)_propagationDelayLimit;
- (unsigned)_remoteLinkType;
- (unsigned)_remoteOscillatorType;
- (unsigned)_remotePortNumber;
- (unsigned)_remoteTimestampingMode;
- (void)_handleNotification:(int)a3 withArg1:(unint64_t)a4 arg2:(unint64_t)a5 arg3:(unint64_t)a6 arg4:(unint64_t)a7 arg5:(unint64_t)a8 arg6:(unint64_t)a9;
- (void)_handleRefreshConnection;
- (void)addClient:(id)a3;
- (void)removeClient:(id)a3;
- (void)serviceTerminated;
- (void)updateProperties;
@end

@implementation _TSF_TSDgPTPNetworkPort

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncNetworkPort";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v9 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)updateProperties
{
  v89.receiver = self;
  v89.super_class = _TSF_TSDgPTPNetworkPort;
  [(_TSF_TSDgPTPPort *)&v89 updateProperties];
  v46 = [(_TSF_TSDgPTPNetworkPort *)self _remoteClockIdentity];
  v45 = [(_TSF_TSDgPTPNetworkPort *)self _remotePortNumber];
  v44 = [(_TSF_TSDgPTPNetworkPort *)self _remoteIsSameDevice];
  v43 = [(_TSF_TSDgPTPNetworkPort *)self _isASCapable];
  v42 = [(_TSF_TSDgPTPNetworkPort *)self _propagationDelay];
  v41 = [(_TSF_TSDgPTPNetworkPort *)self _maximumPropagationDelay];
  v39 = [(_TSF_TSDgPTPNetworkPort *)self _minimumPropagationDelay];
  v38 = [(_TSF_TSDgPTPNetworkPort *)self _maximumRawDelay];
  v40 = [(_TSF_TSDgPTPNetworkPort *)self _minimumRawDelay];
  v37 = [(_TSF_TSDgPTPNetworkPort *)self _localSyncLogMeanInterval];
  v36 = [(_TSF_TSDgPTPNetworkPort *)self _remoteSyncLogMeanInterval];
  v35 = [(_TSF_TSDgPTPNetworkPort *)self _localAnnounceLogMeanInterval];
  v34 = [(_TSF_TSDgPTPNetworkPort *)self _remoteAnnounceLogMeanInterval];
  v33 = [(_TSF_TSDgPTPNetworkPort *)self _localLinkType];
  v32 = [(_TSF_TSDgPTPNetworkPort *)self _remoteLinkType];
  v31 = [(_TSF_TSDgPTPNetworkPort *)self _localTimestampingMode];
  v30 = [(_TSF_TSDgPTPNetworkPort *)self _remoteTimestampingMode];
  v29 = [(_TSF_TSDgPTPNetworkPort *)self _localOscillatorType];
  v28 = [(_TSF_TSDgPTPNetworkPort *)self _remoteOscillatorType];
  v27 = [(_TSF_TSDgPTPNetworkPort *)self _hasLocalFrequencyToleranceLower];
  v26 = [(_TSF_TSDgPTPNetworkPort *)self _localFrequencyToleranceLower];
  v25 = [(_TSF_TSDgPTPNetworkPort *)self _hasLocalFrequencyToleranceUpper];
  v24 = [(_TSF_TSDgPTPNetworkPort *)self _localFrequencyToleranceUpper];
  v23 = [(_TSF_TSDgPTPNetworkPort *)self _hasRemoteFrequencyToleranceLower];
  v22 = [(_TSF_TSDgPTPNetworkPort *)self _remoteFrequencyToleranceLower];
  v21 = [(_TSF_TSDgPTPNetworkPort *)self _hasRemoteFrequencyToleranceUpper];
  v20 = [(_TSF_TSDgPTPNetworkPort *)self _remoteFrequencyToleranceUpper];
  v19 = [(_TSF_TSDgPTPNetworkPort *)self _hasLocalFrequencyStabilityLower];
  v18 = [(_TSF_TSDgPTPNetworkPort *)self _localFrequencyStabilityLower];
  v17 = [(_TSF_TSDgPTPNetworkPort *)self _hasLocalFrequencyStabilityUpper];
  v16 = [(_TSF_TSDgPTPNetworkPort *)self _localFrequencyStabilityUpper];
  v15 = [(_TSF_TSDgPTPNetworkPort *)self _hasRemoteFrequencyStabilityLower];
  v14 = [(_TSF_TSDgPTPNetworkPort *)self _remoteFrequencyStabilityLower];
  v3 = [(_TSF_TSDgPTPNetworkPort *)self _hasRemoteFrequencyStabilityUpper];
  v4 = [(_TSF_TSDgPTPNetworkPort *)self _remoteFrequencyStabilityUpper];
  v5 = [(_TSF_TSDgPTPNetworkPort *)self _sourceAddressString];
  v6 = [(_TSF_TSDgPTPNetworkPort *)self _destinationAddressString];
  v7 = [(_TSF_TSDgPTPNetworkPort *)self _overridenReceiveMatching];
  v8 = [(_TSF_TSDgPTPNetworkPort *)self _overridenReceiveClockIdentity];
  v9 = [(_TSF_TSDgPTPNetworkPort *)self _overridenReceivePortNumber];
  v10 = [(_TSF_TSDgPTPNetworkPort *)self _enabled];
  v11 = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___TSF_TSDgPTPNetworkPort_updateProperties__block_invoke;
  block[3] = &unk_279DBD870;
  v50 = v46;
  v65 = v45;
  v67 = v44;
  v68 = v43;
  v52 = v42;
  v53 = v41;
  v54 = v39;
  v55 = v38;
  v69 = v37;
  v70 = v36;
  v71 = v35;
  v72 = v34;
  v73 = v33;
  v74 = v32;
  v75 = v31;
  v76 = v30;
  v77 = v29;
  v78 = v28;
  v79 = v27;
  v56 = v40;
  v57 = v26;
  v80 = v25;
  v81 = v23;
  v58 = v24;
  v59 = v22;
  v82 = v21;
  v83 = v19;
  v60 = v20;
  v61 = v18;
  v84 = v17;
  v85 = v15;
  v62 = v16;
  v63 = v14;
  v86 = v3;
  v64 = v4;
  v87 = v7;
  v51 = v8;
  v66 = v9;
  v88 = v10;
  block[4] = self;
  v48 = v5;
  v49 = v6;
  v12 = v6;
  v13 = v5;
  dispatch_async(v11, block);
}

- (unint64_t)_remoteClockIdentity
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteClockIdentity"];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_remotePortNumber
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemotePortNumber"];

  if (v3)
  {
    v4 = [v3 unsignedShortValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_remoteIsSameDevice
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteIsSameDevice"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isASCapable
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"ASCapable"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_propagationDelay
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LinkPropagationDelay"];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_maximumPropagationDelay
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"MaximumPropagationDelay"];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_minimumPropagationDelay
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"MinimumPropagationDelay"];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unsigned)_propagationDelayLimit
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"PropagationDelayLimit"];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_maximumRawDelay
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"MaximumRawDelay"];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_minimumRawDelay
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"MinimumRawDelay"];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (char)_localSyncLogMeanInterval
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalSyncLogMeanInterval"];

  if (v3)
  {
    v4 = [v3 charValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (char)_remoteSyncLogMeanInterval
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteSyncLogMeanInterval"];

  if (v3)
  {
    v4 = [v3 charValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (char)_localAnnounceLogMeanInterval
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalAnnounceLogMeanInterval"];

  if (v3)
  {
    v4 = [v3 charValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (char)_remoteAnnounceLogMeanInterval
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteAnnounceLogMeanInterval"];

  if (v3)
  {
    v4 = [v3 charValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_localLinkType
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalLinkType"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_remoteLinkType
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteLinkType"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_localTimestampingMode
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalTimestampingMode"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_remoteTimestampingMode
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteTimestampingMode"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_localOscillatorType
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalOscillatorType"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_remoteOscillatorType
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteOscillatorType"];

  if (v3)
  {
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalFrequencyToleranceLower
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceLower
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalFrequencyToleranceUpper
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceUpper
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasRemoteFrequencyToleranceLower
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_remoteFrequencyToleranceLower
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteFrequencyToleranceLower"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasRemoteFrequencyToleranceUpper
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_remoteFrequencyToleranceUpper
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteFrequencyToleranceUpper"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalFrequencyStabilityLower
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityLower
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasLocalFrequencyStabilityUpper
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityUpper
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasRemoteFrequencyStabilityLower
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_remoteFrequencyStabilityLower
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteFrequencyStabilityLower"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasRemoteFrequencyStabilityUpper
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_remoteFrequencyStabilityUpper
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"RemoteFrequencyStabilityUpper"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_overridenReceiveMatching
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"OverridenReceiveMatching"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_overridenReceiveClockIdentity
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"OverridenReceiveClockIdentity"];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unsigned)_overridenReceivePortNumber
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"OverridenReceivePortNumber"];

  if (v3)
  {
    v4 = [v3 unsignedShortValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (BOOL)_enabled
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"PTPPortEnabled"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_interfaceName
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"InterfaceName"];

  return v3;
}

- (BOOL)requestRemoteMessageIntervalsWithPDelayMessageInterval:(char)a3 syncMessageInterval:(char)a4 announceMessageInterval:(char)a5 error:(id *)a6
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v6 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v10 scalarInputCount:3 scalarOutputs:0 scalarOutputCount:&v9 error:0];
  if (!v6)
  {
    [_TSF_TSDgPTPNetworkPort requestRemoteMessageIntervalsWithPDelayMessageInterval:syncMessageInterval:announceMessageInterval:error:];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)overrideReceiveMatchingWithRemoteClockIdentity:(unint64_t)a3 remotePortNumber:(unsigned __int16)a4 error:(id *)a5
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = a3;
  v9[1] = a4;
  v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:v9 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:&v8 error:0];
  if (!v5)
  {
    [_TSF_TSDgPTPNetworkPort overrideReceiveMatchingWithRemoteClockIdentity:remotePortNumber:error:];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)restoreReceiveMatchingError:(id *)a3
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    [_TSF_TSDgPTPNetworkPort restoreReceiveMatchingError:];
  }

  return v3;
}

- (BOOL)enablePortError:(id *)a3
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    [_TSF_TSDgPTPNetworkPort enablePortError:];
  }

  return v3;
}

- (BOOL)disablePortError:(id *)a3
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    [_TSF_TSDgPTPNetworkPort disablePortError:];
  }

  return v3;
}

- (BOOL)getCurrentPortInfo:(id *)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue:a3];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52___TSF_TSDgPTPNetworkPort_getCurrentPortInfo_error___block_invoke;
    v9[3] = &unk_279DBD7F8;
    v9[4] = self;
    v9[5] = a3;
    dispatch_sync(v6, v9);
  }

  else if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSDErrorDomain" code:-536870206 userInfo:0];
  }

  return a3 != 0;
}

- (void)_handleRefreshConnection
{
  v19 = *MEMORY[0x277D85DE8];
  [(_TSF_TSDgPTPNetworkPort *)self updateProperties];
  v3 = [(_TSF_TSDgPTPNetworkPort *)self _isASCapable];
  os_unfair_lock_lock(&self->_clientsLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_clients;
  v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51___TSF_TSDgPTPNetworkPort__handleRefreshConnection__block_invoke;
          block[3] = &unk_279DBD898;
          v13 = v3;
          block[4] = v9;
          block[5] = self;
          dispatch_async(v10, block);
        }
      }

      v6 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_clientsLock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotification:(int)a3 withArg1:(unint64_t)a4 arg2:(unint64_t)a5 arg3:(unint64_t)a6 arg4:(unint64_t)a7 arg5:(unint64_t)a8 arg6:(unint64_t)a9
{
  v41 = *MEMORY[0x277D85DE8];
  queue = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  if (a3 <= 4001)
  {
    if (a3 == 4000)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      v40 = [v10 UTF8String];
      v11 = MEMORY[0x277D86220];
      v12 = "%s: notification for MAC lookup timeout\n";
      goto LABEL_18;
    }

    if (a3 == 4001 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      v40 = [v10 UTF8String];
      v11 = MEMORY[0x277D86220];
      v12 = "%s: notification for sync timeout\n";
      goto LABEL_18;
    }
  }

  else if (a3 == 4002)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      v40 = [v13 UTF8String];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: notification for AS capable change\n", buf, 0xCu);
    }

    [(_TSF_TSDgPTPNetworkPort *)self updateProperties];
  }

  else
  {
    if (a3 == 4003)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      v40 = [v10 UTF8String];
      v11 = MEMORY[0x277D86220];
      v12 = "%s: notification for admin enable\n";
      goto LABEL_18;
    }

    if (a3 == 4004 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      v40 = [v10 UTF8String];
      v11 = MEMORY[0x277D86220];
      v12 = "%s: notification for announce timeout\n";
LABEL_18:
      _os_log_impl(&dword_26F080000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    }
  }

LABEL_19:
  os_unfair_lock_lock(&self->_clientsLock);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_clients;
  v15 = [(NSPointerArray *)v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        if (a3 <= 4001)
        {
          if (a3 == 4000)
          {
            v24 = *(*(&v34 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 didTimeoutOnMACLookupForPort:self];
            }
          }

          else if (a3 == 4001)
          {
            v21 = *(*(&v34 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 didSyncTimeoutForPort:self];
            }

            if (objc_opt_respondsToSelector())
            {
              [v19 didSyncTimeoutWithMean:a4 median:a5 standardDeviation:a6 minimum:a7 maximum:a8 numberOfSamples:a9 forPort:self];
            }
          }
        }

        else
        {
          switch(a3)
          {
            case 4002:
              v22 = *(*(&v34 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __81___TSF_TSDgPTPNetworkPort__handleNotification_withArg1_arg2_arg3_arg4_arg5_arg6___block_invoke;
                block[3] = &unk_279DBD8C0;
                block[5] = self;
                block[6] = a4;
                block[4] = v19;
                dispatch_async(queue, block);
              }

              break;
            case 4003:
              v23 = *(*(&v34 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v19 didChangeAdministrativeEnable:a4 != 0 forPort:self];
              }

              break;
            case 4004:
              v20 = *(*(&v34 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v19 didAnnounceTimeoutForPort:self];
              }

              break;
          }
        }
      }

      v16 = [(NSPointerArray *)v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v16);
  }

  os_unfair_lock_unlock(&self->_clientsLock);
  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerAsyncCallbackError:(id *)a3
{
  v4 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v4 allocateRefcon:self];

  v5 = [(_TSF_TSDgPTPNetworkPort *)self connection];
  v6 = [v5 registerAsyncNotificationsWithSelector:5 callBack:asyncNotificationsCallback refcon:self->_asyncCallbackRefcon callbackQueue:_sharedNotificationsQueue];

  if ((v6 & 1) == 0)
  {
    v7 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
    [v7 releaseRefcon:self->_asyncCallbackRefcon];
  }

  return v6;
}

- (BOOL)logNotifyTest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___TSF_TSDgPTPNetworkPort_logNotifyTest__block_invoke;
  block[3] = &unk_279DBD538;
  block[4] = self;
  if (logNotifyTest_onceToken != -1)
  {
    dispatch_once(&logNotifyTest_onceToken, block);
  }

  return self->super._logNotifyTest;
}

- (BOOL)deregisterAsyncCallbackError:(id *)a3
{
  v4 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v4 releaseRefcon:self->_asyncCallbackRefcon];

  v5 = [(_TSF_TSDgPTPNetworkPort *)self connection];
  v6 = [v5 deregisterAsyncNotificationsWithSelector:6];

  if ((v6 & 1) == 0)
  {
    [_TSF_TSDgPTPNetworkPort deregisterAsyncCallbackError:];
  }

  return v6;
}

- (void)addClient:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_clientsLock);
  [(NSPointerArray *)self->_clients compact];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v11 + 1) + 8 * v9) == v4)
        {

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:v4, v11];
LABEL_11:
  os_unfair_lock_unlock(&self->_clientsLock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_clientsLock);
  [(NSPointerArray *)self->_clients compact];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v13 + 1) + 8 * v10) == v4)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:v11, v13];
          goto LABEL_11;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_clientsLock);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)serviceTerminated
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = _TSF_TSDgPTPNetworkPort;
  [(_TSF_TSDgPTPPort *)&v14 serviceTerminated];
  os_unfair_lock_lock(&self->_clientsLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didTerminateServiceForPort:{self, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientsLock);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)propertiesForXPC
{
  v12.receiver = self;
  v12.super_class = _TSF_TSDgPTPNetworkPort;
  v2 = [(_TSF_TSDgPTPPort *)&v12 propertiesForXPC];
  v3 = [v2 objectForKeyedSubscript:@"OverridenReceiveClockIdentity"];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-1];
    [v2 setObject:v4 forKeyedSubscript:@"OverridenReceiveClockIdentity"];
  }

  v5 = [v2 objectForKeyedSubscript:@"OverridenReceivePortNumber"];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0xFFFFLL];
    [v2 setObject:v6 forKeyedSubscript:@"OverridenReceivePortNumber"];
  }

  v7 = [v2 objectForKeyedSubscript:@"MinimumPropagationDelay"];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0xFFFFFFFFLL];
    [v2 setObject:v8 forKeyedSubscript:@"MinimumPropagationDelay"];
  }

  v9 = [v2 objectForKeyedSubscript:@"MinimumRawDelay"];

  if (!v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0xFFFFFFFFLL];
    [v2 setObject:v10 forKeyedSubscript:@"MinimumRawDelay"];
  }

  return v2;
}

+ (id)diagnosticInfoForService:(id)a3
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS____TSF_TSDgPTPNetworkPort;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v10, sel_diagnosticInfoForService_, v3);
  v5 = [v3 parentIteratorInServicePlaneWithError:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52___TSF_TSDgPTPNetworkPort_diagnosticInfoForService___block_invoke;
  v8[3] = &unk_279DBD7A8;
  v6 = v4;
  v9 = v6;
  [v5 enumerateWithBlock:v8];

  return v6;
}

- (void)initWithService:(void *)a1 pid:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestRemoteMessageIntervalsWithPDelayMessageInterval:syncMessageInterval:announceMessageInterval:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)overrideReceiveMatchingWithRemoteClockIdentity:remotePortNumber:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)restoreReceiveMatchingError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)enablePortError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)disablePortError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)deregisterAsyncCallbackError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end