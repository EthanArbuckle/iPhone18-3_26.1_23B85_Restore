@interface TSDCallbackRefconMap
+ (id)sharedTSDCallbackRefconMap;
- (TSDCallbackRefconMap)init;
- (id)getObject:(unint64_t)object;
- (unint64_t)allocateRefcon:(id)refcon;
- (void)releaseRefcon:(unint64_t)refcon;
@end

@implementation TSDCallbackRefconMap

+ (id)sharedTSDCallbackRefconMap
{
  if (qword_1000587F0 != -1)
  {
    sub_100005548();
  }

  v3 = qword_1000587E8;

  return v3;
}

- (TSDCallbackRefconMap)init
{
  v6.receiver = self;
  v6.super_class = TSDCallbackRefconMap;
  v2 = [(TSDCallbackRefconMap *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    refcons = v2->_refcons;
    v2->_refcons = v3;

    v2->_nextRefcon = 1;
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (unint64_t)allocateRefcon:(id)refcon
{
  v4 = self->_nextRefcon + 1;
  self->_nextRefcon = v4;
  refconCopy = refcon;
  v6 = [NSNumber numberWithUnsignedLongLong:v4];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_refcons setObject:refconCopy forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)releaseRefcon:(unint64_t)refcon
{
  os_unfair_lock_lock(&self->_lock);
  refcons = self->_refcons;
  v6 = [NSNumber numberWithUnsignedLongLong:refcon];
  [(NSMutableDictionary *)refcons removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)getObject:(unint64_t)object
{
  os_unfair_lock_lock(&self->_lock);
  refcons = self->_refcons;
  v6 = [NSNumber numberWithUnsignedLongLong:object];
  v7 = [(NSMutableDictionary *)refcons objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

@end