@interface SGGraph
+ (id)graphWithName:(id)a3 inputs:(id)a4 outputs:(id)a5;
- (BOOL)connect:(id)a3 to:(id)a4 error:(id *)a5;
- (BOOL)connectOutputInputPairs:(id)a3 error:(id *)a4;
- (BOOL)insertNodes:(id)a3 error:(id *)a4;
- (NSString)name;
- (SGGraph)init;
- (id)createDotRepresentationWithError:(id *)a3;
- (id)nodeNamed:(id)a3;
@end

@implementation SGGraph

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___SGGraph_name);
  v3 = *(self + OBJC_IVAR___SGGraph_name + 8);

  v4 = MEMORY[0x266771450](v2, v3);

  return v4;
}

- (SGGraph)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)graphWithName:(id)a3 inputs:(id)a4 outputs:(id)a5
{
  v6 = a4;
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v9 = 0;
  if (a4)
  {
LABEL_3:
    type metadata accessor for SGInput();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  if (a5)
  {
    type metadata accessor for SGOutput();
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = specialized static SGGraph.create(name:inputs:outputs:)(v7, v9, v6, a5);

  return v10;
}

- (BOOL)connect:(id)a3 to:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  SGGraph.connect(_:to:)(a3, a4);

  return 1;
}

- (BOOL)connectOutputInputPairs:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  v12.value._rawValue = v6;
  SGGraph.connect(outputInputPairs:)(v12);

  if (v8)
  {
    if (a4)
    {
      v9 = _convertErrorToNSError(_:)();

      v10 = v9;
      *a4 = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (BOOL)insertNodes:(id)a3 error:(id *)a4
{
  if (a3)
  {
    type metadata accessor for SGNode();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  v12.value._rawValue = v6;
  SGGraph.insert(_:)(v12);

  if (v8)
  {
    if (a4)
    {
      v9 = _convertErrorToNSError(_:)();

      v10 = v9;
      *a4 = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (id)nodeNamed:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = SGGraph.node(named:)(v4, v6);

  return v8;
}

- (id)createDotRepresentationWithError:(id *)a3
{
  v3 = self;
  v4 = createDotText(representing:)(v3);
  v5 = MEMORY[0x266771450](v4);

  return v5;
}

@end