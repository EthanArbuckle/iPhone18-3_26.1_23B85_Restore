@interface OS_dispatch_queue
- (NSString)description;
- (OS_dispatch_queue)init;
- (void)_xref_dispose;
@end

@implementation OS_dispatch_queue

- (OS_dispatch_queue)init
{
  qword_1EBC5B980 = "BUG IN CLIENT OF LIBDISPATCH: -init called directly";
  __break(1u);
  return self;
}

- (NSString)description
{
  v3 = objc_lookUpClass("NSString");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(objc_class *)v3 stringWithUTF8String:"<%s: %s>"];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  ClassName = object_getClassName(self);
  return [(objc_class *)v4 stringWithFormat:v6, ClassName, dispatch_queue_get_label(&self->super.super.super), self];
}

- (void)_xref_dispose
{
  _dispatch_queue_xref_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_dispatch_queue;
  [(OS_object *)&v3 _xref_dispose];
}

@end