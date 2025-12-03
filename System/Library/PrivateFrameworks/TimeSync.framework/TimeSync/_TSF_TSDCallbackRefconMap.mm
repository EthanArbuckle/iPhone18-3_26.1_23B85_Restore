@interface _TSF_TSDCallbackRefconMap
+ (id)sharedTSDCallbackRefconMap;
- (_TSF_TSDCallbackRefconMap)init;
- (id)getObject:(unint64_t)object;
- (unint64_t)allocateRefcon:(id)refcon;
- (void)releaseRefcon:(unint64_t)refcon;
@end

@implementation _TSF_TSDCallbackRefconMap

+ (id)sharedTSDCallbackRefconMap
{
  if (sharedTSDCallbackRefconMap_onceToken != -1)
  {
    +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  }

  v3 = _sharedTSDCallbackRefconMap;

  return v3;
}

- (_TSF_TSDCallbackRefconMap)init
{
  v6.receiver = self;
  v6.super_class = _TSF_TSDCallbackRefconMap;
  v2 = [(_TSF_TSDCallbackRefconMap *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    refcons = v2->_refcons;
    v2->_refcons = dictionary;

    v2->_nextRefcon = 1;
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (unint64_t)allocateRefcon:(id)refcon
{
  v4 = MEMORY[0x277CCABB0];
  v5 = self->_nextRefcon + 1;
  self->_nextRefcon = v5;
  refconCopy = refcon;
  v7 = [v4 numberWithUnsignedLongLong:v5];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_refcons setObject:refconCopy forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)releaseRefcon:(unint64_t)refcon
{
  os_unfair_lock_lock(&self->_lock);
  refcons = self->_refcons;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:refcon];
  [(NSMutableDictionary *)refcons removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getObject:(unint64_t)object
{
  os_unfair_lock_lock(&self->_lock);
  refcons = self->_refcons;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:object];
  v7 = [(NSMutableDictionary *)refcons objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

@end