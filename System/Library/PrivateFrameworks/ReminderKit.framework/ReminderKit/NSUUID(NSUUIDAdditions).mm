@interface NSUUID(NSUUIDAdditions)
+ (id)TTZero;
- (id)TTShortDescription;
- (uint64_t)TTCompare:()NSUUIDAdditions;
@end

@implementation NSUUID(NSUUIDAdditions)

+ (id)TTZero
{
  if (TTZero_once != -1)
  {
    +[NSUUID(NSUUIDAdditions) TTZero];
  }

  v1 = TTZero_zero;

  return v1;
}

- (uint64_t)TTCompare:()NSUUIDAdditions
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

- (id)TTShortDescription
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  [self getUUIDBytes:v4];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X%02X", LOBYTE(v4[0]), BYTE1(v4[0])];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

@end