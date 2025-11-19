@interface TRILogCategory
@end

@implementation TRILogCategory

uint64_t __TRILogCategory_ClientFramework_block_invoke()
{
  if (qword_2815978D0 != -1)
  {
    dispatch_once(&qword_2815978D0, &__block_literal_global_50);
  }

  TRILogCategory_ClientFramework_log = os_log_create(_MergedGlobals_44, "_");

  return MEMORY[0x2821F96F8]();
}

uint64_t __TRILogCategory_Daemon_block_invoke()
{
  if (qword_2815978D0 != -1)
  {
    dispatch_once(&qword_2815978D0, &__block_literal_global_50);
  }

  qword_2815978E0 = os_log_create(_MergedGlobals_44, "_");

  return MEMORY[0x2821F96F8]();
}

uint64_t __TRILogCategory_Server_block_invoke()
{
  if (qword_2815978D0 != -1)
  {
    dispatch_once(&qword_2815978D0, &__block_literal_global_50);
  }

  TRILogCategory_Server_log = os_log_create(_MergedGlobals_44, "server");

  return MEMORY[0x2821F96F8]();
}

uint64_t __TRILogCategory_Backtrace_block_invoke()
{
  if (qword_2815978D0 != -1)
  {
    dispatch_once(&qword_2815978D0, &__block_literal_global_50);
  }

  TRILogCategory_Backtrace_log = os_log_create(_MergedGlobals_44, "backtrace");

  return MEMORY[0x2821F96F8]();
}

uint64_t __TRILogCategory_XCTest_block_invoke()
{
  if (qword_2815978D0 != -1)
  {
    dispatch_once(&qword_2815978D0, &__block_literal_global_50);
  }

  TRILogCategory_XCTest_log = os_log_create(_MergedGlobals_44, "test");

  return MEMORY[0x2821F96F8]();
}

uint64_t __TRILogCategory_InternalTool_block_invoke()
{
  if (qword_2815978D0 != -1)
  {
    dispatch_once(&qword_2815978D0, &__block_literal_global_50);
  }

  qword_2815978F0 = os_log_create(_MergedGlobals_44, "tool");

  return MEMORY[0x2821F96F8]();
}

uint64_t __TRILogCategory_Archiving_block_invoke()
{
  if (qword_2815978D0 != -1)
  {
    dispatch_once(&qword_2815978D0, &__block_literal_global_50);
  }

  TRILogCategory_Archiving_log = os_log_create(_MergedGlobals_44, "archiving");

  return MEMORY[0x2821F96F8]();
}

@end