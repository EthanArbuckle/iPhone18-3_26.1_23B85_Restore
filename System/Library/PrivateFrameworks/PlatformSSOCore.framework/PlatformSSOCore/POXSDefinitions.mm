@interface POXSDefinitions
+ (id)definitionForType:(Class)type;
@end

@implementation POXSDefinitions

+ (id)definitionForType:(Class)type
{
  if (definitionForType__predicate != -1)
  {
    +[POXSDefinitions definitionForType:];
    if (type)
    {
      goto LABEL_3;
    }

LABEL_10:
    definition = 0;
    goto LABEL_11;
  }

  if (!type)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = definitionForType__definitions;
  objc_sync_enter(v4);
  definition = [definitionForType__definitions objectForKey:type];
  if (!definition)
  {
    if ([(objc_class *)type conformsToProtocol:&unk_2870AA6E8])
    {
      definition = [(objc_class *)type definition];
      if (definition)
      {
        [definitionForType__definitions setObject:definition forKey:type];
      }
    }

    else
    {
      definition = 0;
    }
  }

  objc_sync_exit(v4);

LABEL_11:

  return definition;
}

uint64_t __37__POXSDefinitions_definitionForType___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
  v1 = definitionForType__definitions;
  definitionForType__definitions = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end