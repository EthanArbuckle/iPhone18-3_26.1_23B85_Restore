@interface HVContentAdmissionKVOObserver
+ (id)observeObject:(id)a3 key:(id)a4 handler:(id)a5;
- (HVContentAdmissionKVOObserver)initWithKey:(id)a3 handler:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation HVContentAdmissionKVOObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{self->_key, a4, a5, a6}])
  {
    handler = self->_handler;
    if (handler)
    {
      v8 = *(handler + 2);

      v8();
    }
  }
}

- (HVContentAdmissionKVOObserver)initWithKey:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HVContentAdmissionKVOObserver;
  v9 = [(HVContentAdmissionKVOObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    v11 = MEMORY[0x238381E60](v8);
    handler = v10->_handler;
    v10->_handler = v11;
  }

  return v10;
}

+ (id)observeObject:(id)a3 key:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HVContentAdmissionKVOObserver alloc] initWithKey:v8 handler:v7];

  [v9 addObserver:v10 forKeyPath:v8 options:0 context:0];

  return v10;
}

@end