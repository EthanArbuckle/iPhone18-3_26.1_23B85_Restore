@interface RWIProtocolRuntimeTypeSet
- (BOOL)isBigInt;
- (BOOL)isBoolean;
- (BOOL)isFunction;
- (BOOL)isInteger;
- (BOOL)isNull;
- (BOOL)isNumber;
- (BOOL)isObject;
- (BOOL)isString;
- (BOOL)isSymbol;
- (BOOL)isUndefined;
@end

@implementation RWIProtocolRuntimeTypeSet

- (BOOL)isFunction
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isFunction"];
}

- (BOOL)isUndefined
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isUndefined"];
}

- (BOOL)isNull
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isNull"];
}

- (BOOL)isBoolean
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isBoolean"];
}

- (BOOL)isInteger
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isInteger"];
}

- (BOOL)isNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isNumber"];
}

- (BOOL)isString
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isString"];
}

- (BOOL)isObject
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isObject"];
}

- (BOOL)isSymbol
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isSymbol"];
}

- (BOOL)isBigInt
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeSet;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isBigInt"];
}

@end