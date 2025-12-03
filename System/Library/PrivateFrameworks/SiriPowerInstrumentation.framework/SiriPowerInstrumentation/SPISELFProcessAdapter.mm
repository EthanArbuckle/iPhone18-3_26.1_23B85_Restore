@interface SPISELFProcessAdapter
+ (int)translateProcess:(unsigned __int8)process;
@end

@implementation SPISELFProcessAdapter

+ (int)translateProcess:(unsigned __int8)process
{
  if ((process - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_268C331A0[(process - 1)];
  }
}

@end