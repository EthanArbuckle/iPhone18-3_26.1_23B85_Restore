@interface SGGraph
+ (id)graphWithName:(id)name inputs:(id)inputs outputs:(id)outputs;
- (BOOL)connect:(id)connect to:(id)to error:(id *)error;
- (BOOL)connectOutputInputPairs:(id)pairs error:(id *)error;
- (BOOL)insertNodes:(id)nodes error:(id *)error;
- (NSString)name;
- (SGGraph)init;
- (id)createDotRepresentationWithError:(id *)error;
- (id)nodeNamed:(id)named;
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

+ (id)graphWithName:(id)name inputs:(id)inputs outputs:(id)outputs
{
  inputsCopy = inputs;
  if (name)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (!inputsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v9 = 0;
  if (inputs)
  {
LABEL_3:
    type metadata accessor for SGInput();
    inputsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  if (outputs)
  {
    type metadata accessor for SGOutput();
    outputs = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = specialized static SGGraph.create(name:inputs:outputs:)(v7, v9, inputsCopy, outputs);

  return v10;
}

- (BOOL)connect:(id)connect to:(id)to error:(id *)error
{
  connectCopy = connect;
  toCopy = to;
  selfCopy = self;
  SGGraph.connect(_:to:)(connect, to);

  return 1;
}

- (BOOL)connectOutputInputPairs:(id)pairs error:(id *)error
{
  if (pairs)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  v12.value._rawValue = v6;
  SGGraph.connect(outputInputPairs:)(v12);

  if (v8)
  {
    if (error)
    {
      v9 = _convertErrorToNSError(_:)();

      v10 = v9;
      *error = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (BOOL)insertNodes:(id)nodes error:(id *)error
{
  if (nodes)
  {
    type metadata accessor for SGNode();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  v12.value._rawValue = v6;
  SGGraph.insert(_:)(v12);

  if (v8)
  {
    if (error)
    {
      v9 = _convertErrorToNSError(_:)();

      v10 = v9;
      *error = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (id)nodeNamed:(id)named
{
  if (named)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = SGGraph.node(named:)(v4, v6);

  return v8;
}

- (id)createDotRepresentationWithError:(id *)error
{
  selfCopy = self;
  v4 = createDotText(representing:)(selfCopy);
  v5 = MEMORY[0x266771450](v4);

  return v5;
}

@end