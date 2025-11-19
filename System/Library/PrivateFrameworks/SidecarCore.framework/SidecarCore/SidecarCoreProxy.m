@interface SidecarCoreProxy
+ (SidecarCoreProxy)defaultProxy;
- (void)relaySession:(id)a3 openedByDevice:(id)a4 dataLink:(int64_t)a5 service:(id)a6;
- (void)relaySession:(int64_t)a3 closedWithError:(id)a4;
- (void)relaySession:(int64_t)a3 receivedOPACKData:(id)a4 dataLink:(int64_t)a5;
- (void)relaySession:(int64_t)a3 stream:(id)a4 status:(unint64_t)a5;
- (void)relayTerminateService;
@end

@implementation SidecarCoreProxy

- (void)relayTerminateService
{
  [(SidecarServicePresenterDelegate *)self->_presenterDelegate sidecarServicePresenterTerminate];
  delegate = self->_delegate;

  [(SidecarSessionDelegate *)delegate sidecarServiceTerminate];
}

- (void)relaySession:(int64_t)a3 stream:(id)a4 status:(unint64_t)a5
{
  v7 = self->_delegate != 0;
  v8 = a4;
  v12 = SidecarSessionWithHandle(a3, v7);
  v9 = v8;
  v10 = SidecarSessionGetStreams(v12, 0);
  v11 = [v10 objectForKeyedSubscript:v9];

  [v11 setStatus:a5];
}

- (void)relaySession:(int64_t)a3 receivedOPACKData:(id)a4 dataLink:(int64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v8 = SidecarOPACKDecode(a4, &v21);
  v9 = v21;
  if (v9)
  {
    v10 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [v9 domain];
      v13 = [v9 code];
      v14 = [v9 localizedDescription];
      *buf = 138543875;
      v23 = v12;
      v24 = 2048;
      v25 = v13;
      v26 = 2113;
      v27 = v14;
      _os_log_impl(&dword_26604C000, v11, OS_LOG_TYPE_ERROR, "proxy: %{public}@ (%ld) %{private}@", buf, 0x20u);
    }
  }

  else
  {
    v15 = SidecarSessionWithHandle(a3, self->_delegate != 0);
    v11 = v15;
    if (v15)
    {
      v15[6].isa = a5;
      v16 = 3;
      if (a5 == 4)
      {
        v16 = 1;
      }

      v17 = 2;
      if ((a5 & 0xFFFFFFFE) != 8)
      {
        v17 = v16;
      }

      v15[4].isa = v17;
      v18 = [v15 delegate];
      [v18 sidecarSession:v11 receivedMessage:v8];
    }

    else
    {
      v19 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      v18 = v19;
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v23 = a3;
        _os_log_impl(&dword_26604C000, v18, OS_LOG_TYPE_ERROR, "unknown session %lX received OPACK", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)relaySession:(id)a3 openedByDevice:(id)a4 dataLink:(int64_t)a5 service:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  *buf = 0;
  *&buf[8] = 0;
  [v10 getUUIDBytes:buf];
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
    v17 = [[SidecarSession alloc] initWithRemote:v10 device:v11 dataLink:a5 service:v12 error:&v28];
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
        *&buf[14] = v11;
        v30 = 2114;
        v31 = v12;
        v32 = 2048;
        v33 = a5;
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
          v25 = [v21 domain];
          v26 = [v21 code];
          v27 = [v21 localizedDescription];
          *buf = 138543875;
          *&buf[4] = v25;
          *&buf[12] = 2048;
          *&buf[14] = v26;
          v30 = 2113;
          v31 = v27;
          _os_log_impl(&dword_26604C000, v24, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)relaySession:(int64_t)a3 closedWithError:(id)a4
{
  v6 = a4;
  v7 = self->_delegate;
  v8 = SidecarSessionWithHandle(a3, v7 != 0);
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
    [(SidecarSessionDelegate *)self->_delegate sidecarSession:v8 closedWithError:v6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __SidecarSessionRemoveFromRemoteMapTable_block_invoke;
    v11[3] = &__block_descriptor_40_e25_v16__0__SidecarMapTable_8l;
    v11[4] = a3;
    SidecarSessionWithMapTable(SidecarMapTableCreateStrong, &__SidecarSessionRemoteMapTable, v11);
  }

  [v9 _closeWithError:v6];
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