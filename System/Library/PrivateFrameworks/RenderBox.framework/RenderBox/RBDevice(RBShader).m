@interface RBDevice(RBShader)
@end

@implementation RBDevice(RBShader)

- (void)compileShader:()RBShader completionQueue:handler:.cold.1()
{
  if (__cxa_guard_acquire(&qword_1ED6D5388))
  {
    v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    _MergedGlobals_1 = dispatch_queue_create("com.apple.RenderBox.shader-compilation", v0);

    __cxa_guard_release(&qword_1ED6D5388);
  }
}

@end