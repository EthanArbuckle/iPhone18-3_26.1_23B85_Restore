@interface RWIProtocolDOMDataBinding
- (NSString)binding;
- (NSString)type;
- (NSString)value;
- (RWIProtocolDOMDataBinding)initWithBinding:(id)binding value:(id)value;
- (void)setBinding:(id)binding;
- (void)setType:(id)type;
- (void)setValue:(id)value;
@end

@implementation RWIProtocolDOMDataBinding

- (RWIProtocolDOMDataBinding)initWithBinding:(id)binding value:(id)value
{
  bindingCopy = binding;
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = RWIProtocolDOMDataBinding;
  v8 = [(RWIProtocolJSONObject *)&v11 init];
  if (v8)
  {
    if (!bindingCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"binding"}];
    }

    if (!valueCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"value"}];
    }

    [(RWIProtocolDOMDataBinding *)v8 setBinding:bindingCopy];
    [(RWIProtocolDOMDataBinding *)v8 setValue:valueCopy];
    v9 = v8;
  }

  return v8;
}

- (void)setBinding:(id)binding
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMDataBinding;
  [(RWIProtocolJSONObject *)&v3 setString:binding forKey:@"binding"];
}

- (NSString)binding
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMDataBinding;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"binding"];

  return v2;
}

- (void)setType:(id)type
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMDataBinding;
  [(RWIProtocolJSONObject *)&v3 setString:type forKey:@"type"];
}

- (NSString)type
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMDataBinding;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"type"];

  return v2;
}

- (void)setValue:(id)value
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMDataBinding;
  [(RWIProtocolJSONObject *)&v3 setString:value forKey:@"value"];
}

- (NSString)value
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMDataBinding;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"value"];

  return v2;
}

@end