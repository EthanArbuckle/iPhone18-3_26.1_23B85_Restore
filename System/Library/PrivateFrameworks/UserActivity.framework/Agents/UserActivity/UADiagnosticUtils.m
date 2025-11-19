@interface UADiagnosticUtils
+ (unint64_t)absoluteToNSec:(unint64_t)a3;
@end

@implementation UADiagnosticUtils

+ (unint64_t)absoluteToNSec:(unint64_t)a3
{
  v4 = dword_1000E5BCC;
  if (!dword_1000E5BCC)
  {
    mach_timebase_info(&dword_1000E5BC8);
    v4 = dword_1000E5BCC;
  }

  return dword_1000E5BC8 * a3 / v4;
}

@end