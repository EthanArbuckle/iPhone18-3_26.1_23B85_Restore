@interface PSDeviceManager
+ (PSDeviceManager)sharedInstance;
- (BOOL)shouldSendContextUpdateNotification:()basic_string<char forServiceState:()std:(std::allocator<char>> *)a3 :char_traits<char>;
- (id).cxx_construct;
- (id)getAvailableResourceKeys;
- (id)getAvailableResourceKeysForDevice:(id)a3;
- (int)startServiceMatching;
- (unsigned)getServiceForResourceKey:(id)a3;
- (void)dealloc;
- (void)serviceMatched:(unsigned int)a3;
- (void)serviceTerminated:(unsigned int)a3;
- (void)set3PRExecutionSession:(id)a3 with3PRTransitionManager:(id)a4;
- (void)setExecutionSession:(id)a3 withTransitionManager:(id)a4;
- (void)setNotificationPort;
- (void)startServiceMatching;
@end

@implementation PSDeviceManager

+ (PSDeviceManager)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PSDeviceManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[PSDeviceManager sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[PSDeviceManager sharedInstance]::onceToken, block);
  }

  v2 = +[PSDeviceManager sharedInstance]::instance;

  return v2;
}

uint64_t __33__PSDeviceManager_sharedInstance__block_invoke(uint64_t a1)
{
  +[PSDeviceManager sharedInstance]::instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)setExecutionSession:(id)a3 withTransitionManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self)
  {
    objc_storeStrong(&self->_executionSession, a3);
    objc_storeStrong(&self->_transitionManager, a4);
    executionSession3PR = self->_executionSession3PR;
    self->_executionSession3PR = 0;

    transitionManager3PR = self->_transitionManager3PR;
    self->_transitionManager3PR = 0;

    [(PSDeviceManager *)self setNotificationPort];
  }

  else
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "No instance of device manager has been created", v12, 2u);
    }
  }
}

- (void)set3PRExecutionSession:(id)a3 with3PRTransitionManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self)
  {
    objc_storeStrong(&self->_executionSession3PR, a3);
    objc_storeStrong(&self->_transitionManager3PR, a4);
    executionSession = self->_executionSession;
    self->_executionSession = 0;

    transitionManager = self->_transitionManager;
    self->_transitionManager = 0;

    [(PSDeviceManager *)self setNotificationPort];
  }

  else
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "No instance of device manager has been created", v12, 2u);
    }
  }
}

- (void)setNotificationPort
{
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  v7 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v7))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_ERROR, "Failed to initialize device manager", buf, 2u);
  }
}

- (void)dealloc
{
  driverNotifyPort = self->_driverNotifyPort;
  if (driverNotifyPort)
  {
    IONotificationPortDestroy(driverNotifyPort);
  }

  v4.receiver = self;
  v4.super_class = PSDeviceManager;
  [(PSDeviceManager *)&v4 dealloc];
}

- (int)startServiceMatching
{
  driverNotifyPort = self->_driverNotifyPort;
  v4 = IOServiceMatching("IOFastPathHIDService");
  v5 = IOServiceAddMatchingNotification(driverNotifyPort, "IOServicePublish", v4, __serviceMatched, self, &self->_services);
  if (v5)
  {
    v8 = v5;
    [PSDeviceManager startServiceMatching];
  }

  else
  {
    [(PSDeviceManager *)self serviceMatched:self->_services];
    v6 = self->_driverNotifyPort;
    v7 = IOServiceMatching("IOFastPathHIDService");
    v8 = IOServiceAddMatchingNotification(v6, "IOServiceTerminate", v7, __serviceTerminated, self, &self->_services);
    if (v8)
    {
      [PSDeviceManager startServiceMatching];
    }

    else
    {
      [(PSDeviceManager *)self serviceTerminated:self->_services];
    }
  }

  return v8;
}

- (BOOL)shouldSendContextUpdateNotification:()basic_string<char forServiceState:()std:(std::allocator<char>> *)a3 :char_traits<char>
{
  v4 = v3;
  if (*(&a3->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a3->var0.var1.var0, a3->var0.var1.var1);
  }

  else
  {
    __p = *a3;
  }

  v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_deviceCapabilities.__table_.__bucket_list_.__ptr_, &__p.__r_.__value_.__l.__data_);
  v7 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v7)
    {
      return 1;
    }
  }

  else if (!v6)
  {
    return 1;
  }

  v8 = v7[7];
  if (!v8)
  {
    return 1;
  }

  v9 = 1;
  do
  {
    if (v8[39] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v8 + 2), *(v8 + 3));
    }

    else
    {
      __p = *(v8 + 16);
    }

    v13 = *(v8 + 10);
    v10 = v13 == v4;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 &= v10;
    v8 = *v8;
  }

  while (v8);
  return v9;
}

- (void)serviceMatched:(unsigned int)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = IOIteratorNext(a3);
  if (!v5)
  {
    goto LABEL_48;
  }

  v6 = v5;
  while (1)
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "IOService matched: 0x%x", buf, 8u);
    }

    parent = 0;
    if (IORegistryEntryGetParentEntry(v6, "IOService", &parent))
    {
      [PSDeviceManager serviceMatched:];
      goto LABEL_48;
    }

    [(PSDeviceManager *)self getDeviceCapabilities:parent];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    *buf = 0u;
    v39 = 0u;
    if (MEMORY[0x25F8C7770](v6, buf))
    {
      [PSDeviceManager serviceMatched:];
      goto LABEL_48;
    }

    if (*buf == 1935959404)
    {
      v8 = +[PLSSettings currentSettings];
      v9 = [v8 enableIOHIDLEDsync];

      if ((v9 & 1) == 0)
      {
        v26 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *v37 = 0;
          _os_log_impl(&dword_25EA3A000, v26, OS_LOG_TYPE_ERROR, "LED sync service matching is disabled", v37, 2u);
        }

        goto LABEL_38;
      }
    }

    v31 = 42;
    v10 = MEMORY[0x25F8C7790](v6, "PhysicalDeviceUniqueID", v37, &v31);
    if (v10)
    {
      break;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%s.%s", PLSResourceKeyAccessoryTrackingPrefix[0], v37, buf];
    v12 = IOFastPathClientCreateWithType();
    v13 = MEMORY[0x25F8C75B0]();
    v30 = xmmword_25EB77130;
    v14 = [MEMORY[0x277D3E690] dataStreamWithResourceKey:v11 type:6 options:&v30 length:40 descriptor:v13];
    [v14 setCategory:1];
    CFRelease(v12);
    executionSession = self->_executionSession;
    if (executionSession || (executionSession = self->_executionSession3PR) != 0)
    {
      v16 = [executionSession context];
      [v16 addResourceStream:v14];
    }

    v17 = v11;
    std::string::basic_string[abi:ne200100]<0>(&v34, [v11 UTF8String]);
    __p = v34;
    memset(&v34, 0, sizeof(v34));
    v36 = v6;
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,unsigned int>>(&self->_availableServices.__table_.__bucket_list_.__ptr_, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    v18 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 138412290;
      *(__p.__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEFAULT, "Added '%@' to the context", &__p, 0xCu);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v37);
    v19 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_deviceCapabilities.__table_.__bucket_list_.__ptr_, &__p.__r_.__value_.__l.__data_);
    if (v19)
    {
      std::string::basic_string[abi:ne200100]<0>(&v34, buf);
      v33 = &v34;
      *(std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v19 + 5, &v34.__r_.__value_.__l.__data_) + 10) = 2;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v29 = __p;
    }

    v20 = [(PSDeviceManager *)self shouldSendContextUpdateNotification:&v29 forServiceState:2];
    v21 = v20;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
      if (v21)
      {
LABEL_29:
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
        v23 = [(PSDeviceManager *)self getAvailableResourceKeysForDevice:v22];

        v24 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v34.__r_.__value_.__l.__data_) = 138412290;
          *(v34.__r_.__value_.__r.__words + 4) = v23;
          _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_DEFAULT, "Sending callback with added resources: %@", &v34, 0xCu);
        }

        transitionManager = self->_transitionManager;
        if (transitionManager || (transitionManager = self->_transitionManager3PR) != 0)
        {
          [transitionManager deliverDynamicResourcesAvailableNotification:v23];
        }
      }
    }

    else if (v20)
    {
      goto LABEL_29;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_38:
    v6 = IOIteratorNext(a3);
    if (!v6)
    {
      goto LABEL_48;
    }
  }

  v27 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v10;
    _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_ERROR, "Failed to get device uuid with error: 0x%x", &__p, 8u);
  }

LABEL_48:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)serviceTerminated:(unsigned int)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = IOIteratorNext(a3);
  if (!v5)
  {
    goto LABEL_40;
  }

  v7 = v5;
  *&v6 = 138412290;
  v28 = v6;
  while (1)
  {
    v8 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "IOService terminated: 0x%x", buf, 8u);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    v42 = 0u;
    if (MEMORY[0x25F8C7770](v7, buf))
    {
      [PSDeviceManager serviceTerminated:];
      goto LABEL_40;
    }

    if (*buf == 1935959404)
    {
      v9 = +[PLSSettings currentSettings];
      v10 = [v9 enableIOHIDLEDsync];

      if ((v10 & 1) == 0)
      {
        v25 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *v40 = 0;
          _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_ERROR, "LED sync service matching is disabled", v40, 2u);
        }

        goto LABEL_39;
      }
    }

    v34 = 42;
    v11 = MEMORY[0x25F8C7790](v7, "PhysicalDeviceUniqueID", v40, &v34);
    if (v11)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&v39, v40);
    v12 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_deviceCapabilities.__table_.__bucket_list_.__ptr_, &v39.__r_.__value_.__l.__data_);
    if (v12)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, buf);
      v35 = __p;
      *(std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v12 + 5, __p) + 10) = 3;
      if (v38 < 0)
      {
        operator delete(*__p);
      }
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v33, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = v39;
    }

    v13 = [(PSDeviceManager *)self shouldSendContextUpdateNotification:&v33 forServiceState:3, v28];
    v14 = v13;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
      if (v14)
      {
LABEL_19:
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v40];
        v16 = [(PSDeviceManager *)self getAvailableResourceKeysForDevice:v15];

        v17 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *__p = v28;
          *&__p[4] = v16;
          _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEFAULT, "Sending callback with removed resources: %@", __p, 0xCu);
        }

        transitionManager = self->_transitionManager;
        if (transitionManager || (transitionManager = self->_transitionManager3PR) != 0)
        {
          [transitionManager deliverDynamicResourcesNoLongerAvailableNotification:v16];
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v19 = v16;
        v20 = [v19 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v20)
        {
          v21 = *v30;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v30 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v29 + 1) + 8 * i);
              v24 = v23;
              std::string::basic_string[abi:ne200100]<0>(__p, [v23 UTF8String]);
              std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__erase_unique<std::string>(&self->_availableServices.__table_.__bucket_list_.__ptr_, __p);
              if (v38 < 0)
              {
                operator delete(*__p);
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v29 objects:v36 count:16];
          }

          while (v20);
        }
      }
    }

    else if (v13)
    {
      goto LABEL_19;
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

LABEL_39:
    v7 = IOIteratorNext(a3);
    if (!v7)
    {
      goto LABEL_40;
    }
  }

  v27 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v39.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(v39.__r_.__value_.__r.__words[0]) = v11;
    _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_ERROR, "Failed to get device uuid with error: 0x%x", &v39, 8u);
  }

LABEL_40:
  v26 = *MEMORY[0x277D85DE8];
}

- (id)getAvailableResourceKeys
{
  v3 = [MEMORY[0x277CBEB58] set];
  for (i = self->_availableServices.__table_.__first_node_.__next_; i; i = *i)
  {
    if (i[39] < 0)
    {
      std::string::__init_copy_ctor_external(__p, *(i + 2), *(i + 3));
    }

    else
    {
      *__p = *(i + 1);
      *&v9 = *(i + 4);
    }

    DWORD2(v9) = *(i + 10);
    if ((SBYTE7(v9) & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v5, *__p, v9}];
    [v3 addObject:v6];

    if (SBYTE7(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v3;
}

- (id)getAvailableResourceKeysForDevice:(id)a3
{
  v4 = a3;
  v20 = [MEMORY[0x277CBEB58] set];
  for (i = self->_availableServices.__table_.__first_node_.__next_; i; i = *i)
  {
    if (i[39] < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *(i + 2), *(i + 3));
    }

    else
    {
      v21 = *(i + 16);
    }

    v22 = *(i + 10);
    v6 = [v4 UTF8String];
    v7 = v6;
    v8 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v21;
    }

    else
    {
      v9 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v11 = strlen(v6);
    if (v11)
    {
      v12 = v11;
      if (size >= v11)
      {
        v13 = v9 + size;
        v14 = *v7;
        v15 = v9;
        do
        {
          if (size - v12 == -1)
          {
            break;
          }

          v16 = memchr(v15, v14, size - v12 + 1);
          if (!v16)
          {
            break;
          }

          v17 = v16;
          if (!memcmp(v16, v7, v12))
          {
            if (v17 == v13 || v17 - v9 == -1)
            {
              break;
            }

            goto LABEL_21;
          }

          v15 = (v17 + 1);
          size = v13 - (v17 + 1);
        }

        while (size >= v12);
      }
    }

    else
    {
LABEL_21:
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [v20 addObject:v18];

      v8 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    if (v8 < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  return v20;
}

- (unsigned)getServiceForResourceKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,service_support>>>>::find<std::string>(&self->_availableServices.__table_.__bucket_list_.__ptr_, __p);
  if (v5)
  {
    v6 = *(v5 + 10);
  }

  else
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "Could not find service for key: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

- (void)startServiceMatching
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)serviceMatched:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)serviceMatched:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)serviceTerminated:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end