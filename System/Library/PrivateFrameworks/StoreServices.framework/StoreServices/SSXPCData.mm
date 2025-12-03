@interface SSXPCData
- (SSXPCData)initWithXPCData:(id)data;
- (void)dealloc;
@end

@implementation SSXPCData

- (SSXPCData)initWithXPCData:(id)data
{
  if (data)
  {
    v6.receiver = self;
    v6.super_class = SSXPCData;
    v4 = [(SSXPCData *)&v6 init];
    if (v4)
    {
      v4->_xpcData = xpc_retain(data);
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"xpcData must be non-nil"];
    return 0;
  }

  return v4;
}

- (void)dealloc
{
  xpcData = self->_xpcData;
  if (xpcData)
  {
    xpc_release(xpcData);
  }

  v4.receiver = self;
  v4.super_class = SSXPCData;
  [(SSXPCData *)&v4 dealloc];
}

@end