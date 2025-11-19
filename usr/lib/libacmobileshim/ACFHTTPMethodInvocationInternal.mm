@interface ACFHTTPMethodInvocationInternal
- (ACFHTTPMethodInvocationInternal)init;
- (void)dealloc;
@end

@implementation ACFHTTPMethodInvocationInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ACFHTTPMethodInvocationInternal;
  [(ACFHTTPMethodInvocationInternal *)&v3 dealloc];
}

- (ACFHTTPMethodInvocationInternal)init
{
  v4.receiver = self;
  v4.super_class = ACFHTTPMethodInvocationInternal;
  v2 = [(ACFHTTPMethodInvocationInternal *)&v4 init];
  if (v2)
  {
    v2->_invocationGuard = objc_alloc_init(MEMORY[0x29EDBA0C8]);
    v2->_schedulingGuard = objc_alloc_init(MEMORY[0x29EDBA0C8]);
    v2->_runLoops = objc_alloc_init(MEMORY[0x29EDB8E00]);
  }

  return v2;
}

@end