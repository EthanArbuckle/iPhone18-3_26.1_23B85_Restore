@interface CLPCUtils
+ (unint64_t)mach_time_to_ns:(uint64_t)mach_time_to_ns;
@end

@implementation CLPCUtils

+ (unint64_t)mach_time_to_ns:(uint64_t)mach_time_to_ns
{
  objc_opt_self();
  if (get_mach_timebase_info(void)::pred != -1)
  {
    +[CLPCUtils mach_time_to_ns:];
  }

  return get_mach_timebase_info(void)::tbinfo * a2 / *algn_27FCE39AC;
}

@end