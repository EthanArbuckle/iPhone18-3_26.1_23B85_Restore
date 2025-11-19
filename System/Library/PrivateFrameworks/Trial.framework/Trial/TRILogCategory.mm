@interface TRILogCategory
@end

@implementation TRILogCategory

uint64_t __TRILogCategory_ClientFramework_block_invoke()
{
  if (qword_280ACAEC0 != -1)
  {
    dispatch_once(&qword_280ACAEC0, &__block_literal_global_18);
  }

  TRILogCategory_ClientFramework_log = os_log_create(_MergedGlobals_15, "_");

  return MEMORY[0x2821F96F8]();
}

uint64_t __TRILogCategory_Daemon_block_invoke()
{
  if (qword_280ACAEC0 != -1)
  {
    dispatch_once(&qword_280ACAEC0, &__block_literal_global_18);
  }

  v0 = os_log_create(_MergedGlobals_15, "_");
  v1 = qword_280ACAED0;
  qword_280ACAED0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TRILogCategory_Server_block_invoke()
{
  if (qword_280ACAEC0 != -1)
  {
    dispatch_once(&qword_280ACAEC0, &__block_literal_global_18);
  }

  v0 = os_log_create(_MergedGlobals_15, "server");
  v1 = TRILogCategory_Server_log;
  TRILogCategory_Server_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TRILogCategory_Backtrace_block_invoke()
{
  if (qword_280ACAEC0 != -1)
  {
    dispatch_once(&qword_280ACAEC0, &__block_literal_global_18);
  }

  v0 = os_log_create(_MergedGlobals_15, "backtrace");
  v1 = qword_280ACAEE0;
  qword_280ACAEE0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TRILogCategory_XCTest_block_invoke()
{
  if (qword_280ACAEC0 != -1)
  {
    dispatch_once(&qword_280ACAEC0, &__block_literal_global_18);
  }

  v0 = os_log_create(_MergedGlobals_15, "test");
  v1 = qword_280ACAEF0;
  qword_280ACAEF0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TRILogCategory_InternalTool_block_invoke()
{
  if (qword_280ACAEC0 != -1)
  {
    dispatch_once(&qword_280ACAEC0, &__block_literal_global_18);
  }

  v0 = os_log_create(_MergedGlobals_15, "tool");
  v1 = TRILogCategory_InternalTool_log;
  TRILogCategory_InternalTool_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __TRILogCategory_Archiving_block_invoke()
{
  if (qword_280ACAEC0 != -1)
  {
    dispatch_once(&qword_280ACAEC0, &__block_literal_global_18);
  }

  v0 = os_log_create(_MergedGlobals_15, "archiving");
  v1 = qword_280ACAF00;
  qword_280ACAF00 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end