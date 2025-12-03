@interface RWIProtocolNetworkWebSocketFrame
- (BOOL)mask;
- (NSString)payloadData;
- (double)opcode;
- (double)payloadLength;
- (void)setOpcode:(double)opcode;
- (void)setPayloadData:(id)data;
- (void)setPayloadLength:(double)length;
@end

@implementation RWIProtocolNetworkWebSocketFrame

- (void)setOpcode:(double)opcode
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"opcode" forKey:opcode];
}

- (double)opcode
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"opcode"];
  return result;
}

- (BOOL)mask
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"mask"];
}

- (void)setPayloadData:(id)data
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setString:data forKey:@"payloadData"];
}

- (NSString)payloadData
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkWebSocketFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"payloadData"];

  return v2;
}

- (void)setPayloadLength:(double)length
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"payloadLength" forKey:length];
}

- (double)payloadLength
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"payloadLength"];
  return result;
}

@end