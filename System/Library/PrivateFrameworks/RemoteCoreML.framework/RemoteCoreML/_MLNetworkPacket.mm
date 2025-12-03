@interface _MLNetworkPacket
- (_MLNetworkPacket)init;
- (void)cleanupDoubleBuffer;
- (void)reset;
- (void)resetDoubleBuffer;
- (void)resetMetadata;
@end

@implementation _MLNetworkPacket

- (_MLNetworkPacket)init
{
  v8.receiver = self;
  v8.super_class = _MLNetworkPacket;
  v2 = [(_MLNetworkPacket *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    buffer = v2->_buffer;
    v2->_buffer = v3;

    v5 = objc_opt_new();
    doubleBuffer = v2->_doubleBuffer;
    v2->_doubleBuffer = v5;

    v2->_sizeOfPacket = 0;
    v2->_command = 0;
  }

  return v2;
}

- (void)reset
{
  [(_MLNetworkPacket *)self setBuffer:0];
  [(_MLNetworkPacket *)self setDoubleBuffer:0];

  [(_MLNetworkPacket *)self resetMetadata];
}

- (void)resetMetadata
{
  [(_MLNetworkPacket *)self setCommand:0];

  [(_MLNetworkPacket *)self setSizeOfPacket:0];
}

- (void)cleanupDoubleBuffer
{
  [(_MLNetworkPacket *)self resetMetadata];

  [(_MLNetworkPacket *)self setDoubleBuffer:0];
}

- (void)resetDoubleBuffer
{
  doubleBuffer = [(_MLNetworkPacket *)self doubleBuffer];
  [(_MLNetworkPacket *)self setBuffer:doubleBuffer];

  v4 = objc_opt_new();
  [(_MLNetworkPacket *)self setDoubleBuffer:v4];

  [(_MLNetworkPacket *)self resetMetadata];
}

@end