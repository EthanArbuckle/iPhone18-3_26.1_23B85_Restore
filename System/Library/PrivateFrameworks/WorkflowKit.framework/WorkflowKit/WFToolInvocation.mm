@interface WFToolInvocation
+ (NSString)errorDomain;
+ (void)invocationFrom:(LNAction *)from bundleIdentifier:(NSString *)identifier deviceIdentifier:(NSString *)deviceIdentifier completionHandler:(id)handler;
- (BOOL)containsParameterValueForKey:(id)key;
- (BOOL)donateToBiomeAndReturnError:(id *)error;
- (WFToolInvocation)initWithEncodedToolInvocation:(id)invocation error:(id *)error;
- (id)encodeAndReturnError:(id *)error;
- (id)options;
- (void)processUnionWithParameter:(WFParameter *)parameter variableSource:(WFVariableDataSource *)source completionHandler:(id)handler;
- (void)processedValueFromEncodedValue:(WFEncodedTypedValue *)value forParameter:(WFParameter *)parameter ofClass:(Class)class variableSource:(WFVariableDataSource *)source completionHandler:(id)handler;
- (void)valueForParameter:(WFParameter *)parameter ofClass:(Class)class variableSource:(WFVariableDataSource *)source completionHandler:(id)handler;
- (void)valueTypeForParameterWithKey:(NSString *)key completionHandler:(id)handler;
@end

@implementation WFToolInvocation

+ (NSString)errorDomain
{
  static ToolInvocationBox.errorDomain.getter();
  v2 = sub_1CA94C368();

  return v2;
}

- (WFToolInvocation)initWithEncodedToolInvocation:(id)invocation error:(id *)error
{
  invocationCopy = invocation;
  v5 = sub_1CA948C08();
  v7 = v6;

  return ToolInvocationBox.init(encodedToolInvocation:)(v5, v7);
}

+ (void)invocationFrom:(LNAction *)from bundleIdentifier:(NSString *)identifier deviceIdentifier:(NSString *)deviceIdentifier completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = from;
  v11[3] = identifier;
  v11[4] = deviceIdentifier;
  v11[5] = v10;
  v11[6] = self;
  fromCopy = from;
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;

  sub_1CA67052C(&unk_1CA983418, v11);
}

- (BOOL)containsParameterValueForKey:(id)key
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = ToolInvocationBox.containsParameterValueForKey(_:)(v8);

  return v4 & 1;
}

- (void)valueTypeForParameterWithKey:(NSString *)key completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = key;
  v7[3] = v6;
  v7[4] = self;
  keyCopy = key;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA983408, v7);
}

- (id)options
{
  selfCopy = self;
  v3 = ToolInvocationBox.options()();

  return v3;
}

- (id)encodeAndReturnError:(id *)error
{
  selfCopy = self;
  v5.super.isa = ToolInvocationBox.encode()().super.isa;

  if (v6.super.isa)
  {
    if (error)
    {
      v7 = sub_1CA948AC8();

      v8 = v7;
      v5.super.isa = 0;
      *error = v7;
    }

    else
    {

      v5.super.isa = 0;
    }
  }

  return v5.super.isa;
}

- (void)processUnionWithParameter:(WFParameter *)parameter variableSource:(WFVariableDataSource *)source completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = parameter;
  v9[3] = source;
  v9[4] = v8;
  v9[5] = self;
  parameterCopy = parameter;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1CA67052C(&unk_1CA9833F8, v9);
}

- (void)valueForParameter:(WFParameter *)parameter ofClass:(Class)class variableSource:(WFVariableDataSource *)source completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = parameter;
  v11[3] = class;
  v11[4] = source;
  v11[5] = v10;
  v11[6] = self;
  parameterCopy = parameter;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1CA67052C(&unk_1CA9833E8, v11);
}

- (void)processedValueFromEncodedValue:(WFEncodedTypedValue *)value forParameter:(WFParameter *)parameter ofClass:(Class)class variableSource:(WFVariableDataSource *)source completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = value;
  v13[3] = parameter;
  v13[4] = class;
  v13[5] = source;
  v13[6] = v12;
  v13[7] = self;
  valueCopy = value;
  parameterCopy = parameter;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1CA67052C(&unk_1CA9833D8, v13);
}

- (BOOL)donateToBiomeAndReturnError:(id *)error
{
  selfCopy = self;
  ToolInvocationBox.donateToBiome()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_1CA948AC8();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

@end