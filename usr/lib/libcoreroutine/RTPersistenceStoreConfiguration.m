@interface RTPersistenceStoreConfiguration
- (RTPersistenceStore)store;
- (RTPersistenceStoreConfiguration)initWithName:(id)a3 readOnly:(BOOL)a4 store:(id)a5;
@end

@implementation RTPersistenceStoreConfiguration

- (RTPersistenceStoreConfiguration)initWithName:(id)a3 readOnly:(BOOL)a4 store:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTPersistenceStoreConfiguration initWithName:readOnly:store:]";
      v21 = 1024;
      v22 = 24;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: name (in %s:%d)", buf, 0x12u);
    }

    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTPersistenceStoreConfiguration initWithName:readOnly:store:]";
      v21 = 1024;
      v22 = 25;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: store (in %s:%d)", buf, 0x12u);
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v18.receiver = self;
  v18.super_class = RTPersistenceStoreConfiguration;
  v11 = [(RTPersistenceStoreConfiguration *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v11->_readOnly = a4;
    objc_storeWeak(&v11->_store, v10);
  }

  self = v11;
  v14 = self;
LABEL_13:

  return v14;
}

- (RTPersistenceStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

@end