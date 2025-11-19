@interface REMExternalSyncMetadataUtils
+ (BOOL)shouldUseExternalIdentifierAsDeletionKeyWithAccountType:(int64_t)a3;
+ (id)decodeExternalIdentifierForMarkedForDeletionObject:(id)a3;
+ (id)encodeExternalIdentifierForMarkedForDeletionObject:(id)a3;
@end

@implementation REMExternalSyncMetadataUtils

+ (id)encodeExternalIdentifierForMarkedForDeletionObject:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = MEMORY[0x1E696AFB0];
    v5 = a3;
    v6 = [v4 UUID];
    v7 = [v6 UUIDString];
    v8 = [v3 stringWithFormat:@"%@%@%@", v5, @"-REMCDOBJECT_DELETED-", v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)decodeExternalIdentifierForMarkedForDeletionObject:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"-REMCDOBJECT_DELETED-"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 substringToIndex:v4];
  }

  v6 = v5;

  return v6;
}

+ (BOOL)shouldUseExternalIdentifierAsDeletionKeyWithAccountType:(int64_t)a3
{
  if (a3)
  {
    v3 = (a3 - 3) >= 2;
  }

  else
  {
    v3 = 0;
  }

  return !v3;
}

@end