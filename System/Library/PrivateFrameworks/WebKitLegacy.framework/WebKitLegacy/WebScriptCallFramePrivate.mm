@interface WebScriptCallFramePrivate
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation WebScriptCallFramePrivate

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WebScriptCallFramePrivate;
  [(WebScriptCallFramePrivate *)&v2 dealloc];
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end