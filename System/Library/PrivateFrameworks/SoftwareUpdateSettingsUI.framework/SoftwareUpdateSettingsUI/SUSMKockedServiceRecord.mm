@interface SUSMKockedServiceRecord
- (SUSMKockedServiceRecord)init;
- (SUSMKockedServiceRecord)initWithServiceType:(int64_t)type resolvingService:(Class)service usingMockedClass:(Class)class;
@end

@implementation SUSMKockedServiceRecord

- (SUSMKockedServiceRecord)init
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _SUSUILoggingFacility();
  v6 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_error_impl(&dword_26AC94000, log, type, "SUSMKockedServiceRecord should not be initialized with init", v5, 2u);
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (SUSMKockedServiceRecord)initWithServiceType:(int64_t)type resolvingService:(Class)service usingMockedClass:(Class)class
{
  v13 = a2;
  typeCopy = type;
  serviceCopy = service;
  obj = class;
  v14 = 0;
  v9.receiver = self;
  v9.super_class = SUSMKockedServiceRecord;
  v14 = [(SUSMKockedServiceRecord *)&v9 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    v14->_serviceType = typeCopy;
    v5 = NSStringFromClass(serviceCopy);
    resolvedServiceClassName = v14->_resolvedServiceClassName;
    v14->_resolvedServiceClassName = v5;
    MEMORY[0x277D82BD8](resolvedServiceClassName);
    objc_storeStrong(&v14->_mockedServiceClass, obj);
  }

  v8 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v14, 0);
  return v8;
}

@end