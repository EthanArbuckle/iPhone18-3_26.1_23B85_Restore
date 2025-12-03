@interface SGNode
+ (SGNode)nodeWithConstantString:(id)string type:(unint64_t)type name:(id)name error:(id *)error;
+ (SGNode)nodeWithGraph:(id)graph name:(id)name error:(id *)error;
+ (SGNode)nodeWithNodeDefName:(id)name name:(id)a4 error:(id *)error;
- (NSString)description;
- (NSString)name;
- (SGNode)init;
@end

@implementation SGNode

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___SGNode_name);
  v3 = *(self + OBJC_IVAR___SGNode_name + 8);

  v4 = MEMORY[0x266771450](v2, v3);

  return v4;
}

- (SGNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (SGNode)nodeWithNodeDefName:(id)name name:(id)a4 error:(id *)error
{
  v5 = a4;
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v5)
    {
LABEL_3:
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  if (one-time initialization token for shared != -1)
  {
    v13 = v9;
    swift_once();
    v9 = v13;
  }

  v11 = specialized static SGNode.create(nodeDefName:name:store:)(v6, v8, v9, v5, static BuiltInDefinitionStore.shared);

  return v11;
}

+ (SGNode)nodeWithGraph:(id)graph name:(id)name error:(id *)error
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  graphCopy = graph;
  v13._countAndFlagsBits = v6;
  v13._object = v8;
  v10 = specialized static SGNode.create(graph:name:)(graph, v13);

  return v10;
}

+ (SGNode)nodeWithConstantString:(id)string type:(unint64_t)type name:(id)name error:(id *)error
{
  nameCopy = name;
  if (string)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (nameCopy)
    {
LABEL_3:
      v11._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      nameCopy = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (name)
    {
      goto LABEL_3;
    }
  }

  v11._countAndFlagsBits = 0;
LABEL_6:
  v11._object = nameCopy;
  v13 = specialized static SGNode.create(value:type:name:)(v8, v10, type, v11);

  return v13;
}

- (NSString)description
{
  v10 = 60;
  v11 = 0xE100000000000000;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v2 = v9.receiver;
  v3 = [(SGNode *)&v9 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x266771550](v4, v6);

  MEMORY[0x266771550](0x223D656D616E203ALL, 0xE800000000000000);
  MEMORY[0x266771550](*&v2[OBJC_IVAR___SGNode_name], *&v2[OBJC_IVAR___SGNode_name + 8]);
  MEMORY[0x266771550](15906, 0xE200000000000000);

  v7 = MEMORY[0x266771450](v10, v11);

  return v7;
}

@end