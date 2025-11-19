@interface SPISELFProcessAdapter
+ (int)translateProcess:(unsigned __int8)a3;
@end

@implementation SPISELFProcessAdapter

+ (int)translateProcess:(unsigned __int8)a3
{
  if ((a3 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_268C331A0[(a3 - 1)];
  }
}

@end