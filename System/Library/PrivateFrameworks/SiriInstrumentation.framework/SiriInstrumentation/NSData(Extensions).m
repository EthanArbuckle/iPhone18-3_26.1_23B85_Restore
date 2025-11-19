@interface NSData(Extensions)
- (id)si_asNSUUID;
@end

@implementation NSData(Extensions)

- (id)si_asNSUUID
{
  v4[2] = *MEMORY[0x1E69E9840];
  if ([a1 length] == 16)
  {
    v4[0] = 0;
    v4[1] = 0;
    [a1 getBytes:v4 length:16];
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end