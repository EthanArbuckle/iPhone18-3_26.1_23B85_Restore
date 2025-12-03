@interface HVContentAdmissionKVOObserver
+ (id)observeObject:(id)object key:(id)key handler:(id)handler;
- (HVContentAdmissionKVOObserver)initWithKey:(id)key handler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation HVContentAdmissionKVOObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{self->_key, object, change, context}])
  {
    handler = self->_handler;
    if (handler)
    {
      v8 = *(handler + 2);

      v8();
    }
  }
}

- (HVContentAdmissionKVOObserver)initWithKey:(id)key handler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = HVContentAdmissionKVOObserver;
  v9 = [(HVContentAdmissionKVOObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    v11 = MEMORY[0x238381E60](handlerCopy);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

+ (id)observeObject:(id)object key:(id)key handler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  objectCopy = object;
  v10 = [[HVContentAdmissionKVOObserver alloc] initWithKey:keyCopy handler:handlerCopy];

  [objectCopy addObserver:v10 forKeyPath:keyCopy options:0 context:0];

  return v10;
}

@end