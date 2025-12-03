@interface NFXPCConnectionUserInfoDictionary
- (NFXPCConnectionUserInfoDictionary)initWithServiceWhitelist:(id)whitelist clientName:(id)name;
- (id)objectForKey:(id)key;
- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker;
- (void)modifyObjectForKey:(id)key handler:(id)handler;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation NFXPCConnectionUserInfoDictionary

- (NFXPCConnectionUserInfoDictionary)initWithServiceWhitelist:(id)whitelist clientName:(id)name
{
  whitelistCopy = whitelist;
  nameCopy = name;
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

    objc_storeStrong(&v10->_serviceWhitelist, whitelist);
    objc_storeStrong(&v10->_clientName, name);
  }

  return v10;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_dataLock);
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_data, v5, keyCopy);

  os_unfair_lock_unlock(&self->_dataLock);

  return v6;
}

- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker
{
  markerCopy = marker;
  keysCopy = keys;
  os_unfair_lock_lock(&self->_dataLock);
  v9 = objc_msgSend_objectsForKeys_notFoundMarker_(self->_data, v8, keysCopy, markerCopy);

  os_unfair_lock_unlock(&self->_dataLock);

  return v9;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_dataLock);
  objc_msgSend_removeObjectForKey_(self->_data, v5, keyCopy);

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  os_unfair_lock_lock(&self->_dataLock);
  objc_msgSend_setObject_forKeyedSubscript_(self->_data, v8, objectCopy, keyCopy);

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)modifyObjectForKey:(id)key handler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  os_unfair_lock_lock(&self->_dataLock);
  v11 = objc_msgSend_objectForKeyedSubscript_(self->_data, v8, keyCopy);
  v9 = handlerCopy[2](handlerCopy, v11);

  objc_msgSend_setObject_forKeyedSubscript_(self->_data, v10, v9, keyCopy);
  os_unfair_lock_unlock(&self->_dataLock);
}

@end