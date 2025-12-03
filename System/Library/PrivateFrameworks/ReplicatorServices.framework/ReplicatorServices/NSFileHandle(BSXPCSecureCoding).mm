@interface NSFileHandle(BSXPCSecureCoding)
- (id)initWithBSXPCCoder:()BSXPCSecureCoding;
- (void)encodeWithBSXPCCoder:()BSXPCSecureCoding;
@end

@implementation NSFileHandle(BSXPCSecureCoding)

- (void)encodeWithBSXPCCoder:()BSXPCSecureCoding
{
  v4 = a3;
  v5 = xpc_fd_create([self fileDescriptor]);
  [v4 encodeXPCObject:v5 forKey:@"fileDescriptor"];
}

- (id)initWithBSXPCCoder:()BSXPCSecureCoding
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"fileDescriptor"];
  v5 = v4;
  if (v4)
  {
    self = [self initWithFileDescriptor:xpc_fd_dup(v4) closeOnDealloc:1];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end