@interface MTSyncInfo
+ (id)predicateForIsCurrentlySyncable:(BOOL)syncable;
@end

@implementation MTSyncInfo

+ (id)predicateForIsCurrentlySyncable:(BOOL)syncable
{
  if (syncable)
  {
    v3 = @"%K == %@";
  }

  else
  {
    v3 = @"%K != %@";
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:v3, @"syncability", &unk_1F54BDEC8];

  return v4;
}

@end