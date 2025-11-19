@interface RWIProtocolNetworkWebSocketFrame
- (BOOL)mask;
- (NSString)payloadData;
- (double)opcode;
- (double)payloadLength;
- (void)setOpcode:(double)a3;
- (void)setPayloadData:(id)a3;
- (void)setPayloadLength:(double)a3;
@end

@implementation RWIProtocolNetworkWebSocketFrame

- (void)setOpcode:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"opcode" forKey:a3];
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

- (void)setPayloadData:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"payloadData"];
}

- (NSString)payloadData
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkWebSocketFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"payloadData"];

  return v2;
}

- (void)setPayloadLength:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"payloadLength" forKey:a3];
}

- (double)payloadLength
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"payloadLength"];
  return result;
}

@end