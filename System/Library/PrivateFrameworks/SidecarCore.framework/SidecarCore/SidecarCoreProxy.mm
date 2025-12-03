@interface SidecarCoreProxy
+ (SidecarCoreProxy)defaultProxy;
- (void)relaySession:(id)session openedByDevice:(id)device dataLink:(int64_t)link service:(id)service;
- (void)relaySession:(int64_t)session closedWithError:(id)error;
- (void)relaySession:(int64_t)session receivedOPACKData:(id)data dataLink:(int64_t)link;
- (void)relaySession:(int64_t)session stream:(id)stream status:(unint64_t)status;
- (void)relayTerminateService;
@end

@implementation SidecarCoreProxy

- (void)relayTerminateService
{
  [(SidecarServicePresenterDelegate *)self->_presenterDelegate sidecarServicePresenterTerminate];
  delegate = self->_delegate;

  [(SidecarSessionDelegate *)delegate sidecarServiceTerminate];
}

- (void)relaySession:(int64_t)session stream:(id)stream status:(unint64_t)status
{
  v7 = self->_delegate != 0;
  streamCopy = stream;
  v12 = SidecarSessionWithHandle(session, v7);
  v9 = streamCopy;
  v10 = SidecarSessionGetStreams(v12, 0);
  v11 = [v10 objectForKeyedSubscript:v9];

  [v11 setStatus:status];
}

- (void)relaySession:(int64_t)session receivedOPACKData:(id)data dataLink:(int64_t)link
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v8 = SidecarOPACKDecode(data, &v21);
  v9 = v21;
  if (v9)
  {
    v10 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      domain = [v9 domain];
      code = [v9 code];
      localizedDescription = [v9 localizedDescription];
      *buf = 138543875;
      sessionCopy = domain;
      v24 = 2048;
      v25 = code;
      v26 = 2113;
      v27 = localizedDescription;
      _os_log_impl(&dword_26604C000, v11, OS_LOG_TYPE_ERROR, "proxy: %{public}@ (%ld) %{private}@", buf, 0x20u);
    }
  }

  else
  {
    v15 = SidecarSessionWithHandle(session, self->_delegate != 0);
    v11 = v15;
    if (v15)
    {
      v15[6].isa = link;
      v16 = 3;
      if (link == 4)
      {
        v16 = 1;
      }

      v17 = 2;
      if ((link & 0xFFFFFFFE) != 8)
      {
        v17 = v16;
      }

      v15[4].isa = v17;
      delegate = [v15 delegate];
      [delegate sidecarSession:v11 receivedMessage:v8];
    }

    else
    {
      v19 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      delegate = v19;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        sessionCopy = session;
        _os_log_impl(&dword_26604C000, delegate, OS_LOG_TYPE_ERROR, "unknown session %lX received OPACK", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)relaySession:(id)session openedByDevice:(id)device dataLink:(int64_t)link service:(id)service
{
  v34 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  deviceCopy = device;
  serviceCopy = service;
  *buf = 0;
  *&buf[8] = 0;
  [sessionCopy getUUIDBytes:buf];
  v13 = bswap32(*buf);
  v14 = SidecarSessionGetFromRemoteMapTable(v13);

  if (v14)
  {
    v15 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v16 = v15;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v13;
      _os_log_impl(&dword_26604C000, v16, OS_LOG_TYPE_ERROR, "session %lX already open", buf, 0xCu);
    }
  }

  else
  {
    v28 = 0;
    v17 = [[SidecarSession alloc] initWithRemote:sessionCopy device:deviceCopy dataLink:link service:serviceCopy error:&v28];
    v18 = v28;
    v16 = v18;
    if (v17)
    {
      v19 = SidecarCoreLogSubsystem(OS_LOG_TYPE_INFO);
      v20 = v19;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134218754;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = deviceCopy;
        v30 = 2114;
        v31 = serviceCopy;
        v32 = 2048;
        linkCopy = link;
        _os_log_impl(&dword_26604C000, v20, OS_LOG_TYPE_INFO, "session %lX opened by device %{public}@ (%{public}@) [%ld]", buf, 0x2Au);
      }

      [(SidecarSessionDelegate *)self->_delegate sidecarSessionStarted:v17];
    }

    else
    {
      v21 = v18;
      if (v21)
      {
        v23 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
        v24 = v23;
        if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          domain = [v21 domain];
          code = [v21 code];
          localizedDescription = [v21 localizedDescription];
          *buf = 138543875;
          *&buf[4] = domain;
          *&buf[12] = 2048;
          *&buf[14] = code;
          v30 = 2113;
          v31 = localizedDescription;
          _os_log_impl(&dword_26604C000, v24, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)relaySession:(int64_t)session closedWithError:(id)error
{
  errorCopy = error;
  v7 = self->_delegate;
  v8 = SidecarSessionWithHandle(session, v7 != 0);
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [(SidecarSessionDelegate *)self->_delegate sidecarSession:v8 closedWithError:errorCopy];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SidecarSessionRemoveFromRemoteMapTable_block_invoke;
    v11[3] = &__block_descriptor_40_e25_v16__0__SidecarMapTable_8l;
    v11[4] = session;
    SidecarSessionWithMapTable(SidecarMapTableCreateStrong, &__SidecarSessionRemoteMapTable, v11);
  }

  [v9 _closeWithError:errorCopy];
}

+ (SidecarCoreProxy)defaultProxy
{
  if (defaultProxy_once_771 != -1)
  {
    dispatch_once(&defaultProxy_once_771, &__block_literal_global_772);
  }

  v3 = defaultProxy_proxy_773;

  return v3;
}

uint64_t __32__SidecarCoreProxy_defaultProxy__block_invoke()
{
  defaultProxy_proxy_773 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end