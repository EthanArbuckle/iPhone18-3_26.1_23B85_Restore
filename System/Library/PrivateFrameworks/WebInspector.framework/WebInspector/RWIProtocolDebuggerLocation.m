@interface RWIProtocolDebuggerLocation
- (NSString)scriptId;
- (int)columnNumber;
- (int)lineNumber;
- (void)setScriptId:(id)a3;
@end

@implementation RWIProtocolDebuggerLocation

- (void)setScriptId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerLocation;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"scriptId"];
}

- (NSString)scriptId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerLocation;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"scriptId"];

  return v2;
}

- (int)lineNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerLocation;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"lineNumber"];
}

- (int)columnNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerLocation;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"columnNumber"];
}

@end