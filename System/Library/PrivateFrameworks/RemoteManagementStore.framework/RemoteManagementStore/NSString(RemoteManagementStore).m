@interface NSString(RemoteManagementStore)
+ (__CFString)rms_stringWithScope:()RemoteManagementStore;
@end

@implementation NSString(RemoteManagementStore)

+ (__CFString)rms_stringWithScope:()RemoteManagementStore
{
  if (a3)
  {
    return @"device";
  }

  else
  {
    return @"user";
  }
}

@end