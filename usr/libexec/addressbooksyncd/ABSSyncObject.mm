@interface ABSSyncObject
+ (int)sequenceNumber;
+ (void)oops;
@end

@implementation ABSSyncObject

+ (int)sequenceNumber
{
  os_unfair_lock_lock(&stru_100071CB0);
  if (dword_100071978 == 0x80000000)
  {
    v2 = arc4random();
    v3 = v2 & 0x7FFFFFFF;
    v4 = v2 | 0x80000000;
  }

  else
  {
    v3 = (dword_100071978 + 1) & 0x7FFFFFFF;
    v4 = v3;
  }

  dword_100071978 = v3;
  os_unfair_lock_unlock(&stru_100071CB0);
  return v4;
}

+ (void)oops
{
  os_unfair_lock_lock(&stru_100071CB0);
  dword_100071978 = (dword_100071978 - 1) & 0x7FFFFFFF;

  os_unfair_lock_unlock(&stru_100071CB0);
}

@end