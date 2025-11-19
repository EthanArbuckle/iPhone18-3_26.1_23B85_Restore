@interface LogKCData
@end

@implementation LogKCData

char *___LogKCData_block_invoke()
{
  result = getenv("SA_PRINT_STACKSHOTS");
  if ((result || (result = getenv("SA_DEBUG_KCDATA_STACKSHOT_PRINT_ALL")) != 0) && (*result != 48 || result[1]))
  {
    byte_1EDD02EF1 = 1;
  }

  return result;
}

@end