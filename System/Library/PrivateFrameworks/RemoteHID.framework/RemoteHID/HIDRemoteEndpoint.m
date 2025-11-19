@interface HIDRemoteEndpoint
- (HIDRemoteEndpoint)initWithID:(unint64_t)a3;
- (id)_removeDeviceID:(unint64_t)a3;
- (id)copyState;
- (id)devices;
- (id)getDevice:(unint64_t)a3;
- (void)addDevice:(id)a3;
- (void)logRemovedDevice:(id)a3;
- (void)removeAllDevices;
- (void)removeDeviceID:(unint64_t)a3;
@end

@implementation HIDRemoteEndpoint

- (HIDRemoteEndpoint)initWithID:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = HIDRemoteEndpoint;
  v4 = [(HIDRemoteEndpoint *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_endpointID = a3;
    v6 = objc_opt_new();
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = objc_opt_new();
    prevDeviceLog = v5->_prevDeviceLog;
    v5->_prevDeviceLog = v8;

    v5->_lock = 0;
    v10 = v5;
  }

  return v5;
}

- (id)getDevice:(unint64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  devices = self->_devices;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v7 = [(NSMutableDictionary *)devices objectForKeyedSubscript:v6];

  os_unfair_recursive_lock_unlock();

  return v7;
}

- (void)addDevice:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v8 = -[HIDRemoteEndpoint _removeDeviceID:](self, "_removeDeviceID:", [v4 deviceID]);
  devices = self->_devices;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "deviceID")}];
  [(NSMutableDictionary *)devices setObject:v4 forKeyedSubscript:v6];

  [v4 setEndpointID:{-[HIDRemoteEndpoint endpointID](self, "endpointID")}];
  os_unfair_recursive_lock_unlock();
  v7 = v8;
  if (v8)
  {
    [v8 cancel];
    v7 = v8;
  }
}

- (void)removeDeviceID:(unint64_t)a3
{
  v3 = [(HIDRemoteEndpoint *)self _removeDeviceID:a3];
  if (v3)
  {
    v4 = v3;
    [v3 cancel];
    v3 = v4;
  }
}

- (id)_removeDeviceID:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  devices = self->_devices;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v7 = [(NSMutableDictionary *)devices objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = RemoteHIDLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v7;
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = [(HIDRemoteEndpoint *)self endpointID];
      _os_log_impl(&dword_261D9C000, v8, OS_LOG_TYPE_DEFAULT, "Remove device:%@ with id:%llu for endpoint:%llu", &v14, 0x20u);
    }

    [(HIDRemoteEndpoint *)self logRemovedDevice:v7];
    v9 = self->_devices;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    [(NSMutableDictionary *)v9 removeObjectForKey:v10];

    v11 = RemoteHIDLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(HIDRemoteEndpoint *)&self->_devices _removeDeviceID:v11];
    }
  }

  os_unfair_recursive_lock_unlock();
  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)removeAllDevices
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  v3 = RemoteHIDLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = [(HIDRemoteEndpoint *)self endpointID];
    _os_log_impl(&dword_261D9C000, v3, OS_LOG_TYPE_DEFAULT, "Removing all devices for endpoint:%llu", buf, 0xCu);
  }

  v4 = [(NSMutableDictionary *)self->_devices allValues];
  devices = self->_devices;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HIDRemoteEndpoint_removeAllDevices__block_invoke;
  v7[3] = &unk_279AFD278;
  v7[4] = self;
  [(NSMutableDictionary *)devices enumerateKeysAndObjectsUsingBlock:v7];
  [(NSMutableDictionary *)self->_devices removeAllObjects];
  os_unfair_recursive_lock_unlock();
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logRemovedDevice:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if ([(NSMutableArray *)self->_prevDeviceLog count]>= 0x32)
  {
    [(NSMutableArray *)self->_prevDeviceLog removeObjectAtIndex:0];
  }

  prevDeviceLog = self->_prevDeviceLog;
  v5 = [v6 description];
  [(NSMutableArray *)prevDeviceLog addObject:v5];

  os_unfair_recursive_lock_unlock();
}

- (id)copyState
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  os_unfair_recursive_lock_lock_with_options();
  devices = self->_devices;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __30__HIDRemoteEndpoint_copyState__block_invoke;
  v10[3] = &unk_279AFD278;
  v11 = v4;
  v6 = v4;
  [(NSMutableDictionary *)devices enumerateKeysAndObjectsUsingBlock:v10];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HIDRemoteEndpoint endpointID](self, "endpointID")}];
  [v3 setObject:v7 forKeyedSubscript:@"EndpointID"];

  [v3 setObject:v6 forKeyedSubscript:@"RemoteDevices"];
  v8 = [(NSMutableArray *)self->_prevDeviceLog copy];
  [v3 setObject:v8 forKeyedSubscript:@"PreviousRemoteDevices"];

  os_unfair_recursive_lock_unlock();
  return v3;
}

void __30__HIDRemoteEndpoint_copyState__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 description];
  [v3 addObject:v4];
}

- (id)devices
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_devices allValues];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_removeDeviceID:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_261D9C000, a2, OS_LOG_TYPE_DEBUG, "Remaining devices:%@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end