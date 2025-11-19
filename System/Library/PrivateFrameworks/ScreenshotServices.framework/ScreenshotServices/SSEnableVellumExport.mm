@interface SSEnableVellumExport
@end

@implementation SSEnableVellumExport

uint64_t ___SSEnableVellumExport_block_invoke()
{
  result = _SSUserDefaultsBooleanForKeyWithNODefault(@"SSEnableVellumExport");
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  _SSEnableVellumExport___SSEnableVellumExport = result;
  return result;
}

@end