@interface RTPersistenceRemoteStoreServer
- (RTPersistenceRemoteStoreServer)initWithStoreURL:(id)l modelURL:(id)rL options:(id)options;
- (void)startListening;
@end

@implementation RTPersistenceRemoteStoreServer

- (RTPersistenceRemoteStoreServer)initWithStoreURL:(id)l modelURL:(id)rL options:(id)options
{
  lCopy = l;
  rLCopy = rL;
  optionsCopy = options;
  v12 = optionsCopy;
  if (!lCopy)
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

  if (!rLCopy)
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

  v13 = [optionsCopy objectForKey:*MEMORY[0x277CBE340]];

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

    selfCopy = 0;
    goto LABEL_18;
  }

  v21.receiver = self;
  v21.super_class = RTPersistenceRemoteStoreServer;
  v15 = [(RTPersistenceRemoteStoreServer *)&v21 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_storeURL, l);
    objc_storeStrong(p_isa + 3, rL);
    objc_storeStrong(p_isa + 4, options);
  }

  self = p_isa;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (void)startListening
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBE510]);
  storeURL = [(RTPersistenceRemoteStoreServer *)self storeURL];
  modelURL = [(RTPersistenceRemoteStoreServer *)self modelURL];
  serverOptions = [(RTPersistenceRemoteStoreServer *)self serverOptions];
  v8 = [v4 initForStoreWithURL:storeURL usingModelAtURL:modelURL options:serverOptions policy:0];
  [(RTPersistenceRemoteStoreServer *)self setXpcStoreServer:v8];

  objc_autoreleasePoolPop(v3);
  xpcStoreServer = [(RTPersistenceRemoteStoreServer *)self xpcStoreServer];
  [xpcStoreServer startListening];
}

@end