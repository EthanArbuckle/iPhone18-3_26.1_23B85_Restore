@interface NSUUID(CRDT_Additions)
+ (id)CR_repeatedCharUUID:()CRDT_Additions;
+ (id)CR_zero;
- (id)CR_shortDescription;
- (uint64_t)CR_compare:()CRDT_Additions;
- (uint64_t)initWithCRCoder:()CRDT_Additions;
- (void)encodeWithCRCoder:()CRDT_Additions;
- (void)mergeWith:()CRDT_Additions;
@end

@implementation NSUUID(CRDT_Additions)

- (void)mergeWith:()CRDT_Additions
{
  v5 = a3;
  if (([self isEqual:?] & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot merge NSUUID with different value." userInfo:0];
    objc_exception_throw(v4);
  }
}

+ (id)CR_repeatedCharUUID:()CRDT_Additions
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0x101010101010101 * a3;
  v6[1] = v6[0];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)CR_zero
{
  if (CR_zero_once != -1)
  {
    +[NSUUID(CRDT_Additions) CR_zero];
  }

  v1 = CR_zero_zero;

  return v1;
}

- (uint64_t)CR_compare:()CRDT_Additions
{
  v11 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v10 = 0;
  *uu2 = 0;
  v8 = 0;
  v4 = a3;
  [self getUUIDBytes:uu1];
  [v4 getUUIDBytes:uu2];

  LODWORD(result) = uuid_compare(uu1, uu2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)CR_shortDescription
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  [self getUUIDBytes:v4];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", LOBYTE(v4[0]), BYTE1(v4[0])];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (uint64_t)initWithCRCoder:()CRDT_Additions
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeUUIDFromUUIDIndex:{objc_msgSend(v4, "decodeUInt64ForKey:", @"UUIDIndex"}];

  v9[0] = 0;
  v9[1] = 0;
  [v5 getUUIDBytes:v9];
  v6 = [self initWithUUIDBytes:v9];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCRCoder:()CRDT_Additions
{
  v4 = a3;
  [v4 encodeUInt64:objc_msgSend(v4 forKey:{"encodeUUIDIndexFromUUID:", self), @"UUIDIndex"}];
}

@end