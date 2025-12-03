@interface NSUUID(Deterministic)
+ (id)sa_deterministicUUIDv5ForNamespace:()Deterministic name:;
+ (id)sa_deterministicUUIDv5ForNamespaceUUID:()Deterministic sourceUUID:;
- (id)sa_uuidBytes;
@end

@implementation NSUUID(Deterministic)

- (id)sa_uuidBytes
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  [self getUUIDBytes:v4];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

+ (id)sa_deterministicUUIDv5ForNamespace:()Deterministic name:
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&v14, 0, sizeof(v14));
  v5 = a4;
  v6 = a3;
  CC_SHA1_Init(&v14);
  v7 = v6;
  bytes = [v7 bytes];
  v9 = [v6 length];

  CC_SHA1_Update(&v14, bytes, v9);
  bytes2 = [v5 bytes];
  LODWORD(bytes) = [v5 length];

  CC_SHA1_Update(&v14, bytes2, bytes);
  CC_SHA1_Final(md, &v14);
  v16 = v16 & 0xFFF | 0x5000;
  v17 = v17 & 0x3F | 0x80;
  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:md];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)sa_deterministicUUIDv5ForNamespaceUUID:()Deterministic sourceUUID:
{
  v5 = MEMORY[0x1E696AFB0];
  v6 = a4;
  sa_uuidBytes = [a3 sa_uuidBytes];
  sa_uuidBytes2 = [v6 sa_uuidBytes];

  v9 = [v5 sa_deterministicUUIDv5ForNamespace:sa_uuidBytes name:sa_uuidBytes2];

  return v9;
}

@end