@interface WFToolInvocation
+ (NSString)errorDomain;
+ (void)invocationFrom:(LNAction *)a3 bundleIdentifier:(NSString *)a4 deviceIdentifier:(NSString *)a5 completionHandler:(id)a6;
- (BOOL)containsParameterValueForKey:(id)a3;
- (BOOL)donateToBiomeAndReturnError:(id *)a3;
- (WFToolInvocation)initWithEncodedToolInvocation:(id)a3 error:(id *)a4;
- (id)encodeAndReturnError:(id *)a3;
- (id)options;
- (void)processUnionWithParameter:(WFParameter *)a3 variableSource:(WFVariableDataSource *)a4 completionHandler:(id)a5;
- (void)processedValueFromEncodedValue:(WFEncodedTypedValue *)a3 forParameter:(WFParameter *)a4 ofClass:(Class)a5 variableSource:(WFVariableDataSource *)a6 completionHandler:(id)a7;
- (void)valueForParameter:(WFParameter *)a3 ofClass:(Class)a4 variableSource:(WFVariableDataSource *)a5 completionHandler:(id)a6;
- (void)valueTypeForParameterWithKey:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation WFToolInvocation

+ (NSString)errorDomain
{
  static ToolInvocationBox.errorDomain.getter();
  v2 = sub_1CA94C368();

  return v2;
}

- (WFToolInvocation)initWithEncodedToolInvocation:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1CA948C08();
  v7 = v6;

  return ToolInvocationBox.init(encodedToolInvocation:)(v5, v7);
}

+ (void)invocationFrom:(LNAction *)a3 bundleIdentifier:(NSString *)a4 deviceIdentifier:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;

  sub_1CA67052C(&unk_1CA983418, v11);
}

- (BOOL)containsParameterValueForKey:(id)a3
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = ToolInvocationBox.containsParameterValueForKey(_:)(v8);

  return v4 & 1;
}

- (void)valueTypeForParameterWithKey:(NSString *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1CA67052C(&unk_1CA983408, v7);
}

- (id)options
{
  v2 = self;
  v3 = ToolInvocationBox.options()();

  return v3;
}

- (id)encodeAndReturnError:(id *)a3
{
  v4 = self;
  v5.super.isa = ToolInvocationBox.encode()().super.isa;

  if (v6.super.isa)
  {
    if (a3)
    {
      v7 = sub_1CA948AC8();

      v8 = v7;
      v5.super.isa = 0;
      *a3 = v7;
    }

    else
    {

      v5.super.isa = 0;
    }
  }

  return v5.super.isa;
}

- (void)processUnionWithParameter:(WFParameter *)a3 variableSource:(WFVariableDataSource *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;

  sub_1CA67052C(&unk_1CA9833F8, v9);
}

- (void)valueForParameter:(WFParameter *)a3 ofClass:(Class)a4 variableSource:(WFVariableDataSource *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;

  sub_1CA67052C(&unk_1CA9833E8, v11);
}

- (void)processedValueFromEncodedValue:(WFEncodedTypedValue *)a3 forParameter:(WFParameter *)a4 ofClass:(Class)a5 variableSource:(WFVariableDataSource *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = self;
  v14 = a3;
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = self;

  sub_1CA67052C(&unk_1CA9833D8, v13);
}

- (BOOL)donateToBiomeAndReturnError:(id *)a3
{
  v4 = self;
  ToolInvocationBox.donateToBiome()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_1CA948AC8();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

@end