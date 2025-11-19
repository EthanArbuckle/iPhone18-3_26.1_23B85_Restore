@interface RTPersistenceRemoteStoreServer
- (RTPersistenceRemoteStoreServer)initWithStoreURL:(id)a3 modelURL:(id)a4 options:(id)a5;
- (void)startListening;
@end

@implementation RTPersistenceRemoteStoreServer

- (RTPersistenceRemoteStoreServer)initWithStoreURL:(id)a3 modelURL:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: storeURL";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_17;
  }

  if (!v10)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: modelURL";
    goto LABEL_16;
  }

  v13 = [v11 objectForKey:*MEMORY[0x277CBE340]];

  if (!v13)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: [options objectForKey:NSXPCStoreServiceNameKey]";
    goto LABEL_16;
  }

  v14 = [v12 objectForKey:*MEMORY[0x277CBE328]];

  if (!v14)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: [options objectForKey:NSXPCStoreDaemonizeKey]";
      goto LABEL_16;
    }

LABEL_17:

    v17 = 0;
    goto LABEL_18;
  }

  v21.receiver = self;
  v21.super_class = RTPersistenceRemoteStoreServer;
  v15 = [(RTPersistenceRemoteStoreServer *)&v21 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_storeURL, a3);
    objc_storeStrong(p_isa + 3, a4);
    objc_storeStrong(p_isa + 4, a5);
  }

  self = p_isa;
  v17 = self;
LABEL_18:

  return v17;
}

- (void)startListening
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBE510]);
  v5 = [(RTPersistenceRemoteStoreServer *)self storeURL];
  v6 = [(RTPersistenceRemoteStoreServer *)self modelURL];
  v7 = [(RTPersistenceRemoteStoreServer *)self serverOptions];
  v8 = [v4 initForStoreWithURL:v5 usingModelAtURL:v6 options:v7 policy:0];
  [(RTPersistenceRemoteStoreServer *)self setXpcStoreServer:v8];

  objc_autoreleasePoolPop(v3);
  v9 = [(RTPersistenceRemoteStoreServer *)self xpcStoreServer];
  [v9 startListening];
}

@end