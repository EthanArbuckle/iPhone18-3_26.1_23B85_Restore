@interface PSDaemon
- (PSDaemon)initWithDispatchQueue:(id)queue;
- (id)initInProcess;
- (void)dealloc;
@end

@implementation PSDaemon

- (PSDaemon)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = PSDaemon;
  v6 = [(PSDaemon *)&v17 init];
  if (v6)
  {
    v7 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "init", v16, 2u);
    }

    v8 = [[PLSDevice alloc] initWithContext:0];
    device = v6->_device;
    v6->_device = v8;

    v6->_buffer_service_manager = MEMORY[0x25F8C8B70]();
    v6->_comms_server = ps_create_comms_server();
    v10 = +[PLSSettings currentSettings];
    [v10 enableRingBufferLogger];

    v11 = +[PLSSettings currentSettings];
    [v11 enableEntitlementChecks];

    v12 = +[PLSSettings currentSettings];
    [v12 enablePerResourceEntitlementChecks];

    _os_feature_enabled_impl();
    comms_server = v6->_comms_server;
    v6->_resource_factory = ps_buffer_create_factory_with_options();
    v6->_ca_server = ps_ca_create_server();
    v6->_gsm = ps_gsm_create_shared(0x400uLL, 0x400uLL);
    objc_storeStrong(&death_notifier_callback_queue, queue);
    gsm = v6->_gsm;
    ps_death_notifier_register_callback_for_death_notification();
    ps_telemetry_init_daemon();
    ps_liveness_server_init(1024, 0x100000);
  }

  return v6;
}

- (id)initInProcess
{
  v15.receiver = self;
  v15.super_class = PSDaemon;
  v2 = [(PSDaemon *)&v15 init];
  if (v2)
  {
    v3 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "initInProcess", v14, 2u);
    }

    v2->_buffer_service_manager = MEMORY[0x25F8C8B70]();
    v2->_comms_server = ps_create_comms_server();
    v4 = +[PLSSettings currentSettings];
    [v4 enableRingBufferLogger];

    v5 = +[PLSSettings currentSettings];
    [v5 enableEntitlementChecks];

    _os_feature_enabled_impl();
    comms_server = v2->_comms_server;
    v2->_resource_factory = ps_buffer_create_factory_with_options();
    v7 = +[PLSSettings currentSettings];
    numGSTsInSharedGSM = [v7 numGSTsInSharedGSM];

    v9 = +[PLSSettings currentSettings];
    numSourcesInSharedGSM = [v9 numSourcesInSharedGSM];

    v2->_gsm = ps_gsm_create_shared(numGSTsInSharedGSM, numSourcesInSharedGSM);
    ps_telemetry_init_daemon();
    ps_liveness_server_init(1024, 0x100000);
    xpc_server = v2->_xpc_server;
    v2->_xpc_server = 0;

    xpc_listener = v2->_xpc_listener;
    v2->_xpc_listener = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating PSDaemon", buf, 2u);
  }

  ps_liveness_server_destroy();
  ps_telemetry_destroy_daemon();
  ps_gsm_remove_gsm(&self->_gsm->var0);
  ps_ca_destroy_server(self->_ca_server);
  resource_factory = self->_resource_factory;
  ps_buffer_delete_factory();
  comms_server = self->_comms_server;
  ps_delete_comms_server();
  v6.receiver = self;
  v6.super_class = PSDaemon;
  [(PSDaemon *)&v6 dealloc];
}

@end