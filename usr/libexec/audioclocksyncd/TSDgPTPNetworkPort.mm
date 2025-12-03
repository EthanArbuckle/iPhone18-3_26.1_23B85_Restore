@interface TSDgPTPNetworkPort
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

@implementation TSDgPTPNetworkPort

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v9[0] = @"IOProviderClass";
  v9[1] = @"IOPropertyMatch";
  v10[0] = @"IOTimeSyncNetworkPort";
  v7 = @"ClockIdentifier";
  v3 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v5;
}

- (void)updateProperties
{
  v89.receiver = self;
  v89.super_class = TSDgPTPNetworkPort;
  [(TSDgPTPPort *)&v89 updateProperties];
  _remoteClockIdentity = [(TSDgPTPNetworkPort *)self _remoteClockIdentity];
  _remotePortNumber = [(TSDgPTPNetworkPort *)self _remotePortNumber];
  _remoteIsSameDevice = [(TSDgPTPNetworkPort *)self _remoteIsSameDevice];
  _isASCapable = [(TSDgPTPNetworkPort *)self _isASCapable];
  _propagationDelay = [(TSDgPTPNetworkPort *)self _propagationDelay];
  _maximumPropagationDelay = [(TSDgPTPNetworkPort *)self _maximumPropagationDelay];
  _minimumPropagationDelay = [(TSDgPTPNetworkPort *)self _minimumPropagationDelay];
  _maximumRawDelay = [(TSDgPTPNetworkPort *)self _maximumRawDelay];
  _minimumRawDelay = [(TSDgPTPNetworkPort *)self _minimumRawDelay];
  _localSyncLogMeanInterval = [(TSDgPTPNetworkPort *)self _localSyncLogMeanInterval];
  _remoteSyncLogMeanInterval = [(TSDgPTPNetworkPort *)self _remoteSyncLogMeanInterval];
  _localAnnounceLogMeanInterval = [(TSDgPTPNetworkPort *)self _localAnnounceLogMeanInterval];
  _remoteAnnounceLogMeanInterval = [(TSDgPTPNetworkPort *)self _remoteAnnounceLogMeanInterval];
  _localLinkType = [(TSDgPTPNetworkPort *)self _localLinkType];
  _remoteLinkType = [(TSDgPTPNetworkPort *)self _remoteLinkType];
  _localTimestampingMode = [(TSDgPTPNetworkPort *)self _localTimestampingMode];
  _remoteTimestampingMode = [(TSDgPTPNetworkPort *)self _remoteTimestampingMode];
  _localOscillatorType = [(TSDgPTPNetworkPort *)self _localOscillatorType];
  _remoteOscillatorType = [(TSDgPTPNetworkPort *)self _remoteOscillatorType];
  _hasLocalFrequencyToleranceLower = [(TSDgPTPNetworkPort *)self _hasLocalFrequencyToleranceLower];
  _localFrequencyToleranceLower = [(TSDgPTPNetworkPort *)self _localFrequencyToleranceLower];
  _hasLocalFrequencyToleranceUpper = [(TSDgPTPNetworkPort *)self _hasLocalFrequencyToleranceUpper];
  _localFrequencyToleranceUpper = [(TSDgPTPNetworkPort *)self _localFrequencyToleranceUpper];
  _hasRemoteFrequencyToleranceLower = [(TSDgPTPNetworkPort *)self _hasRemoteFrequencyToleranceLower];
  _remoteFrequencyToleranceLower = [(TSDgPTPNetworkPort *)self _remoteFrequencyToleranceLower];
  _hasRemoteFrequencyToleranceUpper = [(TSDgPTPNetworkPort *)self _hasRemoteFrequencyToleranceUpper];
  _remoteFrequencyToleranceUpper = [(TSDgPTPNetworkPort *)self _remoteFrequencyToleranceUpper];
  _hasLocalFrequencyStabilityLower = [(TSDgPTPNetworkPort *)self _hasLocalFrequencyStabilityLower];
  _localFrequencyStabilityLower = [(TSDgPTPNetworkPort *)self _localFrequencyStabilityLower];
  _hasLocalFrequencyStabilityUpper = [(TSDgPTPNetworkPort *)self _hasLocalFrequencyStabilityUpper];
  _localFrequencyStabilityUpper = [(TSDgPTPNetworkPort *)self _localFrequencyStabilityUpper];
  _hasRemoteFrequencyStabilityLower = [(TSDgPTPNetworkPort *)self _hasRemoteFrequencyStabilityLower];
  _remoteFrequencyStabilityLower = [(TSDgPTPNetworkPort *)self _remoteFrequencyStabilityLower];
  _hasRemoteFrequencyStabilityUpper = [(TSDgPTPNetworkPort *)self _hasRemoteFrequencyStabilityUpper];
  _remoteFrequencyStabilityUpper = [(TSDgPTPNetworkPort *)self _remoteFrequencyStabilityUpper];
  _sourceAddressString = [(TSDgPTPNetworkPort *)self _sourceAddressString];
  _destinationAddressString = [(TSDgPTPNetworkPort *)self _destinationAddressString];
  _overridenReceiveMatching = [(TSDgPTPNetworkPort *)self _overridenReceiveMatching];
  _overridenReceiveClockIdentity = [(TSDgPTPNetworkPort *)self _overridenReceiveClockIdentity];
  _overridenReceivePortNumber = [(TSDgPTPNetworkPort *)self _overridenReceivePortNumber];
  _enabled = [(TSDgPTPNetworkPort *)self _enabled];
  propertyUpdateQueue = [(TSDgPTPPort *)self propertyUpdateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E630;
  block[3] = &unk_10004C968;
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceLower
{
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_localFrequencyToleranceUpper
{
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyToleranceLower"];

  return v3 != 0;
}

- (int)_remoteFrequencyToleranceLower
{
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyToleranceUpper"];

  return v3 != 0;
}

- (int)_remoteFrequencyToleranceUpper
{
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityLower
{
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"LocalFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_localFrequencyStabilityUpper
{
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyStabilityLower"];

  return v3 != 0;
}

- (int)_remoteFrequencyStabilityLower
{
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"RemoteFrequencyStabilityUpper"];

  return v3 != 0;
}

- (int)_remoteFrequencyStabilityUpper
{
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
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
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"InterfaceName"];

  return v3;
}

- (BOOL)requestRemoteMessageIntervalsWithPDelayMessageInterval:(char)interval syncMessageInterval:(char)messageInterval announceMessageInterval:(char)announceMessageInterval error:(id *)error
{
  v8 = 0;
  v9[0] = interval;
  v9[1] = messageInterval;
  v9[2] = announceMessageInterval;
  v6 = [(IODConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v9 scalarInputCount:3 scalarOutputs:0 scalarOutputCount:&v8 error:0];
  if (!v6)
  {
    sub_10002AA4C();
  }

  return v6;
}

- (BOOL)overrideReceiveMatchingWithRemoteClockIdentity:(unint64_t)identity remotePortNumber:(unsigned __int16)number error:(id *)error
{
  v7 = 0;
  v8[0] = identity;
  v8[1] = number;
  v5 = [(IODConnection *)self->_connection callMethodWithSelector:1 scalarInputs:v8 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:&v7 error:0];
  if (!v5)
  {
    sub_10002AAFC();
  }

  return v5;
}

- (BOOL)restoreReceiveMatchingError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:2 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    sub_10002ABAC();
  }

  return v3;
}

- (BOOL)enablePortError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:3 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    sub_10002AC5C();
  }

  return v3;
}

- (BOOL)disablePortError:(id *)error
{
  v5 = 0;
  v3 = [(IODConnection *)self->_connection callMethodWithSelector:4 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:&v5 error:0];
  if (!v3)
  {
    sub_10002AD0C();
  }

  return v3;
}

- (BOOL)getCurrentPortInfo:(id *)info error:(id *)error
{
  if (info)
  {
    v6 = [(TSDgPTPPort *)self propertyUpdateQueue:info];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000FD6C;
    v9[3] = &unk_10004C990;
    v9[4] = self;
    v9[5] = info;
    dispatch_sync(v6, v9);
  }

  else if (error)
  {
    *error = [NSError errorWithDomain:@"TSDErrorDomain" code:-536870206 userInfo:0];
  }

  return info != 0;
}

- (void)_handleRefreshConnection
{
  [(TSDgPTPNetworkPort *)self updateProperties];
  _isASCapable = [(TSDgPTPNetworkPort *)self _isASCapable];
  os_unfair_lock_lock(&self->_clientsLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_clients;
  v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          propertyUpdateQueue = [(TSDgPTPPort *)self propertyUpdateQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000FFCC;
          block[3] = &unk_10004C9B8;
          v12 = _isASCapable;
          block[4] = v9;
          block[5] = self;
          dispatch_async(propertyUpdateQueue, block);
        }
      }

      v6 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_clientsLock);
}

- (void)_handleNotification:(int)notification withArg1:(unint64_t)arg1 arg2:(unint64_t)arg2 arg3:(unint64_t)arg3 arg4:(unint64_t)arg4 arg5:(unint64_t)arg5 arg6:(unint64_t)arg6
{
  queue = [(TSDgPTPPort *)self propertyUpdateQueue];
  if (notification <= 4001)
  {
    if (notification == 4000)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = [(TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v10 UTF8String];
      v11 = "%s: notification for MAC lookup timeout\n";
      goto LABEL_18;
    }

    if (notification == 4001 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v10 UTF8String];
      v11 = "%s: notification for sync timeout\n";
      goto LABEL_18;
    }
  }

  else if (notification == 4002)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: notification for AS capable change\n", buf, 0xCu);
    }

    [(TSDgPTPNetworkPort *)self updateProperties];
  }

  else
  {
    if (notification == 4003)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = [(TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v10 UTF8String];
      v11 = "%s: notification for admin enable\n";
      goto LABEL_18;
    }

    if (notification == 4004 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(TSDgPTPNetworkPort *)self description];
      *buf = 136315138;
      uTF8String = [v10 UTF8String];
      v11 = "%s: notification for announce timeout\n";
LABEL_18:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
    }
  }

LABEL_19:
  os_unfair_lock_lock(&self->_clientsLock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = self->_clients;
  v14 = [(NSPointerArray *)v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        if (notification <= 4001)
        {
          if (notification == 4000)
          {
            v23 = *(*(&v32 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v18 didTimeoutOnMACLookupForPort:self];
            }
          }

          else if (notification == 4001)
          {
            v20 = *(*(&v32 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v18 didSyncTimeoutForPort:self];
            }

            if (objc_opt_respondsToSelector())
            {
              [v18 didSyncTimeoutWithMean:arg1 median:arg2 standardDeviation:arg3 minimum:arg4 maximum:arg5 numberOfSamples:arg6 forPort:self];
            }
          }
        }

        else
        {
          switch(notification)
          {
            case 4002:
              v21 = *(*(&v32 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100010518;
                block[3] = &unk_10004C9E0;
                block[5] = self;
                block[6] = arg1;
                block[4] = v18;
                dispatch_async(queue, block);
              }

              break;
            case 4003:
              v22 = *(*(&v32 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v18 didChangeAdministrativeEnable:arg1 != 0 forPort:self];
              }

              break;
            case 4004:
              v19 = *(*(&v32 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v18 didAnnounceTimeoutForPort:self];
              }

              break;
          }
        }
      }

      v15 = [(NSPointerArray *)v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  os_unfair_lock_unlock(&self->_clientsLock);
}

- (BOOL)registerAsyncCallbackError:(id *)error
{
  v4 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v4 allocateRefcon:self];

  connection = [(TSDgPTPNetworkPort *)self connection];
  v6 = [connection registerAsyncNotificationsWithSelector:5 callBack:sub_1000010A8 refcon:self->_asyncCallbackRefcon callbackQueue:qword_100058840];

  if ((v6 & 1) == 0)
  {
    v7 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
    [v7 releaseRefcon:self->_asyncCallbackRefcon];
  }

  return v6;
}

- (BOOL)logNotifyTest
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000106BC;
  block[3] = &unk_10004C6A8;
  block[4] = self;
  if (qword_100058850 != -1)
  {
    dispatch_once(&qword_100058850, block);
  }

  return self->super._logNotifyTest;
}

- (BOOL)deregisterAsyncCallbackError:(id *)error
{
  v4 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v4 releaseRefcon:self->_asyncCallbackRefcon];

  connection = [(TSDgPTPNetworkPort *)self connection];
  v6 = [connection deregisterAsyncNotificationsWithSelector:6];

  if ((v6 & 1) == 0)
  {
    sub_10002ADBC();
  }

  return v6;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientsLock);
  [(NSPointerArray *)self->_clients compact];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * v9) == clientCopy)
        {

          goto LABEL_11;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:clientCopy, v10];
LABEL_11:
  os_unfair_lock_unlock(&self->_clientsLock);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientsLock);
  [(NSPointerArray *)self->_clients compact];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_clients;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v12 + 1) + 8 * v10) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:v11, v12];
          goto LABEL_11;
        }

        ++v11;
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_clientsLock);
}

- (void)serviceTerminated
{
  v13.receiver = self;
  v13.super_class = TSDgPTPNetworkPort;
  [(TSDgPTPPort *)&v13 serviceTerminated];
  os_unfair_lock_lock(&self->_clientsLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_clients;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 didTerminateServiceForPort:{self, v9}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_clientsLock);
}

- (id)propertiesForXPC
{
  v12.receiver = self;
  v12.super_class = TSDgPTPNetworkPort;
  propertiesForXPC = [(TSDgPTPPort *)&v12 propertiesForXPC];
  v3 = [propertiesForXPC objectForKeyedSubscript:@"OverridenReceiveClockIdentity"];

  if (!v3)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:-1];
    [propertiesForXPC setObject:v4 forKeyedSubscript:@"OverridenReceiveClockIdentity"];
  }

  v5 = [propertiesForXPC objectForKeyedSubscript:@"OverridenReceivePortNumber"];

  if (!v5)
  {
    v6 = [NSNumber numberWithUnsignedShort:0xFFFFLL];
    [propertiesForXPC setObject:v6 forKeyedSubscript:@"OverridenReceivePortNumber"];
  }

  v7 = [propertiesForXPC objectForKeyedSubscript:@"MinimumPropagationDelay"];

  if (!v7)
  {
    v8 = [NSNumber numberWithUnsignedInt:0xFFFFFFFFLL];
    [propertiesForXPC setObject:v8 forKeyedSubscript:@"MinimumPropagationDelay"];
  }

  v9 = [propertiesForXPC objectForKeyedSubscript:@"MinimumRawDelay"];

  if (!v9)
  {
    v10 = [NSNumber numberWithUnsignedInt:0xFFFFFFFFLL];
    [propertiesForXPC setObject:v10 forKeyedSubscript:@"MinimumRawDelay"];
  }

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TSDgPTPNetworkPort;
  serviceCopy = service;
  v4 = objc_msgSendSuper2(&v10, "diagnosticInfoForService:", serviceCopy);
  v5 = [serviceCopy parentIteratorInServicePlaneWithError:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010E2C;
  v8[3] = &unk_10004CA08;
  v6 = v4;
  v9 = v6;
  [v5 enumerateWithBlock:v8];

  return v6;
}

@end