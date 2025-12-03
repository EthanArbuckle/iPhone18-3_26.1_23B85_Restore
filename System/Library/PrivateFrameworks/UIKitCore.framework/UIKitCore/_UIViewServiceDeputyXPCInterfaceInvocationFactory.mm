@interface _UIViewServiceDeputyXPCInterfaceInvocationFactory
+ (id)invocationForConnectionSelector:(id)selector;
@end

@implementation _UIViewServiceDeputyXPCInterfaceInvocationFactory

+ (id)invocationForConnectionSelector:(id)selector
{
  selectorCopy = selector;
  connectionProtocol = [selectorCopy connectionProtocol];
  connectionSelector = [selectorCopy connectionSelector];
  types = protocol_getMethodDescription(connectionProtocol, connectionSelector, 1, 1).types;
  if (!types)
  {
    types = protocol_getMethodDescription(connectionProtocol, connectionSelector, 0, 1).types;
  }

  v7 = MEMORY[0x1E695DF50];
  v8 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
  v9 = [v7 invocationWithMethodSignature:v8];

  return v9;
}

@end