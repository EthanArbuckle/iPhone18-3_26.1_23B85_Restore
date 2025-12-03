@interface _TSF_TSDgPTPNetworkPort
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
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
- (BOOL)deregisterAsyncCallbackError:(id *)error;
- (BOOL)disablePortError:(id *)error;
- (BOOL)enablePortError:(id *)error;
- (BOOL)getCurrentPortInfo:(id *)info error:(id *)error;
- (BOOL)logNotifyTest;
- (BOOL)overrideReceiveMatchingWithRemoteClockIdentity:(unint64_t)identity remotePortNumber:(unsigned __int16)number error:(id *)error;
- (BOOL)registerAsyncCallbackError:(id *)error;
- (BOOL)requestRemoteMessageIntervalsWithPDelayMessageInterval:(char)interval syncMessageInterval:(char)messageInterval announceMessageInterval:(char)announceMessageInterval error:(id *)error;
- (BOOL)restoreReceiveMatchingError:(id *)error;
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
- (void)_handleNotification:(int)notification withArg1:(unint64_t)arg1 arg2:(unint64_t)arg2 arg3:(unint64_t)arg3 arg4:(unint64_t)arg4 arg5:(unint64_t)arg5 arg6:(unint64_t)arg6;
- (void)_handleRefreshConnection;
- (void)addClient:(id)client;
- (void)removeClient:(id)client;
- (void)serviceTerminated;
- (void)updateProperties;
@end

@implementation _TSF_TSDgPTPNetworkPort

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"IOProviderClass";
  v10[1] = @"IOPropertyMatch";
  v11[0] = @"IOTimeSyncNetworkPort";
  v8 = @"ClockIdentifier";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
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
  _remoteClockIdentity = [(_TSF_TSDgPTPNetworkPort *)self _remoteClockIdentity];
  _remotePortNumber = [(_TSF_TSDgPTPNetworkPort *)self _remotePortNumber];
  _remoteIsSameDevice = [(_TSF_TSDgPTPNetworkPort *)self _remoteIsSameDevice];
  _isASCapable = [(_TSF_TSDgPTPNetworkPort *)self _isASCapable];
  _propagationDelay = [(_TSF_TSDgPTPNetworkPort *)self _propagationDelay];
  _maximumPropagationDelay = [(_TSF_TSDgPTPNetworkPort *)self _maximumPropagationDelay];
  _minimumPropagationDelay = [(_TSF_TSDgPTPNetworkPort *)self _minimumPropagationDelay];
  _maximumRawDelay = [(_TSF_TSDgPTPNetworkPort *)self _maximumRawDelay];
  _minimumRawDelay = [(_TSF_TSDgPTPNetworkPort *)self _minimumRawDelay];
  _localSyncLogMeanInterval = [(_TSF_TSDgPTPNetworkPort *)self _localSyncLogMeanInterval];
  _remoteSyncLogMeanInterval = [(_TSF_TSDgPTPNetworkPort *)self _remoteSyncLogMeanInterval];
  _localAnnounceLogMeanInterval = [(_TSF_TSDgPTPNetworkPort *)self _localAnnounceLogMeanInterval];
  _remoteAnnounceLogMeanInterval = [(_TSF_TSDgPTPNetworkPort *)self _remoteAnnounceLogMeanInterval];
  _localLinkType = [(_TSF_TSDgPTPNetworkPort *)self _localLinkType];
  _remoteLinkType = [(_TSF_TSDgPTPNetworkPort *)self _remoteLinkType];
  _localTimestampingMode = [(_TSF_TSDgPTPNetworkPort *)self _localTimestampingMode];
  _remoteTimestampingMode = [(_TSF_TSDgPTPNetworkPort *)self _remoteTimestampingMode];
  _localOscillatorType = [(_TSF_TSDgPTPNetworkPort *)self _localOscillatorType];
  _remoteOscillatorType = [(_TSF_TSDgPTPNetworkPort *)self _remoteOscillatorType];
  _hasLocalFrequencyToleranceLower = [(_TSF_TSDgPTPNetworkPort *)self _hasLocalFrequencyToleranceLower];
  _localFrequencyToleranceLower = [(_TSF_TSDgPTPNetworkPort *)self _localFrequencyToleranceLower];
  _hasLocalFrequencyToleranceUpper = [(_TSF_TSDgPTPNetworkPort *)self _hasLocalFrequencyToleranceUpper];
  _localFrequencyToleranceUpper = [(_TSF_TSDgPTPNetworkPort *)self _localFrequencyToleranceUpper];
  _hasRemoteFrequencyToleranceLower = [(_TSF_TSDgPTPNetworkPort *)self _hasRemoteFrequencyToleranceLower];
  _remoteFrequencyToleranceLower = [(_TSF_TSDgPTPNetworkPort *)self _remoteFrequencyToleranceLower];
  _hasRemoteFrequencyToleranceUpper = [(_TSF_TSDgPTPNetworkPort *)self _hasRemoteFrequencyToleranceUpper];
  _remoteFrequencyToleranceUpper = [(_TSF_TSDgPTPNetworkPort *)self _remoteFrequencyToleranceUpper];
  _hasLocalFrequencyStabilityLower = [(_TSF_TSDgPTPNetworkPort *)self _hasLocalFrequencyStabilityLower];
  _localFrequencyStabilityLower = [(_TSF_TSDgPTPNetworkPort *)self _localFrequencyStabilityLower];
  _hasLocalFrequencyStabilityUpper = [(_TSF_TSDgPTPNetworkPort *)self _hasLocalFrequencyStabilityUpper];
  _localFrequencyStabilityUpper = [(_TSF_TSDgPTPNetworkPort *)self _localFrequencyStabilityUpper];
  _hasRemoteFrequencyStabilityLower = [(_TSF_TSDgPTPNetworkPort *)self _hasRemoteFrequencyStabilityLower];
  _remoteFrequencyStabilityLower = [(_TSF_TSDgPTPNetworkPort *)self _remoteFrequencyStabilityLower];
  _hasRemoteFrequencyStabilityUpper = [(_TSF_TSDgPTPNetworkPort *)self _hasRemoteFrequencyStabilityUpper];
  _remoteFrequencyStabilityUpper = [(_TSF_TSDgPTPNetworkPort *)self _remoteFrequencyStabilityUpper];
  _sourceAddressString = [(_TSF_TSDgPTPNetworkPort *)self _sourceAddressString];
  _destinationAddressString = [(_TSF_TSDgPTPNetworkPort *)self _destinationAddressString];
  _overridenReceiveMatching = [(_TSF_TSDgPTPNetworkPort *)self _overridenReceiveMatching];
  _overridenReceiveClockIdentity = [(_TSF_TSDgPTPNetworkPort *)self _overridenReceiveClockIdentity];
  _overridenReceivePortNumber = [(_TSF_TSDgPTPNetworkPort *)self _overridenReceivePortNumber];
  _enabled = [(_TSF_TSDgPTPNetworkPort *)self _enabled];
  propertyUpdateQueue = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___TSF_TSDgPTPNetworkPort_updateProperties__block_invoke;
  block[3] = &unk_279DBD870;
  v50 = _remoteClockIdentity;
  v65 = _remotePortNumber;
  v67 = _remoteIsSameDevice;
  v68 = _isASCapable;
  v52 = _propagationDelay;
  v53 = _maximumPropagationDelay;
  v54 = _minimumPropagationDelay;
  v55 = _maximumRawDelay;
  v69 = _localSyncLogMeanInterval;
  v70 = _remoteSyncLogMeanInterval;
  v71 = _localAnnounceLogMeanInterval;
  v72 = _remoteAnnounceLogMeanInterval;
  v73 = _localLinkType;
  v74 = _remoteLinkType;
  v75 = _localTimestampingMode;
  v76 = _remoteTimestampingMode;
  v77 = _localOscillatorType;
  v78 = _remoteOscillatorType;
  v79 = _hasLocalFrequencyToleranceLower;
  v56 = _minimumRawDelay;
  v57 = _localFrequencyToleranceLower;
  v80 = _hasLocalFrequencyToleranceUpper;
  v81 = _hasRemoteFrequencyToleranceLower;
  v58 = _localFrequencyToleranceUpper;
  v59 = _remoteFrequencyToleranceLower;
  v82 = _hasRemoteFrequencyToleranceUpper;
  v83 = _hasLocalFrequencyStabilityLower;
  v60 = _remoteFrequencyToleranceUpper;
  v61 = _localFrequencyStabilityLower;
  v84 = _hasLocalFrequencyStabilityUpper;
  v85 = _hasRemoteFrequencyStabilityLower;
  v62 = _localFrequencyStabilityUpper;
  v63 = _remoteFrequencyStabilityLower;
  v86 = _hasRemoteFrequencyStabilityUpper;
  v64 = _remoteFrequencyStabilityUpper;
  v87 = _overridenReceiveMatching;
  v51 = _overridenReceiveClockIdentity;
  v66 = _overridenReceivePortNumber;
  v88 = _enabled;
  block[4] = self;
  v48 = _sourceAddressString;
  v49 = _destinationAddressString;
  v12 = _destinationAddressString;
  v13 = _sourceAddressString;
  dispatch_async(propertyUpdateQueue, block);
}

- (unint64_t)_remoteClockIdentity
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteClockIdentity"];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unsigned)_remotePortNumber
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemotePortNumber"];

  if (v3)
  {
    unsignedShortValue = [v3 unsignedShortValue];
  }

  else
  {
    unsignedShortValue = 0;
  }

  return unsignedShortValue;
}

- (BOOL)_remoteIsSameDevice
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteIsSameDevice"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)_isASCapable
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"ASCapable"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (unsigned)_propagationDelay
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LinkPropagationDelay"];

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unsigned)_maximumPropagationDelay
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"MaximumPropagationDelay"];

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unsigned)_minimumPropagationDelay
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"MinimumPropagationDelay"];

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = -1;
  }

  return unsignedIntValue;
}

- (unsigned)_propagationDelayLimit
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"PropagationDelayLimit"];

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unsigned)_maximumRawDelay
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"MaximumRawDelay"];

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unsigned)_minimumRawDelay
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"MinimumRawDelay"];

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = -1;
  }

  return unsignedIntValue;
}

- (char)_localSyncLogMeanInterval
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalSyncLogMeanInterval"];

  if (v3)
  {
    charValue = [v3 charValue];
  }

  else
  {
    charValue = 0;
  }

  return charValue;
}

- (char)_remoteSyncLogMeanInterval
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteSyncLogMeanInterval"];

  if (v3)
  {
    charValue = [v3 charValue];
  }

  else
  {
    charValue = 0;
  }

  return charValue;
}

- (char)_localAnnounceLogMeanInterval
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalAnnounceLogMeanInterval"];

  if (v3)
  {
    charValue = [v3 charValue];
  }

  else
  {
    charValue = 0;
  }

  return charValue;
}

- (char)_remoteAnnounceLogMeanInterval
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteAnnounceLogMeanInterval"];

  if (v3)
  {
    charValue = [v3 charValue];
  }

  else
  {
    charValue = 0;
  }

  return charValue;
}

- (unsigned)_localLinkType
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalLinkType"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)_remoteLinkType
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteLinkType"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)_localTimestampingMode
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalTimestampingMode"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)_remoteTimestampingMode
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteTimestampingMode"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)_localOscillatorType
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalOscillatorType"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)_remoteOscillatorType
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteOscillatorType"];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (BOOL)_hasLocalFrequencyToleranceLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyToleranceUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasRemoteFrequencyToleranceLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_remoteFrequencyToleranceLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyToleranceLower"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasRemoteFrequencyToleranceUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_remoteFrequencyToleranceUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyToleranceUpper"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyStabilityLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasLocalFrequencyStabilityUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasRemoteFrequencyStabilityLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_remoteFrequencyStabilityLower
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyStabilityLower"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_hasRemoteFrequencyStabilityUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_remoteFrequencyStabilityUpper
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyStabilityUpper"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)_overridenReceiveMatching
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"OverridenReceiveMatching"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (unint64_t)_overridenReceiveClockIdentity
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"OverridenReceiveClockIdentity"];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unsigned)_overridenReceivePortNumber
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"OverridenReceivePortNumber"];

  if (v3)
  {
    unsignedShortValue = [v3 unsignedShortValue];
  }

  else
  {
    unsignedShortValue = -1;
  }

  return unsignedShortValue;
}

- (BOOL)_enabled
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"PTPPortEnabled"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_interfaceName
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"InterfaceName"];

  return v3;
}

- (BOOL)requestRemoteMessageIntervalsWithPDelayMessageInterval:(char)interval syncMessageInterval:(char)messageInterval announceMessageInterval:(char)announceMessageInterval error:(id *)error
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = interval;
  v10[1] = messageInterval;
  v10[2] = announceMessageInterval;
  v6 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v10 scalarInputCount:3 scalarOutputs:0 scalarOutputCount:&v9 error:0];
  if (!v6)
  {
    [_TSF_TSDgPTPNetworkPort requestRemoteMessageIntervalsWithPDelayMessageInterval:syncMessageInterval:announceMessageInterval:error:];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)overrideReceiveMatchingWithRemoteClockIdentity:(unint64_t)identity remotePortNumber:(unsigned __int16)number error:(id *)error
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = identity;
  v9[1] = number;
  v5 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:v9 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:&v8 error:0];
  if (!v5)
  {
    [_TSF_TSDgPTPNetworkPort overrideReceiveMatchingWithRemoteClockIdentity:remotePortNumber:error:];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)restoreReceiveMatchingError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    [_TSF_TSDgPTPNetworkPort restoreReceiveMatchingError:];
  }

  return v3;
}

- (BOOL)enablePortError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    [_TSF_TSDgPTPNetworkPort enablePortError:];
  }

  return v3;
}

- (BOOL)disablePortError:(id *)error
{
  v5 = 0;
  v3 = [(_TSF_IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    [_TSF_TSDgPTPNetworkPort disablePortError:];
  }

  return v3;
}

- (BOOL)getCurrentPortInfo:(id *)info error:(id *)error
{
  if (info)
  {
    v6 = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue:info];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52___TSF_TSDgPTPNetworkPort_getCurrentPortInfo_error___block_invoke;
    v9[3] = &unk_279DBD7F8;
    v9[4] = self;
    v9[5] = info;
    dispatch_sync(v6, v9);
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"TSDErrorDomain" code:-536870206 userInfo:0];
  }

  return info != 0;
}

- (void)_handleRefreshConnection
{
  v19 = *MEMORY[0x277D85DE8];
  [(_TSF_TSDgPTPNetworkPort *)self updateProperties];
  _isASCapable = [(_TSF_TSDgPTPNetworkPort *)self _isASCapable];
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
          propertyUpdateQueue = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51___TSF_TSDgPTPNetworkPort__handleRefreshConnection__block_invoke;
          block[3] = &unk_279DBD898;
          v13 = _isASCapable;
          block[4] = v9;
          block[5] = self;
          dispatch_async(propertyUpdateQueue, block);
        }
      }

      v6 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_clientsLock);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleNotification:(int)notification withArg1:(unint64_t)arg1 arg2:(unint64_t)arg2 arg3:(unint64_t)arg3 arg4:(unint64_t)arg4 arg5:(unint64_t)arg5 arg6:(unint64_t)arg6
{
  v41 = *MEMORY[0x277D85DE8];
  queue = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  if (notification <= 4001)
  {
    if (notification == 4000)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v10 UTF8String];
      v11 = MEMORY[0x277D86220];
      v12 = "%s: notification for MAC lookup timeout\n";
      goto LABEL_18;
    }

    if (notification == 4001 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v10 UTF8String];
      v11 = MEMORY[0x277D86220];
      v12 = "%s: notification for sync timeout\n";
      goto LABEL_18;
    }
  }

  else if (notification == 4002)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v13 UTF8String];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: notification for AS capable change\n", buf, 0xCu);
    }

    [(_TSF_TSDgPTPNetworkPort *)self updateProperties];
  }

  else
  {
    if (notification == 4003)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v10 UTF8String];
      v11 = MEMORY[0x277D86220];
      v12 = "%s: notification for admin enable\n";
      goto LABEL_18;
    }

    if (notification == 4004 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(_TSF_TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v10 UTF8String];
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
        if (notification <= 4001)
        {
          if (notification == 4000)
          {
            v24 = *(*(&v34 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 didTimeoutOnMACLookupForPort:self];
            }
          }

          else if (notification == 4001)
          {
            v21 = *(*(&v34 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 didSyncTimeoutForPort:self];
            }

            if (objc_opt_respondsToSelector())
            {
              [v19 didSyncTimeoutWithMean:arg1 median:arg2 standardDeviation:arg3 minimum:arg4 maximum:arg5 numberOfSamples:arg6 forPort:self];
            }
          }
        }

        else
        {
          switch(notification)
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
                block[6] = arg1;
                block[4] = v19;
                dispatch_async(queue, block);
              }

              break;
            case 4003:
              v23 = *(*(&v34 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v19 didChangeAdministrativeEnable:arg1 != 0 forPort:self];
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

- (BOOL)registerAsyncCallbackError:(id *)error
{
  v4 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v4 allocateRefcon:self];

  connection = [(_TSF_TSDgPTPNetworkPort *)self connection];
  v6 = [connection registerAsyncNotificationsWithSelector:5 callBack:asyncNotificationsCallback refcon:self->_asyncCallbackRefcon callbackQueue:_sharedNotificationsQueue];

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

- (BOOL)deregisterAsyncCallbackError:(id *)error
{
  v4 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v4 releaseRefcon:self->_asyncCallbackRefcon];

  connection = [(_TSF_TSDgPTPNetworkPort *)self connection];
  v6 = [connection deregisterAsyncNotificationsWithSelector:6];

  if ((v6 & 1) == 0)
  {
    [_TSF_TSDgPTPNetworkPort deregisterAsyncCallbackError:];
  }

  return v6;
}

- (void)addClient:(id)client
{
  v16 = *MEMORY[0x277D85DE8];
  clientCopy = client;
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

        if (*(*(&v11 + 1) + 8 * v9) == clientCopy)
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

  [(NSPointerArray *)self->_clients addPointer:clientCopy, v11];
LABEL_11:
  os_unfair_lock_unlock(&self->_clientsLock);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
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

        if (*(*(&v13 + 1) + 8 * v10) == clientCopy)
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
  propertiesForXPC = [(_TSF_TSDgPTPPort *)&v12 propertiesForXPC];
  v3 = [propertiesForXPC objectForKeyedSubscript:@"OverridenReceiveClockIdentity"];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-1];
    [propertiesForXPC setObject:v4 forKeyedSubscript:@"OverridenReceiveClockIdentity"];
  }

  v5 = [propertiesForXPC objectForKeyedSubscript:@"OverridenReceivePortNumber"];

  if (!v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:0xFFFFLL];
    [propertiesForXPC setObject:v6 forKeyedSubscript:@"OverridenReceivePortNumber"];
  }

  v7 = [propertiesForXPC objectForKeyedSubscript:@"MinimumPropagationDelay"];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0xFFFFFFFFLL];
    [propertiesForXPC setObject:v8 forKeyedSubscript:@"MinimumPropagationDelay"];
  }

  v9 = [propertiesForXPC objectForKeyedSubscript:@"MinimumRawDelay"];

  if (!v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0xFFFFFFFFLL];
    [propertiesForXPC setObject:v10 forKeyedSubscript:@"MinimumRawDelay"];
  }

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS____TSF_TSDgPTPNetworkPort;
  serviceCopy = service;
  v4 = objc_msgSendSuper2(&v10, sel_diagnosticInfoForService_, serviceCopy);
  v5 = [serviceCopy parentIteratorInServicePlaneWithError:0];

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