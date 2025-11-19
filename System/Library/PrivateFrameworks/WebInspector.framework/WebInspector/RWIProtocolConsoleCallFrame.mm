@interface RWIProtocolConsoleCallFrame
- (NSString)functionName;
- (NSString)scriptId;
- (NSString)url;
- (int)columnNumber;
- (int)lineNumber;
- (void)setFunctionName:(id)a3;
- (void)setScriptId:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation RWIProtocolConsoleCallFrame

- (void)setFunctionName:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"functionName"];
}

- (NSString)functionName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"functionName"];

  return v2;
}

- (void)setUrl:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setScriptId:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"scriptId"];
}

- (NSString)scriptId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"scriptId"];

  return v2;
}

- (int)lineNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"lineNumber"];
}

- (int)columnNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"columnNumber"];
}

@end