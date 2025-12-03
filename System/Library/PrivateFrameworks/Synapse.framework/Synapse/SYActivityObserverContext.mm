@interface SYActivityObserverContext
- (SYActivityObserverContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SYActivityObserverContext

- (SYActivityObserverContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SYActivityObserverContext;
  v5 = [(SYActivityObserverContext *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NeedsCacheUpdate"];
    v5->_needsCacheUpdate = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  needsCacheUpdate = self->_needsCacheUpdate;
  coderCopy = coder;
  v6 = [v3 numberWithBool:needsCacheUpdate];
  [coderCopy encodeObject:v6 forKey:@"NeedsCacheUpdate"];
}

@end