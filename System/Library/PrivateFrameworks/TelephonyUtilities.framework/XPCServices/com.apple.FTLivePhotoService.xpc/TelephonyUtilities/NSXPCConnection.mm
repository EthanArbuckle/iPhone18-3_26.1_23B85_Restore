@interface NSXPCConnection
- (id)processName;
@end

@implementation NSXPCConnection

- (id)processName
{
  if (proc_name([(NSXPCConnection *)self processIdentifier:0], &v4, 0x100u) < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSString stringWithUTF8String:&v4];
  }

  return v2;
}

@end