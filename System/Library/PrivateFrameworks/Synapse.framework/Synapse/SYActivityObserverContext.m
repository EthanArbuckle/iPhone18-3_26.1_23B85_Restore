@interface SYActivityObserverContext
- (SYActivityObserverContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYActivityObserverContext

- (SYActivityObserverContext)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SYActivityObserverContext;
  v5 = [(SYActivityObserverContext *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NeedsCacheUpdate"];
    v5->_needsCacheUpdate = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  needsCacheUpdate = self->_needsCacheUpdate;
  v5 = a3;
  v6 = [v3 numberWithBool:needsCacheUpdate];
  [v5 encodeObject:v6 forKey:@"NeedsCacheUpdate"];
}

@end