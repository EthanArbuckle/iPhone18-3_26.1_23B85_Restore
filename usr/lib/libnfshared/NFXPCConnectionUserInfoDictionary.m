@interface NFXPCConnectionUserInfoDictionary
- (NFXPCConnectionUserInfoDictionary)initWithServiceWhitelist:(id)a3 clientName:(id)a4;
- (id)objectForKey:(id)a3;
- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (void)modifyObjectForKey:(id)a3 handler:(id)a4;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation NFXPCConnectionUserInfoDictionary

- (NFXPCConnectionUserInfoDictionary)initWithServiceWhitelist:(id)a3 clientName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NFXPCConnectionUserInfoDictionary;
  v9 = [(NFXPCConnectionUserInfoDictionary *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_dataLock._os_unfair_lock_opaque = 0;
    v11 = objc_opt_new();
    data = v10->_data;
    v10->_data = v11;

    objc_storeStrong(&v10->_serviceWhitelist, a3);
    objc_storeStrong(&v10->_clientName, a4);
  }

  return v10;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_data, v5, v4);

  os_unfair_lock_unlock(&self->_dataLock);

  return v6;
}

- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  v9 = objc_msgSend_objectsForKeys_notFoundMarker_(self->_data, v8, v7, v6);

  os_unfair_lock_unlock(&self->_dataLock);

  return v9;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  objc_msgSend_removeObjectForKey_(self->_data, v5, v4);

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  objc_msgSend_setObject_forKeyedSubscript_(self->_data, v8, v7, v6);

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)modifyObjectForKey:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  v11 = objc_msgSend_objectForKeyedSubscript_(self->_data, v8, v7);
  v9 = v6[2](v6, v11);

  objc_msgSend_setObject_forKeyedSubscript_(self->_data, v10, v9, v7);
  os_unfair_lock_unlock(&self->_dataLock);
}

@end