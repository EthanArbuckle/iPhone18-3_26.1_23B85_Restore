@interface SBClockIconInitialize
@end

@implementation SBClockIconInitialize

void ___SBClockIconInitialize_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = __tickClients;
  __tickClients = v0;

  v2 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v3 = __calendar;
  __calendar = v2;

  v4 = __calendar;
  v5 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v4 setTimeZone:v5];

  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:v6 selector:sel__handleTimeChange_ name:*MEMORY[0x1E69DDB88] object:0];
}

@end