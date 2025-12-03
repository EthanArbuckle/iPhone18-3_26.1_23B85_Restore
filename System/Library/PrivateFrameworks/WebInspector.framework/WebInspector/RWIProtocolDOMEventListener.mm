@interface RWIProtocolDOMEventListener
- (BOOL)disabled;
- (BOOL)hasBreakpoint;
- (BOOL)isAttribute;
- (BOOL)onWindow;
- (BOOL)once;
- (BOOL)passive;
- (BOOL)useCapture;
- (NSString)handlerName;
- (NSString)type;
- (RWIProtocolDebuggerLocation)location;
- (int)eventListenerId;
- (int)nodeId;
- (void)setHandlerName:(id)name;
- (void)setLocation:(id)location;
- (void)setType:(id)type;
@end

@implementation RWIProtocolDOMEventListener

- (int)eventListenerId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"eventListenerId"];
}

- (void)setType:(id)type
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setString:type forKey:@"type"];
}

- (NSString)type
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMEventListener;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"type"];

  return v2;
}

- (BOOL)useCapture
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"useCapture"];
}

- (BOOL)isAttribute
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isAttribute"];
}

- (int)nodeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"nodeId"];
}

- (BOOL)onWindow
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"onWindow"];
}

- (void)setLocation:(id)location
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setObject:location forKey:@"location"];
}

- (RWIProtocolDebuggerLocation)location
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDOMEventListener;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"location"];
  if (v3)
  {
    v4 = [RWIProtocolDebuggerLocation alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDOMEventListener;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"location"];
    [v5 toJSONObject];
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHandlerName:(id)name
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  [(RWIProtocolJSONObject *)&v3 setString:name forKey:@"handlerName"];
}

- (NSString)handlerName
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMEventListener;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"handlerName"];

  return v2;
}

- (BOOL)passive
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"passive"];
}

- (BOOL)once
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"once"];
}

- (BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"disabled"];
}

- (BOOL)hasBreakpoint
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMEventListener;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"hasBreakpoint"];
}

@end