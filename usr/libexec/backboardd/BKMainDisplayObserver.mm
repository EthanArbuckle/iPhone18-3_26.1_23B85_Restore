@interface BKMainDisplayObserver
- (BKMainDisplayObserver)init;
- (BKSHIDEventDisplay)display;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation BKMainDisplayObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == @"BKHIDKVOWindowServerDisplayUUID" && self->_displayChangedHandler)
  {
    display = [(BKMainDisplayObserver *)self display];
    (*(self->_displayChangedHandler + 2))();
    v14 = BKLogEventDelivery();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = display;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_mainDisplay changed:%{public}@", &v15, 0xCu);
    }
  }
}

- (BKSHIDEventDisplay)display
{
  v2 = +[BKSHIDEventDisplay builtinDisplay];
  v3 = sub_1000076E8();
  v4 = v3;
  if (v3)
  {
    uniqueId = [v3 uniqueId];
    if (uniqueId)
    {
      v6 = [BKSHIDEventDisplay displayWithHardwareIdentifier:uniqueId];

      v2 = v6;
    }
  }

  return v2;
}

- (BKMainDisplayObserver)init
{
  v5.receiver = self;
  v5.super_class = BKMainDisplayObserver;
  v2 = [(BKMainDisplayObserver *)&v5 init];
  if (v2)
  {
    v3 = +[CADisplay mainDisplay];
    [v3 addObserver:v2 forKeyPath:@"uniqueId" options:0 context:@"BKHIDKVOWindowServerDisplayUUID"];
  }

  return v2;
}

@end