@interface RWIProtocolConsoleCallFrame
- (NSString)functionName;
- (NSString)scriptId;
- (NSString)url;
- (int)columnNumber;
- (int)lineNumber;
- (void)setFunctionName:(id)name;
- (void)setScriptId:(id)id;
- (void)setUrl:(id)url;
@end

@implementation RWIProtocolConsoleCallFrame

- (void)setFunctionName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"functionName"];
}

- (NSString)functionName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"functionName"];

  return v2;
}

- (void)setUrl:(id)url
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:url forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolConsoleCallFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setScriptId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolConsoleCallFrame;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"scriptId"];
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