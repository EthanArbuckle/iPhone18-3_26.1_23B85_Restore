@interface REMExternalSyncMetadataUtils
+ (BOOL)shouldUseExternalIdentifierAsDeletionKeyWithAccountType:(int64_t)type;
+ (id)decodeExternalIdentifierForMarkedForDeletionObject:(id)object;
+ (id)encodeExternalIdentifierForMarkedForDeletionObject:(id)object;
@end

@implementation REMExternalSyncMetadataUtils

+ (id)encodeExternalIdentifierForMarkedForDeletionObject:(id)object
{
  if (object)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = MEMORY[0x1E696AFB0];
    objectCopy = object;
    uUID = [v4 UUID];
    uUIDString = [uUID UUIDString];
    v8 = [v3 stringWithFormat:@"%@%@%@", objectCopy, @"-REMCDOBJECT_DELETED-", uUIDString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)decodeExternalIdentifierForMarkedForDeletionObject:(id)object
{
  objectCopy = object;
  v4 = [objectCopy rangeOfString:@"-REMCDOBJECT_DELETED-"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = [objectCopy substringToIndex:v4];
  }

  v6 = v5;

  return v6;
}

+ (BOOL)shouldUseExternalIdentifierAsDeletionKeyWithAccountType:(int64_t)type
{
  if (type)
  {
    v3 = (type - 3) >= 2;
  }

  else
  {
    v3 = 0;
  }

  return !v3;
}

@end