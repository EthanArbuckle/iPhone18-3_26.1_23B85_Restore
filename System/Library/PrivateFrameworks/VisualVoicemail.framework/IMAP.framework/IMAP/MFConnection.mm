@interface MFConnection
+ (BOOL)shouldTryFallbacksAfterError:(id)error;
+ (id)logClasses;
+ (void)initialize;
+ (void)readLoggingDefaults;
+ (void)setLogClasses:(id)classes;
- (BOOL)authenticateUsingAccount:(id)account;
- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator;
- (BOOL)connectUsingAccount:(id)account;
- (BOOL)connectUsingSettings:(id)settings;
- (BOOL)hasBytesAvailable;
- (BOOL)isCellularConnection;
- (BOOL)isValid;
- (BOOL)readBytesIntoData:(id)data desiredLength:(unint64_t)length;
- (BOOL)readLineIntoData:(id)data;
- (BOOL)startCompression;
- (BOOL)startTLSForAccount:(id)account;
- (BOOL)usesOpportunisticSockets;
- (BOOL)writeBytes:(const char *)bytes length:(unint64_t)length dontLogBytesInRange:(_NSRange)range;
- (BOOL)writeData:(id)data dontLogBytesInRange:(_NSRange)range;
- (MFConnection)initWithMambaID:(const char *)d;
- (NSArray)authenticationMechanisms;
- (NSString)description;
- (NSString)securityProtocol;
- (_MFSocket)getSocket;
- (id)copyDiagnosticInformation;
- (id)createSocket;
- (id)socket_rumbaID;
- (void)abortSocket:(id)socket;
- (void)dealloc;
- (void)disconnect;
- (void)endCompression;
- (void)handleStreamEvent:(unint64_t)event;
- (void)logReadChars:(const char *)chars length:(unint64_t)length;
- (void)logType:(int64_t)type data:(id)data;
- (void)performAtomicAccessorBlock:(id)block;
- (void)resetSocket;
- (void)setAllowsFallbacks:(BOOL)fallbacks;
- (void)setIsFetching:(BOOL)fetching;
@end

@implementation MFConnection

+ (void)readLoggingDefaults
{
  [_LogLock lock];
  v3 = _LogClasses;
  _LogClasses = 0;

  v4 = _LoggedPorts;
  _LoggedPorts = 0;

  v5 = _LoggedHosts;
  _LoggedHosts = 0;

  keyExistsAndHasValidFormat = 0;
  v6 = *MEMORY[0x277CBF028];
  v7 = *MEMORY[0x277CBF040];
  v8 = *MEMORY[0x277CBF030];
  CFPreferencesSynchronize(*MEMORY[0x277CBF028], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LogActivityOnAllPorts", v6, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat || (CFPreferencesSynchronize(@"com.apple.message", v7, v8), AppIntegerValue = CFPreferencesGetAppIntegerValue(@"LogActivityOnAllPorts", @"com.apple.message", &keyExistsAndHasValidFormat), keyExistsAndHasValidFormat))
  {
    _LogAllConnectionActivity = AppIntegerValue != 0;
    if (!AppIntegerValue)
    {
      goto LABEL_4;
    }

LABEL_17:
    v15 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{self, 0}];
    v16 = _LogClasses;
    _LogClasses = v15;

    goto LABEL_18;
  }

  if (_LogAllConnectionActivity)
  {
    goto LABEL_17;
  }

LABEL_4:
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [standardUserDefaults stringArrayForKey:@"LogActivityOnPort"];
  v12 = [standardUserDefaults stringArrayForKey:@"LogActivityOnHost"];
  if (v11 || ([standardUserDefaults stringForKey:@"LogActivityOnPort"], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "componentsSeparatedByString:", @","), v11 = objc_claimAutoreleasedReturnValue(), v13, v11))
  {
    if ([v11 count])
    {
      objc_storeStrong(&_LoggedPorts, v11);
    }
  }

  if (v12 || ([standardUserDefaults stringForKey:@"LogActivityOnHost"], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "componentsSeparatedByString:", @","), v12 = objc_claimAutoreleasedReturnValue(), v14, v12))
  {
    if ([v12 count])
    {
      objc_storeStrong(&_LoggedHosts, v12);
    }
  }

  if ((_LogAllConnectionActivity & 1) != 0 || [_LoggedPorts count] || objc_msgSend(_LoggedHosts, "count"))
  {
    goto LABEL_17;
  }

LABEL_18:
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MFReloadNetworkLoggingNotification" object:self];

  [_LogLock unlock];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (!_LogLock)
    {
      _MFLockGlobalLock();
      if (!_LogLock)
      {
        v3 = [objc_alloc(MEMORY[0x277D24FA8]) initWithName:@"logLock" andDelegate:0];
        v4 = _LogLock;
        _LogLock = v3;
      }

      _MFUnlockGlobalLock();
    }

    [self readLoggingDefaults];
    if (+[MFConnection initialize]::once != -1)
    {
      +[MFConnection initialize];
    }
  }
}

void __26__MFConnection_initialize__block_invoke()
{
  v0 = MEMORY[0x277D85CD0];
  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &+[MFConnection initialize]::token, MEMORY[0x277D85CD0], &__block_literal_global_35);
  notify_register_dispatch("com.apple.AppSupport.loggingDefaultsChanged", &+[MFConnection initialize]::token, v0, &__block_literal_global_38);
  v1 = MEMORY[0x277D85CD0];
}

- (void)logType:(int64_t)type data:(id)data
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v28 = dataCopy;
  bytes = [v28 bytes];
  v8 = [dataCopy length];
  v9 = v8;
  if (v8 >= 0x400)
  {
    v10 = 1024;
  }

  else
  {
    v10 = v8;
  }

  if ((type - 1) > 4)
  {
    v11 = "CONNECTED";
  }

  else
  {
    v11 = off_279E35AC0[type - 1];
  }

  v29 = v11;
  getSocket = [(MFConnection *)self getSocket];
  securityProtocol = [getSocket securityProtocol];

  if (securityProtocol)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@":%@", securityProtocol];
  }

  else
  {
    v14 = &stru_288159858;
  }

  v30 = v14;
  if (!type)
  {
    v15 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = [(MFConnection *)self mambaID];
      rumbaID = [(MFConnection *)self rumbaID];
      v18 = objc_opt_class();
      hostname = [(MFConnectionSettings *)self->_connectionSettings hostname];
      portNumber = [(MFConnectionSettings *)self->_connectionSettings portNumber];
      *buf = 136317442;
      v32 = mambaID;
      v33 = 2080;
      v34 = " ";
      v35 = 2114;
      v36 = rumbaID;
      v37 = 2080;
      v38 = " ";
      v39 = 2082;
      v40 = v29;
      v41 = 2114;
      v42 = v18;
      v43 = 2048;
      selfCopy2 = self;
      v45 = 2112;
      v46 = hostname;
      v47 = 1024;
      v48 = portNumber;
      v49 = 2114;
      v50 = v30;
      _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sconnected: %{public}s <%{public}@:%p> [%@:%u%{public}@]", buf, 0x62u);
    }
  }

  while (v9)
  {
    v21 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      mambaID2 = [(MFConnection *)self mambaID];
      rumbaID2 = [(MFConnection *)self rumbaID];
      v24 = objc_opt_class();
      hostname2 = [(MFConnectionSettings *)self->_connectionSettings hostname];
      portNumber2 = [(MFConnectionSettings *)self->_connectionSettings portNumber];
      *buf = 136317954;
      v32 = mambaID2;
      v33 = 2080;
      v34 = " ";
      v35 = 2114;
      v36 = rumbaID2;
      v37 = 2080;
      v38 = " ";
      v39 = 2082;
      v40 = v29;
      v41 = 2114;
      v42 = v24;
      v43 = 2048;
      selfCopy2 = self;
      v45 = 2112;
      v46 = hostname2;
      v47 = 1024;
      v48 = portNumber2;
      v49 = 2114;
      v50 = v30;
      v51 = 1040;
      v52 = v10;
      v53 = 2096;
      v54 = bytes;
      _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%slogging: %{public}s <%{public}@:%p> [%@:%u%{public}@] %{mobilemail:networkData}.*P", buf, 0x72u);
    }

    bytes += v10;
    v9 -= v10;
    if (v9 >= 0x400)
    {
      v10 = 1024;
    }

    else
    {
      v10 = v9;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)logClasses
{
  [_LogLock lock];
  v2 = _LogClasses;
  [_LogLock unlock];

  return v2;
}

+ (void)setLogClasses:(id)classes
{
  classesCopy = classes;
  [_LogLock lock];
  objc_storeStrong(&_LogClasses, classes);
  [_LogLock unlock];
}

- (id)socket_rumbaID
{
  getSocket = [(MFConnection *)self getSocket];
  rumbaID = [getSocket rumbaID];

  return rumbaID;
}

- (MFConnection)initWithMambaID:(const char *)d
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = MFConnection;
  if ([(MFConnection *)&v5 init])
  {
    operator new();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)dealloc
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [(MFConnection *)self rumbaID];
    *buf = 136316418;
    v22 = mambaID;
    v23 = 2080;
    v24 = " ";
    v25 = 2114;
    v26 = rumbaID;
    v27 = 2080;
    v28 = " ";
    v29 = 2112;
    v30 = objc_opt_class();
    v31 = 2048;
    selfCopy2 = self;
    v6 = v30;
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s<%@, %p> Connection deleting", buf, 0x3Eu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x277D24F10] = [MEMORY[0x277D24F10] sharedController];
  [mEMORY[0x277D24F10] removeDiagnosticsGenerator:self];

  buffer = self->_buffer;
  if (buffer)
  {
    free(buffer);
    self->_buffer = 0;
  }

  getSocket = [(MFConnection *)self getSocket];
  if (getSocket)
  {
    [(MFConnection *)self abortSocket:getSocket];
  }

  deflater = self->_deflater;
  if (deflater)
  {
    deflateEnd(deflater);
    free(self->_deflater);
    self->_deflater = 0;
  }

  inflater = self->_inflater;
  if (inflater)
  {
    inflateEnd(inflater);
    free(self->_inflater);
    self->_inflater = 0;
  }

  zbuffer = self->_zbuffer;
  if (zbuffer)
  {
    free(zbuffer);
  }

  v14 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    mambaID2 = [(MFConnection *)self mambaID];
    rumbaID2 = [(MFConnection *)self rumbaID];
    v17 = objc_opt_class();
    *buf = 136316418;
    v22 = mambaID2;
    v23 = 2080;
    v24 = " ";
    v25 = 2114;
    v26 = rumbaID2;
    v27 = 2080;
    v28 = " ";
    v29 = 2112;
    v30 = v17;
    v31 = 2048;
    selfCopy2 = self;
    v18 = v17;
    _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s<%@ %p> Connection deleted", buf, 0x3Eu);
  }

  v20.receiver = self;
  v20.super_class = MFConnection;
  [(MFConnection *)&v20 dealloc];
  v19 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MFConnection;
  v4 = [(MFConnection *)&v8 description];
  getSocket = [(MFConnection *)self getSocket];
  v6 = [v3 stringWithFormat:@"%@ socket: %p\n", v4, getSocket];

  return v6;
}

- (void)performAtomicAccessorBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = blockCopy;
    os_unfair_lock_lock_with_options();
    v5[2]();
    os_unfair_lock_unlock(&self->lock);
    blockCopy = v5;
  }
}

- (id)createSocket
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__MFConnection_createSocket__block_invoke;
  v4[3] = &unk_279E34578;
  v4[4] = self;
  v4[5] = &v5;
  [(MFConnection *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __28__MFConnection_createSocket__block_invoke(uint64_t a1)
{
  v2 = [_MFSocket alloc];
  v3 = [*(a1 + 32) mambaID];
  v4 = [*(a1 + 32) rumbaID];
  v5 = [(_MFSocket *)v2 initWithMambaID:v3 rumba:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = v5;

  v8 = *(*(a1 + 32) + 136);
  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v8);
}

- (void)resetSocket
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __27__MFConnection_resetSocket__block_invoke;
  v2[3] = &unk_279E34528;
  v2[4] = self;
  [(MFConnection *)self performAtomicAccessorBlock:v2];
}

void __27__MFConnection_resetSocket__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;
}

- (_MFSocket)getSocket
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__MFConnection_getSocket__block_invoke;
  v4[3] = &unk_279E345A0;
  v4[4] = self;
  v4[5] = &v5;
  [(MFConnection *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)isCellularConnection
{
  v21 = *MEMORY[0x277D85DE8];
  getSocket = [(MFConnection *)self getSocket];
  isCellularConnection = [getSocket isCellularConnection];

  v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [(MFConnection *)self rumbaID];
    v8 = asNSStringBOOL(isCellularConnection);
    v11 = 136316162;
    v12 = mambaID;
    v13 = 2080;
    v14 = " ";
    v15 = 2114;
    v16 = rumbaID;
    v17 = 2080;
    v18 = " ";
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sisCellularConnection = %@", &v11, 0x34u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return isCellularConnection;
}

- (void)handleStreamEvent:(unint64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [(MFConnection *)self rumbaID];
    v8 = 136315906;
    v9 = mambaID;
    v10 = 2080;
    v11 = " ";
    v12 = 2114;
    v13 = rumbaID;
    v14 = 2080;
    v15 = " ";
    _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%{public}@%sMFConnection::handleStreamEvent - shouldn't be here!!!!", &v8, 0x2Au);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setIsFetching:(BOOL)fetching
{
  v3 = *(self + 100);
  if ((v3 & 1) != fetching)
  {
    *(self + 100) = v3 & 0xFE | fetching;
    [(MFConnection *)self enableThroughputMonitoring:?];
  }
}

- (BOOL)connectUsingSettings:(id)settings
{
  v82 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  objc_storeStrong(&self->_connectionSettings, settings);
  portNumber = [(MFConnectionSettings *)self->_connectionSettings portNumber];
  getSocket = [(MFConnection *)self getSocket];
  if (!getSocket)
  {
    createSocket = [(MFConnection *)self createSocket];
    v8 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = [(MFConnection *)self mambaID];
      rumbaID = [(__CFString *)createSocket rumbaID];
      *buf = 136315650;
      v75 = mambaID;
      v76 = 2112;
      v77 = rumbaID;
      v78 = 2048;
      v79 = createSocket;
      _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "#I %s %@ socket (%p) setClosingEventHandler", buf, 0x20u);
    }

    v11 = MEMORY[0x277CBEAE8];
    v12 = [VMWeakConnectionDelegate forConnection:self];
    v13 = [v11 mf_invocationWithSelector:sel_handleStreamEvent_ target:v12];
    [(__CFString *)createSocket setClosingEventHandler:v13];

    getSocket = createSocket;
  }

  v14 = +[MFActivityMonitor currentMonitor];
  [v14 setError:0];

  [(__CFString *)getSocket setSettings:self->_connectionSettings];
  if (portNumber)
  {
LABEL_6:
    hostname = [(MFConnectionSettings *)self->_connectionSettings hostname];
    v16 = [(__CFString *)getSocket connectToHost:hostname withPort:portNumber];

    v17 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      rumbaID2 = [(__CFString *)getSocket rumbaID];
      v19 = @"failed";
      *buf = 138412802;
      v75 = rumbaID2;
      if (v16)
      {
        v19 = @"succeeded";
      }

      v76 = 2048;
      v77 = getSocket;
      v78 = 2112;
      v79 = v19;
      _os_log_impl(&dword_2720B1000, v17, OS_LOG_TYPE_DEFAULT, "#I %@ socket (%p) connectToHost %@", buf, 0x20u);
    }

    if (v16)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  serviceName = [(MFConnectionSettings *)self->_connectionSettings serviceName];
  v23 = serviceName;
  v24 = getservbyname([serviceName UTF8String], "tcp");

  if (v24 && LOWORD(v24->s_port))
  {
    portNumber = __rev16(LOWORD(v24->s_port));
    goto LABEL_6;
  }

  v25 = +[MFActivityMonitor currentMonitor];
  v26 = MEMORY[0x277CCA9B8];
  v27 = MEMORY[0x277CCACA8];
  serviceName2 = [(MFConnectionSettings *)self->_connectionSettings serviceName];
  v29 = [v27 stringWithFormat:@"Can’t determine port to use for the TCP/IP service “%@”.", serviceName2];
  v30 = [v26 errorWithDomain:@"MFMessageErrorDomain" code:1031 localizedDescription:v29];
  [v25 setError:v30];

  portNumber = 0;
LABEL_16:
  v31 = +[MFActivityMonitor currentMonitor];
  error = [v31 error];

  if (!error)
  {
    goto LABEL_28;
  }

  domain = [error domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA590]] & 1) == 0)
  {

    goto LABEL_28;
  }

  v34 = [error code] == -9850;

  if (!v34)
  {
LABEL_28:

    goto LABEL_29;
  }

  v35 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    mambaID2 = [(MFConnection *)self mambaID];
    rumbaID3 = [(MFConnection *)self rumbaID];
    *buf = 136315906;
    v75 = mambaID2;
    v76 = 2080;
    v77 = " ";
    v78 = 2114;
    v79 = rumbaID3;
    v80 = 2080;
    v81 = " ";
    _os_log_impl(&dword_2720B1000, v35, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sDetected server with low-grade DH cipher. Re-trying with DH disabled.", buf, 0x2Au);
  }

  v38 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    mambaID3 = [(MFConnection *)self mambaID];
    rumbaID4 = [(__CFString *)getSocket rumbaID];
    *buf = 136315650;
    v75 = mambaID3;
    v76 = 2112;
    v77 = rumbaID4;
    v78 = 2048;
    v79 = getSocket;
    _os_log_impl(&dword_2720B1000, v38, OS_LOG_TYPE_DEFAULT, "#I %s %@ socket (%p) aborting", buf, 0x20u);
  }

  [(MFConnection *)self abortSocket:getSocket];
  createSocket2 = [(MFConnection *)self createSocket];

  v42 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    mambaID4 = [(MFConnection *)self mambaID];
    rumbaID5 = [(__CFString *)createSocket2 rumbaID];
    *buf = 136315650;
    v75 = mambaID4;
    v76 = 2112;
    v77 = rumbaID5;
    v78 = 2048;
    v79 = createSocket2;
    _os_log_impl(&dword_2720B1000, v42, OS_LOG_TYPE_DEFAULT, "#I %s %@ socket (%p) setClosingEventHandler, recreated", buf, 0x20u);
  }

  v45 = MEMORY[0x277CBEAE8];
  v46 = [VMWeakConnectionDelegate forConnection:self];
  v47 = [v45 mf_invocationWithSelector:sel_handleStreamEvent_ target:v46];
  [(__CFString *)createSocket2 setClosingEventHandler:v47];

  [(__CFString *)createSocket2 setSettings:self->_connectionSettings];
  [(__CFString *)createSocket2 disableEphemeralDiffieHellman];
  v48 = +[MFActivityMonitor currentMonitor];
  [v48 setError:0];

  hostname2 = [(MFConnectionSettings *)self->_connectionSettings hostname];
  LOBYTE(v45) = [(__CFString *)createSocket2 connectToHost:hostname2 withPort:portNumber];

  getSocket = createSocket2;
  if ((v45 & 1) == 0)
  {
LABEL_29:
    v72 = +[MFActivityMonitor currentMonitor];
    hostname3 = [(MFConnectionSettings *)self->_connectionSettings hostname];
    tryDirectSSL = [(MFConnectionSettings *)self->_connectionSettings tryDirectSSL];
    v21 = getSocket;
    v51 = v72;
    v52 = hostname3;
    error2 = [v51 error];
    v54 = error2;
    if (error2)
    {
      domain2 = [(NSError *)error2 domain];
      v56 = [*MEMORY[0x277CCA5B8] isEqualToString:domain2];

      if (v56)
      {
        code = [(NSError *)v54 code];
        switch(code)
        {
          case '<':
            v58 = @"The connection to the server “%@” on port %d timed out.";
            break;
          case '=':
            if (tryDirectSSL)
            {
              v58 = @"Mail was unable to connect to server “%@” using SSL on port %d. Verify that this server supports SSL and that your account settings are correct.";
            }

            else
            {
              v58 = @"The server “%@” refused to allow a connection on port %d.";
            }

            break;
          case 'A':
            v58 = @"The server “%@” cannot be contacted on port %d.";
            break;
          default:
            if (!tryDirectSSL)
            {
              v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", v52];
              goto LABEL_50;
            }

            v58 = @"Mail was unable to connect to server “%@” using SSL on port %d. Verify that this server supports SSL and that your account settings are correct.";
            break;
        }

        v67 = [MEMORY[0x277CCACA8] stringWithFormat:v58, v52, portNumber];
LABEL_50:
        localizedDescription = v67;
LABEL_51:
        if (![(NSError *)v54 mf_isUserCancelledError])
        {
          if (!localizedDescription)
          {
            localizedDescription = [MEMORY[0x277CCACA8] stringWithFormat:@"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", v52];
          }

          v68 = [(NSError *)v54 setLocalizedDescription:localizedDescription];

          v54 = v68;
        }

        goto LABEL_55;
      }

      domain3 = [(NSError *)v54 domain];
      v62 = [*MEMORY[0x277CCA670] isEqualToString:domain3];

      if (!v62)
      {
        localizedDescription = 0;
        goto LABEL_51;
      }

      serverCertificates = [(__CFString *)v21 serverCertificates];
      v64 = _setupSSLDomainError(v54, v52, serverCertificates);

      v65 = v64;
      localizedDescription = [v64 localizedDescription];
      if (localizedDescription && ![&stru_288159858 isEqualToString:localizedDescription])
      {
        v59 = v65;
        if (!v65)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Mail was unable to connect to server “%@” using SSL on port %d. Verify that this server supports SSL and that your account settings are correct.", v52, portNumber];

        v59 = v65;
        localizedDescription = v66;
        if (!v65)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v59 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
      localizedDescription = 0;
      if (!v59)
      {
LABEL_41:
        v54 = 0;
LABEL_55:
        [v51 setError:v54];

        [(MFConnection *)self abortSocket:v21];
        v20 = 0;
        goto LABEL_56;
      }
    }

    v54 = v59;
    goto LABEL_51;
  }

LABEL_11:
  _logEvent(self, 0, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0);
  v20 = 1;
  v21 = getSocket;
LABEL_56:

  v69 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)connectUsingAccount:(id)account
{
  defaultConnectionSettings = [account defaultConnectionSettings];
  LOBYTE(self) = [(MFConnection *)self connectUsingSettings:defaultConnectionSettings];

  return self;
}

+ (BOOL)shouldTryFallbacksAfterError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqual:*MEMORY[0x277CBACE8]];

  if (!v5)
  {
    domain2 = [errorCopy domain];
    v8 = [domain2 isEqual:*MEMORY[0x277CCA670]];

    if (v8)
    {
      v6 = [errorCopy code] != -9829;
      goto LABEL_8;
    }

LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  if ([errorCopy code] != 2 && objc_msgSend(errorCopy, "code") != 1)
  {
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setAllowsFallbacks:(BOOL)fallbacks
{
  if (fallbacks)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 100) = *(self + 100) & 0xFD | v3;
}

- (BOOL)authenticateUsingAccount:(id)account
{
  accountCopy = account;
  preferredAuthScheme = [accountCopy preferredAuthScheme];
  v6 = [preferredAuthScheme authenticatorForAccount:accountCopy connection:self];
  securityLayer = self->_securityLayer;
  self->_securityLayer = 0;

  if (!v6)
  {
    goto LABEL_9;
  }

  authenticationMechanisms = [(MFConnection *)self authenticationMechanisms];
  if (!authenticationMechanisms || ([v6 saslName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(authenticationMechanisms, "indexOfObject:", v9), v9, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = MEMORY[0x277CCACA8];
    accountTypeString = [objc_opt_class() accountTypeString];
    hostname = [accountCopy hostname];
    humanReadableName = [preferredAuthScheme humanReadableName];
    v15 = [v11 stringWithFormat:@"The %@ server “%@” doesn’t support %@ authentication. Please check your account settings and try again.", accountTypeString, hostname, humanReadableName];

    v16 = +[MFActivityMonitor currentMonitor];
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:v15];
    [v16 setError:v17];

    v6 = 0;
    v18 = 0;
    goto LABEL_5;
  }

  if (![(MFConnection *)self authenticateUsingAccount:accountCopy authenticator:v6])
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  if (self->_securityLayer)
  {
    v18 = 1;
    goto LABEL_10;
  }

  securityLayer = [v6 securityLayer];
  authenticationMechanisms = self->_securityLayer;
  self->_securityLayer = securityLayer;
  v18 = 1;
LABEL_5:

LABEL_10:
  return v18;
}

- (NSArray)authenticationMechanisms
{
  v20 = *MEMORY[0x277D85DE8];
  [(MFConnection *)self capabilities];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  array = 0;
  v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v9 = [v7 rangeOfString:@"AUTH=" options:9 range:{0, objc_msgSend(v7, "length", v15)}];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v8;
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          v11 = [v7 substringFromIndex:v9 + v10];
          uppercaseString = [v11 uppercaseString];
          [array addObject:uppercaseString];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)usesOpportunisticSockets
{
  getSocket = [(MFConnection *)self getSocket];
  usesOpportunisticSocketsStatus = [getSocket usesOpportunisticSocketsStatus];

  return usesOpportunisticSocketsStatus;
}

- (BOOL)writeBytes:(const char *)bytes length:(unint64_t)length dontLogBytesInRange:(_NSRange)range
{
  encryptionBufferSize = [(MFSASLSecurityLayer *)self->_securityLayer encryptionBufferSize];
  v9 = encryptionBufferSize;
  lengthCopy = length;
  bytesCopy = bytes;
  if ((*(self + 100) & 4) != 0)
  {
    v10 = objc_alloc_init(MEMORY[0x277D24F70]);
    deflater = self->_deflater;
    deflater->avail_in = length;
    deflater->next_in = bytes;
    v14 = self->_deflater;
    do
    {
      v14->next_out = self->_zbuffer;
      v15 = NSPageSize();
      v16 = self->_deflater;
      v16->avail_out = v15;
      if (deflate(v16, 2) == -2)
      {
        __assert_rtn("[MFConnection writeBytes:length:dontLogBytesInRange:]", "Connection.mm", 770, "Z_STREAM_ERROR != err");
      }

      [v10 appendBytes:self->_zbuffer length:NSPageSize() - self->_deflater->avail_out];
      v14 = self->_deflater;
    }

    while (!v14->avail_out);
    length = [v10 length];
    bytes = [v10 bytes];
    if (v9)
    {
LABEL_3:
      v11 = objc_allocWithZone(MEMORY[0x277D24F70]);
      bytes = 0;
      if (v9 >= length)
      {
        lengthCopy2 = length;
      }

      else
      {
        lengthCopy2 = v9;
      }

      lengthCopy3 = lengthCopy2;
      v9 = [v11 initWithCapacity:lengthCopy2 + 4];
      if (!length)
      {
        goto LABEL_33;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
    if (encryptionBufferSize)
    {
      goto LABEL_3;
    }
  }

  lengthCopy3 = length;
  if (!length)
  {
LABEL_33:
    if (v9)
    {
      _logEvent(self, 4, bytesCopy, lengthCopy, range.location, range.length);
    }

    else
    {
      _logEvent(self, 3, bytesCopy, lengthCopy, range.location, range.length);
    }

    v26 = 1;
    goto LABEL_39;
  }

LABEL_13:
  v29 = &bytesCopy[length];
  while (1)
  {
    if (v9)
    {
      if (lengthCopy3 >= length)
      {
        lengthCopy4 = length;
      }

      else
      {
        lengthCopy4 = lengthCopy3;
      }

      v18 = [(MFSASLSecurityLayer *)self->_securityLayer createEncryptedDataForBytes:&v29[-length] length:lengthCopy4];
      [v9 setLength:0];
      v19 = v18 != 0;
      if (v18)
      {
        v33 = bswap32([v18 length]) >> 16;
        [v9 appendBytes:&v33 length:4];
        [v9 appendData:v18];
      }

      bytes = [v9 bytes];
      lengthCopy5 = [v9 length];
    }

    else
    {
      v19 = 1;
      lengthCopy5 = length;
    }

    getSocket = [(MFConnection *)self getSocket];
    if (!getSocket)
    {
      _setupWriteErrorMessage(self, 0);
      goto LABEL_36;
    }

    if (!v19)
    {
      goto LABEL_36;
    }

    if (lengthCopy5)
    {
      break;
    }

LABEL_29:

    v25 = length > lengthCopy3;
    if (length >= lengthCopy3)
    {
      length -= lengthCopy3;
    }

    else
    {
      length = 0;
    }

    if (!v25)
    {
      goto LABEL_33;
    }
  }

  bytesCopy2 = bytes;
  while (1)
  {
    v23 = [(_MFSocket *)getSocket writeBytes:bytesCopy2 length:lengthCopy5];
    if (v23 < 0)
    {
      break;
    }

    self->_lastUsedTime = CFAbsoluteTimeGetCurrent();
    if (!v23)
    {
      break;
    }

    v24 = +[MFActivityMonitor currentMonitor];
    [v24 recordBytesWritten:v23];
    bytesCopy2 += v23;
    lengthCopy5 -= v23;

    if (!lengthCopy5)
    {
      goto LABEL_29;
    }
  }

  _setupWriteErrorMessage(self, getSocket);
  [(MFConnection *)self abortSocket:getSocket];
LABEL_36:

  v26 = 0;
LABEL_39:

  return v26;
}

- (BOOL)writeData:(id)data dontLogBytesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  dataCopy = data;
  LOBYTE(length) = -[MFConnection writeBytes:length:dontLogBytesInRange:](self, "writeBytes:length:dontLogBytesInRange:", [dataCopy bytes], objc_msgSend(dataCopy, "length"), location, length);

  return length;
}

- (void)logReadChars:(const char *)chars length:(unint64_t)length
{
  if (length)
  {
    self->_readBytesNotLogged -= length;
  }
}

- (BOOL)readLineIntoData:(id)data
{
  dataCopy = data;
  v5 = 0;
  v6 = 1;
  do
  {
    if (!self->_bufferRemainingBytes)
    {
      v6 = _fillBuffer(self);
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    buffer = self->_buffer;
    bufferStart = self->_bufferStart;
    if (v5 && buffer[bufferStart] == 10)
    {
      v9 = 0;
      v10 = 1;
    }

    else
    {
      bufferRemainingBytes = self->_bufferRemainingBytes;
      if (bufferRemainingBytes < 2)
      {
LABEL_12:
        v10 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = 0;
        v12 = bufferRemainingBytes - 1;
        while (*&buffer[bufferStart + v9] != 2573)
        {
          if (v12 == ++v9)
          {
            goto LABEL_12;
          }
        }

        v10 = 2;
      }
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = self->_bufferRemainingBytes;
      v5 = buffer[bufferStart - 1 + v13] == 13;
    }

    else
    {
      v5 = 0;
      v13 = v9 + v10;
    }

    [dataCopy appendBytes:&buffer[bufferStart] length:v13];
    v14 = self->_bufferStart + v13;
    self->_bufferRemainingBytes -= v13;
    self->_bufferStart = v14;
  }

  while (((v9 == 0x7FFFFFFFFFFFFFFFLL) & v6) != 0);

  return v6 & 1;
}

- (BOOL)readBytesIntoData:(id)data desiredLength:(unint64_t)length
{
  dataCopy = data;
  while (length)
  {
    bufferRemainingBytes = self->_bufferRemainingBytes;
    if (!bufferRemainingBytes)
    {
      if (!_fillBuffer(self))
      {
        v10 = 0;
        goto LABEL_12;
      }

      bufferRemainingBytes = self->_bufferRemainingBytes;
    }

    if (bufferRemainingBytes >= 1)
    {
      if (bufferRemainingBytes >= length)
      {
        lengthCopy = length;
      }

      else
      {
        lengthCopy = bufferRemainingBytes;
      }

      [dataCopy appendBytes:&self->_buffer[self->_bufferStart] length:lengthCopy];
      v9 = self->_bufferStart + lengthCopy;
      self->_bufferRemainingBytes -= lengthCopy;
      self->_bufferStart = v9;
      length -= lengthCopy;
    }
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"Internal error: -[%@ %@] needs to be implemented in a concrete subclass.", v7, v8];

  v10 = +[MFActivityMonitor currentMonitor];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:v9];
  [v10 setError:v11];

  return 0;
}

- (BOOL)startTLSForAccount:(id)account
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [v4 stringWithFormat:@"Internal error: -[%@ %@] needs to be implemented in a concrete subclass.", v6, v7];

  v9 = +[MFActivityMonitor currentMonitor];
  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:v8];
  [v9 setError:v10];

  return 0;
}

- (NSString)securityProtocol
{
  getSocket = [(MFConnection *)self getSocket];
  v3 = getSocket;
  if (getSocket)
  {
    securityProtocol = [getSocket securityProtocol];
  }

  else
  {
    securityProtocol = *MEMORY[0x277CBF0A0];
  }

  v5 = securityProtocol;

  return v5;
}

- (BOOL)startCompression
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
  if (!v3)
  {
    [MFConnection startCompression];
  }

  v4 = v3;
  v3->zalloc = 0;
  v3->zfree = 0;
  v3->opaque = 0;
  v5 = deflateInit2_(v3, -1, 8, -15, 8, 0, "1.2.12", 112);
  if (v5)
  {
    v6 = v5;
    v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mambaID = [(MFConnection *)self mambaID];
      rumbaID = [(MFConnection *)self rumbaID];
      v18 = 136316162;
      v19 = mambaID;
      v20 = 2080;
      v21 = " ";
      v22 = 2114;
      v23 = rumbaID;
      v24 = 2080;
      v25 = " ";
      v26 = 1024;
      v27 = v6;
      _os_log_error_impl(&dword_2720B1000, v7, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%sdeflateInit2 failed with error %d", &v18, 0x30u);
    }
  }

  else
  {
    self->_deflater = v4;
    v10 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
    if (!v10)
    {
      [MFConnection startCompression];
    }

    v4 = v10;
    v10->avail_in = 0;
    v10->next_in = 0;
    v10->zfree = 0;
    v10->opaque = 0;
    v10->zalloc = 0;
    v11 = inflateInit2_(v10, -15, "1.2.12", 112);
    if (!v11)
    {
      self->_inflater = v4;
      v15 = NSPageSize();
      self->_zbuffer = malloc_type_malloc(v15, 0x100004077774924uLL);
      *(self + 100) |= 4u;
      result = 1;
      goto LABEL_10;
    }

    v12 = v11;
    v7 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      mambaID2 = [(MFConnection *)self mambaID];
      rumbaID2 = [(MFConnection *)self rumbaID];
      v18 = 136316162;
      v19 = mambaID2;
      v20 = 2080;
      v21 = " ";
      v22 = 2114;
      v23 = rumbaID2;
      v24 = 2080;
      v25 = " ";
      v26 = 1024;
      v27 = v12;
      _os_log_error_impl(&dword_2720B1000, v7, OS_LOG_TYPE_ERROR, "#E %s%s%{public}@%sinflateInit2 failed with error %d", &v18, 0x30u);
    }
  }

  free(v4);
  [(MFConnection *)self endCompression];
  result = 0;
LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)endCompression
{
  *(self + 100) &= ~4u;
  deflater = self->_deflater;
  if (deflater)
  {
    deflateEnd(deflater);
    free(self->_deflater);
    self->_deflater = 0;
  }

  inflater = self->_inflater;
  if (inflater)
  {
    inflateEnd(inflater);
    free(self->_inflater);
    self->_inflater = 0;
  }

  zbuffer = self->_zbuffer;
  if (zbuffer)
  {
    free(zbuffer);
    self->_zbuffer = 0;
  }
}

- (BOOL)isValid
{
  getSocket = [(MFConnection *)self getSocket];
  v3 = getSocket;
  if (getSocket)
  {
    isValid = [getSocket isValid];
  }

  else
  {
    isValid = 0;
  }

  return isValid;
}

- (void)abortSocket:(id)socket
{
  v30 = *MEMORY[0x277D85DE8];
  socketCopy = socket;
  v5 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [socketCopy rumbaID];
    v18 = 136315650;
    v19 = mambaID;
    v20 = 2112;
    v21 = rumbaID;
    v22 = 2048;
    v23 = socketCopy;
    _os_log_impl(&dword_2720B1000, v5, OS_LOG_TYPE_DEFAULT, "#I %s %@ socket (%p) abort", &v18, 0x20u);
  }

  getSocket = [(MFConnection *)self getSocket];
  v9 = getSocket == socketCopy;

  if (!v9)
  {
    v10 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      mambaID2 = [(MFConnection *)self mambaID];
      rumbaID2 = [(MFConnection *)self rumbaID];
      getSocket2 = [(MFConnection *)self getSocket];
      v18 = 136316418;
      v19 = mambaID2;
      v20 = 2080;
      v21 = " ";
      v22 = 2114;
      v23 = rumbaID2;
      v24 = 2080;
      v25 = " ";
      v26 = 2048;
      v27 = socketCopy;
      v28 = 2048;
      v29 = getSocket2;
      _os_log_impl(&dword_2720B1000, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sabortSocket: aborting invalid socket (%p), self socket (%p)", &v18, 0x3Eu);
    }
  }

  if (socketCopy)
  {
    [socketCopy abort];
    _logEvent(self, 5, 0, 0, 0x7FFFFFFFFFFFFFFFuLL, 0);
  }

  else
  {
    v14 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      mambaID3 = [(MFConnection *)self mambaID];
      rumbaID3 = [(MFConnection *)self rumbaID];
      v18 = 136315906;
      v19 = mambaID3;
      v20 = 2080;
      v21 = " ";
      v22 = 2114;
      v23 = rumbaID3;
      v24 = 2080;
      v25 = " ";
      _os_log_impl(&dword_2720B1000, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sabortSocket: aborting deleted socket", &v18, 0x2Au);
    }
  }

  [(MFConnection *)self resetSocket];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)disconnect
{
  v14 = *MEMORY[0x277D85DE8];
  getSocket = [(MFConnection *)self getSocket];
  v4 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(MFConnection *)self mambaID];
    rumbaID = [getSocket rumbaID];
    v8 = 136315650;
    v9 = mambaID;
    v10 = 2112;
    v11 = rumbaID;
    v12 = 2048;
    v13 = getSocket;
    _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, "#I %s %@ socket (%p) disconnect", &v8, 0x20u);
  }

  if (getSocket)
  {
    [(MFConnection *)self abortSocket:getSocket];
  }

  [(MFConnection *)self endCompression];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasBytesAvailable
{
  if (self->_bufferRemainingBytes > 0)
  {
    return 1;
  }

  getSocket = [(MFConnection *)self getSocket];
  isReadable = [getSocket isReadable];

  return isReadable;
}

- (id)copyDiagnosticInformation
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(MFConnection *)self mf_lock];
  getSocket = [(MFConnection *)self getSocket];
  [v3 appendString:@"\n==== Connection State ====\n"];
  remoteHostname = [getSocket remoteHostname];
  [v3 appendFormat:@"    Host: %@\n", remoteHostname];

  [v3 appendFormat:@"    Port Number: %u\n", objc_msgSend(getSocket, "remotePortNumber")];
  securityProtocol = [getSocket securityProtocol];
  [v3 appendFormat:@"    SSL Version: %@\n", securityProtocol];

  [v3 appendFormat:@"    Socket: %p\n", getSocket];
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  [v3 appendFormat:@"    Thread: %p\n", currentThread];

  [(MFConnection *)self mf_unlock];
  return v3;
}

@end