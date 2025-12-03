@interface RPConnection
- (BOOL)_clientError:(id)error;
- (BOOL)_pairVerifyVerifySignature:(id)signature data:(id)data flags:(unsigned int)flags error:(id *)error;
- (BOOL)_receivedSystemInfo:(id)info xid:(id)xid;
- (BOOL)_serverPairingAllowed;
- (RPConnection)init;
- (id)_allowedMACAddressesForMCFeature:(id)feature;
- (id)_getCurrentProcessName;
- (id)_identityProofDataClient;
- (id)_identityProofDataServer;
- (id)_pairVerifySignData:(id)data flags:(unsigned int)flags error:(id *)error;
- (id)_systeminfo;
- (id)descriptionWithLevel:(int)level;
- (id)inUseProcessesToString;
- (unint64_t)_eligiblePendingSendCount;
- (void)_abortRequestsWithError:(id)error;
- (void)_abortSendEntry:(id)entry withError:(id)error;
- (void)_clientConnectCompleted:(id)completed;
- (void)_clientConnectStart;
- (void)_clientConnectStartBLE;
- (void)_clientConnectStartBTPipe;
- (void)_clientConnectStartTCP;
- (void)_clientNetworkError:(id)error label:(const char *)label;
- (void)_clientPairSetupCompleted:(id)completed;
- (void)_clientPairSetupStart;
- (void)_clientPairSetupWithData:(id)data;
- (void)_clientPairVerifyCompleted:(id)completed;
- (void)_clientPairVerifyStart;
- (void)_clientPairVerifyWithData:(id)data;
- (void)_clientPreAuthResponseWithData:(id)data;
- (void)_clientPreAuthStart;
- (void)_clientRetryFired;
- (void)_clientRetryStart;
- (void)_clientRun;
- (void)_clientStartSession;
- (void)_clientStarted;
- (void)_configureForSessionPairing:(id)pairing;
- (void)_identityProofsAdd:(id)add update:(BOOL)update;
- (void)_identityProofsAddWithHomeKitUUID:(id)d;
- (void)_identityProofsVerify:(id)verify;
- (void)_identityProofsVerifyHomeKitSignature:(id)signature identifier:(id)identifier;
- (void)_identityProofsVerifyHomeKitSignatureOwner:(id)owner completion:(id)completion;
- (void)_identityProofsVerifyHomeKitSignatureSharedUser:(id)user identifier:(id)identifier completion:(id)completion;
- (void)_idleTimerFired;
- (void)_idleTimerStart:(unsigned int)start repeat:(unsigned int)repeat;
- (void)_invalidate;
- (void)_invalidateCore:(id)core;
- (void)_invalidateWithError:(id)error;
- (void)_invalidated;
- (void)_logConnectionInvalidatedWithError:(id)error;
- (void)_pairSetupInvalidate;
- (void)_pairVerifyInvalidate;
- (void)_processSends;
- (void)_receiveCompletion:(id)completion readFrame:(id *)frame requestable:(id)requestable;
- (void)_receiveStart:(id)start readFrame:(id *)frame requestable:(id)requestable;
- (void)_receivedEvent:(id)event ctx:(id *)ctx;
- (void)_receivedHeader:(id *)header body:(id)body ctx:(id *)ctx;
- (void)_receivedHeader:(id *)header encryptedObjectData:(id)data ctx:(id *)ctx;
- (void)_receivedObject:(id)object ctx:(id *)ctx;
- (void)_receivedRequest:(id)request ctx:(id *)ctx;
- (void)_receivedResponse:(id)response ctx:(id *)ctx;
- (void)_run;
- (void)_sendEncryptedResponse:(id)response options:(id)options error:(id)error xid:(id)xid requestID:(id)d highPriority:(BOOL)priority isChatty:(BOOL)chatty replyStartTime:(id)self0;
- (void)_serverAccept;
- (void)_serverAcceptBLE;
- (void)_serverAcceptBTPipe;
- (void)_serverAcceptTCP;
- (void)_serverError:(id)error;
- (void)_serverNetworkError:(id)error label:(const char *)label;
- (void)_serverPairSetupCompleted:(id)completed;
- (void)_serverPairSetupWithData:(id)data start:(BOOL)start;
- (void)_serverPairVerifyCompleted:(id)completed;
- (void)_serverPairVerifyWithData:(id)data start:(BOOL)start;
- (void)_serverPreAuthRequestWithData:(id)data;
- (void)_serverRun;
- (void)_serverStarted;
- (void)_timeoutForSendEntry:(id)entry;
- (void)_timeoutForXID:(id)d;
- (void)_updateExternalState;
- (void)_updateLinkInfo;
- (void)activate;
- (void)dealloc;
- (void)homeKitIdentityUpdated;
- (void)invalidate;
- (void)invalidateWithError:(id)error;
- (void)processSendsUsingConnection:(id)connection;
- (void)sameAccountIdentityUpdated;
- (void)sendEncryptedEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)sendReachabilityProbe:(const char *)probe;
- (void)setFlowControlReadEnabled:(BOOL)enabled;
- (void)setLabel:(id)label;
- (void)setPresent:(BOOL)present;
- (void)setTrafficFlags:(unsigned int)flags;
- (void)tryPassword:(id)password;
@end

@implementation RPConnection

- (void)sameAccountIdentityUpdated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_pairVerifyCompleted || (self->_controlFlags & 0x200) != 0 || (self->_flags & 1) != 0 || (self->_statusFlags & 0x80000) != 0)
  {
    return;
  }

  v3 = self->_identityDaemon;
  v4 = v3;
  if (v3)
  {
    if (self->_identityKeyData && self->_identitySignature)
    {
      v14 = v3;
      v5 = ([RPIdentityDaemon resolveIdentityTypesForSignature:v3 data:"resolveIdentityTypesForSignature:data:typeFlags:" typeFlags:?]<< 18) & 0x80000;
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| v5];
      self->_statusFlags |= v5;
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_18;
          }

          ucat = self->_ucat;
          statusFlags = self->_statusFlags;
        }

        LogPrintF();
      }

LABEL_18:
      v10 = _Block_copy(self->_peerUpdatedHandler);
      v11 = v10;
      if (v10)
      {
        (*(v10 + 2))(v10);
      }

      goto LABEL_21;
    }

    v7 = self->_ucat->var0;
    if (v7 <= 30)
    {
      v14 = v3;
      if (v7 != -1)
      {
LABEL_14:
        LogPrintF();
LABEL_21:
        v4 = v14;
        goto LABEL_22;
      }

      v8 = _LogCategory_Initialize();
      v4 = v14;
      if (v8)
      {
        v9 = self->_ucat;
        goto LABEL_14;
      }
    }
  }

LABEL_22:
}

- (RPConnection)init
{
  v12.receiver = self;
  v12.super_class = RPConnection;
  v2 = [(RPConnection *)&v12 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_flowControlReadEnabled = 1;
    v4 = objc_alloc_init(RPCompanionLinkDevice);
    peerDeviceInfo = v3->_peerDeviceInfo;
    v3->_peerDeviceInfo = v4;

    [(RPCompanionLinkDevice *)v3->_peerDeviceInfo setDaemon:1];
    *&v3->_pairSetupFlags = 0x40000000000018;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sendArray = v3->_sendArray;
    v3->_sendArray = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    receivedMessages = v3->_receivedMessages;
    v3->_receivedMessages = v8;

    v3->_ucat = &gLogCategory_RPCnx;
    RandomBytes();
    v3->_readFrame.header = 0;
    *&v3->_readFrame.receivingHeader = 0;
    v3->_readFrameBTPipeHighPriority.header = 0;
    *&v3->_readFrameBTPipeHighPriority.receivingHeader = 0;
    v10 = v3;
  }

  return v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = RPConnection;
  [(RPConnection *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v138 = *MEMORY[0x1E69E9840];
  v5 = self->_peerDeviceInfo;
  v6 = shouldPrintSensitiveData();
  v136 = 0;
  self->_label;
  NSAppendPrintF();
  v135 = 0;
  retryCount = _StateToString(self->_internalState);
  NSAppendPrintF();
  v7 = v135;

  linkType = self->_linkType;
  if (linkType)
  {
    v134 = v7;
    if (linkType > 0xB)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_1E7C93DE8[linkType - 1];
    }

    retryCount = v9;
    NSAppendPrintF();
    v10 = v134;

    v7 = v10;
  }

  trafficFlags = self->_trafficFlags;
  if (trafficFlags)
  {
    v133[1] = v7;
    retryCount = trafficFlags;
    v127 = &unk_1B6F2DBC8;
    NSAppendPrintF();
    v12 = v7;

    v7 = v12;
  }

  if (self->_pairVerifyCompleted)
  {
    if (self->_pairVerifyUsedIdentity)
    {
      v133[0] = v7;
      v13 = v133;
    }

    else
    {
      v132 = v7;
      v13 = &v132;
    }
  }

  else
  {
    if (!self->_mainStream)
    {
      goto LABEL_15;
    }

    v131 = v7;
    v13 = &v131;
  }

  NSAppendPrintF();
  v14 = *v13;

  v7 = v14;
LABEL_15:
  passwordType = self->_passwordType;
  if (passwordType)
  {
    if (passwordType > 0xB)
    {
      v16 = "?";
    }

    else
    {
      v16 = off_1E7C93E40[passwordType - 1];
    }

    retryCount = v16;
    NSAppendPrintF();
    v17 = v7;

    v7 = v17;
  }

  pairVerifyAuthType = self->_pairVerifyAuthType;
  if (pairVerifyAuthType)
  {
    if (pairVerifyAuthType > 0xA)
    {
      v19 = "?";
    }

    else
    {
      v19 = off_1E7C93E98[pairVerifyAuthType - 1];
    }

    retryCount = v19;
    NSAppendPrintF();
    v20 = v7;

    v7 = v20;
  }

  if (self->_retryCount > 0)
  {
    retryCount = self->_retryCount;
    NSAppendPrintF();
    v21 = v7;

    v7 = v21;
  }

  v22 = self->_stepError;
  v23 = v22;
  if (v22)
  {
    retryCount = v22;
    NSAppendPrintF();
    v24 = v7;

    v7 = v24;
  }

  inUseProcessesToString = [(RPConnection *)self inUseProcessesToString];
  v26 = inUseProcessesToString;
  if (inUseProcessesToString)
  {
    controlFlags = inUseProcessesToString;
    NSAppendPrintF();
    v27 = v7;

    v7 = v27;
  }

  if (v6)
  {
    peerIdentifier = self->_peerIdentifier;
    if (peerIdentifier)
    {
      v29 = 0;
      publicIdentifier = self->_peerIdentifier;
    }

    else
    {
      identifier = [(RPEndpoint *)v5 identifier];
      v26 = identifier;
      if (identifier)
      {
        v29 = 0;
        publicIdentifier = identifier;
      }

      else
      {
        publicIdentifier = [(RPCompanionLinkDevice *)v5 publicIdentifier];
        v29 = 1;
      }
    }

    NSAppendPrintF();
    v32 = v7;

    if (v29)
    {
    }

    if (!peerIdentifier)
    {
    }

    v33 = [(RPEndpoint *)v5 idsDeviceIdentifier:publicIdentifier];
    v34 = v33;
    if (v33)
    {
      v128 = v33;
      NSAppendPrintF();
      v35 = v32;

      v32 = v35;
    }

    name = [(RPEndpoint *)v5 name];
    NSAppendPrintF();
    v36 = v32;

    model = [(RPEndpoint *)v5 model];
    NSAppendPrintF();
    v37 = v36;

    accountID = [(RPEndpoint *)v5 accountID];
    NSAppendPrintF();
    v7 = v37;

    v38 = self->_appID;
    v39 = v38;
    if (v38)
    {
      accountID = v38;
      NSAppendPrintF();
      v40 = v7;

      v7 = v40;
    }

    idsPersonalDeviceIdentifier = [(RPCompanionLinkDevice *)v5 idsPersonalDeviceIdentifier];
    v42 = idsPersonalDeviceIdentifier;
    if (idsPersonalDeviceIdentifier)
    {
      v120 = idsPersonalDeviceIdentifier;
      NSAppendPrintF();
      v43 = v7;

      v7 = v43;
    }

    homeKitIdentifier = [(RPCompanionLinkDevice *)v5 homeKitIdentifier];
    v45 = homeKitIdentifier;
    if (homeKitIdentifier)
    {
      v120 = homeKitIdentifier;
      NSAppendPrintF();
      v46 = v7;

      v7 = v46;
    }

    mediaRemoteIdentifier = [(RPEndpoint *)v5 mediaRemoteIdentifier];
    v48 = mediaRemoteIdentifier;
    if (mediaRemoteIdentifier)
    {
      v120 = mediaRemoteIdentifier;
      NSAppendPrintF();
      v49 = v7;

      v7 = v49;
    }

    mediaRouteIdentifier = [(RPEndpoint *)v5 mediaRouteIdentifier];
    v51 = mediaRouteIdentifier;
    if (mediaRouteIdentifier)
    {
      v120 = mediaRouteIdentifier;
      NSAppendPrintF();
      v52 = v7;

      v7 = v52;
    }

    mediaSystemIdentifier = [(RPCompanionLinkDevice *)v5 mediaSystemIdentifier];
    v54 = mediaSystemIdentifier;
    if (mediaSystemIdentifier)
    {
      v120 = mediaSystemIdentifier;
      NSAppendPrintF();
      v55 = v7;

      v7 = v55;
    }

    mediaSystemName = [(RPCompanionLinkDevice *)v5 mediaSystemName];
    v57 = mediaSystemName;
    if (mediaSystemName)
    {
      v120 = mediaSystemName;
      NSAppendPrintF();
      v58 = v7;

      v7 = v58;
    }

    mediaSystemRole = [(RPCompanionLinkDevice *)v5 mediaSystemRole];
    if (mediaSystemRole)
    {
      if (mediaSystemRole > 3)
      {
        v60 = "?";
      }

      else
      {
        v60 = off_1E7C93EE8[mediaSystemRole - 1];
      }

      v120 = v60;
      NSAppendPrintF();
      v61 = v7;

      v7 = v61;
    }

    v62 = [(RPCompanionLinkDevice *)v5 mediaSystemState:v120];
    if (v62)
    {
      if (v62 > 4)
      {
        v63 = "?";
      }

      else
      {
        v63 = off_1E7C93F00[v62 - 1];
      }

      v121 = v63;
      NSAppendPrintF();
      v64 = v7;

      v7 = v64;
    }

    personalDeviceState = [(RPCompanionLinkDevice *)v5 personalDeviceState];
    if (personalDeviceState)
    {
      if (personalDeviceState >= 8)
      {
        v66 = "-";
        if (personalDeviceState > 9)
        {
          v66 = "U";
        }
      }

      else
      {
        v66 = off_1E7C93F20[personalDeviceState - 1];
      }

      v122 = v66;
      NSAppendPrintF();
      v67 = v7;

      v7 = v67;
    }

    v68 = self->_peerHomeKitUserIdentifier;
    v69 = v68;
    if (v68)
    {
      v122 = v68;
      NSAppendPrintF();
      v70 = v7;

      v7 = v70;
    }

    publicIdentifier2 = [(RPCompanionLinkDevice *)v5 publicIdentifier];
    v72 = publicIdentifier2;
    if (publicIdentifier2)
    {
      v122 = publicIdentifier2;
      NSAppendPrintF();
      v73 = v7;

      v7 = v73;
    }

    personalRequestsState = [(RPCompanionLinkDevice *)v5 personalRequestsState];
    if (personalRequestsState)
    {
      if (personalRequestsState >= 8)
      {
        v75 = "-";
        if (personalRequestsState > 9)
        {
          v75 = "U";
        }
      }

      else
      {
        v75 = off_1E7C93F20[personalRequestsState - 1];
      }

      v122 = v75;
      NSAppendPrintF();
      v76 = v7;

      v7 = v76;
    }

    roomName = [(RPCompanionLinkDevice *)v5 roomName];
    v78 = roomName;
    if (roomName)
    {
      controlFlags = roomName;
      NSAppendPrintF();
      v79 = v7;

      v7 = v79;
    }

    verifiedIdentity = [(RPEndpoint *)v5 verifiedIdentity];
    v81 = verifiedIdentity;
    if (verifiedIdentity)
    {
      controlFlags = verifiedIdentity;
      NSAppendPrintF();
      v82 = v7;

      v7 = v82;
    }
  }

  if (level <= 20)
  {
    if (self->_controlFlags)
    {
      controlFlags = self->_controlFlags;
      v127 = &unk_1B6F2DC4E;
      NSAppendPrintF();
      v83 = v7;

      v7 = v83;
    }

    v84 = [(RPCompanionLinkDevice *)v5 deviceColor:controlFlags];
    v85 = v84;
    if (v84)
    {
      v123 = v84;
      NSAppendPrintF();
      v86 = v7;

      v7 = v86;
    }

    deviceCapabilityFlags = [(RPCompanionLinkDevice *)v5 deviceCapabilityFlags];
    if (deviceCapabilityFlags)
    {
      v123 = deviceCapabilityFlags;
      v129 = &unk_1B6F2DED3;
      NSAppendPrintF();
      v88 = v7;

      v7 = v88;
    }

    v89 = [(RPEndpoint *)v5 serviceTypes:v123];
    v90 = v89;
    if (v89)
    {
      v124 = v89;
      NSAppendPrintF();
      v91 = v7;

      v7 = v91;
    }

    siriInfo = [(RPCompanionLinkDevice *)v5 siriInfo];
    v93 = siriInfo;
    if (siriInfo)
    {
      v124 = [siriInfo count];
      NSAppendPrintF();
      v94 = v7;

      v7 = v94;
    }

    sourceVersion = [(RPEndpoint *)v5 sourceVersion];
    v96 = sourceVersion;
    if (sourceVersion)
    {
      v124 = sourceVersion;
      NSAppendPrintF();
      v97 = v7;

      v7 = v97;
    }

    flags = self->_flags;
    if (flags)
    {
      v124 = RPCompanionLinkFlagsToShortString(flags, v137);
      NSAppendPrintF();
      v99 = v7;

      v7 = v99;
    }

    flags = [(RPCompanionLinkDevice *)v5 flags];
    if (flags)
    {
      v125 = RPCompanionLinkFlagsToShortString(flags, v137);
      NSAppendPrintF();
      v101 = v7;

      v7 = v101;
    }

    statusFlags = [(RPEndpoint *)v5 statusFlags];
    if (statusFlags)
    {
      v126 = statusFlags;
      v130 = &unk_1B6F2DEF3;
      NSAppendPrintF();
      v103 = v7;

      v7 = v103;
    }

    v104 = [(RPEndpoint *)v5 verifiedAcl:v126];
    if (v104)
    {
      NSAppendPrintF();
      v105 = v7;

      v7 = v105;
    }

    v106 = self->_btPipe;
    if (v106)
    {
      NSAppendPrintF();
      v107 = v7;

      v7 = v107;
    }

    v108 = self->_bleConnection;
    if (v108)
    {
      NSAppendPrintF();
      v109 = v7;

      v7 = v109;
    }

    v110 = self->_tcpConnection;
    if (v110)
    {
      NSAppendPrintF();
      v111 = v7;

      v7 = v111;
    }
  }

  v112 = v7;

  v113 = *MEMORY[0x1E69E9840];

  return v112;
}

- (id)_getCurrentProcessName
{
  appID = self->_appID;
  if (appID)
  {
    processName2 = appID;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];

    if (processName)
    {
      processInfo2 = [MEMORY[0x1E696AE30] processInfo];
      processName2 = [processInfo2 processName];
    }

    else
    {
      processName2 = @"Unknown";
    }
  }

  return processName2;
}

- (void)setFlowControlReadEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_flowControlReadEnabled == enabledCopy)
  {
    return;
  }

  self->_flowControlReadEnabled = enabledCopy;
  var0 = self->_ucat->var0;
  if (var0 <= 9)
  {
    if (var0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  if (enabledCopy)
  {
    if (!self->_readFrame.readRequested)
    {
      [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
    }

    if (self->_btPipeHighPriority && !self->_readFrameBTPipeHighPriority.readRequested)
    {

      [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrameBTPipeHighPriority requestable:?];
    }
  }
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  [labelCopy UTF8String];

  LogCategoryReplaceF();
}

- (void)setPresent:(BOOL)present
{
  presentCopy = present;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_present == presentCopy)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      present = self->_present;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->_present = presentCopy;
  if (presentCopy)
  {
    probeTimer = self->_probeTimer;
    if (probeTimer)
    {
      v7 = probeTimer;
      dispatch_source_cancel(v7);
      v8 = self->_probeTimer;
      self->_probeTimer = 0;
    }

    [(RPConnection *)self sendReachabilityProbe:"became present"];
    return;
  }

  if (self->_tcpConnection)
  {
    v9 = self->_probeTimer;
    if (v9)
    {
      v10 = v9;
      dispatch_source_cancel(v10);
      v11 = self->_probeTimer;
      self->_probeTimer = 0;
    }

    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v13 = self->_probeTimer;
    self->_probeTimer = v12;

    v14 = self->_probeTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__RPConnection_setPresent___block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    v15 = self->_probeTimer;
    CUDispatchTimerSet();
    dispatch_resume(self->_probeTimer);
    return;
  }

  v16 = self->_ucat->var0;
  if (v16 <= 30)
  {
    if (v16 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v19 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_21:
  v20 = RPErrorF();
  [(RPConnection *)self _invalidateWithError:v20];
}

uint64_t __27__RPConnection_setPresent___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = 0;
  }

  v6 = *(a1 + 32);

  return [v6 sendReachabilityProbe:"not present"];
}

- (void)setTrafficFlags:(unsigned int)flags
{
  if (self->_trafficFlags != flags)
  {
    self->_trafficFlags = flags;
    if (self->_activateCalled)
    {
      v8 = v3;
      v9 = v4;
      dispatchQueue = self->_dispatchQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __32__RPConnection_setTrafficFlags___block_invoke;
      v6[3] = &unk_1E7C934D8;
      v6[4] = self;
      flagsCopy = flags;
      dispatch_async(dispatchQueue, v6);
    }
  }
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_activateCalled = 1;
  [(RPConnection *)self _updateLinkInfo];
  if (self->_bonjourPeerDevice)
  {
    self->_clientMode = 1;
    [(RPCompanionLinkDevice *)self->_peerDeviceInfo updateWithBonjourDevice:?];
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 4];
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_4:
        controlFlags = self->_controlFlags;
        linkType = self->_linkType;
        if (linkType <= 0xB)
        {
          v6 = off_1E7C94188[linkType];
        }

        bonjourPeerDevice = self->_bonjourPeerDevice;
LABEL_25:
        LogPrintF();
        goto LABEL_26;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }

    goto LABEL_26;
  }

  if (self->_destinationString)
  {
    self->_clientMode = 1;
    v7 = self->_ucat->var0;
    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        v18 = self->_ucat;
        destinationString = self->_destinationString;
      }

      v8 = self->_controlFlags;
      v9 = self->_linkType;
      if (v9 <= 0xB)
      {
        v10 = off_1E7C94188[v9];
      }

      goto LABEL_25;
    }

LABEL_26:
    identifierOverride = self->_identifierOverride;
    v21 = identifierOverride;
    v50 = v21;
    if (v21)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIdentifier:v21];
      objc_storeStrong(&self->_peerIdentifier, identifierOverride);
    }

    else if (self->_peerIdentifier)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIdentifier:?];
    }

    self->_activatedTicks = mach_absolute_time();
    _getCurrentProcessName = [(RPConnection *)self _getCurrentProcessName];
    initiator = self->_initiator;
    self->_initiator = _getCurrentProcessName;

    [(RPConnection *)self _run];

    return;
  }

  if (self->_blePeerIdentifier)
  {
    self->_clientMode = 1;
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 2];
    v11 = self->_ucat->var0;
    if (v11 <= 30)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        v26 = self->_ucat;
      }

      v12 = self->_controlFlags;
      v13 = self->_linkType;
      if (v13 <= 0xB)
      {
        v14 = off_1E7C94188[v13];
      }

      blePeerIdentifier = self->_blePeerIdentifier;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (self->_bleConnection)
  {
    self->_clientMode = 0;
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 2];
    objc_storeStrong(&self->_requestable, self->_bleConnection);
    v16 = self->_ucat->var0;
    if (v16 <= 30)
    {
      if (v16 == -1)
      {
        v33 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        v34 = self->_ucat;
      }

      v17 = self->_controlFlags;
      bleConnection = self->_bleConnection;
      RPDataLinkTypeToString(self->_linkType);
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (self->_btPipe)
  {
    self->_clientMode = GestaltGetDeviceClass() == 6;
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x41];
    objc_storeStrong(&self->_requestable, self->_btPipe);
    v24 = self->_ucat->var0;
    if (v24 > 30)
    {
      goto LABEL_26;
    }

    if (v24 == -1)
    {
      v36 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_26;
      }

      v37 = self->_ucat;
    }

    self->_clientMode;
    v25 = self->_controlFlags;
    btPipe = self->_btPipe;
    RPDataLinkTypeToString(self->_linkType);
    goto LABEL_25;
  }

  if (self->_tcpConnection)
  {
    self->_clientMode = 0;
    v27 = self->_linkType;
    peerDeviceInfo = self->_peerDeviceInfo;
    statusFlags = [(RPEndpoint *)peerDeviceInfo statusFlags];
    v30 = 4;
    if (v27 == 4)
    {
      v30 = 8;
    }

    [(RPEndpoint *)peerDeviceInfo setStatusFlags:statusFlags | v30];
    objc_storeStrong(&self->_requestable, self->_tcpConnection);
    v31 = self->_ucat->var0;
    if (v31 > 30)
    {
      goto LABEL_56;
    }

    if (v31 == -1)
    {
      v38 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
LABEL_56:
        v39 = [(RPEndpoint *)self->_peerDeviceInfo ipAddress:v42];
        if (v39)
        {
        }

        else if (self->_peerAddrString)
        {
          [(RPEndpoint *)self->_peerDeviceInfo setIpAddress:?];
        }

        goto LABEL_26;
      }

      v40 = self->_ucat;
    }

    v32 = self->_controlFlags;
    tcpConnection = self->_tcpConnection;
    v48 = RPDataLinkTypeToString(self->_linkType);
    v42 = v32;
    v43 = &unk_1B6F2DC4E;
    LogPrintF();
    goto LABEL_56;
  }

  v35 = self->_ucat->var0;
  if (v35 > 90)
  {
    return;
  }

  if (v35 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      return;
    }

    v41 = self->_ucat;
  }

  LogPrintF();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__RPConnection_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__RPConnection_invalidateWithError___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_invalidateWithError:(id)error
{
  errorCopy = error;
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    var0 = self->_ucat->var0;
    v9 = errorCopy;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        v6 = _LogCategory_Initialize();
        errorCopy = v9;
        if (!v6)
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      v8 = errorCopy;
      LogPrintF();
    }

LABEL_6:
    [(RPConnection *)self _invalidateCore:v9, v8];
    [(RPConnection *)self _invalidated];
    errorCopy = v9;
  }
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v9 = v2;
  self->_invalidateCalled = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_6:
  [(RPConnection *)self _invalidateCore:0, v3, v9, v4];

  [(RPConnection *)self _invalidated];
}

- (void)_invalidateCore:(id)core
{
  v60 = *MEMORY[0x1E69E9840];
  coreCopy = core;
  bleConnectTimer = self->_bleConnectTimer;
  if (bleConnectTimer)
  {
    v6 = bleConnectTimer;
    dispatch_source_cancel(v6);
    v7 = self->_bleConnectTimer;
    self->_bleConnectTimer = 0;
  }

  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    v9 = idleTimer;
    dispatch_source_cancel(v9);
    v10 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  probeTimer = self->_probeTimer;
  if (probeTimer)
  {
    v12 = probeTimer;
    dispatch_source_cancel(v12);
    v13 = self->_probeTimer;
    self->_probeTimer = 0;
  }

  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v15 = retryTimer;
    dispatch_source_cancel(v15);
    v16 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  startTimer = self->_startTimer;
  if (startTimer)
  {
    v18 = startTimer;
    dispatch_source_cancel(v18);
    v19 = self->_startTimer;
    self->_startTimer = 0;
  }

  [(CUBLEConnection *)self->_bleConnection invalidate];
  [(CUTCPConnection *)self->_tcpConnection invalidate];
  v20 = _Block_copy(self->_readErrorHandler);
  if (v20)
  {
    if (coreCopy)
    {
      RPNestedErrorF();
    }

    else
    {
      NSErrorWithOSStatusF();
    }
    v21 = ;
    v20[2](v20, v21);
  }

  if (self->_showPasswordCalled)
  {
    self->_showPasswordCalled = 0;
    v22 = _Block_copy(self->_hidePasswordHandler);
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0);
    }
  }

  stepError = coreCopy;
  v49 = coreCopy;
  if (coreCopy || (stepError = self->_stepError) != 0)
  {
    v25 = stepError;
  }

  else
  {
    v25 = RPErrorF();
  }

  v26 = v25;
  [(RPConnection *)self _abortRequestsWithError:v25];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v27 = self->_sendArray;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v55;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(RPConnection *)self _abortSendEntry:*(*(&v54 + 1) + 8 * i) withError:v26];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v29);
  }

  [(NSMutableArray *)self->_sendArray removeAllObjects];
  sendArray = self->_sendArray;
  self->_sendArray = 0;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v33 = self->_receivedMessages;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v51;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v50 + 1) + 8 * j);
        var0 = self->_ucat->var0;
        if (var0 <= 60)
        {
          if (var0 != -1)
          {
            goto LABEL_37;
          }

          ucat = self->_ucat;
          if (_LogCategory_Initialize())
          {
            v43 = self->_ucat;
LABEL_37:
            requestID = [v38 requestID];
            v41 = requestID;
            if (requestID)
            {
              eventID = requestID;
              v48 = v26;
              LogPrintF();
            }

            else
            {
              eventID = [v38 eventID];
              v48 = v26;
              LogPrintF();
            }
          }
        }

        responseHandler = [v38 responseHandler];
        [v38 setResponseHandler:0];
        if (responseHandler)
        {
          (responseHandler)[2](responseHandler, 0, 0, v26);
        }
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v35);
  }

  [(NSMutableArray *)self->_receivedMessages removeAllObjects];
  receivedMessages = self->_receivedMessages;
  self->_receivedMessages = 0;

  [(RPConnection *)self _logConnectionInvalidatedWithError:v49];
  v46 = *MEMORY[0x1E69E9840];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone || self->_bleConnection || self->_tcpConnection)
  {
    return;
  }

  [(RPConnection *)self _pairSetupInvalidate];
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_10:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(RPConnection *)self _pairVerifyInvalidate];
  authCompletionHandler = self->_authCompletionHandler;
  self->_authCompletionHandler = 0;

  configurePairingHandler = self->_configurePairingHandler;
  self->_configurePairingHandler = 0;

  flowControlWriteChangedHandler = self->_flowControlWriteChangedHandler;
  self->_flowControlWriteChangedHandler = 0;

  homeKitUserIdentifierHandler = self->_homeKitUserIdentifierHandler;
  self->_homeKitUserIdentifierHandler = 0;

  [(NSMutableSet *)self->_inUseProcesses removeAllObjects];
  inUseProcesses = self->_inUseProcesses;
  self->_inUseProcesses = 0;

  v13 = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  pairVerifyCompletion = self->_pairVerifyCompletion;
  self->_pairVerifyCompletion = 0;

  showPasswordHandler = self->_showPasswordHandler;
  self->_showPasswordHandler = 0;

  hidePasswordHandler = self->_hidePasswordHandler;
  self->_hidePasswordHandler = 0;

  v17 = self->_homeKitUserIdentifierHandler;
  self->_homeKitUserIdentifierHandler = 0;

  promptForPasswordHandler = self->_promptForPasswordHandler;
  self->_promptForPasswordHandler = 0;

  [(NSMutableArray *)self->_proxyDevices removeAllObjects];
  proxyDevices = self->_proxyDevices;
  self->_proxyDevices = 0;

  proxyDeviceUpdateHandler = self->_proxyDeviceUpdateHandler;
  self->_proxyDeviceUpdateHandler = 0;

  peerUpdatedHandler = self->_peerUpdatedHandler;
  self->_peerUpdatedHandler = 0;

  readErrorHandler = self->_readErrorHandler;
  self->_readErrorHandler = 0;

  receivedEventHandler = self->_receivedEventHandler;
  self->_receivedEventHandler = 0;

  receivedRequestHandler = self->_receivedRequestHandler;
  self->_receivedRequestHandler = 0;

  sessionStartHandler = self->_sessionStartHandler;
  self->_sessionStartHandler = 0;

  stateChangedHandler = self->_stateChangedHandler;
  self->_stateChangedHandler = 0;

  self->_invalidateDone = 1;
}

- (void)homeKitIdentityUpdated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_pairVerifyCompleted || (self->_controlFlags & 0x200) != 0 || (self->_flags & 1) != 0)
  {
    return;
  }

  if ((self->_statusFlags & 0x80000) == 0)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(RPConnection *)self _identityProofsAdd:v12 update:1];
    if (![(NSString *)v12 count])
    {
LABEL_19:
      peerHomeKitUserIdentifier = self->_homeKitIdentityIdentifier;
      if (peerHomeKitUserIdentifier)
      {
        homeKitIdentitySignature = self->_homeKitIdentitySignature;
        if (homeKitIdentitySignature)
        {
          [(RPConnection *)self _identityProofsVerifyHomeKitSignature:homeKitIdentitySignature identifier:peerHomeKitUserIdentifier];
        }
      }

      goto LABEL_22;
    }

    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_18:
    [(RPConnection *)self sendEncryptedEventID:@"_systemInfoUpdate" event:v12 options:0 completion:0];
    goto LABEL_19;
  }

  homeKitIdentity = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
  identifier = [homeKitIdentity identifier];

  peerHomeKitUserIdentifier = self->_peerHomeKitUserIdentifier;
  v7 = identifier;
  v12 = v7;
  if (peerHomeKitUserIdentifier == v7)
  {
  }

  else
  {
    if ((v7 == 0) != (peerHomeKitUserIdentifier != 0))
    {
      v8 = [(NSString *)peerHomeKitUserIdentifier isEqual:v7];

      if (v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v9 = v12;
    peerHomeKitUserIdentifier = self->_peerHomeKitUserIdentifier;
    v12 = v9;
    self->_peerHomeKitUserIdentifier = v9;
  }

LABEL_22:

LABEL_23:
}

- (void)_logConnectionInvalidatedWithError:(id)error
{
  errorCopy = error;
  mach_absolute_time();
  activatedTicks = self->_activatedTicks;
  v6 = UpTicksToSeconds();
  mediaSystemIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];
  mediaSystemIdentifier2 = [(RPCompanionLinkDevice *)self->_peerDeviceInfo mediaSystemIdentifier];
  v9 = mediaSystemIdentifier;
  v10 = mediaSystemIdentifier2;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_6;
  }

  if ((v9 != 0) == (v10 == 0))
  {
    v12 = 0;
    model2 = v10;
    model = v9;
    goto LABEL_9;
  }

  v12 = [v9 isEqual:v10];

  if (v12)
  {
LABEL_6:
    model = [(RPEndpoint *)self->_localDeviceInfo model];
    if (GestaltProductTypeStringToDeviceClass() != 7)
    {
      v12 = 0;
      goto LABEL_11;
    }

    model2 = [(RPEndpoint *)self->_peerDeviceInfo model];
    v12 = GestaltProductTypeStringToDeviceClass() == 7;
LABEL_9:

LABEL_11:
  }

  model3 = [(RPEndpoint *)self->_localDeviceInfo model];
  v16 = GestaltProductTypeStringToDeviceClass();
  v22 = RPDeviceClassToString(v16);

  model4 = [(RPEndpoint *)self->_peerDeviceInfo model];
  v18 = GestaltProductTypeStringToDeviceClass();
  v19 = RPDeviceClassToString(v18);

  v20 = +[RPConnectionMetrics sharedMetrics];
  LODWORD(v21) = self->_linkType;
  [v20 logConnectionWithDeviceModelFrom:v22 deviceModelTo:v19 error:errorCopy initiator:self->_initiator isOnDemand:(self->_controlFlags >> 9) & 1 isStereoPair:v12 lifetime:v6 linkType:v21];
}

- (void)_pairSetupInvalidate
{
  mainStream = self->_mainStream;
  self->_mainStream = 0;

  highPriorityStream = self->_highPriorityStream;
  self->_highPriorityStream = 0;

  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairSetupSession invalidate];
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = 0;
}

- (void)_pairVerifyInvalidate
{
  identityKeyData = self->_identityKeyData;
  if (identityKeyData)
  {
    bytes = [(NSData *)identityKeyData bytes];
    v5 = [(NSData *)self->_identityKeyData length];
    if (bytes)
    {
      memset_s(bytes, v5, 0, v5);
    }
  }

  identitySignature = self->_identitySignature;
  if (identitySignature)
  {
    bytes2 = [(NSData *)identitySignature bytes];
    v8 = [(NSData *)self->_identitySignature length];
    if (bytes2)
    {
      memset_s(bytes2, v8, 0, v8);
    }
  }

  homeKitIdentitySignature = self->_homeKitIdentitySignature;
  if (homeKitIdentitySignature)
  {
    bytes3 = [(NSData *)homeKitIdentitySignature bytes];
    v11 = [(NSData *)self->_homeKitIdentitySignature length];
    if (bytes3)
    {
      memset_s(bytes3, v11, 0, v11);
    }
  }

  v12 = self->_identityKeyData;
  self->_identityKeyData = 0;

  v13 = self->_identitySignature;
  self->_identitySignature = 0;

  homeKitIdentityIdentifier = self->_homeKitIdentityIdentifier;
  self->_homeKitIdentityIdentifier = 0;

  v15 = self->_homeKitIdentitySignature;
  self->_homeKitIdentitySignature = 0;

  identityVerified = self->_identityVerified;
  self->_identityVerified = 0;

  mainStream = self->_mainStream;
  self->_mainStream = 0;

  highPriorityStream = self->_highPriorityStream;
  self->_highPriorityStream = 0;

  self->_pairVerifyIdentityType = 0;
  [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:0];
  [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:0];
  [(CUPairingSession *)self->_pairVerifySession invalidate];
  pairVerifySession = self->_pairVerifySession;
  self->_pairVerifySession = 0;
}

- (id)_pairVerifySignData:(id)data flags:(unsigned int)flags error:(id *)error
{
  dataCopy = data;
  v8 = self->_forcedSelfIdentity;
  peerAppFlags = [(CUPairingSession *)self->_pairVerifySession peerAppFlags];
  if ((self->_controlFlags & 0x40) != 0 || (peerAppFlags & 1) != 0 || v8)
  {
    if (!self->_clientMode)
    {
      [(CUPairingSession *)self->_pairVerifySession setSelfAppFlags:[(CUPairingSession *)self->_pairVerifySession selfAppFlags]| 1];
    }

    if (v8)
    {
      goto LABEL_10;
    }

    copyIdentityHandler = [(CUPairingSession *)self->_pairVerifySession copyIdentityHandler];

    if (copyIdentityHandler)
    {
      copyIdentityHandler2 = [(CUPairingSession *)self->_pairVerifySession copyIdentityHandler];
      v17 = copyIdentityHandler2[2](copyIdentityHandler2, 2, 0);

      if (v17)
      {
        v8 = objc_alloc_init(RPIdentity);
        altIRK = [v17 altIRK];
        [(RPIdentity *)v8 setDeviceIRKData:altIRK];

        publicKey = [v17 publicKey];
        [(RPIdentity *)v8 setEdPKData:publicKey];

        secretKey = [v17 secretKey];
        [(RPIdentity *)v8 setEdSKData:secretKey];

        rp_sepPrivateKey = [v17 rp_sepPrivateKey];
        if (rp_sepPrivateKey)
        {
          [(RPIdentity *)v8 updateWithSEPPrivateKey:rp_sepPrivateKey];
        }

        if (v8)
        {
LABEL_10:
          v11 = 0;
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    identityDaemon = self->_identityDaemon;
    v37 = 0;
    v8 = [(RPIdentityDaemon *)identityDaemon identityOfSelfAndReturnError:&v37];
    v11 = v37;
    if (v8)
    {
LABEL_11:
      v12 = v11;
      v36 = v11;
      v13 = [(RPIdentity *)v8 signData:dataCopy error:&v36];
      v11 = v36;

      if (v13)
      {
        self->_pairVerifyUsedIdentity = 1;
        var0 = self->_ucat->var0;
        if (var0 <= 30)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_25;
            }

            ucat = self->_ucat;
          }

          controlFlags = self->_controlFlags;
          LogPrintF();
        }

LABEL_25:
        v23 = v13;
LABEL_34:

LABEL_35:
        goto LABEL_40;
      }

      v22 = self->_ucat->var0;
      if (v22 <= 90)
      {
        if (v22 != -1)
        {
LABEL_23:
          LogPrintF();
          goto LABEL_32;
        }

        if (_LogCategory_Initialize())
        {
          v31 = self->_ucat;
          goto LABEL_23;
        }
      }

LABEL_32:
      if (error)
      {
        v26 = v11;
        *error = v11;
      }

      goto LABEL_34;
    }

    v25 = self->_ucat->var0;
    if (v25 <= 90)
    {
      if (v25 != -1)
      {
LABEL_30:
        LogPrintF();
        goto LABEL_44;
      }

      if (_LogCategory_Initialize())
      {
        v34 = self->_ucat;
        goto LABEL_30;
      }
    }

LABEL_44:
    if (error)
    {
      v29 = v11;
      v8 = 0;
      v13 = 0;
      *error = v11;
    }

    else
    {
      v8 = 0;
      v13 = 0;
    }

    goto LABEL_35;
  }

  v10 = self->_ucat->var0;
  if (v10 <= 30)
  {
    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_37;
      }

      v32 = self->_ucat;
      v33 = self->_controlFlags;
    }

    LogPrintF();
  }

LABEL_37:
  if (error)
  {
    v27 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-6714 userInfo:0];
    *error = v27;
  }

  v13 = 0;
LABEL_40:

  return v13;
}

- (BOOL)_pairVerifyVerifySignature:(id)signature data:(id)data flags:(unsigned int)flags error:(id *)error
{
  signatureCopy = signature;
  dataCopy = data;
  v12 = self->_forcedPeerIdentity;
  peerAppFlags = [(CUPairingSession *)self->_pairVerifySession peerAppFlags];
  controlFlags = self->_controlFlags;
  if ((controlFlags & 0x40) != 0 || (peerAppFlags & 1) != 0 || v12)
  {
    self->_pairVerifyUsedIdentity = 1;
    if (v12)
    {
      v16 = 0;
      goto LABEL_16;
    }

    v17 = controlFlags & 0x400000000000;
    if (self->_pairVerifyAuthType != 8 && v17 == 0)
    {
      v19 = 19498;
    }

    else
    {
      v19 = 19458;
    }

    identityDaemon = self->_identityDaemon;
    v35 = 0;
    v12 = [(RPIdentityDaemon *)identityDaemon resolveIdentityForSignature:signatureCopy data:dataCopy typeFlags:v19 error:&v35];
    v16 = v35;
    if (v12)
    {
LABEL_16:
      objc_storeStrong(&self->_identityKeyData, data);
      objc_storeStrong(&self->_identitySignature, signature);
      objc_storeStrong(&self->_identityVerified, v12);
      identifier = [(RPIdentity *)v12 identifier];
      [(RPEndpoint *)self->_peerDeviceInfo setVerifiedIdentity:identifier];

      type = [(RPIdentity *)v12 type];
      self->_pairVerifyIdentityType = type;
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 != -1)
        {
LABEL_18:
          if (type <= 0x10)
          {
            v24 = off_1E7C94048[type];
          }

          v34 = self->_controlFlags;
          LogPrintF();
          goto LABEL_26;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
          goto LABEL_18;
        }
      }

LABEL_26:
      v27 = 1;
LABEL_27:

      goto LABEL_32;
    }

    v26 = self->_ucat->var0;
    if (v26 <= 90)
    {
      if (v26 != -1)
      {
LABEL_24:
        LogPrintF();
        goto LABEL_34;
      }

      if (_LogCategory_Initialize())
      {
        v33 = self->_ucat;
        goto LABEL_24;
      }
    }

LABEL_34:
    if (error)
    {
      v30 = v16;
      v27 = 0;
      v12 = 0;
      *error = v16;
    }

    else
    {
      v27 = 0;
      v12 = 0;
    }

    goto LABEL_27;
  }

  v15 = self->_ucat->var0;
  if (v15 <= 30)
  {
    if (v15 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v31 = self->_ucat;
      v32 = self->_controlFlags;
    }

    LogPrintF();
  }

LABEL_29:
  if (error)
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-6714 userInfo:0];
    *error = v28;
  }

  v27 = 0;
LABEL_32:

  return v27;
}

- (void)_run
{
  if (self->_clientMode)
  {
    [(RPConnection *)self _clientRun];
  }

  else
  {
    [(RPConnection *)self _serverRun];
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_clientMode)
  {
    pairSetupSession = self->_pairSetupSession;
    if (pairSetupSession)
    {
      [(CUPairingSession *)pairSetupSession tryPIN:passwordCopy];
      goto LABEL_13;
    }

    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 != -1)
      {
LABEL_9:
        LogPrintF();
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = self->_ucat->var0;
    if (v5 > 90)
    {
      goto LABEL_13;
    }

    if (v5 != -1)
    {
      goto LABEL_9;
    }

    if (_LogCategory_Initialize())
    {
      v7 = self->_ucat;
      goto LABEL_9;
    }
  }

LABEL_13:
}

- (void)_updateExternalState
{
  internalState = self->_internalState;
  v4 = internalState == 21 || internalState == 28;
  state = self->_state;
  if (state == v4)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_10:
      LogPrintF();
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      v11 = self->_state;
      goto LABEL_10;
    }
  }

LABEL_12:
  self->_state = v4;
  stateChangedHandler = self->_stateChangedHandler;
  if (stateChangedHandler)
  {
    v9 = *(stateChangedHandler + 2);

    v9();
  }
}

- (void)_updateLinkInfo
{
  v20 = *MEMORY[0x1E69E9840];
  tcpConnection = self->_tcpConnection;
  if (tcpConnection)
  {
    [(CUTCPConnection *)tcpConnection peerAddr];
    SockAddrToString();
    peerAddrString = self->_peerAddrString;
    self->_peerAddrString = 0;

    v7 = self->_tcpConnection;
    if (v7)
    {
      [(CUTCPConnection *)v7 selfAddr];
    }

    SockAddrToString();
    selfAddrString = self->_selfAddrString;
    self->_selfAddrString = 0;
  }

  else
  {
    v4 = self->_peerAddrString;
    self->_peerAddrString = 0;

    selfAddrString = self->_selfAddrString;
    self->_selfAddrString = 0;
  }

  v8 = self->_tcpConnection;
  if (v8)
  {
    netTransportType = [(CUTCPConnection *)v8 netTransportType];
    if ((netTransportType & 2) != 0)
    {
      v10 = 6;
    }

    else
    {
      v10 = 3;
    }

    if ((netTransportType & 8) != 0)
    {
      v11 = 8;
    }

    else
    {
      v11 = v10;
    }

    if (netTransportType < 0)
    {
      v12 = 5;
    }

    else
    {
      v12 = v11;
    }

    if (netTransportType)
    {
      v13 = 7;
    }

    else
    {
      v13 = v12;
    }

    if ((netTransportType & 0x10) != 0)
    {
      v14 = 9;
    }

    else
    {
      v14 = v13;
    }

    if ((netTransportType & 4) != 0)
    {
      v15 = 4;
    }

    else
    {
      v15 = v14;
    }
  }

  else if (self->_blePeerIdentifier || self->_bleConnection)
  {
    v15 = 1;
  }

  else if (self->_btPipe)
  {
    v15 = 2;
  }

  else
  {
    bonjourPeerDevice = self->_bonjourPeerDevice;
    if (bonjourPeerDevice)
    {
      deviceInfo = [(CUBonjourDevice *)bonjourPeerDevice deviceInfo];
      Int64Ranged = CFDictionaryGetInt64Ranged();

      if ((Int64Ranged & 4) != 0)
      {
        v15 = 4;
      }

      else if ((Int64Ranged & 0x10) != 0)
      {
        v15 = 9;
      }

      else if (Int64Ranged)
      {
        v15 = 7;
      }

      else if (Int64Ranged < 0)
      {
        v15 = 5;
      }

      else if ((Int64Ranged & 8) != 0)
      {
        v15 = 8;
      }

      else if ((Int64Ranged & 2) != 0)
      {
        v15 = 6;
      }

      else
      {
        v15 = 3;
      }
    }

    else if (self->_destinationString)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v15 != self->_linkType)
  {
    self->_linkType = v15;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_clientRun
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      internalState = self->_internalState;
      switch(internalState)
      {
        case 0u:
          goto LABEL_24;
        case 0xAu:
          self->_internalState = 11;
          [(RPConnection *)self _clientConnectStart];
          goto LABEL_63;
        case 0xBu:
          if (self->_stepError)
          {
            goto LABEL_27;
          }

          if (!self->_stepDone)
          {
            goto LABEL_63;
          }

          if (self->_preAuthEnabled)
          {
            v4 = 12;
            goto LABEL_62;
          }

LABEL_41:
          if (!self->_pskData)
          {
            goto LABEL_61;
          }

          v4 = 18;
          goto LABEL_62;
        case 0xCu:
          self->_internalState = 13;
          [(RPConnection *)self _clientPreAuthStart];
          goto LABEL_63;
        case 0xDu:
          if (self->_stepError)
          {
            goto LABEL_27;
          }

          if (self->_stepDone)
          {
            goto LABEL_41;
          }

          goto LABEL_63;
        case 0xEu:
          self->_internalState = 15;
          [(RPConnection *)self _clientPairSetupStart];
          goto LABEL_63;
        case 0xFu:
          if (!self->_stepError)
          {
            goto LABEL_36;
          }

          goto LABEL_27;
        case 0x10u:
          self->_internalState = 17;
          [(RPConnection *)self _clientPairVerifyStart];
          goto LABEL_63;
        case 0x11u:
          stepError = self->_stepError;
          if (stepError)
          {
            self->_pairVerifyFailed = 1;
            if (self->_pairVerifySession)
            {
              var0 = self->_ucat->var0;
              if (var0 <= 60)
              {
                if (var0 != -1)
                {
                  goto LABEL_35;
                }

                if (_LogCategory_Initialize())
                {
                  ucat = self->_ucat;
                  stepError = self->_stepError;
LABEL_35:
                  v24 = stepError;
                  LogPrintF();
                }
              }

              v12 = _Block_copy(self->_pairVerifyCompletion);
              v13 = v12;
              if (v12)
              {
                (*(v12 + 2))(v12, self->_stepError);
              }
            }

            controlFlags = self->_controlFlags;
            if (controlFlags & 0x400) != 0 || (controlFlags & 0x8000000000) != 0 || (self->_flags)
            {
              v16 = self->_ucat->var0;
              if (v16 <= 30)
              {
                if (v16 != -1)
                {
                  goto LABEL_57;
                }

                if (_LogCategory_Initialize())
                {
                  v21 = self->_ucat;
LABEL_57:
                  LogPrintF();
                }
              }

              v4 = 14;
              goto LABEL_62;
            }

            if ((self->_controlFlags & 0x240) != 0x200 || !self->_pairVerifyUsedIdentity)
            {
LABEL_27:
              self->_internalState = 22;
              goto LABEL_63;
            }

            v15 = self->_ucat->var0;
            if (v15 <= 30)
            {
              if (v15 != -1)
              {
                goto LABEL_54;
              }

              if (_LogCategory_Initialize())
              {
                v23 = self->_ucat;
LABEL_54:
                LogPrintF();
              }
            }

LABEL_61:
            v4 = 16;
            goto LABEL_62;
          }

LABEL_36:
          if (!self->_stepDone)
          {
            goto LABEL_63;
          }

          v4 = 19;
LABEL_62:
          self->_internalState = v4;
LABEL_63:
          v17 = self->_internalState;
          if (v17 == internalState)
          {
            return;
          }

          v18 = self->_ucat->var0;
          if (v18 <= 30)
          {
            if (v18 != -1)
            {
              goto LABEL_66;
            }

            v19 = self->_ucat;
            if (_LogCategory_Initialize())
            {
              v20 = self->_ucat;
              v17 = self->_internalState;
LABEL_66:
              v24 = _StateToString(internalState);
              v25 = _StateToString(v17);
              LogPrintF();
            }
          }

          [(RPConnection *)self _updateExternalState:v24];
          break;
        case 0x12u:
          [(RPConnection *)self _pskPrepare:1];
          startTimer = self->_startTimer;
          if (startTimer)
          {
            v6 = startTimer;
            dispatch_source_cancel(v6);
            v7 = self->_startTimer;
            self->_startTimer = 0;
          }

          v4 = 21;
          goto LABEL_62;
        case 0x13u:
          self->_internalState = 20;
          [(RPConnection *)self _clientStartSession];
          goto LABEL_63;
        case 0x14u:
          if (self->_stepError)
          {
            goto LABEL_27;
          }

          if (!self->_stepDone)
          {
            goto LABEL_63;
          }

          [(RPConnection *)self _clientStarted];
          v4 = self->_internalState + 1;
          goto LABEL_62;
        case 0x15u:
          if (self->_stepError)
          {
            goto LABEL_27;
          }

          [(RPConnection *)self _processSends];
          goto LABEL_63;
        case 0x16u:
          if (self->_stepError)
          {
            if (![(RPConnection *)self _clientError:?])
            {
              goto LABEL_63;
            }
          }

          else
          {
            v10 = RPErrorF();
            v11 = [(RPConnection *)self _clientError:v10];

            if (!v11)
            {
              goto LABEL_63;
            }
          }

          v4 = 23;
          goto LABEL_62;
        case 0x17u:
          self->_internalState = 24;
          ++self->_retryCount;
          [(RPConnection *)self _clientRetryStart];
          goto LABEL_63;
        case 0x18u:
          if (self->_retryFired)
          {
            self->_retryFired = 0;
LABEL_24:
            self->_internalState = 10;
          }

          goto LABEL_63;
        default:
          goto LABEL_63;
      }
    }
  }
}

- (void)_clientConnectStart
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_blePeerIdentifier)
  {

    [(RPConnection *)self _clientConnectStartBLE];
  }

  else if (self->_btPipe)
  {

    [(RPConnection *)self _clientConnectStartBTPipe];
  }

  else
  {

    [(RPConnection *)self _clientConnectStartTCP];
  }
}

- (void)_clientConnectStartBLE
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  [(CUBLEConnection *)self->_bleConnection invalidate];
  v4 = objc_alloc_init(MEMORY[0x1E6999458]);
  bleConnection = self->_bleConnection;
  self->_bleConnection = v4;

  [(CUBLEConnection *)v4 setClientBundleID:self->_clientBundleID];
  [(CUBLEConnection *)v4 setClientUseCase:self->_bleClientUseCase];
  if (self->_bleConnectionPSM)
  {
    bleConnectionPSM = self->_bleConnectionPSM;
  }

  else
  {
    bleConnectionPSM = 129;
  }

  [(CUBLEConnection *)v4 setDestinationPSM:bleConnectionPSM];
  [(CUBLEConnection *)v4 setDestinationUUID:self->_blePeerIdentifier];
  [(CUBLEConnection *)v4 setDispatchQueue:self->_dispatchQueue];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"RPCnx";
  }

  [(CUBLEConnection *)v4 setLabel:label];
  if (self->_clientBundleID)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_10:
        clientBundleID = [(CUBLEConnection *)v4 clientBundleID];
        [MEMORY[0x1E696AD98] numberWithInteger:{-[CUBLEConnection clientUseCase](v4, "clientUseCase")}];
        v20 = v19 = clientBundleID;
        LogPrintF();

        goto LABEL_12;
      }

      ucat = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v18 = self->_ucat;
        goto LABEL_10;
      }
    }
  }

LABEL_12:
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __38__RPConnection__clientConnectStartBLE__block_invoke;
  v24[3] = &unk_1E7C92D10;
  v24[4] = v4;
  v24[5] = self;
  [(CUBLEConnection *)v4 setErrorHandler:v24, v19, v20];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __38__RPConnection__clientConnectStartBLE__block_invoke_2;
  v23[3] = &unk_1E7C92D80;
  v23[4] = v4;
  v23[5] = self;
  [(CUBLEConnection *)v4 setInvalidationHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __38__RPConnection__clientConnectStartBLE__block_invoke_3;
  v22[3] = &unk_1E7C92D10;
  v22[4] = v4;
  v22[5] = self;
  [(CUBLEConnection *)v4 activateWithCompletion:v22];
  bleConnectTimer = self->_bleConnectTimer;
  if (bleConnectTimer)
  {
    v12 = bleConnectTimer;
    dispatch_source_cancel(v12);
    v13 = self->_bleConnectTimer;
    self->_bleConnectTimer = 0;
  }

  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v15 = self->_bleConnectTimer;
  self->_bleConnectTimer = v14;

  v16 = self->_bleConnectTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __38__RPConnection__clientConnectStartBLE__block_invoke_4;
  handler[3] = &unk_1E7C92CE8;
  handler[4] = self;
  dispatch_source_set_event_handler(v16, handler);
  v17 = self->_bleConnectTimer;
  CUDispatchTimerSet();
  dispatch_resume(self->_bleConnectTimer);
}

void *__38__RPConnection__clientConnectStartBLE__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[59])
  {
    return [result _clientNetworkError:a2 label:"BLE cnx error"];
  }

  return result;
}

uint64_t __38__RPConnection__clientConnectStartBLE__block_invoke_2(uint64_t result)
{
  v2 = *(result + 40);
  if (*(result + 32) != *(v2 + 472))
  {
    return result;
  }

  v3 = result;
  v4 = **(v2 + 296);
  if (v4 <= 30)
  {
    if (v4 != -1)
    {
LABEL_4:
      LogPrintF();
      v2 = *(v3 + 40);
      goto LABEL_6;
    }

    v5 = _LogCategory_Initialize();
    v2 = *(v3 + 40);
    if (v5)
    {
      v9 = *(v2 + 296);
      goto LABEL_4;
    }
  }

LABEL_6:
  v6 = *(v2 + 472);
  *(v2 + 472) = 0;

  v7 = *(v3 + 40);
  v8 = *(v7 + 256);
  *(v7 + 256) = 0;

  result = *(v3 + 40);
  if (*(result + 80) == 1)
  {

    return [result _invalidated];
  }

  return result;
}

void __38__RPConnection__clientConnectStartBLE__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 472);
  if (*(a1 + 32) == v4)
  {
    objc_storeStrong((v3 + 256), v4);
    v6 = a2;
    [*(a1 + 40) _clientConnectCompleted:v6];
  }
}

void __38__RPConnection__clientConnectStartBLE__block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }

  v6 = *(a1 + 32);
  v7 = RPErrorF();
  [v6 _clientConnectCompleted:v7];
}

- (void)_clientConnectStartBTPipe
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__RPConnection__clientConnectStartBTPipe__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_clientConnectStartTCP
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  [(CUTCPConnection *)self->_tcpConnection invalidate];
  v4 = objc_alloc_init(MEMORY[0x1E6999548]);
  tcpConnection = self->_tcpConnection;
  self->_tcpConnection = v4;

  [(CUTCPConnection *)v4 setConnectTimeoutSecs:30.0];
  [(CUTCPConnection *)v4 setDataTimeoutSecs:20.0];
  [(CUTCPConnection *)v4 setDestinationBonjour:self->_bonjourPeerDevice];
  [(CUTCPConnection *)v4 setDestinationString:self->_destinationString];
  [(CUTCPConnection *)v4 setDispatchQueue:self->_dispatchQueue];
  keepAliveSeconds = self->_keepAliveSeconds;
  if (keepAliveSeconds)
  {
    v7 = keepAliveSeconds;
  }

  else
  {
    v7 = 150;
  }

  [(CUTCPConnection *)v4 setKeepAliveIdleSeconds:v7];
  [(CUTCPConnection *)v4 setKeepAliveIntervalSeconds:10];
  [(CUTCPConnection *)v4 setKeepAliveMaxCount:3];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"RPCnx";
  }

  [(CUTCPConnection *)v4 setLabel:label];
  [(CUTCPConnection *)v4 setTrafficFlags:self->_trafficFlags];
  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    v10 = 57;
  }

  else
  {
    v10 = 41;
  }

  [(CUTCPConnection *)v4 setFlags:v10 | (controlFlags >> 12) & 0x80];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__RPConnection__clientConnectStartTCP__block_invoke;
  v14[3] = &unk_1E7C92D10;
  v14[4] = v4;
  v14[5] = self;
  [(CUTCPConnection *)v4 setErrorHandler:v14];
  if (self->_flowControlWriteChangedHandler)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__RPConnection__clientConnectStartTCP__block_invoke_2;
    v13[3] = &unk_1E7C92D80;
    v13[4] = v4;
    v13[5] = self;
    [(CUTCPConnection *)v4 setFlowControlChangedHandler:v13];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__RPConnection__clientConnectStartTCP__block_invoke_3;
  v12[3] = &unk_1E7C92D80;
  v12[4] = v4;
  v12[5] = self;
  [(CUTCPConnection *)v4 setInvalidationHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__RPConnection__clientConnectStartTCP__block_invoke_4;
  v11[3] = &unk_1E7C92D10;
  v11[4] = v4;
  v11[5] = self;
  [(CUTCPConnection *)v4 activateWithCompletion:v11];
}

void *__38__RPConnection__clientConnectStartTCP__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[96])
  {
    return [result _clientNetworkError:a2 label:"TCP cnx error"];
  }

  return result;
}

void __38__RPConnection__clientConnectStartTCP__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == *(v2 + 768))
  {
    v3 = _Block_copy(*(v2 + 560));
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

uint64_t __38__RPConnection__clientConnectStartTCP__block_invoke_3(uint64_t result)
{
  v2 = *(result + 40);
  if (*(result + 32) != *(v2 + 768))
  {
    return result;
  }

  v3 = result;
  v4 = **(v2 + 296);
  if (v4 <= 30)
  {
    if (v4 != -1)
    {
LABEL_4:
      LogPrintF();
      v2 = *(v3 + 40);
      goto LABEL_6;
    }

    v5 = _LogCategory_Initialize();
    v2 = *(v3 + 40);
    if (v5)
    {
      v9 = *(v2 + 296);
      goto LABEL_4;
    }
  }

LABEL_6:
  v6 = *(v2 + 768);
  *(v2 + 768) = 0;

  v7 = *(v3 + 40);
  v8 = *(v7 + 256);
  *(v7 + 256) = 0;

  result = *(v3 + 40);
  if (*(result + 80) == 1)
  {

    return [result _invalidated];
  }

  return result;
}

void __38__RPConnection__clientConnectStartTCP__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 768);
  if (*(a1 + 32) == v4)
  {
    objc_storeStrong((v3 + 256), v4);
    v6 = a2;
    [*(a1 + 40) _clientConnectCompleted:v6];
  }
}

- (void)_clientConnectCompleted:(id)completed
{
  completedCopy = completed;
  bleConnectTimer = self->_bleConnectTimer;
  if (bleConnectTimer)
  {
    v6 = bleConnectTimer;
    dispatch_source_cancel(v6);
    v7 = self->_bleConnectTimer;
    self->_bleConnectTimer = 0;
  }

  if (!completedCopy)
  {
    [(RPConnection *)self _updateLinkInfo];
    if (self->_linkType == 4)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]& 0xFFFFFFFFFFEFFFE0];
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 8];
    }

    ipAddress = [(RPEndpoint *)self->_peerDeviceInfo ipAddress];
    if (ipAddress)
    {
    }

    else if (self->_peerAddrString)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIpAddress:?];
    }

    startTimer = self->_startTimer;
    if (startTimer)
    {
      v11 = startTimer;
      dispatch_source_cancel(v11);
      v12 = self->_startTimer;
      self->_startTimer = 0;
    }

    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v14 = self->_startTimer;
    self->_startTimer = v13;

    v15 = self->_startTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__RPConnection__clientConnectCompleted___block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v15, handler);
    v16 = self->_startTimer;
    CUDispatchTimerSet();
    dispatch_resume(self->_startTimer);
    if (self->_readFrame.readRequested)
    {
LABEL_24:
      if (!self->_btPipeHighPriority || self->_readFrameBTPipeHighPriority.readRequested)
      {
        goto LABEL_31;
      }

      var0 = self->_ucat->var0;
      if (var0 <= 40)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_30;
          }

          ucat = self->_ucat;
        }

        LogPrintF();
      }

LABEL_30:
      [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrameBTPipeHighPriority requestable:self->_btPipeHighPriority];
LABEL_31:
      self->_stepDone = 1;
      goto LABEL_32;
    }

    v17 = self->_ucat->var0;
    if (v17 <= 40)
    {
      if (v17 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        v22 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_23:
    [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
    goto LABEL_24;
  }

  v8 = self->_ucat->var0;
  if (v8 > 60)
  {
    goto LABEL_20;
  }

  if (v8 != -1)
  {
    goto LABEL_6;
  }

  if (_LogCategory_Initialize())
  {
    v21 = self->_ucat;
LABEL_6:
    v24 = completedCopy;
    LogPrintF();
  }

LABEL_20:
  if (!self->_stepError)
  {
    v18 = RPNestedErrorF();
    stepError = self->_stepError;
    self->_stepError = v18;
  }

LABEL_32:
  [(RPConnection *)self _run];
}

uint64_t __40__RPConnection__clientConnectCompleted___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = 0;
  }

  v6 = *(a1 + 32);
  if (!v6[18])
  {
    v7 = RPErrorF();
    v8 = *(a1 + 32);
    v9 = *(v8 + 144);
    *(v8 + 144) = v7;

    v6 = *(a1 + 32);
  }

  return [v6 _run];
}

- (BOOL)_clientError:(id)error
{
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 60)
  {
    if (var0 != -1)
    {
LABEL_3:
      v30 = errorCopy;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  bleConnectTimer = self->_bleConnectTimer;
  if (bleConnectTimer)
  {
    v7 = bleConnectTimer;
    dispatch_source_cancel(v7);
    v8 = self->_bleConnectTimer;
    self->_bleConnectTimer = 0;
  }

  startTimer = self->_startTimer;
  if (startTimer)
  {
    v10 = startTimer;
    dispatch_source_cancel(v10);
    v11 = self->_startTimer;
    self->_startTimer = 0;
  }

  if (errorCopy)
  {
    [(RPConnection *)self _abortRequestsWithError:errorCopy];
  }

  else
  {
    v12 = RPErrorF();
    [(RPConnection *)self _abortRequestsWithError:v12];
  }

  [(CUBLEConnection *)self->_bleConnection invalidate];
  [(CUTCPConnection *)self->_tcpConnection invalidate];
  if (self->_btPipe)
  {
    [(RPConnection *)self _invalidateCore:errorCopy];
  }

  code = [errorCopy code];
  if (code == -6776)
  {
    v14 = self->_ucat->var0;
    if (v14 <= 30)
    {
      if (v14 != -1)
      {
        goto LABEL_35;
      }

      if (_LogCategory_Initialize())
      {
        v21 = self->_ucat;
LABEL_35:
        LogPrintF();
      }
    }

LABEL_48:
    [(RPConnection *)self _invalidateWithError:errorCopy];
    v23 = 0;
    goto LABEL_49;
  }

  if ((self->_controlFlags & 0x200) != 0)
  {
    v19 = self->_ucat->var0;
    if (v19 <= 30)
    {
      if (v19 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_48;
        }

        v22 = self->_ucat;
      }

      goto LABEL_35;
    }

    goto LABEL_48;
  }

  bonjourPeerDevice = self->_bonjourPeerDevice;
  if (bonjourPeerDevice)
  {
    retryCount = self->_retryCount;
    if (retryCount >= 10)
    {
      v17 = code;
      v18 = self->_ucat->var0;
      if (v18 > 30)
      {
        goto LABEL_43;
      }

      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_43:
          if (v17 == -6754 && ([(RPIdentity *)self->_identityResolved type]== 8 || [(RPIdentity *)self->_identityResolved type]== 9))
          {
            v25 = mach_absolute_time();
            [(RPIdentity *)self->_identityResolved setDisabledUntilTicks:SecondsToUpTicks() + v25];
          }

          [(CUBonjourDevice *)self->_bonjourPeerDevice reconfirm:v31];
          goto LABEL_48;
        }

        v29 = self->_ucat;
        retryCount = self->_retryCount;
        bonjourPeerDevice = self->_bonjourPeerDevice;
      }

      v31 = retryCount;
      v32 = bonjourPeerDevice;
      LogPrintF();
      goto LABEL_43;
    }
  }

  v20 = self->_ucat->var0;
  if (!self->_present)
  {
    if (v20 <= 30)
    {
      if (v20 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_48;
        }

        v24 = self->_ucat;
      }

      goto LABEL_35;
    }

    goto LABEL_48;
  }

  if (v20 <= 30)
  {
    if (v20 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_39;
      }

      v28 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_39:
  v23 = 1;
LABEL_49:

  return v23;
}

- (void)_clientNetworkError:(id)error label:(const char *)label
{
  errorCopy = error;
  if ([errorCopy code] == -6758)
  {
    [(RPConnection *)self sendReachabilityProbe:"client no ack"];
  }

  else
  {
    if (!self->_stepError)
    {
      labelCopy = label;
      v6 = RPNestedErrorF();
      stepError = self->_stepError;
      self->_stepError = v6;
    }

    [(RPConnection *)self _run];
  }
}

- (void)_clientPreAuthStart
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setObject:@"715.2" forKeyedSubscript:@"_sv"];
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    v5 = v8;
    if (var0 != -1)
    {
LABEL_3:
      v7 = v5;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      v5 = v8;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(RPConnection *)self _sendFrameType:10 unencryptedObject:v8, v7];
}

- (void)_clientPreAuthResponseWithData:(id)data
{
  v4 = OPACKDecodeData();
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      var0 = self->_ucat->var0;
      if (self->_internalState == 13)
      {
        if (var0 <= 30)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_21;
            }

            ucat = self->_ucat;
          }

          LogPrintF();
        }

LABEL_21:
        stepError = self->_stepError;
        self->_stepError = 0;

        self->_stepDone = 1;
        [(RPConnection *)self _run];
        goto LABEL_22;
      }

      if (var0 <= 60)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_22;
          }

          v11 = self->_ucat;
        }

LABEL_12:
        LogPrintF();
      }
    }

    else
    {
      v7 = self->_ucat->var0;
      if (v7 <= 90)
      {
        if (v7 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_22;
          }

          v9 = self->_ucat;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = self->_ucat->var0;
    if (v6 <= 90)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v8 = self->_ucat;
      }

      goto LABEL_12;
    }
  }

LABEL_22:
}

- (void)_clientPairSetupStart
{
  v31 = *MEMORY[0x1E69E9840];
  [(RPConnection *)self _pairSetupInvalidate];
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v4 = objc_alloc_init(MEMORY[0x1E69994F8]);
  pairSetupSession = self->_pairSetupSession;
  self->_pairSetupSession = v4;

  [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->_dispatchQueue];
  [(CUPairingSession *)self->_pairSetupSession setFlags:self->_pairSetupFlags];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"RPCnx";
  }

  [(CUPairingSession *)self->_pairSetupSession setLabel:label];
  [(CUPairingSession *)self->_pairSetupSession setSessionType:1];
  if ([(NSArray *)self->_allowedMACAddresses count])
  {
    [(CUPairingSession *)self->_pairSetupSession setAllowedMACAddresses:self->_allowedMACAddresses];
  }

  if ((self->_controlFlags & 0x1000000000) != 0)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_11:
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:&unk_1F2EEC698 forKeyedSubscript:@"RPIdentityFeatureFlags"];
    [(CUPairingSession *)self->_pairSetupSession setAdditionalPeerInfo:v8];
  }

  if ([(NSString *)self->_password length])
  {
    password = self->_password;
    v10 = self->_pairSetupSession;
LABEL_14:
    [(CUPairingSession *)v10 setFixedPIN:password];
    goto LABEL_16;
  }

  if (!self->_passwordType)
  {
    v10 = self->_pairSetupSession;
    password = @"public";
    goto LABEL_14;
  }

LABEL_16:
  if (self->_passwordType)
  {
    [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFFFFFEFLL];
  }

  v11 = self->_pairSetupACL;
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v11;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      v17 = MEMORY[0x1E695E118];
      do
      {
        v18 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 setObject:v17 forKeyedSubscript:*(*(&v26 + 1) + 8 * v18++)];
        }

        while (v15 != v18);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    [(CUPairingSession *)self->_pairSetupSession setAcl:v12];
  }

  v19 = _Block_copy(self->_promptForPasswordHandler);
  v20 = v19;
  if (v19)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __37__RPConnection__clientPairSetupStart__block_invoke;
    v25[3] = &unk_1E7C93A80;
    v25[4] = self;
    v25[5] = v19;
    [(CUPairingSession *)self->_pairSetupSession setPromptForPINHandler:v25];
  }

  if (self->_pairSetupAuthType == 8)
  {
    if ((self->_controlFlags & 0x800000000000) != 0)
    {
      [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFBFFFE3];
    }

    [(RPConnection *)self _configureForSessionPairing:self->_pairSetupSession];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __37__RPConnection__clientPairSetupStart__block_invoke_2;
  v24[3] = &unk_1E7C93AA8;
  v24[4] = self;
  [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __37__RPConnection__clientPairSetupStart__block_invoke_3;
  v23[3] = &unk_1E7C92D58;
  v23[4] = self;
  [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v23];
  [(CUPairingSession *)self->_pairSetupSession activate];
  v21 = *MEMORY[0x1E69E9840];
}

void __37__RPConnection__clientPairSetupStart__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v11 = objc_alloc_init(v5);
  [v11 setObject:v6 forKeyedSubscript:@"_pd"];

  v7 = *(a1 + 32);
  if (v7[50] == 8)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:8];
    [v11 setObject:v8 forKeyedSubscript:@"_auTy"];

    v7 = *(a1 + 32);
  }

  if (v7[86])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v11 setObject:v9 forKeyedSubscript:@"_pwTy"];

    v7 = *(a1 + 32);
  }

  if (a2)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  [v7 _sendFrameType:v10 unencryptedObject:v11];
}

- (void)_clientPairSetupWithData:(id)data
{
  dataCopy = data;
  v16 = 0;
  if (!self->_pairSetupSession)
  {
    v11 = RPErrorF();
    v7 = 0;
    goto LABEL_19;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      v15 = [dataCopy length];
      LogPrintF();
      goto LABEL_6;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v13 = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  v7 = OPACKDecodeData();
  if (!v7)
  {
    [RPConnection _clientPairSetupWithData:?];
    v10 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RPConnection *)v7 _clientPairSetupWithData:?];
LABEL_17:
    v11 = v17;
    goto LABEL_19;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v16 = Int64Ranged;
  if (Int64Ranged)
  {
    [(RPConnection *)v7 _clientPairSetupWithData:&v17];
    goto LABEL_17;
  }

  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (!v9)
  {
    v11 = RPErrorF();
LABEL_19:
    if (!v11)
    {
LABEL_25:
      v10 = 0;
      goto LABEL_12;
    }

    v12 = self->_ucat->var0;
    if (v12 <= 60)
    {
      if (v12 != -1)
      {
LABEL_22:
        LogPrintF();
        [(RPConnection *)self _clientPairSetupCompleted:v11, v11];
        goto LABEL_25;
      }

      if (_LogCategory_Initialize())
      {
        v14 = self->_ucat;
        goto LABEL_22;
      }
    }

    [(RPConnection *)self _clientPairSetupCompleted:v11, v15];
    goto LABEL_25;
  }

  v10 = v9;
  [(CUPairingSession *)self->_pairSetupSession receivedData:v9];
LABEL_11:
  v11 = 0;
LABEL_12:
}

- (void)_clientPairSetupCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy)
  {
    v13 = completedCopy;
    goto LABEL_14;
  }

  pairSetupSession = self->_pairSetupSession;
  v24 = 0;
  v7 = [(CUPairingSession *)pairSetupSession openStreamWithName:@"main" error:&v24];
  v8 = v24;
  mainStream = self->_mainStream;
  self->_mainStream = v7;

  v10 = self->_mainStream;
  if (v10)
  {
    self->_mainAuthTagLength = [(CUPairingStream *)v10 authTagLength];
    if (self->_btPipeHighPriority)
    {
      v11 = self->_pairSetupSession;
      v23 = v8;
      v12 = [(CUPairingSession *)v11 openStreamWithName:@"hipri" error:&v23];
      v13 = v23;

      highPriorityStream = self->_highPriorityStream;
      self->_highPriorityStream = v12;

      v15 = self->_highPriorityStream;
      if (!v15)
      {
        goto LABEL_13;
      }

      self->_highPriorityAuthTagLength = [(CUPairingStream *)v15 authTagLength];
    }

    else
    {
      v13 = v8;
    }

    self->_statusFlags &= 0xFFFFFFAFFFF51FFFLL;
    if (([(CUPairingSession *)self->_pairSetupSession flags]& 0x10) != 0)
    {
      v16 = self->_flags | 1;
    }

    else
    {
      self->_statusFlags |= 0x8000uLL;
      v16 = self->_flags & 0xFFFFFFFE;
    }

    self->_flags = v16;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      [(RPConnection *)ucat->var0 _clientPairSetupCompleted:&self->_ucat];
    }

    self->_stepDone = 1;
LABEL_13:
    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v13 = v8;
  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_14:
  var0 = self->_ucat->var0;
  if (var0 <= 60)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v21 = self->_ucat;
    }

    v22 = v13;
    LogPrintF();
  }

LABEL_18:
  if (!self->_stepError)
  {
    objc_storeStrong(&self->_stepError, v13);
  }

  [(RPConnection *)self _pairSetupInvalidate];
LABEL_21:
  v19 = _Block_copy(self->_authCompletionHandler);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v13);
  }

  [(RPConnection *)self _run];
}

- (void)_clientPairVerifyStart
{
  v37[1] = *MEMORY[0x1E69E9840];
  [(RPConnection *)self _pairVerifyInvalidate];
  self->_pairVerifyCompleted = 0;
  self->_pairVerifyUsedIdentity = 0;
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v4 = objc_alloc_init(MEMORY[0x1E69994F8]);
  pairVerifySession = self->_pairVerifySession;
  self->_pairVerifySession = v4;

  [(CUPairingSession *)self->_pairVerifySession setDispatchQueue:self->_dispatchQueue];
  [(CUPairingSession *)self->_pairVerifySession setFlags:self->_pairVerifyFlags];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = @"RPCnx";
  }

  [(CUPairingSession *)self->_pairVerifySession setLabel:label];
  [(CUPairingSession *)self->_pairVerifySession setSessionType:3];
  controlFlags = self->_controlFlags;
  if ((controlFlags & 0x20000000) != 0)
  {
    v36 = @"_cf";
    0x20000000 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:controlFlags & 0x20000000];
    v37[0] = 0x20000000;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [(CUPairingSession *)self->_pairVerifySession setAppInfoSelf:v9];

    controlFlags = self->_controlFlags;
  }

  self->_pairVerifyAuthType = 0;
  passwordType = self->_passwordType;
  preferredIdentityType = self->_preferredIdentityType;
  if (preferredIdentityType == 2)
  {
    if ((controlFlags & 0xC00000000000) != 0)
    {
LABEL_8:
      self->_pairVerifyAuthType = 8;
      self->_pairSetupAuthType = 8;
      [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFE3];
LABEL_9:
      [(CUPairingSession *)self->_pairVerifySession setSelfAppFlags:1];
      goto LABEL_32;
    }
  }

  else
  {
    if ((controlFlags & 0x8000000) != 0)
    {
      pairVerifyAuthType = 2;
      self->_pairVerifyAuthType = 2;
LABEL_37:
      GestaltGetDeviceClass();
      goto LABEL_41;
    }

    switch(preferredIdentityType)
    {
      case 13:
        goto LABEL_8;
      case 9:
        self->_pairVerifyAuthType = 3;
        [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
        v14 = self->_pairVerifySession;
        v15 = [(CUPairingSession *)v14 flags]| 0x4000000;
        goto LABEL_31;
      case 8:
        goto LABEL_29;
    }

    if ((controlFlags & 0xC00000000000) != 0)
    {
      goto LABEL_8;
    }

    if (preferredIdentityType == 15 && self->_configurePairingHandler)
    {
      self->_pairVerifyAuthType = 9;
      [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
      [(CUPairingSession *)self->_pairVerifySession setSelfAppFlags:1];
      v12 = self->_pairVerifySession;
      (*(self->_configurePairingHandler + 2))();
      goto LABEL_32;
    }
  }

  if (((controlFlags & 0x400) != 0 || (self->_flags & 1) != 0 || (controlFlags & 0x8000000000) != 0) && passwordType)
  {
    if (passwordType == 4)
    {
      self->_pairVerifyAuthType = 7;
      [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
      v14 = self->_pairVerifySession;
      v15 = [(CUPairingSession *)v14 flags]| 0x1000;
LABEL_31:
      [(CUPairingSession *)v14 setFlags:v15];
      goto LABEL_32;
    }

    if ((passwordType - 1) > 1)
    {
      goto LABEL_32;
    }

LABEL_29:
    self->_pairVerifyAuthType = 4;
    [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
    v14 = self->_pairVerifySession;
    v15 = [(CUPairingSession *)v14 flags]| 0xC;
    goto LABEL_31;
  }

  if ((controlFlags & 0x40) != 0 || !self->_pairVerifyFailed)
  {
    goto LABEL_9;
  }

LABEL_32:
  pairVerifyAuthType = self->_pairVerifyAuthType;
  if (pairVerifyAuthType != 8)
  {
    goto LABEL_37;
  }

  [(RPConnection *)self _configureForSessionPairing:self->_pairVerifySession];
  if (GestaltGetDeviceClass() == 4)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_40;
        }

        ucat = self->_ucat;
      }

      v23 = "SessionPaired";
      v25 = "RPIdentity";
      LogPrintF();
    }

LABEL_40:
    pairVerifyAuthType = 1;
    goto LABEL_41;
  }

  pairVerifyAuthType = 8;
LABEL_41:
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __38__RPConnection__clientPairVerifyStart__block_invoke;
  v34[3] = &unk_1E7C93AD0;
  v35 = pairVerifyAuthType;
  v34[4] = self;
  [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:v34, v23, v25];
  if (pairVerifyAuthType > 7 || ((1 << pairVerifyAuthType) & 0x98) == 0)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __38__RPConnection__clientPairVerifyStart__block_invoke_2;
    v33[3] = &unk_1E7C93AF8;
    v33[4] = self;
    [(CUPairingSession *)self->_pairVerifySession setSignDataHandler:v33];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __38__RPConnection__clientPairVerifyStart__block_invoke_3;
    v32[3] = &unk_1E7C93B20;
    v32[4] = self;
    [(CUPairingSession *)self->_pairVerifySession setVerifySignatureHandler:v32];
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __38__RPConnection__clientPairVerifyStart__block_invoke_4;
  v31[3] = &unk_1E7C92D58;
  v31[4] = self;
  [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:v31];
  v17 = self->_ucat->var0;
  if (v17 <= 30)
  {
    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_55;
      }

      v19 = self->_ucat;
    }

    if (pairVerifyAuthType > 0xA)
    {
      v18 = "?";
    }

    else
    {
      v18 = off_1E7C94130[pairVerifyAuthType];
    }

    if (passwordType > 0xB)
    {
      v20 = "?";
    }

    else
    {
      v20 = off_1E7C940D0[passwordType];
    }

    v29 = &unk_1B6F2E0D0;
    v30 = v20;
    v27 = &unk_1B6F2DC4E;
    flags = self->_flags;
    v24 = v18;
    v26 = self->_controlFlags;
    LogPrintF();
  }

LABEL_55:
  [(CUPairingSession *)self->_pairVerifySession activate:v24];
  v21 = *MEMORY[0x1E69E9840];
}

void __38__RPConnection__clientPairVerifyStart__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a2)
  {
    if (*(a1 + 40))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v5 setObject:v7 forKeyedSubscript:@"_auTy"];
    }

    v6 = 5;
  }

  else
  {
    v6 = 6;
  }

  [v5 setObject:v8 forKeyedSubscript:@"_pd"];
  [*(a1 + 32) _sendFrameType:v6 unencryptedObject:v5];
}

- (void)_clientPairVerifyWithData:(id)data
{
  dataCopy = data;
  v15 = 0;
  if (!self->_pairVerifySession)
  {
    v10 = RPErrorF();
    v7 = 0;
    goto LABEL_16;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      v14 = [dataCopy length];
      LogPrintF();
      goto LABEL_6;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v12 = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  v7 = OPACKDecodeData();
  if (!v7)
  {
    [RPConnection _clientPairSetupWithData:?];
    v9 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RPConnection *)v7 _clientPairVerifyWithData:?];
    v10 = v16;
    goto LABEL_16;
  }

  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (!v8)
  {
    v10 = RPErrorF();
LABEL_16:
    if (!v10)
    {
LABEL_22:
      v9 = 0;
      goto LABEL_11;
    }

    v11 = self->_ucat->var0;
    if (v11 <= 60)
    {
      if (v11 != -1)
      {
LABEL_19:
        LogPrintF();
        [(RPConnection *)self _clientPairVerifyCompleted:v10, v10];
        goto LABEL_22;
      }

      if (_LogCategory_Initialize())
      {
        v13 = self->_ucat;
        goto LABEL_19;
      }
    }

    [(RPConnection *)self _clientPairVerifyCompleted:v10, v14];
    goto LABEL_22;
  }

  v9 = v8;
  [(CUPairingSession *)self->_pairVerifySession receivedData:v8];
LABEL_10:
  v10 = 0;
LABEL_11:
}

- (void)_clientPairVerifyCompleted:(id)completed
{
  completedCopy = completed;
  v6 = completedCopy;
  if (completedCopy)
  {
    v11 = completedCopy;
    self->_pairVerifyFailed = 1;
    goto LABEL_71;
  }

  if ((self->_controlFlags & 0x20000000) != 0 && ([(CUPairingSession *)self->_pairVerifySession appInfoPeer], v7 = objc_claimAutoreleasedReturnValue(), Int64 = CFDictionaryGetInt64(), v7, (Int64 & 0x20000000) != 0))
  {
    pairVerifySession = self->_pairVerifySession;
    v73 = 0;
    v17 = [(CUPairingSession *)pairVerifySession openStreamWithName:@"main" type:2 error:&v73];
    v11 = v73;
    mainStream = self->_mainStream;
    self->_mainStream = v17;

    if (!self->_btPipeHighPriority)
    {
      goto LABEL_10;
    }

    v19 = self->_pairVerifySession;
    v72 = v11;
    v14 = [(CUPairingSession *)v19 openStreamWithName:@"hipri" type:2 error:&v72];
    v15 = v72;
  }

  else
  {
    v9 = self->_pairVerifySession;
    v71 = 0;
    v10 = [(CUPairingSession *)v9 openStreamWithName:@"main" error:&v71];
    v11 = v71;
    v12 = self->_mainStream;
    self->_mainStream = v10;

    if (!self->_btPipeHighPriority)
    {
      goto LABEL_10;
    }

    v13 = self->_pairVerifySession;
    v70 = v11;
    v14 = [(CUPairingSession *)v13 openStreamWithName:@"hipri" error:&v70];
    v15 = v70;
  }

  v20 = v15;

  highPriorityStream = self->_highPriorityStream;
  self->_highPriorityStream = v14;

  v22 = self->_highPriorityStream;
  v11 = v20;
  if (!v22)
  {
    goto LABEL_70;
  }

  self->_highPriorityAuthTagLength = [(CUPairingStream *)v22 authTagLength];
  v11 = v20;
LABEL_10:
  v23 = self->_mainStream;
  if (!v23)
  {
    goto LABEL_70;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)v23 authTagLength];
  self->_pairVerifyCompleted = 1;
  [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]& 0xFFFFFF8FFFF50FFFLL];
  v24 = self->_statusFlags & 0xFFFFFF8FFFF50FFFLL;
  self->_statusFlags = v24;
  pairVerifyAuthType = self->_pairVerifyAuthType;
  if (pairVerifyAuthType > 5)
  {
    if (pairVerifyAuthType <= 7)
    {
      if (pairVerifyAuthType == 6)
      {
        v28 = "PSGuest";
      }

      else
      {
        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x20000];
        self->_statusFlags |= 0x20000uLL;
        v28 = "PV-AID";
      }

      goto LABEL_62;
    }

    if ((pairVerifyAuthType - 8) >= 2)
    {
      if (pairVerifyAuthType == 10)
      {
        v28 = "AuthEnd";
        goto LABEL_62;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (pairVerifyAuthType > 2)
    {
      if (pairVerifyAuthType == 3)
      {
        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x2000];
        self->_statusFlags |= 0x2000uLL;
        pairedPeer = [(CUPairingSession *)self->_pairVerifySession pairedPeer];
        identifier = [pairedPeer identifier];
        uUIDString = [identifier UUIDString];
        peerHomeKitUserIdentifier = self->_peerHomeKitUserIdentifier;
        self->_peerHomeKitUserIdentifier = uUIDString;

        v28 = "HKShared";
      }

      else
      {
        if (pairVerifyAuthType != 4)
        {
          v28 = "PSAuth";
          goto LABEL_62;
        }

        aclActual = [(CUPairingSession *)self->_pairVerifySession aclActual];
        v34 = CFDictionaryGetInt64();

        if (v34)
        {
          homeKitIdentity = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
          identifier2 = [homeKitIdentity identifier];
          v37 = self->_peerHomeKitUserIdentifier;
          self->_peerHomeKitUserIdentifier = identifier2;

          v38 = 557056;
        }

        else
        {
          v38 = 0x8000;
        }

        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| v38];
        self->_statusFlags |= v38;
        v28 = "CUPair";
      }

      goto LABEL_57;
    }

    if (pairVerifyAuthType >= 3)
    {
LABEL_44:
      v28 = "?";
      goto LABEL_62;
    }
  }

  pairVerifyIdentityType = self->_pairVerifyIdentityType;
  if (pairVerifyIdentityType <= 5)
  {
    if (!pairVerifyIdentityType || pairVerifyIdentityType == 2)
    {
      self->_flags &= ~1u;
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x80000];
      v24 = self->_statusFlags | 0x80000;
      self->_statusFlags = v24;
      pairVerifyUsedIdentity = self->_pairVerifyUsedIdentity;
      v32 = "(RPI-Owner)";
      goto LABEL_46;
    }

    if (pairVerifyIdentityType == 4)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x4000];
      v29 = self->_statusFlags | 0x4000;
      self->_statusFlags = v29;
      v28 = "(RPI-Family)";
      if ((v29 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else if (pairVerifyIdentityType > 12)
  {
    if (pairVerifyIdentityType == 13)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x2000000000];
      v44 = self->_statusFlags | 0x2000000000;
      self->_statusFlags = v44;
      v28 = "(RPI-SessionPaired)";
      if ((v44 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

LABEL_54:
      homeKitIdentity2 = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
      identifier3 = [homeKitIdentity2 identifier];
      v47 = self->_peerHomeKitUserIdentifier;
      self->_peerHomeKitUserIdentifier = identifier3;

      goto LABEL_57;
    }

    if (pairVerifyIdentityType == 15)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x4000000000];
      v30 = self->_statusFlags | 0x4000000000;
      self->_statusFlags = v30;
      v28 = "(RPI-AdHocPaired)";
      if ((v30 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else
  {
    if (pairVerifyIdentityType == 6)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x20000];
      v43 = self->_statusFlags | 0x20000;
      self->_statusFlags = v43;
      v28 = "(RPI-Friend)";
      if ((v43 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (pairVerifyIdentityType == 12)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x1000000000];
      v27 = self->_statusFlags | 0x1000000000;
      self->_statusFlags = v27;
      v28 = "(RPI-SharedTVUser)";
      if ((v27 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  pairVerifyUsedIdentity = self->_pairVerifyUsedIdentity;
  v32 = "(RPI-?)";
LABEL_46:
  if (pairVerifyUsedIdentity)
  {
    v28 = v32;
  }

  else
  {
    v28 = "(HK)";
  }

  if ((v24 & 0x80000) != 0)
  {
    goto LABEL_54;
  }

LABEL_57:
  if ((pairVerifyAuthType - 3) <= 1 && !self->_identityVerified)
  {
    pairedPeer2 = [(CUPairingSession *)self->_pairVerifySession pairedPeer];
    if (pairedPeer2)
    {
      v49 = objc_alloc_init(RPIdentity);
      publicKey = [pairedPeer2 publicKey];
      [(RPIdentity *)v49 setEdPKData:publicKey];

      identifier4 = [pairedPeer2 identifier];
      uUIDString2 = [identifier4 UUIDString];
      [(RPIdentity *)v49 setIdentifier:uUIDString2];

      [(RPIdentity *)v49 setType:8];
      identityVerified = self->_identityVerified;
      self->_identityVerified = v49;
      v54 = v49;

      identifier5 = [(RPIdentity *)self->_identityVerified identifier];
      [(RPEndpoint *)self->_peerDeviceInfo setVerifiedIdentity:identifier5];
    }
  }

LABEL_62:
  self->_stepDone = 1;
  var0 = self->_ucat->var0;
  if (var0 > 30)
  {
    goto LABEL_66;
  }

  if (var0 != -1)
  {
    goto LABEL_64;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_64:
    v68 = &unk_1B6F2DEF3;
    v69 = self->_identityVerified;
    v66 = &unk_1B6F2E0D0;
    statusFlags = self->_statusFlags;
    v64 = v28;
    flags = self->_flags;
    LogPrintF();
  }

LABEL_66:
  v57 = _Block_copy(self->_authCompletionHandler);
  v58 = v57;
  if (v57 && pairVerifyAuthType)
  {
    (*(v57 + 2))(v57, 0);
  }

LABEL_70:
  self->_pairVerifyFailed = v11 != 0;
  if (!v11)
  {
    goto LABEL_78;
  }

LABEL_71:
  v59 = self->_ucat->var0;
  if (v59 <= 60)
  {
    if (v59 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_75;
      }

      v63 = self->_ucat;
    }

    v64 = v11;
    LogPrintF();
  }

LABEL_75:
  if (!self->_stepError)
  {
    objc_storeStrong(&self->_stepError, completed);
  }

  [(RPConnection *)self _pairVerifyInvalidate:v64];
LABEL_78:
  v60 = _Block_copy(self->_pairVerifyCompletion);
  v61 = v60;
  if (v60)
  {
    (*(v60 + 2))(v60, v11);
  }

  [(RPConnection *)self _run];
}

- (void)_clientStartSession
{
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  _systeminfo = [(RPConnection *)self _systeminfo];
  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    v10 = _systeminfo;
    LogPrintF();
  }

LABEL_5:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__RPConnection__clientStartSession__block_invoke;
  v11[3] = &unk_1E7C93B48;
  v11[4] = self;
  [(RPConnection *)self _sendEncryptedRequestID:@"_systemInfo" request:_systeminfo xpcID:0 options:0 sendEntry:0 responseHandler:v11, v10];
  v6 = self->_statusFlags & 0x50000AE000;
  v7 = _Block_copy(self->_proxyDeviceUpdateHandler);
  v8 = v7;
  if (v6 && v7)
  {
    (*(v7 + 2))(v7);
  }
}

void __35__RPConnection__clientStartSession__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v11)
  {
    v9 = [*(a1 + 32) _receivedSystemInfo:v11 xid:0];
    if (!v8 && (v9 & 1) == 0)
    {
      v8 = RPErrorF();
    }
  }

  if (v8)
  {
    v10 = RPNestedErrorF();
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 144), v10);
  if (v8)
  {
  }

  *(*(a1 + 32) + 140) = 1;
  [*(a1 + 32) _run];
}

- (void)_clientRetryStart
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v4 = retryTimer;
    dispatch_source_cancel(v4);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  v6 = mach_absolute_time();
  if (self->_retryTicks)
  {
    UpTicksToSecondsF();
    v8 = v7;
  }

  else
  {
    v8 = -1.0;
  }

  self->_retryTicks = v6;
  if (v8 >= 10.0 || v8 < 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 10.0 - v8;
  }

  var0 = self->_ucat->var0;
  if (v10 > 0.0)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_24:
    self->_retryFired = 0;
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v13 = self->_retryTimer;
    self->_retryTimer = v12;

    v14 = self->_retryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __33__RPConnection__clientRetryStart__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    v15 = self->_retryTimer;
    CUDispatchTimerSet();
    dispatch_resume(self->_retryTimer);
    return;
  }

  if (v8 < 0.0)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        v18 = self->_ucat;
      }

LABEL_22:
      LogPrintF();
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_28;
      }

      v16 = self->_ucat;
    }

    goto LABEL_22;
  }

LABEL_28:
  self->_retryFired = 1;
}

uint64_t __33__RPConnection__clientRetryStart__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 112) = mach_absolute_time();
  v2 = *(a1 + 32);

  return [v2 _clientRetryFired];
}

- (void)_clientRetryFired
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v4 = retryTimer;
    dispatch_source_cancel(v4);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  if (self->_present)
  {
    self->_retryFired = 1;

    [(RPConnection *)self _run];
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_11:
  v8 = RPErrorF();
  [(RPConnection *)self _invalidateWithError:v8];
}

- (void)_clientStarted
{
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  self->_retryCount = 0;
}

- (void)_serverRun
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      internalState = self->_internalState;
      if (internalState > 26)
      {
        switch(internalState)
        {
          case 27:
            if (self->_stepError)
            {
              goto LABEL_20;
            }

            if (self->_stepDone)
            {
              self->_stepDone = 0;
              [(RPConnection *)self _serverStarted];
              v4 = self->_internalState + 1;
              goto LABEL_16;
            }

            break;
          case 28:
            if (!self->_stepError)
            {
              [(RPConnection *)self _processSends];
              break;
            }

LABEL_20:
            self->_internalState = 29;
            break;
          case 29:
LABEL_12:
            self->_internalState = 25;
            break;
        }
      }

      else
      {
        switch(internalState)
        {
          case 0:
            goto LABEL_12;
          case 25:
            self->_internalState = 26;
            [(RPConnection *)self _serverAccept];
            if (self->_pskData)
            {
              [(RPConnection *)self _pskPrepare:0];
              [(RPConnection *)self _serverStarted];
              self->_internalState = 28;
            }

            break;
          case 26:
            if (self->_stepError)
            {
              goto LABEL_20;
            }

            if (self->_stepDone)
            {
              self->_stepDone = 0;
              v4 = 27;
LABEL_16:
              self->_internalState = v4;
            }

            break;
        }
      }

      v5 = self->_internalState;
      if (v5 == internalState)
      {
        return;
      }

      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 != -1)
        {
          goto LABEL_24;
        }

        ucat = self->_ucat;
        if (_LogCategory_Initialize())
        {
          v8 = self->_ucat;
          v5 = self->_internalState;
LABEL_24:
          v9 = _StateToString(internalState);
          v10 = _StateToString(v5);
          LogPrintF();
        }
      }

      [(RPConnection *)self _updateExternalState:v9];
    }
  }
}

- (void)_serverAccept
{
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v7 = self->_startTimer;
  self->_startTimer = v6;

  v8 = self->_startTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __29__RPConnection__serverAccept__block_invoke;
  handler[3] = &unk_1E7C92CE8;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  v9 = self->_startTimer;
  CUDispatchTimerSet();
  dispatch_resume(self->_startTimer);
  [(RPConnection *)self _pairSetupInvalidate];
  [(RPConnection *)self _pairVerifyInvalidate];
  self->_pairVerifyCompleted = 0;
  self->_pairVerifyUsedIdentity = 0;
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  [(RPConnection *)self _updateLinkInfo];
  if (self->_bleConnection)
  {
    [(RPConnection *)self _serverAcceptBLE];
  }

  else if (self->_btPipe)
  {
    [(RPConnection *)self _serverAcceptBTPipe];
  }

  else
  {
    [(RPConnection *)self _serverAcceptTCP];
  }
}

void __29__RPConnection__serverAccept__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = 0;
  }

  v6 = *(a1 + 32);
  v7 = RPErrorF();
  [v6 _serverError:v7];
}

- (void)_serverAcceptBLE
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__RPConnection__serverAcceptBLE__block_invoke;
  v4[3] = &unk_1E7C92D58;
  v4[4] = self;
  [(CUBLEConnection *)self->_bleConnection setErrorHandler:v4];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__RPConnection__serverAcceptBLE__block_invoke_2;
  v3[3] = &unk_1E7C92CE8;
  v3[4] = self;
  [(CUBLEConnection *)self->_bleConnection setInvalidationHandler:v3];
  [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
}

uint64_t __32__RPConnection__serverAcceptBLE__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 296);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v10 = *(v2 + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = *(v2 + 472);
  *(v2 + 472) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 256);
  *(v6 + 256) = 0;

  v8 = *(a1 + 32);

  return [v8 _invalidated];
}

- (void)_serverAcceptBTPipe
{
  if (!self->_readFrame.readRequested)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 40)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_6:
    [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
  }

  if (self->_readFrameBTPipeHighPriority.readRequested)
  {
    return;
  }

  v4 = self->_ucat->var0;
  if (v4 <= 40)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v7 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_12:
  btPipeHighPriority = self->_btPipeHighPriority;

  [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrameBTPipeHighPriority requestable:btPipeHighPriority];
}

- (void)_serverAcceptTCP
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__RPConnection__serverAcceptTCP__block_invoke;
  v5[3] = &unk_1E7C92D58;
  v5[4] = self;
  [(CUTCPConnection *)self->_tcpConnection setErrorHandler:v5];
  if (self->_flowControlWriteChangedHandler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __32__RPConnection__serverAcceptTCP__block_invoke_2;
    v4[3] = &unk_1E7C92CE8;
    v4[4] = self;
    [(CUTCPConnection *)self->_tcpConnection setFlowControlChangedHandler:v4];
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__RPConnection__serverAcceptTCP__block_invoke_3;
  v3[3] = &unk_1E7C92CE8;
  v3[4] = self;
  [(CUTCPConnection *)self->_tcpConnection setInvalidationHandler:v3];
  [(RPConnection *)self _receiveStart:0 readFrame:&self->_readFrame requestable:self->_requestable];
}

void __32__RPConnection__serverAcceptTCP__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 768))
  {
    v2 = _Block_copy(*(v1 + 560));
    if (v2)
    {
      v3 = v2;
      v2[2]();
      v2 = v3;
    }
  }
}

uint64_t __32__RPConnection__serverAcceptTCP__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 296);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v10 = *(v2 + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = *(v2 + 768);
  *(v2 + 768) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 256);
  *(v6 + 256) = 0;

  v8 = *(a1 + 32);

  return [v8 _invalidated];
}

- (void)_serverError:(id)error
{
  errorCopy = error;
  var0 = self->_ucat->var0;
  v10 = errorCopy;
  if (var0 <= 60)
  {
    if (var0 != -1)
    {
LABEL_3:
      v9 = errorCopy;
      LogPrintF();
      errorCopy = v10;
      goto LABEL_5;
    }

    v7 = _LogCategory_Initialize();
    errorCopy = v10;
    if (v7)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_btPipe)
  {
    [(RPConnection *)self _invalidateCore:errorCopy];
    if (!self->_stepError)
    {
      objc_storeStrong(&self->_stepError, error);
    }

    [(RPConnection *)self _run];
  }

  else
  {
    [(RPConnection *)self _invalidateWithError:errorCopy];
  }
}

- (void)_serverNetworkError:(id)error label:(const char *)label
{
  errorCopy = error;
  if ([errorCopy code] == -6758)
  {
    [(RPConnection *)self sendReachabilityProbe:"server no ack"];
  }

  else
  {
    labelCopy = label;
    v6 = RPNestedErrorF();
    [(RPConnection *)self _serverError:v6, labelCopy];
  }
}

- (void)_serverPreAuthRequestWithData:(id)data
{
  v4 = OPACKDecodeData();
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    var0 = self->_ucat->var0;
    if (isKindOfClass)
    {
      if (var0 > 30)
      {
        goto LABEL_15;
      }

      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_15:
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v9 setObject:@"715.2" forKeyedSubscript:@"_sv"];
          v10 = self->_ucat->var0;
          if (v10 <= 30)
          {
            if (v10 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_21;
              }

              ucat = self->_ucat;
            }

            v14 = v9;
            LogPrintF();
          }

LABEL_21:
          [(RPConnection *)self _sendFrameType:11 unencryptedObject:v9, v14];

          goto LABEL_22;
        }

        v12 = self->_ucat;
      }

      v14 = v4;
      LogPrintF();
      goto LABEL_15;
    }

    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v11 = self->_ucat;
      }

LABEL_11:
      LogPrintF();
    }
  }

  else
  {
    v7 = self->_ucat->var0;
    if (v7 <= 90)
    {
      if (v7 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v8 = self->_ucat;
      }

      goto LABEL_11;
    }
  }

LABEL_22:
}

- (BOOL)_serverPairingAllowed
{
  sharedConnection = [getMCProfileConnectionClass[0]() sharedConnection];
  v3 = getMCFeatureRemoteAppPairingAllowed();
  v4 = [sharedConnection effectiveBoolValueForSetting:v3];

  return v4 != 2;
}

- (void)_serverPairSetupWithData:(id)data start:(BOOL)start
{
  v69[2] = *MEMORY[0x1E69E9840];
  v63 = 0;
  v6 = OPACKDecodeData();
  if (!v6)
  {
    [RPConnection _clientPairSetupWithData:?];
    goto LABEL_92;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RPConnection *)v6 _clientPairSetupWithData:?];
    v45 = v64;
    goto LABEL_98;
  }

  passwordType = self->_passwordType;
  if (!passwordType)
  {
    if (([(RPCompanionLinkDevice *)self->_localDeviceInfo flags]& 8) != 0)
    {
      goto LABEL_7;
    }

    passwordType = self->_passwordType;
  }

  if (passwordType != 3)
  {
    if ((self->_flags & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_7:
  if ((self->_flags & 0x4000) == 0)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 50)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_34:
    v68[0] = @"_ec";
    v68[1] = @"_em";
    v69[0] = &unk_1F2EEC6B0;
    v69[1] = @"Non-home access not allowed";
    v19 = MEMORY[0x1E695DF20];
    v20 = v69;
    v21 = v68;
LABEL_37:
    v22 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:2];
    [(RPConnection *)self _sendFrameType:4 unencryptedObject:v22];
LABEL_91:

LABEL_92:
    v45 = 0;
    goto LABEL_93;
  }

LABEL_12:
  v9 = self->_ucat->var0;
  if (v9 <= 30)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v49 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_16:
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v11 = Int64Ranged;
  if (Int64Ranged <= 0xA && ((1 << Int64Ranged) & 0x426) != 0 && ![(RPConnection *)self _serverPairingAllowed])
  {
    v18 = self->_ucat->var0;
    if (v18 <= 50)
    {
      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_36;
        }

        v51 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_36:
    v66[0] = @"_ec";
    v66[1] = @"_em";
    v67[0] = &unk_1F2EEC6B0;
    v67[1] = @"Pairing not allowed";
    v19 = MEMORY[0x1E695DF20];
    v20 = v67;
    v21 = v66;
    goto LABEL_37;
  }

  if (start || !self->_pairSetupSession)
  {
    [(RPConnection *)self _pairSetupInvalidate];
    v12 = objc_alloc_init(MEMORY[0x1E69994F8]);
    pairSetupSession = self->_pairSetupSession;
    self->_pairSetupSession = v12;

    [(CUPairingSession *)self->_pairSetupSession setDispatchQueue:self->_dispatchQueue];
    [(CUPairingSession *)self->_pairSetupSession setFlags:self->_pairSetupFlags];
    if (self->_label)
    {
      label = self->_label;
    }

    else
    {
      label = @"RPCnx";
    }

    [(CUPairingSession *)self->_pairSetupSession setLabel:label];
    [(CUPairingSession *)self->_pairSetupSession setSessionType:2];
    v15 = CFDictionaryGetInt64Ranged();
    DeviceClass = GestaltGetDeviceClass();
    if (v11 != 10 || DeviceClass != 4 || v15)
    {
LABEL_40:
      v23 = self->_ucat->var0;
      if (v23 > 30)
      {
        goto LABEL_51;
      }

      if (v23 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_51;
        }

        v25 = self->_ucat;
      }

      if (v11 > 0xB)
      {
        v24 = "?";
      }

      else
      {
        v24 = off_1E7C940D0[v11 & 0xF];
      }

      if (v15 > 0xA)
      {
        v26 = "?";
      }

      else
      {
        v26 = off_1E7C94130[v15];
      }

      v53 = v24;
      v54 = v26;
      LogPrintF();
LABEL_51:
      if (v15 == 8)
      {
        self->_pairSetupAuthType = 8;
        self->_pairVerifyAuthType = 8;
        if (v11 == 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = 8;
        }

        [(CUPairingSession *)self->_pairSetupSession setPinType:v27, v53, v54];
        [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFBFFFE3];
        [(RPConnection *)self _configureForSessionPairing:self->_pairSetupSession];
      }

      v28 = self->_passwordType;
      if (v28 == 2)
      {
        self->_pairSetupAuthType = 5;
        v29 = self->_pairSetupSession;
        v30 = 2;
        goto LABEL_60;
      }

      if (v28 == 1)
      {
        self->_pairSetupAuthType = 5;
        v29 = self->_pairSetupSession;
        v30 = 1;
LABEL_60:
        [(CUPairingSession *)v29 setPinType:v30, v53];
        [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFFFFFEFLL];
LABEL_72:
        v35 = self->_pairSetupACL;
        if (v35)
        {
          v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v37 = v35;
          v38 = [(NSArray *)v37 countByEnumeratingWithState:&v59 objects:v65 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v60;
            v41 = MEMORY[0x1E695E118];
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v60 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                [v36 setObject:v41 forKeyedSubscript:*(*(&v59 + 1) + 8 * i)];
              }

              v39 = [(NSArray *)v37 countByEnumeratingWithState:&v59 objects:v65 count:16];
            }

            while (v39);
          }

          [(CUPairingSession *)self->_pairSetupSession setAcl:v36];
        }

        if (self->_showPasswordHandler)
        {
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __47__RPConnection__serverPairSetupWithData_start___block_invoke;
          v58[3] = &unk_1E7C93B70;
          v58[4] = self;
          [(CUPairingSession *)self->_pairSetupSession setShowPINHandlerEx:v58];
        }

        else
        {
          [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]| 0x80];
        }

        if (self->_hidePasswordHandler)
        {
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __47__RPConnection__serverPairSetupWithData_start___block_invoke_2;
          v57[3] = &unk_1E7C92CE8;
          v57[4] = self;
          [(CUPairingSession *)self->_pairSetupSession setHidePINHandler:v57];
        }

        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __47__RPConnection__serverPairSetupWithData_start___block_invoke_3;
        v56[3] = &unk_1E7C93AA8;
        v56[4] = self;
        [(CUPairingSession *)self->_pairSetupSession setSendDataHandler:v56];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __47__RPConnection__serverPairSetupWithData_start___block_invoke_4;
        v55[3] = &unk_1E7C92D58;
        v55[4] = self;
        [(CUPairingSession *)self->_pairSetupSession setCompletionHandler:v55];
        [(CUPairingSession *)self->_pairSetupSession activate];
        goto LABEL_87;
      }

      v31 = self->_password;
      if (![(NSString *)v31 length])
      {
        password = [(RPCompanionLinkDevice *)self->_localDeviceInfo password];

        v31 = password;
      }

      if ([(NSString *)v31 length])
      {
        self->_pairSetupAuthType = 5;
        [(CUPairingSession *)self->_pairSetupSession setFixedPIN:v31];
        [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFFFFFEFLL];
        [(CUPairingSession *)self->_pairSetupSession setPinType:5];
LABEL_71:

        goto LABEL_72;
      }

      switch(v11)
      {
        case 1u:
          self->_pairSetupAuthType = 5;
          v33 = self->_pairSetupSession;
          v34 = 1;
          break;
        case 0xAu:
          goto LABEL_71;
        case 2u:
          self->_pairSetupAuthType = 5;
          v33 = self->_pairSetupSession;
          v34 = 2;
          break;
        default:
          self->_pairSetupAuthType = 6;
          [(CUPairingSession *)self->_pairSetupSession setFixedPIN:@"public"];
          goto LABEL_71;
      }

      [(CUPairingSession *)v33 setPinType:v34];
      [(CUPairingSession *)self->_pairSetupSession setFlags:[(CUPairingSession *)self->_pairSetupSession flags]& 0xFFFFFFEFLL];
      goto LABEL_71;
    }

    v17 = self->_ucat->var0;
    if (v17 <= 30)
    {
      if (v17 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_39;
        }

        v52 = self->_ucat;
      }

      v53 = "Invalid";
      v54 = "SessionPaired";
      LogPrintF();
    }

LABEL_39:
    v15 = 8;
    goto LABEL_40;
  }

LABEL_87:
  configurePairingHandler = self->_configurePairingHandler;
  if (configurePairingHandler)
  {
    configurePairingHandler[2](configurePairingHandler, self->_pairSetupSession);
  }

  CFDataGetTypeID();
  v44 = CFDictionaryGetTypedValue();
  if (v44)
  {
    v22 = v44;
    [(CUPairingSession *)self->_pairSetupSession receivedData:v44];
    goto LABEL_91;
  }

  v45 = RPErrorF();
LABEL_98:
  if (v45)
  {
    v47 = self->_ucat->var0;
    if (v47 <= 60)
    {
      if (v47 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_93;
        }

        v48 = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_93:

  v46 = *MEMORY[0x1E69E9840];
}

void __47__RPConnection__serverPairSetupWithData_start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = _Block_copy(*(*(a1 + 32) + 408));
  v6 = v5;
  if (v5)
  {
    *(*(a1 + 32) + 288) = 1;
    (*(v5 + 2))(v5, a2, v7);
  }
}

void __47__RPConnection__serverPairSetupWithData_start___block_invoke_2(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 416));
  if (v2)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 288) == 1)
    {
      *(v3 + 288) = 0;
      v4 = v2;
      (*(v2 + 2))(v2, 0);
      v2 = v4;
    }
  }
}

void __47__RPConnection__serverPairSetupWithData_start___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v8 = @"_pd";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 _sendFrameType:4 unencryptedObject:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_serverPairSetupCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy)
  {
    v13 = completedCopy;
    goto LABEL_20;
  }

  pairSetupSession = self->_pairSetupSession;
  v29 = 0;
  v7 = [(CUPairingSession *)pairSetupSession openStreamWithName:@"main" error:&v29];
  v8 = v29;
  mainStream = self->_mainStream;
  self->_mainStream = v7;

  v10 = self->_mainStream;
  if (!v10)
  {
    v13 = v8;
    if (!v8)
    {
      goto LABEL_29;
    }

LABEL_20:
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      if (var0 != -1)
      {
LABEL_22:
        pairSetupAuthType = self->_pairSetupAuthType;
        if (pairSetupAuthType > 0xA)
        {
          v24 = "?";
        }

        else
        {
          v24 = off_1E7C94130[pairSetupAuthType];
        }

        v26 = v24;
        v27 = v13;
        LogPrintF();
        goto LABEL_28;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_22;
      }
    }

LABEL_28:
    [(RPConnection *)self _pairSetupInvalidate:v26];

    goto LABEL_29;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)v10 authTagLength];
  if (self->_btPipeHighPriority)
  {
    v11 = self->_pairSetupSession;
    v28 = v8;
    v12 = [(CUPairingSession *)v11 openStreamWithName:@"hipri" error:&v28];
    v13 = v28;

    highPriorityStream = self->_highPriorityStream;
    self->_highPriorityStream = v12;

    v15 = self->_highPriorityStream;
    if (!v15)
    {
      goto LABEL_19;
    }

    self->_highPriorityAuthTagLength = [(CUPairingStream *)v15 authTagLength];
  }

  else
  {
    v13 = v8;
  }

  v16 = self->_ucat;
  if (v16->var0 <= 30)
  {
    [(RPConnection *)v16->var0 _serverPairSetupCompleted:v16, self, &self->_ucat];
  }

  v17 = self->_pairSetupAuthType;
  statusFlags = self->_statusFlags;
  if (v17 == 8)
  {
    v19 = statusFlags & 0xFFFFFFDFFFFFEFFFLL | 0x2000000000;
    goto LABEL_13;
  }

  if (v17 == 5)
  {
    v19 = statusFlags & 0xFFFFFFFFFFFF6FFFLL | 0x8000;
LABEL_13:
    self->_statusFlags = v19;
    goto LABEL_15;
  }

  self->_statusFlags = statusFlags & 0xFFFFFFAFFFF50FFFLL | 0x1000;
  self->_flags |= 1u;
LABEL_15:
  if (self->_internalState == 26)
  {
    self->_stepDone = 1;
    v20 = _Block_copy(self->_authCompletionHandler);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, v13);
    }

    [(RPConnection *)self _run];
  }

LABEL_19:
  if (v13)
  {
    goto LABEL_20;
  }

LABEL_29:
}

- (void)_serverPairVerifyWithData:(id)data start:(BOOL)start
{
  v31[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v6 = OPACKDecodeData();
  if (!v6)
  {
    [RPConnection _clientPairSetupWithData:?];
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(RPConnection *)v6 _clientPairVerifyWithData:?];
    v20 = v29;
    goto LABEL_31;
  }

  if (start || !self->_pairVerifySession)
  {
    [(RPConnection *)self _pairVerifyInvalidate];
    self->_pairVerifyUsedIdentity = 0;
    v7 = objc_alloc_init(MEMORY[0x1E69994F8]);
    pairVerifySession = self->_pairVerifySession;
    self->_pairVerifySession = v7;

    if ((self->_controlFlags & 0xC0) != 0)
    {
      [(CUPairingSession *)self->_pairVerifySession setSelfAppFlags:1];
    }

    [(CUPairingSession *)self->_pairVerifySession setDispatchQueue:self->_dispatchQueue];
    [(CUPairingSession *)self->_pairVerifySession setFlags:self->_pairVerifyFlags];
    if (self->_label)
    {
      label = self->_label;
    }

    else
    {
      label = @"RPCnx";
    }

    [(CUPairingSession *)self->_pairVerifySession setLabel:label];
    [(CUPairingSession *)self->_pairVerifySession setSessionType:4];
    controlFlags = self->_controlFlags;
    if ((controlFlags & 0x20000000) != 0)
    {
      v30 = @"_cf";
      0x20000000 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:controlFlags & 0x20000000];
      v31[0] = 0x20000000;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      [(CUPairingSession *)self->_pairVerifySession setAppInfoSelf:v12];
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    v14 = Int64Ranged;
    if (Int64Ranged != 3)
    {
      if (Int64Ranged == 8)
      {
        [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFE3];
        [(RPConnection *)self _configureForSessionPairing:self->_pairVerifySession];
      }

      else if (Int64Ranged == 4)
      {
        [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
        v15 = self->_pairVerifySession;
        v16 = [(CUPairingSession *)v15 flags]| 0xC;
LABEL_18:
        [(CUPairingSession *)v15 setFlags:v16];
      }

      self->_pairVerifyAuthType = v14;
      self->_pairSetupAuthType = v14;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __48__RPConnection__serverPairVerifyWithData_start___block_invoke;
      v27[3] = &unk_1E7C93AA8;
      v27[4] = self;
      [(CUPairingSession *)self->_pairVerifySession setSendDataHandler:v27];
      if ((v14 - 5) <= 0xFFFFFFFD)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __48__RPConnection__serverPairVerifyWithData_start___block_invoke_2;
        v26[3] = &unk_1E7C93AF8;
        v26[4] = self;
        [(CUPairingSession *)self->_pairVerifySession setSignDataHandler:v26];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __48__RPConnection__serverPairVerifyWithData_start___block_invoke_3;
        v25[3] = &unk_1E7C93B20;
        v25[4] = self;
        [(CUPairingSession *)self->_pairVerifySession setVerifySignatureHandler:v25];
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __48__RPConnection__serverPairVerifyWithData_start___block_invoke_4;
      v24[3] = &unk_1E7C92D58;
      v24[4] = self;
      [(CUPairingSession *)self->_pairVerifySession setCompletionHandler:v24];
      configurePairingHandler = self->_configurePairingHandler;
      if (configurePairingHandler)
      {
        configurePairingHandler[2](configurePairingHandler, self->_pairVerifySession);
      }

      [(CUPairingSession *)self->_pairVerifySession activate];
      goto LABEL_24;
    }

    [(CUPairingSession *)self->_pairVerifySession setFlags:[(CUPairingSession *)self->_pairVerifySession flags]& 0xFFBFFFFFLL];
    v15 = self->_pairVerifySession;
    v16 = [(CUPairingSession *)v15 flags]| 0x4000000;
    goto LABEL_18;
  }

LABEL_24:
  CFDataGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  if (v18)
  {
    v19 = v18;
    [(CUPairingSession *)self->_pairVerifySession receivedData:v18];

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  v20 = RPErrorF();
LABEL_31:
  if (v20)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_27:

  v21 = *MEMORY[0x1E69E9840];
}

void __48__RPConnection__serverPairVerifyWithData_start___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v8 = @"_pd";
  v9[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 _sendFrameType:6 unencryptedObject:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_serverPairVerifyCompleted:(id)completed
{
  completedCopy = completed;
  v5 = completedCopy;
  if (completedCopy)
  {
    v10 = completedCopy;
    goto LABEL_69;
  }

  if ((self->_controlFlags & 0x20000000) != 0 && ([(CUPairingSession *)self->_pairVerifySession appInfoPeer], v6 = objc_claimAutoreleasedReturnValue(), Int64 = CFDictionaryGetInt64(), v6, (Int64 & 0x20000000) != 0))
  {
    pairVerifySession = self->_pairVerifySession;
    v72 = 0;
    v16 = [(CUPairingSession *)pairVerifySession openStreamWithName:@"main" type:2 error:&v72];
    v10 = v72;
    mainStream = self->_mainStream;
    self->_mainStream = v16;

    if (!self->_btPipeHighPriority)
    {
      goto LABEL_10;
    }

    v18 = self->_pairVerifySession;
    v71 = v10;
    v13 = [(CUPairingSession *)v18 openStreamWithName:@"hipri" type:2 error:&v71];
    v14 = v71;
  }

  else
  {
    v8 = self->_pairVerifySession;
    v70 = 0;
    v9 = [(CUPairingSession *)v8 openStreamWithName:@"main" error:&v70];
    v10 = v70;
    v11 = self->_mainStream;
    self->_mainStream = v9;

    if (!self->_btPipeHighPriority)
    {
      goto LABEL_10;
    }

    v12 = self->_pairVerifySession;
    v69 = v10;
    v13 = [(CUPairingSession *)v12 openStreamWithName:@"hipri" error:&v69];
    v14 = v69;
  }

  v19 = v14;

  highPriorityStream = self->_highPriorityStream;
  self->_highPriorityStream = v13;

  v21 = self->_highPriorityStream;
  v10 = v19;
  if (!v21)
  {
    goto LABEL_68;
  }

  self->_highPriorityAuthTagLength = [(CUPairingStream *)v21 authTagLength];
  v10 = v19;
LABEL_10:
  v22 = self->_mainStream;
  if (!v22)
  {
    goto LABEL_68;
  }

  self->_mainAuthTagLength = [(CUPairingStream *)v22 authTagLength];
  self->_pairVerifyCompleted = 1;
  [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]& 0xFFFFFF8FFFF50FFFLL];
  v23 = self->_statusFlags & 0xFFFFFF8FFFF50FFFLL;
  self->_statusFlags = v23;
  pairVerifyAuthType = self->_pairVerifyAuthType;
  if (pairVerifyAuthType > 5)
  {
    if (pairVerifyAuthType <= 7)
    {
      if (pairVerifyAuthType == 6)
      {
        v27 = "PSGuest";
      }

      else
      {
        v27 = "PV-AID";
      }

      goto LABEL_62;
    }

    if ((pairVerifyAuthType - 8) >= 2)
    {
      if (pairVerifyAuthType == 10)
      {
        v27 = "AuthEnd";
        goto LABEL_62;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (pairVerifyAuthType > 2)
    {
      if (pairVerifyAuthType == 3)
      {
        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x2000];
        self->_statusFlags |= 0x2000uLL;
        pairedPeer = [(CUPairingSession *)self->_pairVerifySession pairedPeer];
        identifier = [pairedPeer identifier];
        uUIDString = [identifier UUIDString];
        peerHomeKitUserIdentifier = self->_peerHomeKitUserIdentifier;
        self->_peerHomeKitUserIdentifier = uUIDString;

        v27 = "HKShared";
      }

      else
      {
        if (pairVerifyAuthType != 4)
        {
          v27 = "PSAuth";
          goto LABEL_62;
        }

        aclActual = [(CUPairingSession *)self->_pairVerifySession aclActual];
        v33 = CFDictionaryGetInt64();

        if (v33)
        {
          homeKitIdentity = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
          identifier2 = [homeKitIdentity identifier];
          v36 = self->_peerHomeKitUserIdentifier;
          self->_peerHomeKitUserIdentifier = identifier2;

          v37 = 557056;
        }

        else
        {
          v37 = 0x8000;
        }

        [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| v37];
        self->_statusFlags |= v37;
        v27 = "CUPair";
      }

      goto LABEL_57;
    }

    if (pairVerifyAuthType >= 3)
    {
LABEL_44:
      v27 = "?";
      goto LABEL_62;
    }
  }

  pairVerifyIdentityType = self->_pairVerifyIdentityType;
  if (pairVerifyIdentityType <= 5)
  {
    if (!pairVerifyIdentityType || pairVerifyIdentityType == 2)
    {
      self->_flags &= ~1u;
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x80000];
      v23 = self->_statusFlags | 0x80000;
      self->_statusFlags = v23;
      pairVerifyUsedIdentity = self->_pairVerifyUsedIdentity;
      v31 = "(RPI-Owner)";
      goto LABEL_46;
    }

    if (pairVerifyIdentityType == 4)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x4000];
      v28 = self->_statusFlags | 0x4000;
      self->_statusFlags = v28;
      v27 = "(RPI-Family)";
      if ((v28 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else if (pairVerifyIdentityType > 12)
  {
    if (pairVerifyIdentityType == 13)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x2000000000];
      v43 = self->_statusFlags | 0x2000000000;
      self->_statusFlags = v43;
      v27 = "(RPI-SessionPaired)";
      if ((v43 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

LABEL_54:
      homeKitIdentity2 = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
      identifier3 = [homeKitIdentity2 identifier];
      v46 = self->_peerHomeKitUserIdentifier;
      self->_peerHomeKitUserIdentifier = identifier3;

      goto LABEL_57;
    }

    if (pairVerifyIdentityType == 15)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x4000000000];
      v29 = self->_statusFlags | 0x4000000000;
      self->_statusFlags = v29;
      v27 = "(RPI-AdHocPaired)";
      if ((v29 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  else
  {
    if (pairVerifyIdentityType == 6)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x20000];
      v42 = self->_statusFlags | 0x20000;
      self->_statusFlags = v42;
      v27 = "(RPI-Friend)";
      if ((v42 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (pairVerifyIdentityType == 12)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x1000000000];
      v26 = self->_statusFlags | 0x1000000000;
      self->_statusFlags = v26;
      v27 = "(RPI-SharedTVUser)";
      if ((v26 & 0x80000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }
  }

  pairVerifyUsedIdentity = self->_pairVerifyUsedIdentity;
  v31 = "(RPI-?)";
LABEL_46:
  if (pairVerifyUsedIdentity)
  {
    v27 = v31;
  }

  else
  {
    v27 = "(HK)";
  }

  if ((v23 & 0x80000) != 0)
  {
    goto LABEL_54;
  }

LABEL_57:
  if ((pairVerifyAuthType - 3) <= 1 && !self->_identityVerified)
  {
    pairedPeer2 = [(CUPairingSession *)self->_pairVerifySession pairedPeer];
    if (pairedPeer2)
    {
      v48 = objc_alloc_init(RPIdentity);
      publicKey = [pairedPeer2 publicKey];
      [(RPIdentity *)v48 setEdPKData:publicKey];

      identifier4 = [pairedPeer2 identifier];
      uUIDString2 = [identifier4 UUIDString];
      [(RPIdentity *)v48 setIdentifier:uUIDString2];

      [(RPIdentity *)v48 setType:8];
      identityVerified = self->_identityVerified;
      self->_identityVerified = v48;
      v53 = v48;

      identifier5 = [(RPIdentity *)self->_identityVerified identifier];
      [(RPEndpoint *)self->_peerDeviceInfo setVerifiedIdentity:identifier5];
    }
  }

LABEL_62:
  var0 = self->_ucat->var0;
  if (var0 > 30)
  {
    goto LABEL_66;
  }

  if (var0 != -1)
  {
    goto LABEL_64;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_64:
    v67 = &unk_1B6F2DEF3;
    v68 = self->_identityVerified;
    v65 = &unk_1B6F2E0D0;
    statusFlags = self->_statusFlags;
    v63 = v27;
    flags = self->_flags;
    LogPrintF();
  }

LABEL_66:
  if (self->_internalState == 26)
  {
    self->_stepDone = 1;
    [(RPConnection *)self _run];
  }

LABEL_68:
  if (!v10)
  {
    goto LABEL_80;
  }

LABEL_69:
  v56 = self->_ucat->var0;
  if (v56 <= 60)
  {
    if (v56 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_77;
      }

      v59 = self->_ucat;
    }

    v57 = self->_pairVerifyAuthType;
    if (v57 > 0xA)
    {
      v58 = "?";
    }

    else
    {
      v58 = off_1E7C94130[v57];
    }

    v63 = v58;
    flags = v10;
    LogPrintF();
  }

LABEL_77:
  [(RPConnection *)self _pairVerifyInvalidate:v63];
  v60 = _Block_copy(self->_pairVerifyCompletion);
  v61 = v60;
  if (v60)
  {
    (*(v60 + 2))(v60, v10);
  }

LABEL_80:
}

- (void)_serverStarted
{
  startTimer = self->_startTimer;
  if (startTimer)
  {
    v4 = startTimer;
    dispatch_source_cancel(v4);
    v5 = self->_startTimer;
    self->_startTimer = 0;
  }

  if (!self->_peerIdentifier)
  {
    RandomBytes();
    v6 = NSPrintF();
    peerIdentifier = self->_peerIdentifier;
    self->_peerIdentifier = v6;
  }
}

- (void)_processSends
{
  if ([(NSMutableArray *)self->_sendArray count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->_sendArray objectAtIndexedSubscript:v3];
      options = [v4 options];
      v6 = [(RPConnection *)self _isEligibleToSendWithOptions:options];

      if (v6)
      {
        [(NSMutableArray *)self->_sendArray removeObjectAtIndex:v3];
        requestID = [v4 requestID];

        if (requestID)
        {
          requestID2 = [v4 requestID];
          request = [v4 request];
          xpcID = [v4 xpcID];
          options2 = [v4 options];
          responseHandler = [v4 responseHandler];
          [(RPConnection *)self _sendEncryptedRequestID:requestID2 request:request xpcID:xpcID options:options2 sendEntry:v4 responseHandler:responseHandler];
LABEL_9:

          goto LABEL_10;
        }

        eventID = [v4 eventID];

        if (eventID)
        {
          requestID2 = [v4 eventID];
          request = [v4 eventData];
          v14 = [v4 xid];
          options2 = [v4 options];
          responseHandler = [v4 completion];
          [(RPConnection *)self _sendEncryptedEventID:requestID2 data:request xid:v14 options:options2 completion:responseHandler];
          goto LABEL_9;
        }

        var0 = self->_ucat->var0;
        if (var0 <= 90)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_10;
            }

            ucat = self->_ucat;
          }

          LogPrintF();
        }
      }

      else
      {
        ++v3;
      }

LABEL_10:
    }

    while ([(NSMutableArray *)self->_sendArray count]> v3);
  }
}

- (unint64_t)_eligiblePendingSendCount
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_sendArray;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        options = [*(*(&v13 + 1) + 8 * i) options];
        v10 = [(RPConnection *)self _isEligibleToSendWithOptions:options];

        v6 += v10;
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)sendEncryptedEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  xidLast = self->_xidLast;
  if (xidLast + 1 > 1)
  {
    v14 = xidLast + 1;
  }

  else
  {
    v14 = 1;
  }

  self->_xidLast = v14;
  eventCopy = event;
  Int64 = CFDictionaryGetInt64();
  v17 = MEMORY[0x1E695DF90];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
  v19 = [v17 dictionaryWithObjectsAndKeys:{eventCopy, @"_c", dCopy, @"_i", &unk_1F2EEC6C8, @"_t", v18, @"_x", 0}];

  if (Int64)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_cht"];
  }

  v20 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];
  if (v20)
  {
    clientMode = self->_clientMode;

    if (clientMode)
    {
      v22 = [optionsCopy objectForKeyedSubscript:@"inUseProcess"];
      [v19 setObject:v22 forKeyedSubscript:@"_inUseProc"];
    }
  }

  v26 = 0;
  if (self->_canDecode128bit)
  {
    v23 = 16;
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x1B8C9E170](v19, v23, &v26);
  if (v24)
  {
    [(RPConnection *)self sendEncryptedEventID:dCopy data:v24 xid:v14 options:optionsCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v25 = RPErrorF();
    completionCopy[2](completionCopy, v25);
  }
}

void __66__RPConnection__sendEncryptedEventID_data_xid_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(*(a1 + 40) + 8) + 40) nwActivity];
  if (v3)
  {
    if (v5)
    {
      [RPNWActivityUtils failActivity:v3 error:?];
    }

    else
    {
      nw_activity_complete_with_reason();
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void __66__RPConnection__sendEncryptedEventID_data_xid_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v3 = *(a1 + 40);
  v5 = v2;
  if (v2)
  {
    v4 = RPNestedErrorF();
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

uint64_t __77__RPConnection_sendEncryptedRequestID_request_xpcID_options_responseHandler___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _timeoutForSendEntry:v3];
}

void __88__RPConnection__sendEncryptedRequestID_request_xpcID_options_sendEntry_responseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) nwActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) error];
    if (v3)
    {
      [RPNWActivityUtils failActivity:v4 error:v3];
    }

    else
    {
      nw_activity_complete_with_reason();
    }

    v2 = v4;
  }
}

void __88__RPConnection__sendEncryptedRequestID_request_xpcID_options_sendEntry_responseHandler___block_invoke_421(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_source_cancel(*(a1 + 32));
  [*(a1 + 40) _timeoutForXID:*(a1 + 48)];
  v2 = RPConnectionLog();
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 632);
    v7 = *(v5 + 672);
    v9[0] = 67109634;
    v9[1] = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_signpost_emit_with_name_impl(&dword_1B6E85000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RPConnectionSendRequestTime", " enableTelemetry=YES {XID:0x%X, connectionID:%@, peer:%@, signpost.description:end_time, error:request_timed_out}", v9, 0x1Cu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_sendEncryptedResponse:(id)response options:(id)options error:(id)error xid:(id)xid requestID:(id)d highPriority:(BOOL)priority isChatty:(BOOL)chatty replyStartTime:(id)self0
{
  priorityCopy = priority;
  v114 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  xidCopy = xid;
  dCopy = d;
  timeCopy = time;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__2;
  v103 = __Block_byref_object_dispose__2;
  v104 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__RPConnection__sendEncryptedResponse_options_error_xid_requestID_highPriority_isChatty_replyStartTime___block_invoke;
  aBlock[3] = &unk_1E7C93BE8;
  v97 = 0;
  v98 = &v99;
  v82 = _Block_copy(aBlock);
  v15 = self->_requestable;
  v16 = self->_mainStream;
  btPipeHighPriority = self->_btPipeHighPriority;
  if (btPipeHighPriority && priorityCopy)
  {
    v18 = btPipeHighPriority;

    v15 = v18;
  }

  mach_absolute_time();
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = v19;
  if (errorCopy)
  {
    v21 = 1;
  }

  else
  {
    v21 = responseCopy == 0;
  }

  if (v21)
  {
    v22 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v22 = responseCopy;
  }

  [v19 setObject:v22 forKeyedSubscript:@"_c"];
  [v20 setObject:&unk_1F2EEC6F8 forKeyedSubscript:@"_t"];
  [v20 setObject:xidCopy forKeyedSubscript:@"_x"];
  spid = [xidCopy unsignedIntValue];
  if (errorCopy)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        ucat = self->_ucat;
      }

      v74 = spid;
      v75 = errorCopy;
      LogPrintF();
    }

LABEL_15:
    RPEncodeNSError(errorCopy, v20);
  }

  v89 = v16;
  v81 = v15;
  if (timeCopy)
  {
    [timeCopy unsignedLongLongValue];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:UpTicksToMilliseconds()];
    [v20 setObject:v24 forKeyedSubscript:@"_rT"];
  }

  v95 = 0;
  if (self->_canDecode128bit)
  {
    v25 = 16;
  }

  else
  {
    v25 = 0;
  }

  v26 = MEMORY[0x1B8C9E170](v20, v25, &v95);
  v27 = v26;
  if (!v26)
  {
    goto LABEL_75;
  }

  v94 = 8;
  v28 = [v26 length];
  if (priorityCopy)
  {
    LOBYTE(v94) = 12;
    v29 = [v27 length];
    highPriorityAuthTagLength = self->_highPriorityAuthTagLength;
    v31 = self->_highPriorityStream;

    v32 = highPriorityAuthTagLength + v29;
    v89 = v31;
  }

  else
  {
    v32 = self->_mainAuthTagLength + v28;
  }

  if (v32 >> 24)
  {
LABEL_75:
    v43 = RPErrorF();
    v66 = 0;
    v41 = 0;
LABEL_77:
    v42 = 0;
    goto LABEL_69;
  }

  if (v32 >= 0x800000)
  {
    v33 = self->_ucat->var0;
    if (v33 <= 90)
    {
      if (v33 != -1)
      {
LABEL_29:
        linkType = self->_linkType;
        if (linkType > 0xB)
        {
          v35 = "?";
        }

        else
        {
          v35 = off_1E7C94188[linkType];
        }

        v77 = v35;
        code = [errorCopy code];
        v75 = 0;
        v76 = v32;
        v74 = spid;
        LogPrintF();
        goto LABEL_35;
      }

      v36 = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v37 = self->_ucat;
        goto LABEL_29;
      }
    }

LABEL_35:
    v38 = [optionsCopy objectForKeyedSubscript:{@"_rP", v74, v75, v76, v77, code}];
    0x7FFFFFLL = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d", v32, 0x7FFFFFLL];
    v40 = +[RPAutoBugCapture sharedReporter];
    [v40 reportIssueOfType:3 issueContext:@"sendEncryptedResponse" processName:v38 triggerThresholdValues:0x7FFFFFLL];
  }

  BYTE1(v94) = BYTE2(v32);
  BYTE2(v94) = BYTE1(v32);
  HIBYTE(v94) = v32;
  v41 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v94 length:4];
  if (!v89)
  {
    v43 = RPErrorF();
    v89 = 0;
    v66 = 0;
    goto LABEL_77;
  }

  v93 = 0;
  v42 = [(CUPairingStream *)v89 encryptData:v27 aadData:v41 error:&v93];
  v43 = v93;
  if (!v42)
  {
    v66 = 0;
    goto LABEL_69;
  }

  v44 = dCopy;
  v45 = v44;
  if (chatty)
  {
    v46 = 10;
  }

  else if ([v44 isEqual:@"_ftSm"] & 1) != 0 || (objc_msgSend(v45, "isEqual:", @"_ftLg"))
  {
    v46 = 9;
  }

  else if ([v45 isEqual:@"_ftRs"])
  {
    v46 = 9;
  }

  else
  {
    v46 = 30;
  }

  v47 = self->_ucat->var0;
  if (v46 < v47)
  {
    goto LABEL_56;
  }

  if (v47 != -1)
  {
    goto LABEL_48;
  }

  v50 = self->_ucat;
  if (_LogCategory_Initialize())
  {
    v51 = self->_ucat;
LABEL_48:
    v48 = self->_linkType;
    if (v48 > 0xB)
    {
      v49 = "?";
    }

    else
    {
      v49 = off_1E7C94188[v48];
    }

    code2 = [errorCopy code];
    v53 = "";
    if (priorityCopy)
    {
      v53 = " at high priority";
    }

    code = v53;
    v79 = code2;
    v76 = v32;
    v77 = v49;
    v74 = spid;
    v75 = v42;
    LogPrintF();
  }

LABEL_56:
  v54 = [RPConnectionMetrics sharedMetrics:v74];
  [v54 logMessageForClient:self->_initiator length:v32 linkType:self->_linkType];

  v55 = RPConnectionLog();
  v56 = v55;
  if (spid && os_signpost_enabled(v55))
  {
    label = self->_label;
    v58 = self->_linkType;
    if (v58 > 0xB)
    {
      v59 = "?";
    }

    else
    {
      v59 = off_1E7C94188[v58];
    }

    peerIdentifier = self->_peerIdentifier;
    *buf = 67110402;
    *&buf[4] = spid;
    *&buf[8] = 2112;
    *&buf[10] = label;
    *&buf[18] = 2048;
    *&buf[20] = v32;
    v108 = 2080;
    v109 = v59;
    v110 = 1024;
    v111 = priorityCopy;
    v112 = 2112;
    v113 = peerIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1B6E85000, v56, OS_SIGNPOST_INTERVAL_END, spid, "RPConnectionClientResponseTime", " enableTelemetry=YES {XID:0x%X, connectionID:%@, responseSize:%zu, linkType:%s, highPriority:%d, peer:%@, signpost.description:end_time}", buf, 0x36u);
  }

  v61 = [RPNWActivityMessageMetrics startMessageMetrics:3 withParent:0];
  v62 = v100[5];
  v100[5] = v61;

  [v100[5] setMessageSize:v32];
  [v100[5] setLinkType:self->_linkType];
  model = [(RPEndpoint *)self->_peerDeviceInfo model];
  [v100[5] setPeerDeviceModel:model];

  peerDeviceInfo = self->_peerDeviceInfo;
  if (peerDeviceInfo)
  {
    [(RPEndpoint *)peerDeviceInfo operatingSystemVersion];
  }

  else
  {
    v91 = 0uLL;
    v92 = 0;
  }

  v65 = v100[5];
  *buf = v91;
  *&buf[16] = v92;
  [v65 setPeerOSVersion:buf];
  [v100[5] submitMetrics];
  v66 = objc_alloc_init(MEMORY[0x1E6999570]);
  [v66 setCompletion:v82];
  if (v32)
  {
    v106[0] = v41;
    v106[1] = v42;
    v67 = v106;
    v68 = 2;
  }

  else
  {
    v105 = v41;
    v67 = &v105;
    v68 = 1;
  }

  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:v68];
  [v66 setDataArray:v69];

  [(CUReadWriteRequestable *)v81 writeWithRequest:v66];
LABEL_69:
  if (v43)
  {
    v70 = self->_ucat->var0;
    if (v70 <= 90)
    {
      if (v70 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_74;
        }

        v73 = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_74:

  _Block_object_dispose(&v99, 8);
  v71 = *MEMORY[0x1E69E9840];
}

void __104__RPConnection__sendEncryptedResponse_options_error_xid_requestID_highPriority_isChatty_replyStartTime___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) nwActivity];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) error];
    if (v3)
    {
      [RPNWActivityUtils failActivity:v4 error:v3];
    }

    else
    {
      nw_activity_complete_with_reason();
    }

    v2 = v4;
  }
}

- (void)sendReachabilityProbe:(const char *)probe
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  var0 = self->_ucat->var0;
  if (var0 <= 60)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(RPConnection *)self _sendFrameType:1 body:0];
}

- (void)processSendsUsingConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(NSMutableArray *)self->_sendArray count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_sendArray objectAtIndexedSubscript:v4];
      options = [v5 options];
      v7 = [(RPConnection *)self _isEligibleToSendWithOptions:options];

      if (v7)
      {
        [(NSMutableArray *)self->_sendArray removeObjectAtIndex:v4];
        options2 = [v5 options];
        v9 = 0.0;
        v10 = 0.0;
        if (options2)
        {
          options3 = [v5 options];
          CFDictionaryGetDouble();
          v10 = v12;
        }

        timer = [v5 timer];

        if (timer && v10 > 0.0)
        {
          mach_absolute_time();
          [v5 queueTicks];
          UpTicksToSecondsF();
          v15 = v10 - v14;
          if (v15 > 1.0)
          {
            v9 = v15;
          }

          else
          {
            v9 = 1.0;
          }

          options4 = [v5 options];
          v17 = [options4 mutableCopy];

          v18 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
          [v17 setObject:v18 forKeyedSubscript:@"timeoutSeconds"];

          [v5 setOptions:v17];
          timer2 = [v5 timer];
          dispatch_source_cancel(timer2);

          [v5 setTimer:0];
        }

        requestID = [v5 requestID];

        if (requestID)
        {
          var0 = self->_ucat->var0;
          if (var0 <= 30)
          {
            if (var0 != -1)
            {
              goto LABEL_15;
            }

            ucat = self->_ucat;
            if (_LogCategory_Initialize())
            {
              v38 = self->_ucat;
LABEL_15:
              requestID2 = [v5 requestID];
              [connectionCopy label];
              v42 = v9;
              v41 = v40 = requestID2;
              LogPrintF();
            }
          }

          requestID3 = [v5 requestID];
          request = [v5 request];
          xpcID = [v5 xpcID];
          options5 = [v5 options];
          responseHandler = [v5 responseHandler];
          [connectionCopy sendEncryptedRequestID:requestID3 request:request xpcID:xpcID options:options5 responseHandler:responseHandler];

LABEL_28:
          goto LABEL_29;
        }

        eventID = [v5 eventID];

        v24 = self->_ucat->var0;
        if (eventID)
        {
          if (v24 <= 30)
          {
            if (v24 != -1)
            {
              goto LABEL_20;
            }

            v32 = self->_ucat;
            if (_LogCategory_Initialize())
            {
              v39 = self->_ucat;
LABEL_20:
              eventID2 = [v5 eventID];
              [connectionCopy label];
              v41 = v40 = eventID2;
              LogPrintF();
            }
          }

          requestID3 = [v5 eventID];
          eventData = [v5 eventData];
          options6 = [v5 options];
          completion = [v5 completion];
          [connectionCopy sendEncryptedEventID:requestID3 data:eventData xid:0 options:options6 completion:completion];

          goto LABEL_28;
        }

        if (v24 <= 90)
        {
          if (v24 == -1)
          {
            v36 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_29;
            }

            v37 = self->_ucat;
          }

          LogPrintF();
        }
      }

      else
      {
        ++v4;
      }

LABEL_29:
    }

    while ([(NSMutableArray *)self->_sendArray count]> v4);
  }
}

- (void)_receiveStart:(id)start readFrame:(id *)frame requestable:(id)requestable
{
  startCopy = start;
  requestableCopy = requestable;
  var0 = self->_ucat->var0;
  if (self->_flowControlReadEnabled)
  {
    if (var0 <= 9)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_9:
    frame->var1 = 1;
    if (!startCopy)
    {
      startCopy = objc_alloc_init(MEMORY[0x1E6999518]);
    }

    [startCopy setBufferBytes:frame];
    [startCopy setBufferData:0];
    [startCopy setMinLength:4];
    [startCopy setMaxLength:4];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __52__RPConnection__receiveStart_readFrame_requestable___block_invoke;
    v17 = &unk_1E7C93C38;
    selfCopy = self;
    startCopy = startCopy;
    v19 = startCopy;
    frameCopy = frame;
    v11 = requestableCopy;
    v20 = v11;
    [startCopy setCompletion:&v14];
    [v11 readWithRequest:{startCopy, v14, v15, v16, v17, selfCopy}];
    frame->var2 = 1;

    goto LABEL_12;
  }

  if (var0 <= 9)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v12 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_12:
}

- (void)_receiveCompletion:(id)completion readFrame:(id *)frame requestable:(id)requestable
{
  completionCopy = completion;
  requestableCopy = requestable;
  frame->var2 = 0;
  error = [completionCopy error];
  if (error)
  {
    var0 = self->_ucat->var0;
    if (var0 > 60)
    {
      goto LABEL_15;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_15:
        v18 = _Block_copy(self->_readErrorHandler);
        v19 = v18;
        if (v18)
        {
          (*(v18 + 2))(v18, error);
        }

        goto LABEL_17;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
    goto LABEL_15;
  }

  if (!frame->var1)
  {
    v40 = 0;
    v16 = [completionCopy length];
    v39 = v16;
    v17 = self->_ucat->var0;
    if (v17 <= 9)
    {
      if (v17 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        v33 = self->_ucat;
      }

      v37 = v16;
      LogPrintF();
    }

LABEL_27:
    v22 = completionCopy;
LABEL_28:
    data = [v22 data];
    [(RPConnection *)self _receivedHeader:frame body:data ctx:&v39];

    [(RPConnection *)self _receiveStart:completionCopy readFrame:frame requestable:requestableCopy];
    goto LABEL_38;
  }

  v12 = frame->var0.var1[0];
  v13 = frame->var0.var1[2] | (v12 << 16) | (frame->var0.var1[1] << 8);
  v14 = frame->var0.var0;
  if ((v14 - 3) > 3 || v13 <= 0x4000)
  {
    if ((v12 & 0x80000000) == 0)
    {
      if (!v13)
      {
        v20 = self->_ucat->var0;
        if (v20 <= 9)
        {
          if (v20 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_40;
            }

            v36 = self->_ucat;
          }

          LogPrintF();
        }

LABEL_40:
        v39 = 0;
        v40 = [completionCopy statusFlags] & 1;
        v22 = MEMORY[0x1E695DEF0];
        goto LABEL_28;
      }

LABEL_33:
      v28 = self->_ucat->var0;
      if (v28 <= 9)
      {
        if (v28 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_37;
          }

          v34 = self->_ucat;
        }

        v37 = v13;
        LogPrintF();
      }

LABEL_37:
      frame->var1 = 0;
      [completionCopy setBufferBytes:{0, v37}];
      [completionCopy setBufferData:0];
      [completionCopy setMinLength:v13];
      [completionCopy setMaxLength:v13];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __57__RPConnection__receiveCompletion_readFrame_requestable___block_invoke;
      v41[3] = &unk_1E7C93C38;
      v41[4] = self;
      v29 = completionCopy;
      v42 = v29;
      frameCopy = frame;
      v30 = requestableCopy;
      v43 = v30;
      [v29 setCompletion:v41];
      [v30 readWithRequest:v29];
      frame->var2 = 1;

      goto LABEL_38;
    }

    v21 = self->_ucat->var0;
    if (v21 <= 90)
    {
      if (v21 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        v35 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_32:
    0x7FFFFFLL = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d", v13, 0x7FFFFFLL];
    v27 = +[RPAutoBugCapture sharedReporter];
    [v27 reportIssueOfType:4 issueContext:@"receiveFrameHeader" processName:@"rapportd" triggerThresholdValues:0x7FFFFFLL];

    goto LABEL_33;
  }

  v15 = self->_ucat->var0;
  if (v15 <= 90)
  {
    if (v15 != -1)
    {
      goto LABEL_41;
    }

    if (_LogCategory_Initialize())
    {
      v24 = self->_ucat;
      v25 = frame->var0.var0;
LABEL_41:
      v38 = v13;
      LogPrintF();
    }
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"len:%zu, check:%d", v13, 0x4000, v38];
  v31 = +[RPAutoBugCapture sharedReporter];
  [v31 reportIssueOfType:5 issueContext:@"receivePairVerifyHeader" processName:@"rapportd" triggerThresholdValues:v19];

LABEL_17:
LABEL_38:
}

- (void)_receivedHeader:(id *)header body:(id)body ctx:(id *)ctx
{
  bodyCopy = body;
  ++self->_receivedFrameCountCurrent;
  var0 = header->var0;
  v10 = self->_ucat->var0;
  v36 = bodyCopy;
  if (v10 <= 9)
  {
    if (v10 == -1)
    {
      v12 = _LogCategory_Initialize();
      bodyCopy = v36;
      if (!v12)
      {
        goto LABEL_36;
      }

      ucat = self->_ucat;
    }

    if (var0 <= 47)
    {
      v11 = "Invalid";
      switch(var0)
      {
        case 0:
          goto LABEL_35;
        case 1:
          v11 = "NoOp";
          break;
        case 3:
          v11 = "PS_Start";
          break;
        case 4:
          v11 = "PS_Next";
          break;
        case 5:
          v11 = "PV_Start";
          break;
        case 6:
          v11 = "PV_Next";
          break;
        case 7:
          v11 = "U_OPACK";
          break;
        case 8:
          v11 = "E_OPACK";
          break;
        case 9:
          v11 = "P_OPACK";
          break;
        case 10:
          v11 = "PA_Req";
          break;
        case 11:
          v11 = "PA_Rsp";
          break;
        case 16:
          v11 = "SessionStartRequest";
          break;
        case 17:
          v11 = "SessionStartResponse";
          break;
        case 18:
          v11 = "SessionData";
          break;
        case 32:
          v11 = "FamilyIdentityRequest";
          break;
        case 33:
          v11 = "FamilyIdentityResponse";
          break;
        case 34:
          v11 = "FamilyIdentityUpdate";
          break;
        default:
          goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (var0 <= 63)
    {
      if (var0 == 48)
      {
        v11 = "WatchIdentityRequest";
        goto LABEL_35;
      }

      if (var0 == 49)
      {
        v11 = "WatchIdentityResponse";
        goto LABEL_35;
      }
    }

    else
    {
      switch(var0)
      {
        case '@':
          v11 = "FriendIdentityRequest";
          goto LABEL_35;
        case 'A':
          v11 = "FriendIdentityResponse";
          goto LABEL_35;
        case 'B':
          v11 = "FriendIdentityUpdate";
LABEL_35:
          v35 = [bodyCopy length];
          v33 = v11;
          v34 = v36;
          v32 = var0;
          LogPrintF();
          bodyCopy = v36;
          goto LABEL_36;
      }
    }

LABEL_34:
    v11 = "?";
    goto LABEL_35;
  }

LABEL_36:
  if (var0 <= 5)
  {
    if (var0 > 3)
    {
      if (var0 != 4)
      {
        if (self->_clientMode)
        {
          v15 = self->_ucat->var0;
          if (v15 > 60)
          {
            goto LABEL_92;
          }

          if (v15 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_92;
            }

            v29 = self->_ucat;
          }

          goto LABEL_91;
        }

        selfCopy4 = self;
        v20 = bodyCopy;
        v23 = 1;
        goto LABEL_76;
      }

      selfCopy3 = self;
      v17 = bodyCopy;
      if (self->_clientMode)
      {
        [(RPConnection *)self _clientPairSetupWithData:bodyCopy];
        goto LABEL_92;
      }

      v22 = 0;
    }

    else
    {
      if (var0 == 1)
      {
        goto LABEL_92;
      }

      if (var0 != 3)
      {
        goto LABEL_67;
      }

      if (self->_clientMode)
      {
        v14 = self->_ucat->var0;
        if (v14 > 60)
        {
          goto LABEL_92;
        }

        if (v14 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_92;
          }

          v28 = self->_ucat;
        }

        goto LABEL_91;
      }

      selfCopy3 = self;
      v17 = bodyCopy;
      v22 = 1;
    }

    [(RPConnection *)selfCopy3 _serverPairSetupWithData:v17 start:v22, v32, v33, v34, v35];
    goto LABEL_92;
  }

  if (var0 <= 9)
  {
    if (var0 != 6)
    {
      if (var0 != 8)
      {
LABEL_67:
        v21 = self->_ucat->var0;
        if (v21 > 60)
        {
          goto LABEL_92;
        }

        if (v21 == -1)
        {
          v25 = self->_ucat;
          v26 = _LogCategory_Initialize();
          bodyCopy = v36;
          if (!v26)
          {
            goto LABEL_92;
          }

          v27 = self->_ucat;
        }

        [bodyCopy length];
LABEL_91:
        LogPrintF();
        goto LABEL_92;
      }

LABEL_56:
      [(RPConnection *)self _receivedHeader:header encryptedObjectData:v36 ctx:ctx, v32, v33, v34, v35];
      goto LABEL_92;
    }

    selfCopy4 = self;
    v20 = bodyCopy;
    if (self->_clientMode)
    {
      [(RPConnection *)self _clientPairVerifyWithData:bodyCopy];
      goto LABEL_92;
    }

    v23 = 0;
LABEL_76:
    [(RPConnection *)selfCopy4 _serverPairVerifyWithData:v20 start:v23, v32, v33, v34, v35];
    goto LABEL_92;
  }

  if (var0 == 10)
  {
    if (!self->_clientMode)
    {
      [(RPConnection *)self _serverPreAuthRequestWithData:bodyCopy];
      goto LABEL_92;
    }

    v18 = self->_ucat->var0;
    if (v18 > 60)
    {
      goto LABEL_92;
    }

    if (v18 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_92;
      }

      v30 = self->_ucat;
    }

    goto LABEL_91;
  }

  if (var0 != 11)
  {
    if (var0 != 12)
    {
      goto LABEL_67;
    }

    goto LABEL_56;
  }

  if (self->_clientMode)
  {
    [(RPConnection *)self _clientPreAuthResponseWithData:bodyCopy];
    goto LABEL_92;
  }

  v24 = self->_ucat->var0;
  if (v24 <= 60)
  {
    if (v24 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_92;
      }

      v31 = self->_ucat;
    }

    goto LABEL_91;
  }

LABEL_92:

  MEMORY[0x1EEE66C30]();
}

- (void)_receivedObject:(id)object ctx:(id *)ctx
{
  objectCopy = object;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 3)
  {
    [(RPConnection *)self _receivedResponse:objectCopy ctx:ctx];
    goto LABEL_10;
  }

  if (Int64Ranged == 2)
  {
    [(RPConnection *)self _receivedRequest:objectCopy ctx:ctx];
    goto LABEL_10;
  }

  v7 = objectCopy;
  if (Int64Ranged == 1)
  {
    [(RPConnection *)self _receivedEvent:objectCopy ctx:ctx];
LABEL_10:
    v7 = objectCopy;
    goto LABEL_11;
  }

  var0 = self->_ucat->var0;
  if (var0 > 60)
  {
    goto LABEL_11;
  }

  if (var0 != -1)
  {
LABEL_9:
    LogPrintF();
    goto LABEL_10;
  }

  v9 = _LogCategory_Initialize();
  v7 = objectCopy;
  if (v9)
  {
    ucat = self->_ucat;
    goto LABEL_9;
  }

LABEL_11:
}

- (void)_receivedEvent:(id)event ctx:(id *)ctx
{
  v94 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  CFDictionaryGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (v7)
  {
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    if (v8)
    {
      Int64 = CFDictionaryGetInt64();
      CFStringGetTypeID();
      v10 = CFDictionaryGetTypedValue();
      if (v10 && !self->_clientMode)
      {
        inUseProcesses = self->_inUseProcesses;
        if (!inUseProcesses)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v13 = self->_inUseProcesses;
          self->_inUseProcesses = v12;

          inUseProcesses = self->_inUseProcesses;
        }

        [(NSMutableSet *)inUseProcesses addObject:v10];
        var0 = self->_ucat->var0;
        if (var0 <= 30)
        {
          if (var0 != -1)
          {
LABEL_9:
            inUseProcessesToString = [(RPConnection *)self inUseProcessesToString];
            LogPrintF();

            goto LABEL_21;
          }

          ucat = self->_ucat;
          if (_LogCategory_Initialize())
          {
            v60 = self->_ucat;
            goto LABEL_9;
          }
        }
      }

LABEL_21:
      v78 = NSDictionaryGetNSNumber();
      unsignedIntValue = [v78 unsignedIntValue];
      if (!Int64)
      {
        v21 = v8;
        if (([v21 isEqual:@"HIDRelay"] & 1) != 0 || (objc_msgSend(v21, "isEqual:", @"synchSetupStateFromStereoCounterpart") & 1) != 0 || (objc_msgSend(v21, "isEqual:", @"_hidT") & 1) != 0 || objc_msgSend(v21, "isEqual:", @"_laData"))
        {
        }

        else
        {
          v58 = [v21 isEqual:@"_siA"];

          if (!v58)
          {
            v22 = 30;
LABEL_28:
            v23 = self->_ucat->var0;
            if (v22 >= v23)
            {
              if (v23 == -1)
              {
                v24 = self->_ucat;
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_32;
                }

                v59 = self->_ucat;
              }

              v65 = [v7 count];
              peerIdentifier = self->_peerIdentifier;
              inUseProcessesToString = v8;
              v64 = unsignedIntValue;
              LogPrintF();
            }

LABEL_32:
            if ([v8 isEqual:{@"_systemInfoUpdate", inUseProcessesToString, v64, v65, peerIdentifier}])
            {
              [(RPConnection *)self _receivedSystemInfo:v7 xid:0];
            }

            else if (self->_receivedEventHandler)
            {
              v76 = v10;
              v25 = self->_peerIdentifier;
              if (!v25)
              {
                v25 = @"?";
              }

              v77 = v25;
              if ([v8 isEqualToString:@"ids-message"])
              {
                publicIdentifier = [(RPCompanionLinkDevice *)self->_peerDeviceInfo publicIdentifier];

                if (publicIdentifier)
                {
                  publicIdentifier2 = [(RPCompanionLinkDevice *)self->_peerDeviceInfo publicIdentifier];

                  v77 = publicIdentifier2;
                }
              }

              peerDeviceInfo = self->_peerDeviceInfo;
              v79[0] = @"dlt";
              v29 = MEMORY[0x1E696AD98];
              linkType = self->_linkType;
              v31 = peerDeviceInfo;
              v75 = [v29 numberWithInt:linkType];
              v80[0] = v75;
              v79[1] = @"senderIDSCID";
              idsCorrelationIdentifier = [(RPEndpoint *)v31 idsCorrelationIdentifier];
              v74 = idsCorrelationIdentifier;
              if (idsCorrelationIdentifier)
              {
                v33 = idsCorrelationIdentifier;
              }

              else
              {
                v33 = &stru_1F2ED6FB8;
              }

              v80[1] = v33;
              v79[2] = @"length";
              v73 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:ctx->var0];
              v80[2] = v73;
              v79[3] = @"moreComing";
              v72 = [MEMORY[0x1E696AD98] numberWithBool:ctx->var1];
              v80[3] = v72;
              v79[4] = @"peerAddr";
              v79[5] = @"peerHomeKitUserIdentifier";
              v81 = vbslq_s8(vceqzq_s64(*&self->_peerAddrString), vdupq_n_s64(&stru_1F2ED6FB8), *&self->_peerAddrString);
              v79[6] = @"peerVerifiedIdentity";
              verifiedIdentity = [(RPEndpoint *)v31 verifiedIdentity];
              v71 = verifiedIdentity;
              if (verifiedIdentity)
              {
                v35 = verifiedIdentity;
              }

              else
              {
                v35 = @"?";
              }

              selfAddrString = self->_selfAddrString;
              if (!selfAddrString)
              {
                selfAddrString = &stru_1F2ED6FB8;
              }

              v82 = v35;
              v83 = selfAddrString;
              v79[7] = @"selfAddr";
              v79[8] = @"senderAccountAltDSID";
              accountAltDSID = [(RPEndpoint *)v31 accountAltDSID];
              v70 = accountAltDSID;
              if (accountAltDSID)
              {
                v38 = accountAltDSID;
              }

              else
              {
                v38 = &stru_1F2ED6FB8;
              }

              v84 = v38;
              v79[9] = @"senderAccountID";
              accountID = [(RPEndpoint *)v31 accountID];
              v69 = accountID;
              if (accountID)
              {
                v40 = accountID;
              }

              else
              {
                v40 = &stru_1F2ED6FB8;
              }

              v85 = v40;
              v79[10] = @"senderDeviceName";
              name = [(RPEndpoint *)v31 name];
              v68 = name;
              if (name)
              {
                v42 = name;
              }

              else
              {
                v42 = &stru_1F2ED6FB8;
              }

              v86 = v42;
              v79[11] = @"senderFileTransferTargetID";
              idsDeviceIdentifier = [(RPEndpoint *)v31 idsDeviceIdentifier];
              v67 = idsDeviceIdentifier;
              if (idsDeviceIdentifier)
              {
                v44 = idsDeviceIdentifier;
              }

              else
              {
                v44 = @"?";
              }

              v87 = v44;
              v88 = v77;
              v79[12] = @"senderID";
              v79[13] = @"senderIDS";
              idsDeviceIdentifier2 = [(RPEndpoint *)v31 idsDeviceIdentifier];
              v46 = idsDeviceIdentifier2;
              if (idsDeviceIdentifier2)
              {
                v47 = idsDeviceIdentifier2;
              }

              else
              {
                v47 = @"?";
              }

              v89 = v47;
              v79[14] = @"senderModelID";
              model = [(RPEndpoint *)v31 model];
              v49 = model;
              if (model)
              {
                v50 = model;
              }

              else
              {
                v50 = @"?";
              }

              v90 = v50;
              v79[15] = @"statusFlags";
              v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RPEndpoint statusFlags](v31, "statusFlags")}];
              v91 = v51;
              v79[16] = @"senderSessionPairingID";
              sessionPairingIdentifier = [(RPEndpoint *)v31 sessionPairingIdentifier];
              v53 = sessionPairingIdentifier;
              v54 = &stru_1F2ED6FB8;
              if (sessionPairingIdentifier)
              {
                v54 = sessionPairingIdentifier;
              }

              v79[17] = @"xid";
              v55 = &unk_1F2EEC728;
              if (v78)
              {
                v55 = v78;
              }

              v92 = v54;
              v93 = v55;
              v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:18];

              (*(self->_receivedEventHandler + 2))();
              v10 = v76;
            }

            goto LABEL_72;
          }
        }
      }

      v22 = 10;
      goto LABEL_28;
    }

    v16 = self->_ucat->var0;
    if (v16 <= 90)
    {
      if (v16 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_72;
        }

        v18 = self->_ucat;
      }

      v63 = self->_peerIdentifier;
      LogPrintF();
    }

LABEL_72:

    goto LABEL_73;
  }

  v15 = self->_ucat->var0;
  if (v15 <= 90)
  {
    if (v15 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_73;
      }

      v17 = self->_ucat;
    }

    v62 = self->_peerIdentifier;
    LogPrintF();
  }

LABEL_73:

  v57 = *MEMORY[0x1E69E9840];
}

- (void)_receivedRequest:(id)request ctx:(id *)ctx
{
  v134 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v109 = 0;
  v7 = NSDictionaryGetNSNumber();
  unsignedIntValue = [v7 unsignedIntValue];
  if (unsignedIntValue)
  {
    v9 = unsignedIntValue;
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      CFDictionaryGetTypeID();
      v11 = CFDictionaryGetTypedValue();
      v12 = v11;
      if (v11)
      {
        v104 = v11;
        Int64 = CFDictionaryGetInt64();
        v100 = Int64 != 0;
        v13 = CFDictionaryGetInt64();
        v99 = v13 != 0;
        v97 = CFDictionaryGetInt64();
        CFStringGetTypeID();
        v14 = CFDictionaryGetTypedValue();
        if (v14 && !self->_clientMode)
        {
          inUseProcesses = self->_inUseProcesses;
          if (!inUseProcesses)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v17 = self->_inUseProcesses;
            self->_inUseProcesses = v16;

            inUseProcesses = self->_inUseProcesses;
          }

          [(NSMutableSet *)inUseProcesses addObject:v14];
          var0 = self->_ucat->var0;
          if (var0 <= 30)
          {
            if (var0 != -1)
            {
LABEL_10:
              inUseProcessesToString = [(RPConnection *)self inUseProcessesToString];
              LogPrintF();

              goto LABEL_27;
            }

            ucat = self->_ucat;
            if (_LogCategory_Initialize())
            {
              v75 = self->_ucat;
              goto LABEL_10;
            }
          }
        }

LABEL_27:
        v103 = v14;
        v26 = RPConnectionLog();
        if (os_signpost_enabled(v26))
        {
          uTF8String = [v10 UTF8String];
          label = self->_label;
          peerIdentifier = self->_peerIdentifier;
          *buf = 67109890;
          v127 = v9;
          v128 = 2080;
          v129 = uTF8String;
          v130 = 2112;
          v131 = label;
          v132 = 2112;
          v133 = peerIdentifier;
          _os_signpost_emit_with_name_impl(&dword_1B6E85000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RPConnectionClientResponseTime", " enableTelemetry=YES {XID:0x%X, requestID=%{signpost.telemetry:string1}s, connectionID:%@, peer:%@, signpost.description:begin_time}", buf, 0x26u);
        }

        v30 = v10;
        v31 = v30;
        if (v13)
        {
          v32 = 10;
        }

        else if ([v30 isEqual:@"_ftSm"])
        {
          v32 = 9;
        }

        else
        {
          v32 = 9;
          if (([v31 isEqual:@"_ftLg"] & 1) == 0)
          {
            if ([v31 isEqual:@"_ftRs"])
            {
              v32 = 9;
            }

            else
            {
              v32 = 30;
            }
          }
        }

        v33 = self->_ucat->var0;
        if (v32 >= v33)
        {
          if (v33 != -1)
          {
LABEL_39:
            v81 = [v104 count];
            v84 = self->_peerIdentifier;
            inUseProcessesToString = v31;
            v79 = v9;
            LogPrintF();
            goto LABEL_41;
          }

          v34 = self->_ucat;
          if (_LogCategory_Initialize())
          {
            v74 = self->_ucat;
            goto LABEL_39;
          }
        }

LABEL_41:
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
        if ([v31 isEqual:@"_ping"])
        {
          LOBYTE(inUseProcessesToString) = v13 != 0;
          v12 = v104;
          [(RPConnection *)self _sendEncryptedResponse:v104 options:0 error:0 xid:v7 requestID:v31 highPriority:Int64 != 0 isChatty:inUseProcessesToString replyStartTime:v35, v81, v84];
          v36 = v35;
LABEL_82:

          goto LABEL_83;
        }

        v96 = v35;
        if ([v31 isEqual:@"_systemInfo"])
        {
          v12 = v104;
          [(RPConnection *)self _receivedSystemInfo:v104 xid:v7];
          v36 = v35;
          goto LABEL_82;
        }

        if (self->_receivedRequestHandler)
        {
          v92 = v97 != 0;
          v37 = v13 != 0;
          peerDeviceInfo = self->_peerDeviceInfo;
          v110[0] = @"dlt";
          v39 = MEMORY[0x1E696AD98];
          linkType = self->_linkType;
          v41 = peerDeviceInfo;
          v102 = [v39 numberWithInt:linkType];
          v111[0] = v102;
          v110[1] = @"senderIDSCID";
          idsCorrelationIdentifier = [(RPEndpoint *)v41 idsCorrelationIdentifier];
          v98 = idsCorrelationIdentifier;
          if (idsCorrelationIdentifier)
          {
            v43 = idsCorrelationIdentifier;
          }

          else
          {
            v43 = &stru_1F2ED6FB8;
          }

          v111[1] = v43;
          v110[2] = @"length";
          v95 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{ctx->var0, inUseProcessesToString, v79, v81, v84}];
          v111[2] = v95;
          v110[3] = @"chatty";
          v94 = [MEMORY[0x1E696AD98] numberWithBool:v37];
          v111[3] = v94;
          v110[4] = @"moreComing";
          v91 = [MEMORY[0x1E696AD98] numberWithBool:ctx->var1];
          v111[4] = v91;
          v110[5] = @"peerAddr";
          v110[6] = @"peerHomeKitUserIdentifier";
          v112 = vbslq_s8(vceqzq_s64(*&self->_peerAddrString), vdupq_n_s64(&stru_1F2ED6FB8), *&self->_peerAddrString);
          v110[7] = @"peerVerifiedIdentity";
          verifiedIdentity = [(RPEndpoint *)self->_peerDeviceInfo verifiedIdentity];
          v90 = verifiedIdentity;
          if (verifiedIdentity)
          {
            v45 = verifiedIdentity;
          }

          else
          {
            v45 = @"?";
          }

          selfAddrString = self->_selfAddrString;
          if (!selfAddrString)
          {
            selfAddrString = &stru_1F2ED6FB8;
          }

          v113 = v45;
          v114 = selfAddrString;
          v110[8] = @"selfAddr";
          v110[9] = @"senderAccountAltDSID";
          accountAltDSID = [(RPEndpoint *)v41 accountAltDSID];
          v89 = accountAltDSID;
          if (accountAltDSID)
          {
            v48 = accountAltDSID;
          }

          else
          {
            v48 = &stru_1F2ED6FB8;
          }

          v115 = v48;
          v110[10] = @"senderAccountID";
          accountID = [(RPEndpoint *)v41 accountID];
          v87 = accountID;
          if (accountID)
          {
            v50 = accountID;
          }

          else
          {
            v50 = &stru_1F2ED6FB8;
          }

          v116 = v50;
          v110[11] = @"senderDeviceName";
          name = [(RPEndpoint *)v41 name];
          v86 = name;
          if (name)
          {
            v52 = name;
          }

          else
          {
            v52 = &stru_1F2ED6FB8;
          }

          v117 = v52;
          v110[12] = @"senderFileTransferTargetID";
          idsDeviceIdentifier = [(RPEndpoint *)v41 idsDeviceIdentifier];
          v85 = idsDeviceIdentifier;
          if (idsDeviceIdentifier)
          {
            v54 = idsDeviceIdentifier;
          }

          else
          {
            v54 = @"?";
          }

          v55 = self->_peerIdentifier;
          if (!v55)
          {
            v55 = @"?";
          }

          v118 = v54;
          v119 = v55;
          v110[13] = @"senderID";
          v110[14] = @"senderIDS";
          idsDeviceIdentifier2 = [(RPEndpoint *)v41 idsDeviceIdentifier];
          v57 = idsDeviceIdentifier2;
          if (idsDeviceIdentifier2)
          {
            v58 = idsDeviceIdentifier2;
          }

          else
          {
            v58 = @"?";
          }

          v120 = v58;
          v110[15] = @"senderModelID";
          model = [(RPEndpoint *)v41 model];
          v60 = model;
          if (model)
          {
            v61 = model;
          }

          else
          {
            v61 = @"?";
          }

          v121 = v61;
          v110[16] = @"statusFlags";
          v88 = v41;
          v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RPEndpoint statusFlags](v41, "statusFlags")}];
          v122 = v62;
          v110[17] = @"senderSessionPairingID";
          sessionPairingIdentifier = [(RPEndpoint *)v41 sessionPairingIdentifier];
          v64 = sessionPairingIdentifier;
          v65 = &stru_1F2ED6FB8;
          if (sessionPairingIdentifier)
          {
            v65 = sessionPairingIdentifier;
          }

          v123 = v65;
          v124 = v7;
          v110[18] = @"xid";
          v110[19] = @"_pttEligible";
          v66 = [MEMORY[0x1E696AD98] numberWithBool:v92];
          v125 = v66;
          v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:20];

          receivedRequestHandler = self->_receivedRequestHandler;
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __37__RPConnection__receivedRequest_ctx___block_invoke;
          v105[3] = &unk_1E7C93C60;
          v105[4] = self;
          v105[5] = v31;
          v105[6] = v7;
          v107 = v100;
          v108 = v99;
          v36 = v96;
          v106 = v96;
          v68 = receivedRequestHandler[2];
          v69 = receivedRequestHandler;
          v12 = v104;
          v68(v69, v31, v104, v93, v105);

          goto LABEL_82;
        }

        v70 = self->_ucat->var0;
        if (v70 <= 90)
        {
          if (v70 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_81;
            }

            v76 = self->_ucat;
          }

          v83 = self->_peerIdentifier;
          inUseProcessesToString = v31;
          LogPrintF();
        }

LABEL_81:
        v71 = v13 != 0;
        v72 = RPErrorF();
        v36 = v96;
        LOBYTE(inUseProcessesToString) = v71;
        [(RPConnection *)self _sendEncryptedResponse:0 options:0 error:v72 xid:v7 requestID:v31 highPriority:Int64 != 0 isChatty:inUseProcessesToString replyStartTime:v96];

        v12 = v104;
        goto LABEL_82;
      }

      v21 = self->_ucat->var0;
      if (v21 <= 90)
      {
        if (v21 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_83;
          }

          v24 = self->_ucat;
        }

        v82 = self->_peerIdentifier;
        LogPrintF();
      }

LABEL_83:

      goto LABEL_84;
    }

    v20 = self->_ucat->var0;
    if (v20 <= 90)
    {
      if (v20 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_84;
        }

        v23 = self->_ucat;
      }

      v80 = self->_peerIdentifier;
      LogPrintF();
    }

LABEL_84:

    goto LABEL_85;
  }

  v19 = self->_ucat->var0;
  if (v19 <= 90)
  {
    if (v19 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_85;
      }

      v22 = self->_ucat;
    }

    v78 = self->_peerIdentifier;
    LogPrintF();
  }

LABEL_85:

  v73 = *MEMORY[0x1E69E9840];
}

void __37__RPConnection__receivedRequest_ctx___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (*(v9 + 80) == 1)
  {
    v10 = **(v9 + 296);
    if (v10 > 90)
    {
      goto LABEL_6;
    }

    if (v10 != -1)
    {
      goto LABEL_4;
    }

    v11 = *(v9 + 296);
    if (_LogCategory_Initialize())
    {
      v9 = *(a1 + 32);
      v12 = *(v9 + 296);
LABEL_4:
      v14 = *(a1 + 40);
      v15 = *(v9 + 672);
      LogPrintF();
    }
  }

  else
  {
    LOBYTE(v13) = *(a1 + 65);
    [v9 _sendEncryptedResponse:v16 options:v7 error:v8 xid:*(a1 + 48) requestID:*(a1 + 40) highPriority:*(a1 + 64) isChatty:v13 replyStartTime:*(a1 + 56)];
  }

LABEL_6:
}

- (void)_receivedResponse:(id)response ctx:(id *)ctx
{
  v127 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v7 = NSDictionaryGetNSNumber();
  unsignedIntValue = [v7 unsignedIntValue];
  if (unsignedIntValue)
  {
    v9 = unsignedIntValue;
    v10 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:v7];
    if (v10)
    {
      [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:v7];
      requestID = [v10 requestID];
      options = [v10 options];
      timer = [v10 timer];
      [v10 setTimer:0];
      if (timer)
      {
        dispatch_source_cancel(timer);
      }

      CFDictionaryGetTypeID();
      v14 = CFDictionaryGetTypedValue();
      v15 = v14;
      if (v14)
      {
        v99 = v14;
        mach_absolute_time();
        [v10 sendTicks];
        v97 = UpTicksToMilliseconds();
        v98 = RPDecodeNSError(responseCopy);
        if (v98)
        {
          var0 = self->_ucat->var0;
          v17 = v98;
          v15 = v99;
          if (var0 <= 90)
          {
            if (var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_30;
              }

              ucat = self->_ucat;
            }

            peerIdentifier = self->_peerIdentifier;
            v81 = v97;
            v75 = v9;
            v77 = v98;
            LogPrintF();
          }

LABEL_30:
          responseHandler = [v10 responseHandler];
          responseHandler[2](responseHandler, 0, 0, v98);
LABEL_76:

          goto LABEL_77;
        }

        Int64 = CFDictionaryGetInt64();
        v95 = options;
        v21 = CFDictionaryGetInt64();
        v22 = RPConnectionLog();
        v93 = timer;
        v94 = requestID;
        if (os_signpost_enabled(v22))
        {
          label = self->_label;
          v24 = [v10 length];
          v25 = self->_peerIdentifier;
          *buf = 67110402;
          v116 = v9;
          v117 = 2112;
          v118 = label;
          requestID = v94;
          v119 = 2048;
          v120 = v97;
          v121 = 2048;
          v122 = v24;
          v123 = 2048;
          v124 = Int64;
          v125 = 2112;
          v126 = v25;
          _os_signpost_emit_with_name_impl(&dword_1B6E85000, v22, OS_SIGNPOST_INTERVAL_END, v9, "RPConnectionSendRequestTime", " enableTelemetry=YES {XID:0x%X, connectionID:%@, rtt:%llu, requestSize:%zu, responseSize:%zu, peer:%@, signpost.description:end_time}", buf, 0x3Au);
        }

        v26 = requestID;
        v27 = v26;
        if (v21)
        {
          v28 = 10;
        }

        else if ([v26 isEqual:@"_ftSm"])
        {
          v28 = 9;
        }

        else
        {
          v28 = 9;
          if (([v27 isEqual:@"_ftLg"] & 1) == 0)
          {
            if ([v27 isEqual:@"_ftRs"])
            {
              v28 = 9;
            }

            else
            {
              v28 = 30;
            }
          }
        }

        v33 = self->_ucat->var0;
        if (v28 >= v33)
        {
          if (v33 == -1)
          {
            v36 = self->_ucat;
            if (!_LogCategory_Initialize())
            {
              goto LABEL_41;
            }

            v74 = self->_ucat;
          }

          v34 = [v99 count];
          v35 = self->_peerIdentifier;
          v82 = [v10 length];
          v83 = Int64;
          peerIdentifier = v35;
          v81 = v97;
          v75 = v9;
          v77 = v34;
          LogPrintF();
        }

LABEL_41:
        v37 = [v95 objectForKeyedSubscript:{@"nwActivityMetrics", v75, v77, peerIdentifier, v81, v82, v83}];
        v38 = v37;
        if (v37)
        {
          [v37 setResponseSize:Int64];
          *buf = 0;
          v39 = CFDictionaryGetInt64();
          if (!*buf)
          {
            [v38 setReplyTime:v39];
          }

          [v38 submitMetrics];
        }

        peerDeviceInfo = self->_peerDeviceInfo;
        v100[0] = @"dlt";
        spid = v38;
        v41 = MEMORY[0x1E696AD98];
        linkType = self->_linkType;
        v43 = peerDeviceInfo;
        v91 = [v41 numberWithInt:linkType];
        v101[0] = v91;
        v100[1] = @"senderIDSCID";
        idsCorrelationIdentifier = [(RPEndpoint *)v43 idsCorrelationIdentifier];
        v90 = idsCorrelationIdentifier;
        if (idsCorrelationIdentifier)
        {
          v45 = idsCorrelationIdentifier;
        }

        else
        {
          v45 = &stru_1F2ED6FB8;
        }

        v101[1] = v45;
        v100[2] = @"length";
        v89 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:ctx->var0];
        v101[2] = v89;
        v100[3] = @"peerAddr";
        v100[4] = @"peerHomeKitUserIdentifier";
        v102 = vbslq_s8(vceqzq_s64(*&self->_peerAddrString), vdupq_n_s64(&stru_1F2ED6FB8), *&self->_peerAddrString);
        selfAddrString = self->_selfAddrString;
        if (!selfAddrString)
        {
          selfAddrString = &stru_1F2ED6FB8;
        }

        v103 = selfAddrString;
        v100[5] = @"selfAddr";
        v100[6] = @"peerVerifiedIdentity";
        verifiedIdentity = [(RPEndpoint *)v43 verifiedIdentity];
        v88 = verifiedIdentity;
        if (verifiedIdentity)
        {
          v48 = verifiedIdentity;
        }

        else
        {
          v48 = @"?";
        }

        v104 = v48;
        v100[7] = @"senderAccountAltDSID";
        accountAltDSID = [(RPEndpoint *)v43 accountAltDSID];
        v87 = accountAltDSID;
        if (accountAltDSID)
        {
          v50 = accountAltDSID;
        }

        else
        {
          v50 = &stru_1F2ED6FB8;
        }

        v105 = v50;
        v100[8] = @"senderAccountID";
        accountID = [(RPEndpoint *)v43 accountID];
        v86 = accountID;
        if (accountID)
        {
          v52 = accountID;
        }

        else
        {
          v52 = &stru_1F2ED6FB8;
        }

        v106 = v52;
        v100[9] = @"senderDeviceName";
        name = [(RPEndpoint *)v43 name];
        v85 = name;
        if (name)
        {
          v54 = name;
        }

        else
        {
          v54 = &stru_1F2ED6FB8;
        }

        v107 = v54;
        v100[10] = @"senderFileTransferTargetID";
        idsDeviceIdentifier = [(RPEndpoint *)v43 idsDeviceIdentifier];
        v84 = idsDeviceIdentifier;
        if (idsDeviceIdentifier)
        {
          v56 = idsDeviceIdentifier;
        }

        else
        {
          v56 = @"?";
        }

        v57 = self->_peerIdentifier;
        if (!v57)
        {
          v57 = @"?";
        }

        v108 = v56;
        v109 = v57;
        v100[11] = @"senderID";
        v100[12] = @"senderIDS";
        idsDeviceIdentifier2 = [(RPEndpoint *)v43 idsDeviceIdentifier];
        v59 = idsDeviceIdentifier2;
        if (idsDeviceIdentifier2)
        {
          v60 = idsDeviceIdentifier2;
        }

        else
        {
          v60 = @"?";
        }

        v110 = v60;
        v100[13] = @"senderModelID";
        model = [(RPEndpoint *)v43 model];
        v62 = model;
        if (model)
        {
          v63 = model;
        }

        else
        {
          v63 = @"?";
        }

        v111 = v63;
        v100[14] = @"statusFlags";
        v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RPEndpoint statusFlags](v43, "statusFlags")}];
        v112 = v64;
        v100[15] = @"senderSessionPairingID";
        sessionPairingIdentifier = [(RPEndpoint *)v43 sessionPairingIdentifier];
        v66 = sessionPairingIdentifier;
        v67 = &stru_1F2ED6FB8;
        if (sessionPairingIdentifier)
        {
          v67 = sessionPairingIdentifier;
        }

        v100[16] = @"xid";
        v113 = v67;
        v114 = v7;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:17];

        options = v95;
        responseHandler2 = [v10 responseHandler];
        (responseHandler2)[2](responseHandler2, v99, v68, 0);

        v70 = +[RPConnectionMetrics sharedMetrics];
        v71 = self->_linkType;

        v15 = v99;
        [v70 logRequestOnLinkType:v71 length:objc_msgSend(v10 rtt:{"length") + Int64, v97}];

        responseHandler = spid;
        timer = v93;
        requestID = v94;
        v17 = 0;
        goto LABEL_76;
      }

      v20 = self->_ucat->var0;
      if (v20 <= 90)
      {
        if (v20 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_77;
          }

          v32 = self->_ucat;
        }

        v79 = self->_peerIdentifier;
        LogPrintF();
      }

LABEL_77:

      goto LABEL_78;
    }

    v19 = self->_ucat->var0;
    if (v19 <= 90)
    {
      if (v19 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_78;
        }

        v30 = self->_ucat;
      }

      v78 = self->_peerIdentifier;
      LogPrintF();
    }

LABEL_78:

    goto LABEL_79;
  }

  v18 = self->_ucat->var0;
  if (v18 <= 90)
  {
    if (v18 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_79;
      }

      v29 = self->_ucat;
    }

    v76 = self->_peerIdentifier;
    LogPrintF();
  }

LABEL_79:

  v72 = *MEMORY[0x1E69E9840];
}

- (void)_abortSendEntry:(id)entry withError:(id)error
{
  entryCopy = entry;
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 60)
  {
    v8 = entryCopy;
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v12 = self->_ucat;
      v8 = entryCopy;
    }

    requestID = [v8 requestID];
    v10 = requestID;
    if (requestID)
    {
      eventID = requestID;
      v17 = errorCopy;
      LogPrintF();
    }

    else
    {
      eventID = [entryCopy eventID];
      v17 = errorCopy;
      LogPrintF();
    }
  }

LABEL_9:
  timer = [entryCopy timer];
  [entryCopy setTimer:0];
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  completion = [entryCopy completion];
  [entryCopy setCompletion:0];
  if (completion)
  {
    (completion)[2](completion, errorCopy);
  }

  else
  {
    responseHandler = [entryCopy responseHandler];
    [entryCopy setResponseHandler:0];
    if (responseHandler)
    {
      (responseHandler)[2](responseHandler, 0, 0, errorCopy);
    }
  }
}

- (void)_abortRequestsWithError:(id)error
{
  errorCopy = error;
  requests = self->_requests;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __40__RPConnection__abortRequestsWithError___block_invoke;
  v10 = &unk_1E7C93C88;
  selfCopy = self;
  v12 = errorCopy;
  v6 = errorCopy;
  [(NSMutableDictionary *)requests enumerateKeysAndObjectsUsingBlock:&v7];
  [(NSMutableDictionary *)self->_requests removeAllObjects:v7];
}

void __40__RPConnection__abortRequestsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = **(*(a1 + 32) + 296);
  if (v6 <= 60)
  {
    if (v6 != -1)
    {
LABEL_3:
      v11 = [v13 unsignedIntValue];
      v12 = *(a1 + 40);
      LogPrintF();
      goto LABEL_5;
    }

    v7 = *(*(a1 + 32) + 296);
    if (_LogCategory_Initialize())
    {
      v10 = *(*(a1 + 32) + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = [v5 timer];
  [v5 setTimer:0];
  if (v8)
  {
    dispatch_source_cancel(v8);
  }

  v9 = [v5 responseHandler];
  [v5 setResponseHandler:0];
  if (v9)
  {
    v9[2](v9, 0, 0, *(a1 + 40));
  }
}

- (void)_timeoutForSendEntry:(id)entry
{
  entryCopy = entry;
  xidObj = [entryCopy xidObj];
  if (xidObj)
  {
    [(RPConnection *)self _timeoutForXID:xidObj];
    goto LABEL_15;
  }

  mach_absolute_time();
  [entryCopy queueTicks];
  UpTicksToSecondsF();
  v6 = v5;
  v7 = [(NSMutableArray *)self->_sendArray indexOfObject:entryCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_sendArray removeObjectAtIndex:v7];
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      v11 = entryCopy;
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v16 = self->_ucat;
        v11 = entryCopy;
      }

      [v11 requestID];
      v17 = v18 = v6;
      LogPrintF();
    }

LABEL_13:
    responseHandler = [entryCopy responseHandler];
    v15 = RPErrorF();
    (responseHandler)[2](responseHandler, 0, 0, v15);

    goto LABEL_14;
  }

  v8 = self->_ucat->var0;
  if (v8 > 90)
  {
    goto LABEL_15;
  }

  if (v8 == -1)
  {
    v12 = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    v13 = self->_ucat;
  }

  responseHandler = [entryCopy requestID];
  LogPrintF();
LABEL_14:

LABEL_15:
}

- (void)_timeoutForXID:(id)d
{
  dCopy = d;
  unsignedIntValue = [dCopy unsignedIntValue];
  v5 = [(NSMutableDictionary *)self->_requests objectForKeyedSubscript:dCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_requests setObject:0 forKeyedSubscript:dCopy];
    mach_absolute_time();
    [v5 sendTicks];
    UpTicksToSecondsF();
    var0 = self->_ucat->var0;
    if (var0 <= 60)
    {
      v8 = v6;
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      v15 = v8;
      v14 = unsignedIntValue;
      LogPrintF();
    }

LABEL_9:
    responseHandler = [v5 responseHandler];
    v11 = RPErrorF();
    (responseHandler)[2](responseHandler, 0, 0, v11);

    goto LABEL_10;
  }

  v9 = self->_ucat->var0;
  if (v9 > 90)
  {
    goto LABEL_10;
  }

  if (v9 != -1)
  {
LABEL_7:
    LogPrintF();
    goto LABEL_10;
  }

  if (_LogCategory_Initialize())
  {
    v12 = self->_ucat;
    goto LABEL_7;
  }

LABEL_10:
}

- (id)_identityProofDataClient
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = self->_pairVerifySession;
  v4 = v3;
  if (v3)
  {
    if (![(CUPairingSession *)v3 deriveKeyWithSaltPtr:"IdentityProofClient-Salt" saltLen:24 infoPtr:"IdentityProofClient-Info" infoLen:24 keyLen:32 outputKeyPtr:__s])
    {
      v6 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:32];
      memset_s(__s, 0x20uLL, 0, 0x20uLL);
      goto LABEL_9;
    }

    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_8:
  v6 = 0;
LABEL_9:

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_identityProofDataServer
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = self->_pairVerifySession;
  v4 = v3;
  if (v3)
  {
    if (![(CUPairingSession *)v3 deriveKeyWithSaltPtr:"IdentityProofServer-Salt" saltLen:24 infoPtr:"IdentityProofServer-Info" infoLen:24 keyLen:32 outputKeyPtr:__s])
    {
      v6 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:32];
      memset_s(__s, 0x20uLL, 0, 0x20uLL);
      goto LABEL_9;
    }

    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_8:
  v6 = 0;
LABEL_9:

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_identityProofsAdd:(id)add update:(BOOL)update
{
  addCopy = add;
  v7 = self->_identityDaemon;
  if (v7)
  {
    if (self->_clientMode)
    {
      [(RPConnection *)self _identityProofDataClient];
    }

    else
    {
      [(RPConnection *)self _identityProofDataServer];
    }
    v8 = ;
    if (!v8)
    {
      goto LABEL_26;
    }

    if (update)
    {
LABEL_17:
      homeKitIdentity = [(RPIdentityDaemon *)v7 homeKitIdentity];
      v16 = homeKitIdentity;
      if (!homeKitIdentity)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v24 = 0;
      v17 = [homeKitIdentity signData:v8 error:&v24];
      v18 = v24;
      var0 = self->_ucat->var0;
      if (var0 < 31)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_22;
          }

          ucat = self->_ucat;
        }

        LogPrintF();
      }

LABEL_22:
      if (v17)
      {
        identifier = [v16 identifier];
        [addCopy setObject:identifier forKeyedSubscript:@"_idHKU"];

        [addCopy setObject:v17 forKeyedSubscript:@"_sigHKU"];
      }

      goto LABEL_25;
    }

    v9 = [(RPIdentityDaemon *)v7 identityOfSelfAndReturnError:0];
    v10 = v9;
    if (!v9)
    {
LABEL_15:

      if ((self->_statusFlags & 0x8000) == 0)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __42__RPConnection__identityProofsAdd_update___block_invoke;
        aBlock[3] = &unk_1E7C93CB0;
        aBlock[4] = self;
        aBlock[5] = v8;
        v14 = _Block_copy(aBlock);
        [(RPIdentityDaemon *)v7 getPairedIdentityWithCompletion:v14];
      }

      goto LABEL_17;
    }

    v26 = 0;
    v11 = [v9 signData:v8 error:&v26];
    v12 = v26;
    v13 = self->_ucat->var0;
    if (v13 < 31)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v22 = self->_ucat;
      }

      v23 = v12;
      LogPrintF();
    }

LABEL_12:
    if (v11)
    {
      [addCopy setObject:v11 forKeyedSubscript:@"_sigRP"];
    }

    goto LABEL_15;
  }

LABEL_27:
}

void __42__RPConnection__identityProofsAdd_update___block_invoke(int8x16_t *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && !a3)
  {
    v7 = *(a1[2].i64[0] + 552);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__RPConnection__identityProofsAdd_update___block_invoke_2;
    block[3] = &unk_1E7C93BC0;
    v9 = v5;
    v10 = vextq_s8(a1[2], a1[2], 8uLL);
    dispatch_async(v7, block);
  }
}

void __42__RPConnection__identityProofsAdd_update___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v12 = 0;
  v5 = [v3 signData:v4 error:&v12];
  v6 = v12;
  v7 = **(*(a1 + 48) + 296);
  if (v7 <= 30)
  {
    if (v7 != -1)
    {
LABEL_3:
      v10 = v6;
      v11 = [v5 length];
      LogPrintF();
      goto LABEL_5;
    }

    v8 = *(*(a1 + 48) + 296);
    if (_LogCategory_Initialize())
    {
      v9 = *(*(a1 + 48) + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"_sigPD"];
  }

  if ([v2 count])
  {
    [*(a1 + 48) sendEncryptedEventID:@"_systemInfoUpdate" event:v2 options:0 completion:0];
  }
}

- (void)_identityProofsAddWithHomeKitUUID:(id)d
{
  dCopy = d;
  v5 = self->_identityDaemon;
  if (v5)
  {
    if (self->_clientMode)
    {
      [(RPConnection *)self _identityProofDataClient];
    }

    else
    {
      [(RPConnection *)self _identityProofDataServer];
    }
    v6 = ;
    if (v6)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        [(RPConnection *)ucat->var0 _identityProofsAddWithHomeKitUUID:&self->_ucat];
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke;
      v8[3] = &unk_1E7C93CB0;
      v8[4] = self;
      v8[5] = v6;
      [(RPIdentityDaemon *)v5 getPairingIdentityFromHomeWithAccessory:dCopy completion:v8];
    }
  }
}

void __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke(int8x16_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = a1[2].i64[0];
  if (!v5 || v6)
  {
    v10 = **(v8 + 296);
    if (v10 <= 30)
    {
      if (v10 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v11 = *(a1[2].i64[0] + 296);
      }

      LogPrintF();
    }
  }

  else
  {
    v9 = *(v8 + 552);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke_2;
    block[3] = &unk_1E7C93BC0;
    v13 = v5;
    v14 = vextq_s8(a1[2], a1[2], 8uLL);
    dispatch_async(v9, block);
  }

LABEL_8:
}

void __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [v2 signData:v3 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = **(*(a1 + 48) + 296);
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v10 = *(*(a1 + 48) + 296);
      }

      v11 = v5;
      LogPrintF();
    }

LABEL_6:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [*(a1 + 32) identifier];
    [v7 setObject:v8 forKeyedSubscript:@"_idHKU"];

    [v7 setObject:v4 forKeyedSubscript:@"_sigHKU"];
    v9 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke_3;
    v12[3] = &unk_1E7C92D58;
    v12[4] = v9;
    [v9 sendEncryptedEventID:@"_systemInfoUpdate" event:v7 options:0 completion:v12];
  }
}

void __50__RPConnection__identityProofsAddWithHomeKitUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = **(*(a1 + 32) + 296);
    if (v4 <= 30)
    {
      v7 = v3;
      if (v4 != -1)
      {
LABEL_4:
        LogPrintF();
        v3 = v7;
        goto LABEL_6;
      }

      v5 = _LogCategory_Initialize();
      v3 = v7;
      if (v5)
      {
        v6 = *(*(a1 + 32) + 296);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
}

- (void)_identityProofsVerify:(id)verify
{
  verifyCopy = verify;
  v4 = self->_identityDaemon;
  if (!v4)
  {
    goto LABEL_26;
  }

  if (self->_clientMode)
  {
    [(RPConnection *)self _identityProofDataServer];
  }

  else
  {
    [(RPConnection *)self _identityProofDataClient];
  }
  v5 = ;
  if ((*(&self->_statusFlags + 1) & 0x240) == 0)
  {
    CFDataGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    v7 = v6;
    if (!v5)
    {
      goto LABEL_12;
    }

    if (!v6)
    {
      goto LABEL_12;
    }

    objc_storeStrong(&self->_identityKeyData, v5);
    objc_storeStrong(&self->_identitySignature, v7);
    v8 = [(RPIdentityDaemon *)v4 resolveIdentityTypesForSignature:v7 data:v5 typeFlags:19496];
    v9 = ((v8 << 12) & 0x20000 | (((v8 >> 3) & 1) << 14)) & 0xFFFFFF8FFFFFFFFFLL | ((((v8 & 0xC00) >> 10) & 3) << 36) & 0xFFFFFFBFFFFFFFFFLL | ((((v8 & 0x4000) >> 14) & 1) << 38);
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:v9 | [(RPEndpoint *)self->_peerDeviceInfo statusFlags]];
    self->_statusFlags |= v9;
    var0 = self->_ucat->var0;
    if (var0 > 30)
    {
      goto LABEL_12;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
      statusFlags = self->_statusFlags;
    }

    LogPrintF();
LABEL_12:
  }

  CFDataGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  v12 = v11;
  if (!v5 || !v11 || (self->_statusFlags & 0x8000) != 0)
  {
    goto LABEL_22;
  }

  v13 = [(RPIdentityDaemon *)v4 resolveIdentityForSignature:v11 data:v5 typeFlags:128 error:0];
  if (v13)
  {
    [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:[(RPEndpoint *)self->_peerDeviceInfo statusFlags]| 0x8000];
    v14 = [v13 acl];
    [(RPEndpoint *)self->_peerDeviceInfo setVerifiedAcl:v14];

    self->_statusFlags |= 0x8000uLL;
    v15 = self->_ucat->var0;
    if (v15 <= 30)
    {
      if (v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v21 = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_21:

LABEL_22:
  CFStringGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  CFDataGetTypeID();
  v17 = CFDictionaryGetTypedValue();
  v18 = v17;
  if (v16 && v17)
  {
    objc_storeStrong(&self->_homeKitIdentityIdentifier, v16);
    objc_storeStrong(&self->_homeKitIdentitySignature, v18);
    [(RPConnection *)self _identityProofsVerifyHomeKitSignature:v18 identifier:v16];
  }

LABEL_26:
}

- (void)_identityProofsVerifyHomeKitSignature:(id)signature identifier:(id)identifier
{
  signatureCopy = signature;
  identifierCopy = identifier;
  if ((self->_statusFlags & 0x80000) == 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__RPConnection__identityProofsVerifyHomeKitSignature_identifier___block_invoke;
    v9[3] = &unk_1E7C93CD8;
    v9[4] = self;
    [(RPConnection *)self _identityProofsVerifyHomeKitSignatureOwner:signatureCopy completion:v9];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__RPConnection__identityProofsVerifyHomeKitSignature_identifier___block_invoke_2;
  v8[3] = &unk_1E7C93D00;
  v8[4] = self;
  [(RPConnection *)self _identityProofsVerifyHomeKitSignatureSharedUser:signatureCopy identifier:identifierCopy completion:v8];
}

void __65__RPConnection__identityProofsVerifyHomeKitSignature_identifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a3 && a2)
  {
    v4 = *(*(a1 + 32) + 664);
    v5 = a3;
    [v4 setStatusFlags:{objc_msgSend(v4, "statusFlags") | 0x80000}];
    *(*(a1 + 32) + 760) |= 0x80000uLL;
    v6 = [v5 identifier];

    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = v6;

    v9 = _Block_copy(*(*(a1 + 32) + 680));
    if (v9)
    {
      v10 = v9;
      v9[2]();
      v9 = v10;
    }
  }
}

void __65__RPConnection__identityProofsVerifyHomeKitSignature_identifier___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v12 = v5;
    [*(*(a1 + 32) + 664) setStatusFlags:{objc_msgSend(*(*(a1 + 32) + 664), "statusFlags") | 0x2000}];
    *(*(a1 + 32) + 760) |= 0x2000uLL;
    v6 = *(a1 + 32);
    if (!*(v6 + 64))
    {
      v7 = [v12 identifierStr];
      v8 = *(a1 + 32);
      v9 = *(v8 + 64);
      *(v8 + 64) = v7;

      v6 = *(a1 + 32);
    }

    v10 = _Block_copy(*(v6 + 680));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }

    v5 = v12;
  }
}

- (void)_identityProofsVerifyHomeKitSignatureOwner:(id)owner completion:(id)completion
{
  ownerCopy = owner;
  completionCopy = completion;
  homeKitIdentity = [(RPIdentityDaemon *)self->_identityDaemon homeKitIdentity];
  if (!homeKitIdentity)
  {
    goto LABEL_9;
  }

  if (self->_clientMode)
  {
    [(RPConnection *)self _identityProofDataServer];
  }

  else
  {
    [(RPConnection *)self _identityProofDataClient];
  }
  v9 = ;
  if (!v9)
  {
LABEL_9:
    v10 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v15 = 0;
  v10 = [homeKitIdentity verifySignature:ownerCopy data:v9 error:&v15];
  v11 = v15;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_8:
      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_11:

  if (v10)
  {
    v13 = homeKitIdentity;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:
  (completionCopy)[2](completionCopy, v10, v13);
}

- (void)_identityProofsVerifyHomeKitSignatureSharedUser:(id)user identifier:(id)identifier completion:(id)completion
{
  userCopy = user;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = completionCopy;
  if (self->_homeKitManager)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_7:
    v13 = objc_alloc_init(MEMORY[0x1E69994E8]);
    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:identifierCopy];
    [v13 setIdentifier:v14];

    homeKitManager = self->_homeKitManager;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__RPConnection__identityProofsVerifyHomeKitSignatureSharedUser_identifier_completion___block_invoke;
    v17[3] = &unk_1E7C93D50;
    v17[4] = self;
    v18 = identifierCopy;
    v20 = v11;
    v19 = userCopy;
    [(CUHomeKitManager *)homeKitManager findPairedPeer:v13 options:32 completion:v17];

    goto LABEL_8;
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_8:
}

void __86__RPConnection__identityProofsVerifyHomeKitSignatureSharedUser_identifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 552);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__RPConnection__identityProofsVerifyHomeKitSignatureSharedUser_identifier_completion___block_invoke_2;
  block[3] = &unk_1E7C93D28;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v8 = *(&v13 + 1);
  v9 = *(a1 + 56);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void __86__RPConnection__identityProofsVerifyHomeKitSignatureSharedUser_identifier_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v3 = *(a1 + 48);
    if (v3[328])
    {
      [v3 _identityProofDataServer];
    }

    else
    {
      [v3 _identityProofDataClient];
    }
    v5 = ;
    if (!v5)
    {
      (*(*(a1 + 72) + 16))();
LABEL_23:

      return;
    }

    v6 = objc_alloc_init(RPIdentity);
    v7 = [*(a1 + 32) publicKey];
    [(RPIdentity *)v6 setEdPKData:v7];

    v8 = *(a1 + 64);
    v18 = 0;
    v9 = [(RPIdentity *)v6 verifySignature:v8 data:v5 error:&v18];
    v10 = v18;
    v11 = **(*(a1 + 48) + 296);
    if (v11 <= 30)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v14 = *(*(a1 + 48) + 296);
      }

      v16 = *(a1 + 56);
      LogPrintF();
    }

LABEL_19:
    if (v9)
    {
      v12 = *(a1 + 32);
    }

    else
    {
      v12 = 0;
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), v9, v12);

    goto LABEL_23;
  }

  v2 = **(*(a1 + 48) + 296);
  if (v2 <= 30)
  {
    if (v2 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v13 = *(*(a1 + 48) + 296);
    }

    v15 = *(a1 + 56);
    v17 = *(a1 + 40);
    LogPrintF();
  }

LABEL_9:
  v4 = *(*(a1 + 72) + 16);

  v4();
}

- (void)_idleTimerStart:(unsigned int)start repeat:(unsigned int)repeat
{
  self->_receivedFrameCountLast = self->_receivedFrameCountCurrent;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      receivedFrameCountLast = self->_receivedFrameCountLast;
      goto LABEL_3;
    }
  }

LABEL_5:
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    v7 = idleTimer;
    dispatch_source_cancel(v7);
    v8 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v10 = self->_idleTimer;
  self->_idleTimer = v9;
  v11 = v9;

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__RPConnection__idleTimerStart_repeat___block_invoke;
  handler[3] = &unk_1E7C92D80;
  handler[4] = v11;
  handler[5] = self;
  dispatch_source_set_event_handler(v11, handler);
  CUDispatchTimerSet();
  dispatch_activate(v11);
}

void *__39__RPConnection__idleTimerStart_repeat___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[11])
  {
    return [result _idleTimerFired];
  }

  return result;
}

- (void)_idleTimerFired
{
  receivedFrameCountCurrent = self->_receivedFrameCountCurrent;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      receivedFrameCountLast = self->_receivedFrameCountLast;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (receivedFrameCountCurrent == self->_receivedFrameCountLast)
  {
    v7 = RPErrorF();
    [(RPConnection *)self _invalidateWithError:v7];
  }

  else
  {
    self->_receivedFrameCountLast = receivedFrameCountCurrent;
  }
}

- (BOOL)_receivedSystemInfo:(id)info xid:(id)xid
{
  v144 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  xidCopy = xid;
  statusFlags = self->_statusFlags;
  if (self->_pairVerifyCompleted && (self->_controlFlags & 0x200) == 0)
  {
    [(RPConnection *)self _identityProofsVerify:infoCopy];
  }

  v142 = 0;
  if ((statusFlags & 0x50000AE000) != 0)
  {
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setAccountAltDSID:v9];
    }

    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setAccountID:v10];
    }
  }

  [(RPEndpoint *)self->_peerDeviceInfo setActivityLevel:CFDictionaryGetInt64Ranged()];
  v111 = statusFlags & 0x50000AE000;
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (v11)
  {
    objc_storeStrong(&self->_appID, v11);
  }

  CFDictionaryGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (v12)
  {
    objc_storeStrong(&self->_appInfoPeer, v12);
  }

  Int64 = CFDictionaryGetInt64();
  LODWORD(v135) = [(RPCompanionLinkDevice *)self->_peerDeviceInfo flags];
  RPCompanionLinkFlagsWithUpdateBonjourFlags(&v135, Int64);
  [(RPCompanionLinkDevice *)self->_peerDeviceInfo setFlags:v135];
  v14 = statusFlags & 0x50000AE000;
  if (!v111 && (self->_statusFlags & 0x2000000000) == 0)
  {
    v15 = v11;
    goto LABEL_26;
  }

  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();

  if (v15 || v142 == -6756)
  {
    [(RPConnection *)self setServiceType:v15];
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_23;
      }

      ucat = self->_ucat;
    }

    idsDeviceIdentifier = v15;
    LogPrintF();
  }

LABEL_23:
  if (v111)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (!v142)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setFlags:[(RPCompanionLinkDevice *)self->_peerDeviceInfo flags]& 0xFFFFFD7F | Int64Ranged & 0x280];
    }
  }

LABEL_26:
  if ((CFDictionaryGetInt64() & 0x200) != 0)
  {
    self->_controlFlags |= 0x200uLL;
  }

  if (!v111)
  {
LABEL_32:
    if ((statusFlags & 0x80000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();

  if (!v18 && v142 != -6756)
  {
    v15 = 0;
    goto LABEL_32;
  }

  [(RPCompanionLinkDevice *)self->_peerDeviceInfo setDeviceColor:v18, idsDeviceIdentifier];
  v15 = v18;
  if ((statusFlags & 0x80000) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  CFStringGetTypeID();
  v19 = CFDictionaryGetTypedValue();

  if (v19 || v142 == -6756)
  {
    [(RPCompanionLinkDevice *)self->_peerDeviceInfo setRole:v19, idsDeviceIdentifier];
    v15 = v19;
  }

  else
  {
    v15 = 0;
  }

LABEL_39:
  v109 = statusFlags;
  if (v111)
  {
    v20 = NSDictionaryGetNSUUID();
    if (v20)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setHomeKitIdentifier:v20];
      homeKitIdentifier = [(RPCompanionLinkDevice *)self->_peerDeviceInfo homeKitIdentifier];
      [(RPConnection *)self _identityProofsAddWithHomeKitUUID:homeKitIdentifier];
    }

    LODWORD(v135) = 0;
    objc_opt_class();
    v22 = NSDictionaryGetNSArrayOfClass();
    if (v22 && self->_homeKitUserIdentifierHandler)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setHomeKitUserIdentifiers:v22];
      v23 = _Block_copy(self->_homeKitUserIdentifierHandler);
      statusFlags = v23;
      if (v23)
      {
        v23[2](v23);
      }

      LODWORD(statusFlags) = v109;
    }

    v14 = v111;
  }

  else
  {
    v20 = 0;
  }

  if (self->_identifierOverride)
  {
    if (v14)
    {
      goto LABEL_51;
    }

LABEL_60:
    v25 = 0;
    v110 = 0;
    goto LABEL_61;
  }

  CFStringGetTypeID();
  v26 = CFDictionaryGetTypedValue();

  if (v26)
  {
    [(RPEndpoint *)self->_peerDeviceInfo setIdentifier:v26];
    objc_storeStrong(&self->_peerIdentifier, v26);
    v15 = v26;
  }

  else
  {
    v15 = 0;
  }

  v14 = v111;
  if (!v111)
  {
    goto LABEL_60;
  }

LABEL_51:
  CFStringGetTypeID();
  v24 = CFDictionaryGetTypedValue();
  v25 = v24 != 0;
  v110 = v24;
  if ((statusFlags & 0x80000) == 0 || !v24)
  {
LABEL_61:
    if ((self->_statusFlags & 0x2000) != 0)
    {
      DeviceClass = GestaltGetDeviceClass();
      if (RPDeviceIsCommunal(DeviceClass))
      {
        v28 = self->_ucat->var0;
        if (v28 <= 30)
        {
          if (v28 != -1)
          {
LABEL_65:
            LogPrintF();
            [(RPIdentityDaemon *)self->_identityDaemon addSharedHomeIdentityWithRPMessage:infoCopy, v110];
            goto LABEL_73;
          }

          if (_LogCategory_Initialize())
          {
            v101 = self->_ucat;
            goto LABEL_65;
          }
        }

        [(RPIdentityDaemon *)self->_identityDaemon addSharedHomeIdentityWithRPMessage:infoCopy, idsDeviceIdentifier];
      }
    }

LABEL_73:
    if (!v14)
    {
      goto LABEL_92;
    }

    goto LABEL_74;
  }

  if (!self->_pairVerifyCompleted || self->_pairVerifyIdentityType == 2)
  {
    v25 = 1;
    goto LABEL_61;
  }

  v29 = [infoCopy objectForKeyedSubscript:@"_dIRK"];

  if (v29 || ([infoCopy objectForKeyedSubscript:@"_edPK"], v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
  {
    v31 = self->_ucat->var0;
    if (v31 <= 30)
    {
      if (v31 != -1)
      {
LABEL_70:
        LogPrintF();
        [(RPIdentityDaemon *)self->_identityDaemon saveIdentityWithIDSDeviceID:v110 message:infoCopy error:0, v110];
        goto LABEL_91;
      }

      if (_LogCategory_Initialize())
      {
        v103 = self->_ucat;
        goto LABEL_70;
      }
    }

    [(RPIdentityDaemon *)self->_identityDaemon saveIdentityWithIDSDeviceID:v110 message:infoCopy error:0, idsDeviceIdentifier];
  }

LABEL_91:
  v25 = 1;
  if (!v14)
  {
LABEL_92:
    if (!v14)
    {
      goto LABEL_116;
    }

    goto LABEL_93;
  }

LABEL_74:
  if (!v25)
  {
    goto LABEL_92;
  }

  if (!self->_clientMode || (-[RPCloudDaemon idsDeviceIDSelf](self->_cloudDaemon, "idsDeviceIDSelf"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 isEqual:v110], v32, !v33))
  {
    if ([(RPIdentity *)self->_identityVerified type]== 15)
    {
      identifier = [(RPIdentity *)self->_identityVerified identifier];
      [(RPEndpoint *)self->_peerDeviceInfo setIdsDeviceIdentifier:identifier];

      v36 = self->_ucat->var0;
      if (v36 > 30)
      {
        goto LABEL_93;
      }

      if (v36 != -1)
      {
        goto LABEL_83;
      }

      v37 = self->_ucat;
      if (_LogCategory_Initialize())
      {
        v38 = self->_ucat;
LABEL_83:
        idsDeviceIdentifier = [(RPEndpoint *)self->_peerDeviceInfo idsDeviceIdentifier];
        LogPrintF();
      }
    }

    else
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIdsDeviceIdentifier:v110];
    }

LABEL_93:
    CFStringGetTypeID();
    v40 = CFDictionaryGetTypedValue();

    if (v40 || v142 == -6756)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setIdsCorrelationIdentifier:v40, idsDeviceIdentifier];
    }

    if (CFDictionaryGetInt64Ranged())
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setListeningPort:?];
    }

    CFStringGetTypeID();
    v41 = CFDictionaryGetTypedValue();
    if (v41 || v142 == -6756)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setMediaRemoteIdentifier:v41, idsDeviceIdentifier];
    }

    CFStringGetTypeID();
    v42 = CFDictionaryGetTypedValue();
    if (v42 || v142 == -6756)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setMediaRouteIdentifier:v42, idsDeviceIdentifier];
    }

    v43 = NSDictionaryGetNSUUID();

    if (v43 || v142 == -6756)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setMediaSystemIdentifier:v43, idsDeviceIdentifier];
      v20 = v43;
    }

    else
    {
      v20 = 0;
    }

    CFStringGetTypeID();
    v15 = CFDictionaryGetTypedValue();
    if (v15 || v142 == -6756)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setMediaSystemName:v15, idsDeviceIdentifier];
    }

    else
    {
      v15 = 0;
    }

    v44 = CFDictionaryGetInt64Ranged();
    if (!v142)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setMediaSystemRole:v44];
    }

    v45 = CFDictionaryGetInt64Ranged();
    if (!v142)
    {
      [(RPCompanionLinkDevice *)self->_peerDeviceInfo setMediaSystemState:v45];
    }

LABEL_116:
    CFStringGetTypeID();
    v46 = CFDictionaryGetTypedValue();

    if (v46)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setModel:v46];
    }

    CFStringGetTypeID();
    v47 = CFDictionaryGetTypedValue();

    if (v47)
    {
      [(RPEndpoint *)self->_peerDeviceInfo setName:v47];
    }

    CFStringGetTypeID();
    v48 = CFDictionaryGetTypedValue();

    if (!v48)
    {
      goto LABEL_123;
    }

    peerDeviceInfo = self->_peerDeviceInfo;
    if (peerDeviceInfo)
    {
      [(RPEndpoint *)peerDeviceInfo operatingSystemVersion];
      if (v139)
      {
LABEL_123:
        if (!v25)
        {
          goto LABEL_135;
        }

        v50 = self->_peerDeviceInfo;
        if (v50)
        {
          [(RPEndpoint *)v50 operatingSystemVersion];
          if (v132)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v132 = 0;
          v133 = 0;
          v134 = 0;
        }

        cloudDaemon = self->_cloudDaemon;
        if (cloudDaemon)
        {
          [(RPCloudDaemon *)cloudDaemon operatingSystemVersionForID:v110];
        }

        else
        {
          v130 = 0uLL;
          v131 = 0;
        }

        v51 = self->_peerDeviceInfo;
        v135 = v130;
        v52 = v131;
LABEL_134:
        v136 = v52;
        [(RPEndpoint *)v51 setOperatingSystemVersion:&v135, idsDeviceIdentifier];
LABEL_135:
        model = [(RPEndpoint *)self->_peerDeviceInfo model];
        if (!model)
        {
          goto LABEL_147;
        }

        v55 = model;
        v56 = self->_peerDeviceInfo;
        if (!v56)
        {
          v127 = 0;
          v128 = 0;
          v129 = 0;

          goto LABEL_147;
        }

        [(RPEndpoint *)v56 operatingSystemVersion];

        if (v127 < 1)
        {
          goto LABEL_147;
        }

        model2 = [(RPEndpoint *)self->_peerDeviceInfo model];
        GestaltProductTypeStringToDeviceClass();

        v58 = self->_peerDeviceInfo;
        if (v58)
        {
          [(RPEndpoint *)v58 operatingSystemVersion];
          v59 = self->_peerDeviceInfo;
          if (v59)
          {
            [(RPEndpoint *)v59 operatingSystemVersion];
            v60 = self->_peerDeviceInfo;
            if (v60)
            {
              [(RPEndpoint *)v60 operatingSystemVersion];
LABEL_146:
              LODWORD(v105) = 20200;
              self->_canDecode128bit = DeviceOSVersionAtOrLaterEx();
LABEL_147:
              CFStringGetTypeID();
              v61 = CFDictionaryGetTypedValue();

              if (v61)
              {
                [(RPCompanionLinkDevice *)self->_peerDeviceInfo setPublicIdentifier:v61];
              }

              CFStringGetTypeID();
              v62 = CFDictionaryGetTypedValue();

              if (v62)
              {
                [(RPEndpoint *)self->_peerDeviceInfo setSessionPairingIdentifier:v62];
              }

              if (v14)
              {
                CFStringGetTypeID();
                v63 = CFDictionaryGetTypedValue();

                if (v63)
                {
                  [(RPCompanionLinkDevice *)self->_peerDeviceInfo setRoomName:v63];
                }

                CFArrayGetTypeID();
                v64 = CFDictionaryGetTypedValue();
                v65 = v64;
                if (v64)
                {
                  v116 = 0u;
                  v117 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v66 = v64;
                  v67 = [v66 countByEnumeratingWithState:&v114 objects:v143 count:16];
                  if (v67)
                  {
                    v68 = v67;
                    v69 = *v115;
                    v108 = xidCopy;
                    while (2)
                    {
                      for (i = 0; i != v68; ++i)
                      {
                        if (*v115 != v69)
                        {
                          objc_enumerationMutation(v66);
                        }

                        v71 = *(*(&v114 + 1) + 8 * i);
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {

                          xidCopy = v108;
                          goto LABEL_166;
                        }
                      }

                      v68 = [v66 countByEnumeratingWithState:&v114 objects:v143 count:16];
                      xidCopy = v108;
                      if (v68)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  [(RPEndpoint *)self->_peerDeviceInfo setServiceTypes:v66];
LABEL_166:
                  v14 = v111;
                }

                CFDictionaryGetTypeID();
                v72 = CFDictionaryGetTypedValue();
                if (v72)
                {
                  [(RPCompanionLinkDevice *)self->_peerDeviceInfo setSiriInfo:v72];
                }
              }

              else
              {
                v63 = v62;
              }

              CFStringGetTypeID();
              v15 = CFDictionaryGetTypedValue();

              if (v15)
              {
                [(RPEndpoint *)self->_peerDeviceInfo setSourceVersion:v15];
              }

              if (v14)
              {
                v73 = CFDictionaryGetInt64();
                if (!v142)
                {
                  v74 = v73;
                  v75 = v20;
                  v76 = xidCopy;
                  if ((*&v109 & 0x80000) != 0)
                  {
                    v77 = (v73 >> 33) & 0x80;
                  }

                  else
                  {
                    v77 = 0;
                  }

                  statusFlags = [(RPEndpoint *)self->_peerDeviceInfo statusFlags];
                  v79 = v77 | v74 & 0x10000010180;
                  xidCopy = v76;
                  v20 = v75;
                  [(RPEndpoint *)self->_peerDeviceInfo setStatusFlags:v79 | statusFlags & 0xFFFFFEFFFFFEFE7FLL];
                }
              }

              else if ((self->_statusFlags & 0x2000000000) == 0)
              {
                goto LABEL_184;
              }

              CFStringGetTypeID();
              v80 = CFDictionaryGetTypedValue();
              if (v80)
              {
                [(RPCompanionLinkDevice *)self->_peerDeviceInfo setActiveUserAltDSID:v80];
              }

              v81 = CFDictionaryGetInt64Ranged();
              if (!v142)
              {
                [(RPCompanionLinkDevice *)self->_peerDeviceInfo setDeviceCapabilityFlags:[(RPCompanionLinkDevice *)self->_peerDeviceInfo deviceCapabilityFlags]& 0xFFFFFFFC | v81 & 3];
              }

LABEL_184:
              if (([(RPEndpoint *)self->_peerDeviceInfo statusFlags]& 0x2000000000) != 0)
              {
                v82 = objc_alloc_init(RPIdentity);
                verifiedIdentity = [(RPEndpoint *)self->_peerDeviceInfo verifiedIdentity];
                [(RPIdentity *)v82 setIdentifier:verifiedIdentity];

                model3 = [(RPEndpoint *)self->_peerDeviceInfo model];
                [(RPIdentity *)v82 setModel:model3];

                name = [(RPEndpoint *)self->_peerDeviceInfo name];
                [(RPIdentity *)v82 setName:name];

                [(RPIdentityDaemon *)self->_identityDaemon updateSessionPairedIdentity:v82];
                verifiedIdentity2 = [(RPEndpoint *)self->_peerDeviceInfo verifiedIdentity];
                [(RPEndpoint *)self->_peerDeviceInfo setIdsDeviceIdentifier:verifiedIdentity2];

                verifiedIdentity3 = [(RPEndpoint *)self->_peerDeviceInfo verifiedIdentity];
                [(RPEndpoint *)self->_peerDeviceInfo setIdentifier:verifiedIdentity3];
              }

              if (xidCopy)
              {
                if (self->_internalState == 27)
                {
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __40__RPConnection__receivedSystemInfo_xid___block_invoke;
                  aBlock[3] = &unk_1E7C92D10;
                  aBlock[4] = self;
                  v113 = xidCopy;
                  v88 = _Block_copy(aBlock);
                  sessionStartHandler = self->_sessionStartHandler;
                  if (sessionStartHandler)
                  {
                    sessionStartHandler[2](sessionStartHandler, v88);
                    v90 = self->_sessionStartHandler;
                    self->_sessionStartHandler = 0;
                  }

                  else
                  {
                    v88[2](v88, 0);
                  }
                }

                else
                {
                  _systeminfo = [(RPConnection *)self _systeminfo];
                  LOBYTE(v106) = 0;
                  [(RPConnection *)self _sendEncryptedResponse:_systeminfo options:0 error:0 xid:xidCopy requestID:@"_systemInfo" highPriority:0 isChatty:v106 replyStartTime:0];
                }
              }

              else if (self->_state == 1)
              {
                peerUpdatedHandler = self->_peerUpdatedHandler;
                if (peerUpdatedHandler)
                {
                  peerUpdatedHandler[2]();
                }
              }

              proxyDeviceUpdateHandler = [(RPConnection *)self proxyDeviceUpdateHandler];
              v94 = proxyDeviceUpdateHandler;
              if (v14 && proxyDeviceUpdateHandler)
              {
                (*(proxyDeviceUpdateHandler + 16))(proxyDeviceUpdateHandler);
              }

              v95 = self->_ucat->var0;
              if (v95 > 10)
              {
                goto LABEL_203;
              }

              if (v95 == -1)
              {
                v96 = self->_ucat;
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_203;
                }

                v99 = self->_ucat;
              }

              v107 = [(RPConnection *)self descriptionWithLevel:10];
              LogPrintF();

LABEL_203:
              v39 = 1;
              goto LABEL_204;
            }

LABEL_145:
            v118 = 0;
            v119 = 0;
            v120 = 0;
            goto LABEL_146;
          }
        }

        else
        {
          v124 = 0;
          v125 = 0;
          v126 = 0;
        }

        v121 = 0;
        v122 = 0;
        v123 = 0;
        goto LABEL_145;
      }
    }

    else
    {
      v139 = 0;
      v140 = 0;
      v141 = 0;
    }

    RPStringToOperatingSystemVersion(v48, &v137);
    v51 = self->_peerDeviceInfo;
    v135 = v137;
    v52 = v138;
    goto LABEL_134;
  }

  v34 = self->_ucat->var0;
  if (v34 <= 90)
  {
    if (v34 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_88;
      }

      v102 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_88:
  [(CUBonjourDevice *)self->_bonjourPeerDevice reconfirm];
  v39 = 0;
LABEL_204:

  v97 = *MEMORY[0x1E69E9840];
  return v39;
}

void __40__RPConnection__receivedSystemInfo_xid___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) _systeminfo];
  }

  v4 = *(a1 + 32);
  v5 = *v4[37];
  if (v5 <= 10)
  {
    if (v5 != -1)
    {
LABEL_6:
      v9 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_8;
    }

    v6 = v4[37];
    v7 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v7)
    {
      v8 = v4[37];
      goto LABEL_6;
    }
  }

LABEL_8:
  LOBYTE(v9) = 0;
  [v4 _sendEncryptedResponse:v3 options:0 error:v10 xid:*(a1 + 40) requestID:@"_systemInfo" highPriority:0 isChatty:v9 replyStartTime:0];
  *(*(a1 + 32) + 140) = 1;
  [*(a1 + 32) _run];
}

- (id)_systeminfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  statusFlags = self->_statusFlags;
  v5 = statusFlags & 0x50000AE000;
  accountAltDSID = [(RPEndpoint *)self->_localDeviceInfo accountAltDSID];
  v7 = accountAltDSID;
  if ((statusFlags & 0x50000AE000) != 0 && accountAltDSID != 0)
  {
    [v3 setObject:accountAltDSID forKeyedSubscript:@"_accAltDSID"];
  }

  accountID = [(RPEndpoint *)self->_localDeviceInfo accountID];

  if (v5)
  {
    v10 = accountID == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [v3 setObject:accountID forKeyedSubscript:@"_accID"];
  }

  v11 = self->_appID;

  if (v11)
  {
    [v3 setObject:v11 forKeyedSubscript:@"_appID"];
  }

  v12 = self->_appInfoSelf;

  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"_appInfo"];
  }

  v67 = 0;
  RPBonjourFlagsUpdateWithRPCompanionLinkFlags(&v67, [(RPCompanionLinkDevice *)self->_localDeviceInfo flags]);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v67];
  [v3 setObject:v13 forKeyedSubscript:@"_bf"];

  if (!v5 && (self->_statusFlags & 0x2000000000) == 0)
  {
    p_isa = &v12->super.isa;
    goto LABEL_31;
  }

  p_isa = self->_serviceType;

  if (p_isa)
  {
    [v3 setObject:p_isa forKeyedSubscript:@"_clSrv"];
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_24;
      }

      ucat = self->_ucat;
    }

    serviceType = self->_serviceType;
    LogPrintF();
  }

LABEL_24:
  if (v5 || (self->_statusFlags & 0x2000000000) != 0)
  {
    deviceCapabilityFlags = [(RPCompanionLinkDevice *)self->_localDeviceInfo deviceCapabilityFlags];
    if (deviceCapabilityFlags)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:deviceCapabilityFlags];
      [v3 setObject:v18 forKeyedSubscript:@"_dCapF"];
    }

    if (v5)
    {
      flags = [(RPCompanionLinkDevice *)self->_localDeviceInfo flags];
      v14 = flags & 0x280;
      if ((flags & 0x280) != 0)
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
        [v3 setObject:v20 forKeyedSubscript:@"_clFl"];
      }
    }
  }

LABEL_31:
  if ((self->_controlFlags & 0x200) != 0)
  {
    0x200 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_controlFlags & 0x200];
    [v3 setObject:0x200 forKeyedSubscript:@"_cf"];
  }

  if (v5)
  {
    deviceColor = [(RPCompanionLinkDevice *)self->_localDeviceInfo deviceColor];

    if (!deviceColor)
    {
      p_isa = 0;
      if ((statusFlags & 0x80000) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    [v3 setObject:deviceColor forKeyedSubscript:@"_dC"];
    p_isa = deviceColor;
  }

  if ((statusFlags & 0x80000) == 0)
  {
    goto LABEL_42;
  }

LABEL_37:
  v23 = [(RPCompanionLinkDevice *)self->_localDeviceInfo role:v14];

  if (v23)
  {
    [v3 setObject:v23 forKeyedSubscript:@"_forcedRole"];
    p_isa = v23;
  }

  else
  {
    p_isa = 0;
  }

LABEL_42:
  if (v5)
  {
    homeKitIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo homeKitIdentifier];

    if (homeKitIdentifier)
    {
      [v3 setObject:homeKitIdentifier forKeyedSubscript:@"_hkID"];
    }

    homeKitUserIdentifiers = [(RPEndpoint *)self->_localDeviceInfo homeKitUserIdentifiers];

    if (homeKitUserIdentifiers)
    {
      homeKitUserIdentifiers2 = [(RPEndpoint *)self->_localDeviceInfo homeKitUserIdentifiers];
      [v3 setObject:homeKitUserIdentifiers2 forKeyedSubscript:@"_hkUID"];
    }

    if (self->_btPipe)
    {
      DeviceClass = GestaltGetDeviceClass();
      v28 = @"BTPipe-Phone";
      if (DeviceClass == 6)
      {
        v28 = @"BTPipe-Watch";
      }

      p_isa = v28;

      goto LABEL_52;
    }

    p_isa = [(RPEndpoint *)self->_localDeviceInfo identifier];

    if (p_isa)
    {
LABEL_52:
      [v3 setObject:p_isa forKeyedSubscript:@"_i"];
    }
  }

  if ((statusFlags & 0x80000) != 0 && self->_pairVerifyCompleted && self->_pairVerifyIdentityType != 2)
  {
    v31 = self->_ucat->var0;
    if (v31 <= 30)
    {
      if (v31 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_67;
        }

        v61 = self->_ucat;
      }

LABEL_63:
      LogPrintF();
    }

LABEL_67:
    [(RPIdentityDaemon *)self->_identityDaemon addSelfIdentityInfoToMessage:v3 flags:0, serviceType];
    goto LABEL_68;
  }

  if ((self->_statusFlags & 0x2000) != 0)
  {
    v29 = GestaltGetDeviceClass();
    if (!RPDeviceIsCommunal(v29))
    {
      v30 = self->_ucat->var0;
      if (v30 <= 30)
      {
        if (v30 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_67;
          }

          v32 = self->_ucat;
        }

        goto LABEL_63;
      }

      goto LABEL_67;
    }
  }

LABEL_68:
  if (v5)
  {
    idsDeviceIdentifier = [(RPEndpoint *)self->_localDeviceInfo idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      [v3 setObject:idsDeviceIdentifier forKeyedSubscript:@"_idsID"];
    }

    idsCorrelationIdentifier = [(RPEndpoint *)self->_localDeviceInfo idsCorrelationIdentifier];

    if (idsCorrelationIdentifier)
    {
      [v3 setObject:idsCorrelationIdentifier forKeyedSubscript:@"_idsCID"];
    }

    listeningPort = [(RPCompanionLinkDevice *)self->_localDeviceInfo listeningPort];
    if (listeningPort)
    {
      v36 = [MEMORY[0x1E696AD98] numberWithInt:listeningPort];
      [v3 setObject:v36 forKeyedSubscript:@"_lP"];
    }

    mediaRemoteIdentifier = [(RPEndpoint *)self->_localDeviceInfo mediaRemoteIdentifier];

    if (mediaRemoteIdentifier)
    {
      [v3 setObject:mediaRemoteIdentifier forKeyedSubscript:@"_mrID"];
    }

    mediaRouteIdentifier = [(RPEndpoint *)self->_localDeviceInfo mediaRouteIdentifier];

    if (mediaRouteIdentifier)
    {
      [v3 setObject:mediaRouteIdentifier forKeyedSubscript:@"_mRtID"];
    }

    mediaSystemIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemIdentifier];

    if (mediaSystemIdentifier)
    {
      [v3 setObject:mediaSystemIdentifier forKeyedSubscript:@"_msId"];
    }

    mediaSystemName = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemName];

    if (mediaSystemName)
    {
      [v3 setObject:mediaSystemName forKeyedSubscript:@"_msNm"];
    }

    mediaSystemRole = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemRole];
    if (mediaSystemRole)
    {
      v42 = [MEMORY[0x1E696AD98] numberWithInt:mediaSystemRole];
      [v3 setObject:v42 forKeyedSubscript:@"_msRo"];
    }

    mediaSystemState = [(RPCompanionLinkDevice *)self->_localDeviceInfo mediaSystemState];
    if (mediaSystemState)
    {
      v44 = [MEMORY[0x1E696AD98] numberWithInt:mediaSystemState];
      [v3 setObject:v44 forKeyedSubscript:@"_msSt"];
    }

    p_isa = [(RPCompanionLinkDevice *)self->_localDeviceInfo activeUserAltDSID];

    if (p_isa)
    {
      [v3 setObject:p_isa forKeyedSubscript:@"_aaltDSID"];
    }
  }

  v45 = [v3 objectForKeyedSubscript:{@"model", serviceType}];

  if (!v45)
  {
    model = [(RPEndpoint *)self->_localDeviceInfo model];

    if (model)
    {
      [v3 setObject:model forKeyedSubscript:@"model"];
      p_isa = model;
    }

    else
    {
      p_isa = 0;
    }
  }

  v47 = [v3 objectForKeyedSubscript:@"name"];

  if (!v47)
  {
    v48 = GestaltCopyAnswer();

    if (v48)
    {
      [v3 setObject:v48 forKeyedSubscript:@"name"];
      p_isa = v48;
    }

    else
    {
      p_isa = 0;
    }
  }

  localDeviceInfo = self->_localDeviceInfo;
  if (v5)
  {
    if (localDeviceInfo)
    {
      [(RPEndpoint *)localDeviceInfo operatingSystemVersion];
      localDeviceInfo = self->_localDeviceInfo;
      if (v64 >= 1)
      {
        if (localDeviceInfo)
        {
          [(RPEndpoint *)localDeviceInfo operatingSystemVersion];
        }

        else
        {
          memset(v63, 0, sizeof(v63));
        }

        v50 = RPNSOperatingSystemVersionToString(v63);
        if (v50)
        {
          [v3 setObject:v50 forKeyedSubscript:@"_osV"];
        }

        localDeviceInfo = self->_localDeviceInfo;
      }
    }

    else
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
    }
  }

  publicIdentifier = [(RPCompanionLinkDevice *)localDeviceInfo publicIdentifier];

  if (publicIdentifier)
  {
    [v3 setObject:publicIdentifier forKeyedSubscript:@"_pubID"];
  }

  sessionPairingIdentifier = [(RPEndpoint *)self->_localDeviceInfo sessionPairingIdentifier];

  if (sessionPairingIdentifier)
  {
    [v3 setObject:sessionPairingIdentifier forKeyedSubscript:@"_spID"];
  }

  if (v5)
  {
    roomName = [(RPCompanionLinkDevice *)self->_localDeviceInfo roomName];

    if (roomName)
    {
      [v3 setObject:roomName forKeyedSubscript:@"_roomName"];
    }

    serviceTypes = [(RPEndpoint *)self->_localDeviceInfo serviceTypes];

    if (serviceTypes)
    {
      [v3 setObject:serviceTypes forKeyedSubscript:@"_stA"];
    }

    sessionPairingIdentifier = [(RPCompanionLinkDevice *)self->_localDeviceInfo siriInfo];

    if (sessionPairingIdentifier)
    {
      [v3 setObject:sessionPairingIdentifier forKeyedSubscript:@"_siriInfo"];
    }
  }

  [v3 setObject:@"715.2" forKeyedSubscript:@"_sv"];
  if (self->_pairVerifyIdentityType == 2)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[RPEndpoint activityLevel](self->_localDeviceInfo, "activityLevel")}];
    [v3 setObject:v55 forKeyedSubscript:@"_actLvl"];
  }

  if (v5)
  {
    v56 = [(RPEndpoint *)self->_localDeviceInfo statusFlags]& 0x10000010100;
    if (v56)
    {
      v57 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v56];
      [v3 setObject:v57 forKeyedSubscript:@"_sf"];
    }
  }

  if (self->_pairVerifyCompleted && (self->_controlFlags & 0x200) == 0)
  {
    [(RPConnection *)self _identityProofsAdd:v3 update:0];
  }

  v58 = v3;

  return v58;
}

- (id)_allowedMACAddressesForMCFeature:(id)feature
{
  v22 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  sharedConnection = [getMCProfileConnectionClass[0]() sharedConnection];
  v5 = [sharedConnection effectiveValuesForUnionSetting:featureCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 UTF8String] && !TextToHardwareAddress())
          {
            v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v16 length:6];
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_configureForSessionPairing:(id)pairing
{
  pairingCopy = pairing;
  v5 = self->_identityDaemon;
  if (v5)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_6:
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__RPConnection__configureForSessionPairing___block_invoke;
    v10[3] = &unk_1E7C93D78;
    v10[4] = v5;
    v10[5] = self;
    [pairingCopy setCopyIdentityHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__RPConnection__configureForSessionPairing___block_invoke_2;
    v9[3] = &unk_1E7C93DA0;
    v9[4] = self;
    v9[5] = v5;
    [pairingCopy setFindPeerHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__RPConnection__configureForSessionPairing___block_invoke_3;
    v8[3] = &unk_1E7C93DC8;
    v8[4] = self;
    v8[5] = v5;
    [pairingCopy setSavePeerHandler:v8];
  }
}

id __44__RPConnection__configureForSessionPairing___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = *(a1 + 32);
  v19 = 0;
  v7 = [v6 identityOfSelfAndReturnError:&v19];
  v8 = v19;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = **(*(a1 + 40) + 296);
    if (v10 > 90)
    {
      goto LABEL_12;
    }

    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_12:
        if (a3)
        {
          v16 = v8;
          v11 = 0;
          *a3 = v8;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_15;
      }

      v18 = *(*(a1 + 40) + 296);
    }

    LogPrintF();
    goto LABEL_12;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69994F0]);
  v12 = [*(a1 + 32) sessionPairingIdentifier];
  [v11 setIdentifier:v12];

  v13 = [v7 deviceIRKData];
  [v11 setAltIRK:v13];

  v14 = [v7 edPKData];
  [v11 setPublicKey:v14];

  if ((a2 & 2) != 0)
  {
    v15 = [v7 edSKData];
    [v11 setSecretKey:v15];

    [v11 rp_setSEPPrivateKey:{objc_msgSend(v7, "sepPrivateKey")}];
  }

LABEL_15:

  return v11;
}

uint64_t __44__RPConnection__configureForSessionPairing___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = **(*(a1 + 32) + 296);
  if (v8 <= 30)
  {
    if (v8 != -1)
    {
LABEL_3:
      v29 = v7;
      v30 = a3;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v28 = *(*(a1 + 32) + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v9 = *(a1 + 40);
  v37 = 0;
  v10 = [v9 identitiesOfType:13 error:{&v37, v29, v30}];
  v11 = v37;
  v12 = v11;
  if (v11)
  {
    if (a4)
    {
      v13 = v11;
      *a4 = v12;
    }
  }

  else
  {
    v14 = [v7 identifier];
    v15 = [v14 UUIDString];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v17)
    {
      v31 = v10;
      v32 = v7;
      v18 = *v34;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [v20 identifier];
          v22 = [v21 isEqual:v15];

          if (v22)
          {
            v17 = v20;
            goto LABEL_18;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_18:
      v10 = v31;
      v7 = v32;
    }

    if (!a4 || v17)
    {
      v23 = [v17 name];
      [0 setName:v23];

      v24 = [v17 model];
      [0 setModel:v24];

      v25 = [v17 edPKData];
      [0 setPublicKey:v25];
    }

    else
    {
      *a4 = RPErrorF();
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL __44__RPConnection__configureForSessionPairing___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = **(*(a1 + 32) + 296);
  if (v4 <= 30)
  {
    if (v4 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v8 = *(*(a1 + 32) + 296);
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = [[RPIdentity alloc] initWithPairedPeer:v3 type:13];
  if (v5)
  {
    [*(*(a1 + 32) + 664) setStatusFlags:{objc_msgSend(*(*(a1 + 32) + 664), "statusFlags") | 0x2000000000}];
    v6 = [(RPIdentity *)v5 identifier];
    [*(*(a1 + 32) + 664) setVerifiedIdentity:v6];

    [*(a1 + 40) addSessionPairedIdentity:v5];
  }

  return v5 != 0;
}

- (id)inUseProcessesToString
{
  inUseProcesses = self->_inUseProcesses;
  if (inUseProcesses)
  {
    allObjects = [(NSMutableSet *)inUseProcesses allObjects];
    v4 = [allObjects sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_receivedHeader:(id *)header encryptedObjectData:(id)data ctx:(id *)ctx
{
  dataCopy = data;
  var0 = header->var0;
  v10 = self->_mainStream;
  if (var0 == 12)
  {
    v11 = self->_highPriorityStream;

    v10 = v11;
  }

  if (v10)
  {
    v25 = 0;
    v12 = [(CUPairingStream *)v10 decryptData:dataCopy aadBytes:header aadLength:4 error:&v25];
    v13 = v25;
    if (v12)
    {
      self->_controlFlags;
      v14 = OPACKDecodeData();
      if (v14)
      {
        v15 = v14;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = objc_opt_class();
          v24 = NSStringFromClass(v21);
          v22 = RPErrorF();

          v13 = v22;
          goto LABEL_9;
        }

        v16 = [v15 mutableCopy];
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
        [v16 setObject:v17 forKeyedSubscript:&unk_1F2EEC710];

        v18 = v16;
        [(RPConnection *)self _receivedObject:v18 ctx:ctx];
      }

      else
      {
        v20 = RPErrorF();
      }
    }
  }

  else
  {
    v13 = RPErrorF();
  }

LABEL_9:
  if (v13)
  {
    v19 = self->_ucat->var0;
    if (v19 <= 90)
    {
      if (v19 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }

LABEL_14:
}

- (void)_clientPairSetupWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_3();
  *a2 = RPErrorF();
}

- (uint64_t)_clientPairSetupWithData:(uint64_t *)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  result = RPErrorF();
  *a3 = result;
  return result;
}

- (uint64_t)_clientPairSetupCompleted:(uint64_t *)a3 .cold.1(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != -1)
  {
    return LogPrintF();
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    v5 = *a3;
    return LogPrintF();
  }

  return result;
}

- (void)_clientPairVerifyWithData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_3();
  *a2 = RPErrorF();
}

- (uint64_t)_serverPairSetupCompleted:(uint64_t)a3 .cold.1(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1 == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      return result;
    }

    v9 = *a4;
  }

  v5 = *(a3 + 200);
  if (v5 < 0xB)
  {
    v6 = off_1E7C94130[v5];
  }

  return LogPrintF();
}

- (uint64_t)_sendFrameType:(unsigned int *)a3 unencryptedObject:.cold.1(uint64_t result, unsigned __int8 a2, unsigned int *a3)
{
  v3 = **(result + 296);
  if (v3 <= 90)
  {
    if (v3 != -1)
    {
LABEL_3:
      RPFrameTypeToString(a2);
      v9 = *a3;
      return LogPrintF();
    }

    v6 = result;
    v7 = *(result + 296);
    result = _LogCategory_Initialize();
    if (result)
    {
      v8 = *(v6 + 296);
      goto LABEL_3;
    }
  }

  return result;
}

- (uint64_t)_identityProofsAddWithHomeKitUUID:(uint64_t *)a3 .cold.1(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      return result;
    }

    v5 = *a3;
  }

  return LogPrintF();
}

@end